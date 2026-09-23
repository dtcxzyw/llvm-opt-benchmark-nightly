Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.14?download=true
inline.NumInlined: 8258
inline.NumDeleted: 2356
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls4rank12rolling_rankyECskY9G75ZWc4U_11polars_expr:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !dbg !133710, !noundef !860
  %i.z = tail call { ptr, ptr } @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB2_4rank10RankWindowymNtNtB4_4rank15RankPolicyDenseEymFjjjETjjEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.w, ptr noundef nonnull align 8 %i.e, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %_RNvNtCslFlrwjHoTci_14polars_compute7rolling18det_offsets_center._RNvNtCslFlrwjHoTci_14polars_compute7rolling11det_offsets, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %6), !dbg !133711
  br label %bb.n, !dbg !133712

bb.t:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #38, !dbg !133713
  unreachable, !dbg !133713

bb.u:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !133714
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !133714, !noundef !860
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !133715
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !133715, !noundef !860
  %i.ae = tail call { ptr, ptr } @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB2_4rank10RankWindowymNtNtB4_4rank16RankPolicyRandomEymFjjjETjjEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %i.ab, ptr noundef nonnull align 8 %i.e, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %_RNvNtCslFlrwjHoTci_14polars_compute7rolling18det_offsets_center._RNvNtCslFlrwjHoTci_14polars_compute7rolling11det_offsets, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %6), !dbg !133716
  br label %bb.n, !dbg !133717

bb.v:                                             ; preds = %bb.k
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #38, !dbg !133718
  unreachable, !dbg !133718
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(160) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !133719 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !133731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !133732
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160)
          to label %.noexc unwind label %bb.h, !dbg !133732

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !dbg !133732, !range !939, !noundef !860
  %i.e = trunc nuw i64 %i.d to i1, !dbg !133733
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !133734
  %i.g = load i64, ptr %i.f, align 8, !dbg !133734, !range !938, !noundef !860 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !133734 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !133733, !prof !866

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !dbg !133735
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #33
          to label %.noexc3 unwind label %bb.h, !dbg !133736

.noexc3:                                          ; preds = %bb.b
  unreachable, !dbg !133736

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !dbg !133737, !nonnull !860, !noundef !860
  %i.k = icmp ule i64 %2, %i.g, !dbg !133738
  tail call void @llvm.assume(i1 %i.k), !dbg !133739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !133740
  store i64 %i.g, ptr %i.c, align 8, !dbg !133741
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !133741
  store ptr %i.j, ptr %i.l, align 8, !dbg !133741
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !133741
  store i64 0, ptr %i.m, align 8, !dbg !133741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !133742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, ptr noundef nonnull align 16 dereferenceable(160) %1, i64 160, i1 false), !dbg !133742
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE11extend_withCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.b)
          to label %bb.e unwind label %bb.d, !dbg !133743

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.g unwind label %bb.f, !dbg !133744

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !133745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !133746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !133744
  ret void, !dbg !133747

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !133748
  unreachable, !dbg !133748

bb.g:                                             ; preds = %bb.d, %bb.h
  %.pn6 = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %.pn6, !dbg !133748

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %1) #34
          to label %bb.g unwind label %bb.f, !dbg !133744
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array6gather7chunkedNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB6_11TakeChunked26take_opt_chunked_uncheckedKy18_ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4) unnamed_addr #0 !dbg !133749 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !dbg !133767, !range !872, !noundef !860
  %.not = icmp eq i8 %i.a, 31, !dbg !133767
  br i1 %.not, label %bb.c, label %bb.b, !dbg !133768

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %1), !dbg !133769
  br label %bb.d, !dbg !133769

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !133770
  br label %bb.d, !dbg !133771

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], !dbg !133772
  %i.d = tail call { ptr, ptr } @_RINvXs1_NtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array6gather7chunkedNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtB6_11TakeChunked26take_opt_chunked_uncheckedKy18_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4), !dbg !133773 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !133773
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !133773
  tail call fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.f) #39, !dbg !133774
  ret void, !dbg !133775
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtCsc91YB1gQebm_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCscgRAwXFJnXP_4core3fmt9FormatterECskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !133776 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !133783
  store ptr %i.c, ptr %i.a, align 8, !dbg !133783
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !133783
  store ptr @_RNvXs1o_NtCscgRAwXFJnXP_4core3fmtRhNtB6_8LowerHex3fmtCskY9G75ZWc4U_11polars_expr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !133783
  %i.d = call noundef zeroext i1 @_RNvXNtCscgRAwXFJnXP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @40, ptr noundef nonnull %i.a), !dbg !133784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !133785
  ret i1 %i.d, !dbg !133786
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvNtB1K_7planner26create_physical_expr_inner0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !677 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !133812, !nonnull !860, !align !884, !noundef !860 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !133813 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !133814
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !133815
  br i1 %.not, label %bb.g, label %bb.b, !dbg !133816, !prof !866

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !133813
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !133817
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !133817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !133817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !133818
  call fastcc void @_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.b) #39, !dbg !133819
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !133820
  %i.e = load ptr, ptr %i.d, align 8, !dbg !133820, !nonnull !860, !align !884, !noundef !860 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133807), !dbg !133820
  %i.f = load i64, ptr %i.e, align 8, !dbg !133821, !range !934, !alias.scope !133807, !noundef !860 ; 2 uses
  %i.g = icmp eq i64 %i.f, 19, !dbg !133821
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB21_.exit, label %bb.c, !dbg !133821

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133808), !dbg !133821
  %i.h = icmp eq i64 %i.f, 18, !dbg !133822
  br i1 %i.h, label %bb.d, label %bb.f, !dbg !133822

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !133822 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133809), !dbg !133822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133810), !dbg !133823
  %i.j = load ptr, ptr %i.i, align 8, !dbg !133824, !alias.scope !133811, !nonnull !860, !noundef !860
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !dbg !133825, !noalias !133811
  %i.l = icmp eq i64 %i.k, 1, !dbg !133826
  br i1 %i.l, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB21_.exit, !dbg !133826

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !133827
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB21_.exit unwind label %bb.h, !dbg !133828

bb.f:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB21_.exit unwind label %bb.h, !dbg !133822

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #38, !dbg !133829
  unreachable, !dbg !133829

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !133820
  resume { ptr, i32 } %i.m, !dbg !133830

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB21_.exit: ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !133820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !133831
  ret void, !dbg !133832
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvXs0_NtB19_6binaryNtB2Z_10BinaryExprNtB19_12PhysicalExpr23evaluate_on_groups_impl0E0B1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !133833 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [272 x i8], align 16              ; 4 uses
  %i.c = alloca [272 x i8], align 16              ; 4 uses
  %i.d = alloca [272 x i8], align 16              ; 4 uses
  %i.e = alloca [272 x i8], align 16              ; 4 uses
  %i.f = alloca [160 x i8], align 16              ; 11 uses
  %i.g = alloca [272 x i8], align 16              ; 4 uses
  %i.h = alloca [272 x i8], align 16              ; 4 uses
  %i.i = alloca [272 x i8], align 16              ; 4 uses
  %i.j = alloca [272 x i8], align 16              ; 4 uses
  %i.k = alloca [272 x i8], align 16              ; 4 uses
  %i.l = alloca [272 x i8], align 16              ; 4 uses
  %i.m = alloca [272 x i8], align 16              ; 4 uses
  %i.n = alloca [272 x i8], align 16              ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [272 x i8], align 16              ; 24 uses
  %i.q = alloca [272 x i8], align 16              ; 27 uses
  %i.r = alloca [544 x i8], align 16              ; 7 uses
  %i.s = alloca [272 x i8], align 16              ; 13 uses
  %.sroa.3.i = alloca [72 x i8], align 16         ; 5 uses
  %.sroa.4.i = alloca [184 x i8], align 8         ; 4 uses
  %i.t = alloca [272 x i8], align 16              ; 13 uses
  %i.u = alloca [272 x i8], align 16              ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !dbg !134268, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %1 = load <4 x ptr>, ptr %i.v, align 8, !dbg !134269 ; 5 uses
  %2 = extractelement <4 x ptr> %1, i64 0, !dbg !134269 ; 8 uses
  store ptr null, ptr %i.v, align 8, !dbg !134270
  %.not = icmp eq ptr %2, null, !dbg !134271
  br i1 %.not, label %bb.ci, label %bb.b, !dbg !134272, !prof !866

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !134273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !134274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134172), !dbg !134274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i), !dbg !134275
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !134275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !134275, !noalias !134174
  %i.w = extractelement <4 x ptr> %1, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = extractelement <4 x ptr> %1, i64 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %3 = extractelement <4 x ptr> %1, i64 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !134276, !noalias !134174
  store <4 x ptr> %1, ptr %i.a, align 8, !dbg !134276, !noalias !134174
  call void @_RINvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB3_5RAYON4withNCINvB2_7installNCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB1k_10BinaryExprNtB1m_12PhysicalExpr23evaluate_on_groups_impl00TINtNtCscgRAwXFJnXP_4core6result6ResultNtB1m_18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3d_EE0B3c_EB1o_(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !dbg !134277, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !134278, !noalias !134174
  %.sroa.0.0.copyload.i = load i128, ptr %i.r, align 16, !dbg !134279, !noalias !134174 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !134279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.3.i, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.3.0..sroa_idx.i, i64 72, i1 false), !dbg !134279, !noalias !134174
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88, !dbg !134279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.4.0..sroa_idx.i, i64 184, i1 false), !dbg !134279, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !134280, !noalias !134174
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 272, !dbg !134280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.s, ptr noundef nonnull align 16 dereferenceable(272) %i.y, i64 272, i1 false), !dbg !134280, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !134281, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !134282, !noalias !134174
  %i.z = icmp eq i128 %.sroa.0.0.copyload.i, 4, !dbg !134283
  br i1 %i.z, label %bb.c, label %bb.m, !dbg !134284

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !134285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aa, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.3.i, i64 72, i1 false), !dbg !134286, !noalias !134176
  store i128 4, ptr %i.t, align 16, !dbg !134285, !alias.scope !134172, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !134287, !noalias !134174
  %i.ab = load i128, ptr %i.s, align 16, !dbg !134288, !range !940, !alias.scope !134177, !noalias !134174, !noundef !860
  %.not.i.i = icmp eq i128 %i.ab, 4, !dbg !134288
  br i1 %.not.i.i, label %bb.l, label %bb.d, !dbg !134288

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions8AggStateEBK_(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.s)
          to label %bb.h unwind label %bb.e, !dbg !134289, !noalias !134174

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 176, !dbg !134289
  call void @llvm.experimental.noalias.scope.decl(metadata !134178), !dbg !134289
  %i.ae = load i64, ptr %i.ad, align 16, !dbg !134290, !range !936, !alias.scope !134179, !noalias !134174, !noundef !860
  %i.af = icmp eq i64 %i.ae, -9223372036854775807, !dbg !134290
  br i1 %i.af, label %common.resume, label %bb.f, !dbg !134290

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !134180), !dbg !134290
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 232, !dbg !134291 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134181), !dbg !134291
  call void @llvm.experimental.noalias.scope.decl(metadata !134182), !dbg !134292
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !134293, !alias.scope !134183, !noalias !134174, !nonnull !860, !noundef !860
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !134294, !noalias !134184
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !134295
  br i1 %i.aj, label %bb.g, label %common.resume, !dbg !134295

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !134296
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #36
          to label %common.resume unwind label %bb.k, !dbg !134297, !noalias !134174

bb.h:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 176, !dbg !134289
  call void @llvm.experimental.noalias.scope.decl(metadata !134185), !dbg !134289
  %i.al = load i64, ptr %i.ak, align 16, !dbg !134298, !range !936, !alias.scope !134186, !noalias !134174, !noundef !860
  %i.am = icmp eq i64 %i.al, -9223372036854775807, !dbg !134298
  br i1 %i.am, label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, label %bb.i, !dbg !134298

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !134187), !dbg !134298
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 232, !dbg !134299 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134188), !dbg !134299
  call void @llvm.experimental.noalias.scope.decl(metadata !134189), !dbg !134300
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !134301, !alias.scope !134190, !noalias !134174, !nonnull !860, !noundef !860
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !dbg !134302, !noalias !134191
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !134303
  br i1 %i.aq, label %bb.j, label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, !dbg !134303

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !134304
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an) #36, !dbg !134305, !noalias !134174
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, !dbg !134305

bb.k:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !134289, !noalias !134174
  unreachable, !dbg !134289

common.resume:                                    ; preds = %bb.e, %bb.f, %bb.g, %bb.o, %bb.p, %bb.q, %bb.ch, %bb.cj
  %common.resume.op = phi { ptr, i32 } [ %i.jc, %bb.cj ], [ %i.av, %bb.o ], [ %i.ac, %bb.e ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %i.av, %bb.q ], [ %i.av, %bb.p ], [ %.pn176.i, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !134306

bb.l:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !134288
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.as), !dbg !134288, !noalias !134174
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, !dbg !134288

bb.m:                                             ; preds = %bb.b
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 88, !dbg !134307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.518.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.4.i, i64 184, i1 false), !dbg !134308, !noalias !134174
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !134307 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.3.i, i64 72, i1 false), !dbg !134309, !noalias !134174
  store i128 %.sroa.0.0.copyload.i, ptr %i.q, align 16, !dbg !134307, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !134310, !noalias !134174
  %.sroa.025.0.copyload.i = load i128, ptr %i.s, align 16, !dbg !134311, !noalias !134174 ; 3 uses
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !134311 ; 2 uses
  %i.at = icmp eq i128 %.sroa.025.0.copyload.i, 4, !dbg !134312
  br i1 %i.at, label %bb.n, label %bb.v, !dbg !134313

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !134314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.au, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.627.0..sroa_idx.i, i64 72, i1 false), !dbg !134315, !noalias !134176
  store i128 4, ptr %i.t, align 16, !dbg !134314, !alias.scope !134172, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !134316, !noalias !134174
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions8AggStateEBK_(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.q)
          to label %bb.r unwind label %bb.o, !dbg !134317, !noalias !134174

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 176, !dbg !134317
  call void @llvm.experimental.noalias.scope.decl(metadata !134193), !dbg !134317
  %i.ax = load i64, ptr %i.aw, align 16, !dbg !134318, !range !936, !alias.scope !134194, !noalias !134174, !noundef !860
  %i.ay = icmp eq i64 %i.ax, -9223372036854775807, !dbg !134318
  br i1 %i.ay, label %common.resume, label %bb.p, !dbg !134318

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !134195), !dbg !134318
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 232, !dbg !134319 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134196), !dbg !134319
  call void @llvm.experimental.noalias.scope.decl(metadata !134197), !dbg !134320
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !134321, !alias.scope !134198, !noalias !134174, !nonnull !860, !noundef !860
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !134322, !noalias !134199
  %i.bc = icmp eq i64 %i.bb, 1, !dbg !134323
  br i1 %i.bc, label %bb.q, label %common.resume, !dbg !134323

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !134324
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #36
          to label %common.resume unwind label %bb.u, !dbg !134325, !noalias !134174

bb.r:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 176, !dbg !134317
  call void @llvm.experimental.noalias.scope.decl(metadata !134200), !dbg !134317
  %i.be = load i64, ptr %i.bd, align 16, !dbg !134326, !range !936, !alias.scope !134201, !noalias !134174, !noundef !860
  %i.bf = icmp eq i64 %i.be, -9223372036854775807, !dbg !134326
  br i1 %i.bf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_.exit.i, label %bb.s, !dbg !134326

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !134202), !dbg !134326
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 232, !dbg !134327 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134203), !dbg !134327
  call void @llvm.experimental.noalias.scope.decl(metadata !134204), !dbg !134328
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !134329, !alias.scope !134205, !noalias !134174, !nonnull !860, !noundef !860
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !134330, !noalias !134206
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !134331
  br i1 %i.bj, label %bb.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_.exit.i, !dbg !134331

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !134332
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #36, !dbg !134333, !noalias !134174
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_.exit.i, !dbg !134333

bb.u:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !134317, !noalias !134174
  unreachable, !dbg !134317

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !134287, !noalias !134174
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, !dbg !134334

bb.v:                                             ; preds = %bb.m
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 88, !dbg !134311
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88, !dbg !134335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.532.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx.i, i64 184, i1 false), !dbg !134336, !noalias !134174
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !134335 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.627.0..sroa_idx.i, i64 72, i1 false), !dbg !134311, !noalias !134174
  store i128 %.sroa.025.0.copyload.i, ptr %i.p, align 16, !dbg !134335, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !134337, !noalias !134174
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !134337
  store i64 2, ptr %.sroa.495.0..sroa_idx.i, align 8, !dbg !134337, !noalias !134174
  %.sroa.596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !134337 ; 2 uses
  store ptr %i.q, ptr %.sroa.596.0..sroa_idx.i, align 8, !dbg !134337, !noalias !134174
  %.sroa.697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !134337
  store ptr %i.p, ptr %.sroa.697.0..sroa_idx.i, align 8, !dbg !134337, !noalias !134174
  %i.bl = trunc nuw nsw i128 %.sroa.025.0.copyload.i to i64
  %i.bm = load i128, ptr %i.p, align 16, !range !1024
  %i.bn = trunc nuw nsw i128 %i.bm to i64
  br label %.lr.ph.lr.ph.lr.ph.i, !dbg !134338

.lr.ph.lr.ph.lr.ph.i:                             ; preds = %.outer.i, %bb.v
  %.sroa.033.0.ph292.i = phi i8 [ 0, %bb.v ], [ %.sroa.033.0.ph197238.i242, %.outer.i ]
  %.sroa.037.0.ph291.i = phi i8 [ 0, %bb.v ], [ %.sroa.037.0.ph193261.i, %.outer.i ]
  %.sroa.040.0.ph290.i = phi i8 [ 0, %bb.v ], [ 1, %.outer.i ] ; 7 uses
  %.sroa.043.0.ph289.i = phi i1 [ false, %bb.v ], [ %.sroa.043.1.i, %.outer.i ] ; 9 uses
  %.sroa.044.0.ph288.i = phi i1 [ false, %bb.v ], [ %.sroa.044.2.i, %.outer.i ] ; 9 uses
  %.sroa.047.0.ph287.i = phi ptr [ null, %bb.v ], [ %.lcssa56, %.outer.i ] ; 3 uses
  %.ph286.i = phi i64 [ 0, %bb.v ], [ 1, %.outer.i ]
  br label %.lr.ph.lr.ph.i, !dbg !134338

.lr.ph.lr.ph.i:                                   ; preds = %.outer191.i, %.lr.ph.lr.ph.lr.ph.i
  %.sroa.033.0.ph194262.i = phi i8 [ %.sroa.033.0.ph292.i, %.lr.ph.lr.ph.lr.ph.i ], [ %.sroa.033.0.ph197238.i.lcssa238, %.outer191.i ] ; 3 uses
  %.sroa.037.0.ph193261.i = phi i8 [ %.sroa.037.0.ph291.i, %.lr.ph.lr.ph.lr.ph.i ], [ 1, %.outer191.i ] ; 7 uses
  %.ph192260.i = phi i64 [ %.ph286.i, %.lr.ph.lr.ph.lr.ph.i ], [ 1, %.outer191.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.596.0..sroa_idx.i, i64 %.ph192260.i, !dbg !134339
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !134340, !alias.scope !134211, !noalias !134174, !nonnull !860, !align !1172, !noundef !860 ; 2 uses
  %i.bq = load i128, ptr %i.bp, align 16, !dbg !134341, !range !1024, !noalias !134174, !noundef !860
  %i.br = trunc nuw nsw i128 %i.bq to i64, !dbg !134341
  %.not.i154217.i.peel = icmp eq i64 %.ph192260.i, 1, !dbg !134338 ; 4 uses
  switch i64 %i.br, label %default.unreachable [
    i64 0, label %.outer195.i.peel
    i64 1, label %.outer191.i
    i64 2, label %.loopexit
    i64 3, label %.loopexit272
  ], !dbg !134342

.outer195.i.peel:                                 ; preds = %.lr.ph.lr.ph.i
  br i1 %.not.i154217.i.peel, label %._crit_edge.i, label %.lr.ph.i, !dbg !134338

.lr.ph.i:                                         ; preds = %.outer195.i.peel
  switch i64 %i.bn, label %.lr.ph.i.unreachabledefault [
    i64 0, label %._crit_edge.i
    i64 1, label %.outer191.i
    i64 2, label %.loopexit
    i64 3, label %.loopexit272
  ], !dbg !134342

.loopexit272:                                     ; preds = %.lr.ph.lr.ph.i, %.lr.ph.i
  %.sroa.033.0.ph197238.i.lcssa240 = phi i8 [ 1, %.lr.ph.i ], [ %.sroa.033.0.ph194262.i, %.lr.ph.lr.ph.i ] ; 4 uses
  %.not.i154217.i.lcssa232 = phi i1 [ true, %.lr.ph.i ], [ %.not.i154217.i.peel, %.lr.ph.lr.ph.i ], !dbg !134338
  br i1 %.not.i154217.i.lcssa232, label %._crit_edge.i, label %.peel.next, !dbg !134338

.peel.next:                                       ; preds = %.loopexit272
  switch i64 %i.bl, label %default.unreachable.i [
    i64 0, label %._crit_edge.i.loopexit229
    i64 1, label %._crit_edge.i.loopexit179
    i64 2, label %.loopexit
    i64 3, label %._crit_edge.i
  ], !dbg !134342

.thread178.i:                                     ; preds = %bb.bb, %bb.az, %bb.ag, %bb.ad, %bb.z, %bb.w
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !134316

._crit_edge.i.loopexit179:                        ; preds = %.peel.next
  br label %._crit_edge.i, !dbg !134343

._crit_edge.i.loopexit229:                        ; preds = %.peel.next
  br label %._crit_edge.i, !dbg !134343

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.outer.i, %.loopexit272, %.outer191.i, %.outer195.i.peel, %.peel.next, %._crit_edge.i.loopexit229, %._crit_edge.i.loopexit179
  %.sroa.044.0.ph.lcssa212.i = phi i1 [ %.sroa.044.0.ph288.i, %._crit_edge.i.loopexit179 ], [ %.sroa.044.0.ph288.i, %._crit_edge.i.loopexit229 ], [ %.sroa.044.0.ph288.i, %.outer191.i ], [ %.sroa.044.0.ph288.i, %.peel.next ], [ %.sroa.044.0.ph288.i, %.outer195.i.peel ], [ %.sroa.044.2.i, %.outer.i ], [ %.sroa.044.0.ph288.i, %.loopexit272 ], [ %.sroa.044.0.ph288.i, %.lr.ph.i ]
  %.sroa.043.0.ph.lcssa211.i = phi i1 [ %.sroa.043.0.ph289.i, %._crit_edge.i.loopexit179 ], [ %.sroa.043.0.ph289.i, %._crit_edge.i.loopexit229 ], [ %.sroa.043.0.ph289.i, %.outer191.i ], [ %.sroa.043.0.ph289.i, %.peel.next ], [ %.sroa.043.0.ph289.i, %.outer195.i.peel ], [ %.sroa.043.1.i, %.outer.i ], [ %.sroa.043.0.ph289.i, %.loopexit272 ], [ %.sroa.043.0.ph289.i, %.lr.ph.i ]
  %.sroa.040.0.ph.lcssa210.i = phi i8 [ %.sroa.040.0.ph290.i, %._crit_edge.i.loopexit179 ], [ %.sroa.040.0.ph290.i, %._crit_edge.i.loopexit229 ], [ %.sroa.040.0.ph290.i, %.outer191.i ], [ %.sroa.040.0.ph290.i, %.peel.next ], [ %.sroa.040.0.ph290.i, %.outer195.i.peel ], [ 1, %.outer.i ], [ %.sroa.040.0.ph290.i, %.loopexit272 ], [ %.sroa.040.0.ph290.i, %.lr.ph.i ] ; 2 uses
  %.sroa.037.0.ph193.lcssa209.i = phi i8 [ 1, %._crit_edge.i.loopexit179 ], [ %.sroa.037.0.ph193261.i, %._crit_edge.i.loopexit229 ], [ 1, %.outer191.i ], [ %.sroa.037.0.ph193261.i, %.peel.next ], [ %.sroa.037.0.ph193261.i, %.outer195.i.peel ], [ %.sroa.037.0.ph193261.i, %.loopexit272 ], [ %.sroa.037.0.ph193261.i, %.outer.i ], [ %.sroa.037.0.ph193261.i, %.lr.ph.i ] ; 3 uses
  %.sroa.033.0.ph197.lcssa207.i = phi i8 [ %.sroa.033.0.ph197238.i.lcssa240, %._crit_edge.i.loopexit179 ], [ 1, %._crit_edge.i.loopexit229 ], [ %.sroa.033.0.ph197238.i.lcssa238, %.outer191.i ], [ %.sroa.033.0.ph197238.i.lcssa240, %.peel.next ], [ 1, %.outer195.i.peel ], [ %.sroa.033.0.ph197238.i242, %.outer.i ], [ %.sroa.033.0.ph197238.i.lcssa240, %.loopexit272 ], [ 1, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !134343, !noalias !134174
  %i.bs = trunc nuw i8 %.sroa.033.0.ph197.lcssa207.i to i1, !dbg !134344
  %i.bt = trunc nuw i8 %.sroa.037.0.ph193.lcssa209.i to i1
  %i.bu = trunc nuw i8 %.sroa.040.0.ph.lcssa210.i to i1, !dbg !134344
  %i.bv = or i8 %.sroa.033.0.ph197.lcssa207.i, %.sroa.040.0.ph.lcssa210.i, !dbg !134344 ; 2 uses
  %i.bw = or i8 %i.bv, %.sroa.037.0.ph193.lcssa209.i, !dbg !134345
  %.sroa.055.0.not.not.i = icmp eq i8 %i.bw, 0, !dbg !134345
  %..sroa.037.0.i = or i8 %.sroa.033.0.ph197.lcssa207.i, %.sroa.037.0.ph193.lcssa209.i, !dbg !134346
  %i.bx = load i8, ptr %.sroa.417.0..sroa_idx.i, align 16, !dbg !134347, !range !872, !noalias !134174, !noundef !860 ; 2 uses
  %.not140.i = icmp eq i8 %i.bx, 31, !dbg !134347
  br i1 %.not140.i, label %bb.w, label %bb.x, !dbg !134348

.lr.ph.i.unreachabledefault:                      ; preds = %.lr.ph.i
  unreachable

default.unreachable:                              ; preds = %.lr.ph.lr.ph.i
  unreachable

default.unreachable.i:                            ; preds = %.peel.next
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !134349
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !134349, !noalias !134174, !nonnull !860, !noundef !860
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !134349
  %i.cb = load ptr, ptr %i.ca, align 16, !dbg !134349, !noalias !134174, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !134350
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !134350, !range !982, !invariant.load !860, !noalias !134174
  %i.ce = add nsw i64 %i.cd, -1, !dbg !134350
  %i.cf = and i64 %i.ce, -16, !dbg !134350
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cf, !dbg !134350
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !134350
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 304, !dbg !134351
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !134351, !invariant.load !860, !noalias !134174, !nonnull !860
  %i.ck = invoke noundef nonnull align 16 ptr %i.cj(ptr noundef nonnull %i.ch)
          to label %thread-pre-split.i unwind label %.thread178.i, !dbg !134352, !noalias !134174

thread-pre-split.i:                               ; preds = %bb.w
  %.pr.i = load i8, ptr %i.ck, align 16, !dbg !134353, !noalias !134174
  br label %bb.x, !dbg !134353

bb.x:                                             ; preds = %thread-pre-split.i, %._crit_edge.i
  %i.cl = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bx, %._crit_edge.i ], !dbg !134353
  %i.cm = icmp eq i8 %i.cl, 14, !dbg !134354
  br i1 %i.cm, label %switch.lookup, label %bb.y, !dbg !134354

switch.lookup:                                    ; preds = %bb.aa, %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 256, !dbg !134355
  %i.co = load i8, ptr %i.cn, align 16, !dbg !134355, !range !1227, !noalias !134174, !noundef !860
  %switch.cast = zext nneg i8 %i.co to i20, !dbg !134356
  %switch.downshift = lshr i20 -229632, %switch.cast, !dbg !134356
  %switch.masked = trunc i20 %switch.downshift to i1, !dbg !134356
  br label %bb.ab, !dbg !134356

bb.y:                                             ; preds = %bb.x
  %i.cp = load i8, ptr %.sroa.431.0..sroa_idx.i, align 16, !dbg !134357, !range !872, !noalias !134174, !noundef !860 ; 2 uses
  %.not141.i = icmp eq i8 %i.cp, 31, !dbg !134357
  br i1 %.not141.i, label %bb.z, label %bb.aa, !dbg !134358

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !134359
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !134359, !noalias !134174, !nonnull !860, !noundef !860
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !134359
  %i.ct = load ptr, ptr %i.cs, align 16, !dbg !134359, !noalias !134174, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16, !dbg !134360
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !134360, !range !982, !invariant.load !860, !noalias !134174
  %i.cw = add nsw i64 %i.cv, -1, !dbg !134360
  %i.cx = and i64 %i.cw, -16, !dbg !134360
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cx, !dbg !134360
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16, !dbg !134360
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 304, !dbg !134361
  %i.db = load ptr, ptr %i.da, align 8, !dbg !134361, !invariant.load !860, !noalias !134174, !nonnull !860
  %i.dc = invoke noundef nonnull align 16 ptr %i.db(ptr noundef nonnull %i.cz)
          to label %thread-pre-split181.i unwind label %.thread178.i, !dbg !134362, !noalias !134174

thread-pre-split181.i:                            ; preds = %bb.z
  %.pr182.i = load i8, ptr %i.dc, align 16, !dbg !134363, !noalias !134174
  br label %bb.aa, !dbg !134363

bb.aa:                                            ; preds = %thread-pre-split181.i, %bb.y
  %i.dd = phi i8 [ %.pr182.i, %thread-pre-split181.i ], [ %i.cp, %bb.y ], !dbg !134363
  %i.de = icmp eq i8 %i.dd, 14, !dbg !134364
  br i1 %i.de, label %switch.lookup, label %bb.ab, !dbg !134365

bb.ab:                                            ; preds = %switch.lookup, %bb.aa
  %.sroa.066.0.i = phi i1 [ false, %bb.aa ], [ %switch.masked, %switch.lookup ], !dbg !134366
  %i.df = load i128, ptr %i.q, align 16, !dbg !134367, !range !1024, !noalias !134220, !noundef !860
  %switch.and1.i.i.i = and i128 %i.df, 1, !dbg !134368
  %switch.selectcmp.i.i.i = icmp eq i128 %switch.and1.i.i.i, 0, !dbg !134368
  br i1 %switch.selectcmp.i.i.i, label %bb.ac, label %.loopexit.i, !dbg !134369

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load i128, ptr %i.p, align 16, !dbg !134367, !range !1024, !noalias !134220, !noundef !860
  %switch.and1.i.i.1.i = and i128 %i.dg, 1, !dbg !134368
  %switch.selectcmp.i.i.1.i = icmp eq i128 %switch.and1.i.i.1.i, 0, !dbg !134368
  br i1 %switch.selectcmp.i.i.1.i, label %bb.ad, label %.loopexit.i, !dbg !134369

bb.ad:                                            ; preds = %bb.ac
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext6groups(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.q)
          to label %bb.ae unwind label %.thread178.i, !dbg !134370, !noalias !134174 ; 3 uses

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i, %bb.ar, %.lr.ph.split.i.split.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i, %bb.ap, %.lr.ph.split.i.split.us.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i, %bb.an, %.lr.ph.split.us.i.split.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i, %bb.al, %.lr.ph.split.us.i.split.us.i, %bb.aj, %bb.ac, %bb.ab
  %.sroa.067.0.i = phi i1 [ true, %bb.an ], [ false, %bb.aj ], [ false, %bb.ab ], [ true, %bb.al ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i ], [ false, %bb.ac ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i ], [ false, %.lr.ph.split.us.i.split.us.i ], [ false, %.lr.ph.split.us.i.split.i ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i ], [ false, %.lr.ph.split.i.split.us.i ], [ true, %bb.ap ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i ], [ true, %bb.ar ], [ false, %.lr.ph.split.i.split.i ], !dbg !134371
  br i1 %.sroa.055.0.not.not.i, label %bb.at, label %bb.as, !dbg !134372

bb.ae:                                            ; preds = %bb.ad
  %i.di = load i64, ptr %i.dh, align 8, !dbg !134373, !range !936, !noalias !134174, !noundef !860 ; 2 uses
  %.not142.i = icmp eq i64 %i.di, -9223372036854775807, !dbg !134373
  br i1 %.not142.i, label %bb.af, label %bb.ag, !dbg !134374

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !134375
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !134375, !noalias !134174, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %.pr183.i = load i64, ptr %i.dk, align 8, !dbg !134376, !noalias !134174
  br label %bb.ag, !dbg !134377

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dl = phi i64 [ %i.di, %bb.ae ], [ %.pr183.i, %bb.af ], !dbg !134376
  %.sroa.0107.0.i = phi ptr [ %i.dh, %bb.ae ], [ %i.dk, %bb.af ], !dbg !134378 ; 7 uses
  %i.dm = icmp eq i64 %i.dl, -9223372036854775808, !dbg !134376 ; 2 uses
  %..i = select i1 %i.dm, i64 24, i64 16, !dbg !134379
  %.412.i = select i1 %i.dm, i64 1152921504606846976, i64 2305843009213693952, !dbg !134379
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 %..i, !dbg !134379
  %i.do = load i64, ptr %i.dn, align 8, !dbg !134379, !noalias !134174, !noundef !860 ; 6 uses
  %i.dp = icmp ult i64 %i.do, %.412.i, !dbg !134379
  call void @llvm.assume(i1 %i.dp), !dbg !134379
  %i.dq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext6groups(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.p)
          to label %bb.ah unwind label %.thread178.i, !dbg !134380, !noalias !134174 ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !134381, !range !936, !noalias !134174, !noundef !860 ; 2 uses
  %.not143.i = icmp eq i64 %i.dr, -9223372036854775807, !dbg !134381
  br i1 %.not143.i, label %bb.ai, label %bb.aj, !dbg !134382

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8, !dbg !134383
  %i.dt = load ptr, ptr %i.ds, align 8, !dbg !134383, !noalias !134174, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %.pr184.i = load i64, ptr %i.dt, align 8, !dbg !134384, !noalias !134174
  br label %bb.aj, !dbg !134385

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.du = phi i64 [ %i.dr, %bb.ah ], [ %.pr184.i, %bb.ai ], !dbg !134384
  %.sroa.0114.0.i = phi ptr [ %i.dq, %bb.ah ], [ %i.dt, %bb.ai ], !dbg !134386 ; 5 uses
  %i.dv = icmp eq i64 %i.du, -9223372036854775808, !dbg !134384 ; 4 uses
  %.413.i = select i1 %i.dv, i64 24, i64 16, !dbg !134387
  %.414.i = select i1 %i.dv, i64 1152921504606846976, i64 2305843009213693952, !dbg !134387
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.i, i64 %.413.i, !dbg !134387
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !134387, !noalias !134174, !noundef !860 ; 5 uses
  %i.dy = icmp ult i64 %i.dx, %.414.i, !dbg !134387
  call void @llvm.assume(i1 %i.dy), !dbg !134387
  %.not.i.i.i18.i.not.i = icmp eq i64 %i.do, 0, !dbg !134388
  br i1 %.not.i.i.i18.i.not.i, label %.loopexit.i, label %.lr.ph.i.i, !dbg !134388

.lr.ph.i.i:                                       ; preds = %bb.aj
  %i.dz = load i64, ptr %.sroa.0107.0.i, align 8, !range !938, !noalias !134231, !noundef !860
  %i.ea = icmp eq i64 %i.dz, -9223372036854775808
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.i, i64 16 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.i, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.i, i64 40 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.i, i64 24 ; 2 uses
  br i1 %i.ea, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !134231, !nonnull !860, !noundef !860 ; 2 uses
  %i.ei = load i64, ptr %i.ef, align 8, !noalias !134231, !noundef !860 ; 2 uses
  br i1 %i.dv, label %.lr.ph.split.us.i.split.us.i, label %.lr.ph.split.us.i.split.i

.lr.ph.split.us.i.split.us.i:                     ; preds = %.lr.ph.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i
  %i.ej = phi i64 [ %i.en, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i ], [ 0, %.lr.ph.split.us.i.i ] ; 6 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei, !dbg !134389
  call void @llvm.assume(i1 %i.ek), !dbg !134390
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ej, !dbg !134391
  %.sroa.05.0.copyload.i.i.i.us.i.us.i = load i64, ptr %i.el, align 4, !dbg !134392, !noalias !134231
  %i.em = lshr i64 %.sroa.05.0.copyload.i.i.i.us.i.us.i, 32, !dbg !134393 ; 2 uses
  %i.en = add nuw nsw i64 %i.ej, 1, !dbg !134394  ; 2 uses
  %exitcond56.not.i.us.i = icmp eq i64 %i.ej, %i.dx, !dbg !134395
  br i1 %exitcond56.not.i.us.i, label %.loopexit.i, label %bb.ak, !dbg !134395

bb.ak:                                            ; preds = %.lr.ph.split.us.i.split.us.i
  %i.eo = load ptr, ptr %i.eb, align 8, !dbg !134396, !noalias !134235, !nonnull !860, !noundef !860
  %i.ep = load i64, ptr %i.ee, align 8, !dbg !134397, !noalias !134235, !noundef !860
  %i.eq = icmp ult i64 %i.ej, %i.ep, !dbg !134398
  call void @llvm.assume(i1 %i.eq), !dbg !134399
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ej, !dbg !134400
  %.sroa.05.0.copyload.i7.i.i.us.i.us.i = load i64, ptr %i.er, align 4, !dbg !134401, !noalias !134235
  %i.es = lshr i64 %.sroa.05.0.copyload.i7.i.i.us.i.us.i, 32, !dbg !134393 ; 2 uses
  %.not51.i.i.us.i.us.i = icmp eq i64 %i.es, %i.em, !dbg !134402
  br i1 %.not51.i.i.us.i.us.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i, label %bb.al, !dbg !134402

bb.al:                                            ; preds = %bb.ak
  %i.et = icmp eq i64 %i.em, 1, !dbg !134403
  %i.eu = icmp eq i64 %i.es, 1
  %or.cond.i = or i1 %i.et, %i.eu, !dbg !134403
  br i1 %or.cond.i, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i, !dbg !134403

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.us.i: ; preds = %bb.al, %bb.ak
  %exitcond57.not.i.us.i = icmp eq i64 %i.en, %i.do, !dbg !134388
  br i1 %exitcond57.not.i.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.split.us.i, !dbg !134388

.lr.ph.split.us.i.split.i:                        ; preds = %.lr.ph.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i
  %i.ev = phi i64 [ %i.ez, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 7 uses
  %i.ew = icmp ult i64 %i.ev, %i.ei, !dbg !134389
  call void @llvm.assume(i1 %i.ew), !dbg !134390
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ev, !dbg !134391
  %.sroa.05.0.copyload.i.i.i.us.i.i = load i64, ptr %i.ex, align 4, !dbg !134392, !noalias !134231
  %i.ey = lshr i64 %.sroa.05.0.copyload.i.i.i.us.i.i, 32, !dbg !134393 ; 2 uses
  %i.ez = add nuw nsw i64 %i.ev, 1, !dbg !134394  ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %i.ev, %i.dx, !dbg !134395
  br i1 %exitcond56.not.i.i, label %.loopexit.i, label %bb.am, !dbg !134395

bb.am:                                            ; preds = %.lr.ph.split.us.i.split.i
  %i.fa = trunc nuw i64 %i.ey to i32, !dbg !134393
  %i.fb = load i64, ptr %i.eb, align 8, !dbg !134404, !noalias !134235, !noundef !860
  %i.fc = icmp ult i64 %i.ev, %i.fb, !dbg !134405
  call void @llvm.assume(i1 %i.fc), !dbg !134406
  %i.fd = load ptr, ptr %i.ec, align 8, !dbg !134407, !noalias !134235, !nonnull !860, !noundef !860
  %i.fe = load i64, ptr %i.ed, align 8, !dbg !134408, !noalias !134235, !noundef !860
  %i.ff = icmp ult i64 %i.ev, %i.fe, !dbg !134409
  call void @llvm.assume(i1 %i.ff), !dbg !134410
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.ev, !dbg !134411
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8, !dbg !134412
  %i.fi = load i32, ptr %i.fh, align 8, !dbg !134412, !noalias !134249, !noundef !860 ; 2 uses
  %.not50.i.i.us.i.i = icmp eq i32 %i.fi, %i.fa, !dbg !134402
  br i1 %.not50.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i, label %bb.an, !dbg !134402

bb.an:                                            ; preds = %bb.am
  %i.fj = icmp eq i64 %i.ey, 1, !dbg !134403
  %i.fk = icmp eq i32 %i.fi, 1
  %or.cond296.i = or i1 %i.fj, %i.fk, !dbg !134403
  br i1 %or.cond296.i, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i, !dbg !134403

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.us.i.i: ; preds = %bb.an, %bb.am
  %exitcond57.not.i.i = icmp eq i64 %i.ez, %i.do, !dbg !134388
  br i1 %exitcond57.not.i.i, label %.loopexit.i, label %.lr.ph.split.us.i.split.i, !dbg !134388

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !134231, !noundef !860 ; 2 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !noalias !134231, !nonnull !860, !noundef !860 ; 2 uses
  %i.fq = load i64, ptr %i.fl, align 8, !noalias !134231, !noundef !860 ; 2 uses
  br i1 %i.dv, label %.lr.ph.split.i.split.us.i, label %.lr.ph.split.i.split.i

.lr.ph.split.i.split.us.i:                        ; preds = %.lr.ph.split.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i
  %i.fr = phi i64 [ %i.fu, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i ], [ 0, %.lr.ph.split.i.i ] ; 7 uses
  %i.fs = icmp ult i64 %i.fr, %i.fo, !dbg !134413
  call void @llvm.assume(i1 %i.fs), !dbg !134414
  %i.ft = icmp ult i64 %i.fr, %i.fq, !dbg !134415
  call void @llvm.assume(i1 %i.ft), !dbg !134416
  %i.fu = add nuw nsw i64 %i.fr, 1, !dbg !134394  ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.fr, %i.dx, !dbg !134395
  br i1 %exitcond.not.i.us.i, label %.loopexit.i, label %bb.ao, !dbg !134395

bb.ao:                                            ; preds = %.lr.ph.split.i.split.us.i
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fr, !dbg !134417
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8, !dbg !134418
  %i.fx = load ptr, ptr %i.eb, align 8, !dbg !134396, !noalias !134235, !nonnull !860, !noundef !860
  %i.fy = load i64, ptr %i.ee, align 8, !dbg !134397, !noalias !134235, !noundef !860
  %i.fz = icmp ult i64 %i.fr, %i.fy, !dbg !134398
  call void @llvm.assume(i1 %i.fz), !dbg !134399
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fr, !dbg !134400
  %.sroa.05.0.copyload.i7.i.i.i.us.i = load i64, ptr %i.ga, align 4, !dbg !134401, !noalias !134235
  %i.gb = lshr i64 %.sroa.05.0.copyload.i7.i.i.i.us.i, 32, !dbg !134393 ; 2 uses
  %i.gc = trunc nuw i64 %i.gb to i32, !dbg !134393
  %i.gd = load i32, ptr %i.fw, align 8, !dbg !134418, !noalias !134249, !noundef !860 ; 2 uses
  %.not49.i.i.i.us.i = icmp eq i32 %i.gd, %i.gc, !dbg !134402
  br i1 %.not49.i.i.i.us.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i, label %bb.ap, !dbg !134402

bb.ap:                                            ; preds = %bb.ao
  %i.ge = icmp eq i32 %i.gd, 1, !dbg !134403
  %i.gf = icmp eq i64 %i.gb, 1
  %or.cond297.i = or i1 %i.ge, %i.gf, !dbg !134403
  br i1 %or.cond297.i, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i, !dbg !134403

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.us.i: ; preds = %bb.ap, %bb.ao
  %exitcond54.not.i.us.i = icmp eq i64 %i.fu, %i.do, !dbg !134388
  br i1 %exitcond54.not.i.us.i, label %.loopexit.i, label %.lr.ph.split.i.split.us.i, !dbg !134388

.lr.ph.split.i.split.i:                           ; preds = %.lr.ph.split.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i
  %i.gg = phi i64 [ %i.gj, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i ], [ 0, %.lr.ph.split.i.i ] ; 8 uses
  %i.gh = icmp ult i64 %i.gg, %i.fo, !dbg !134413
  call void @llvm.assume(i1 %i.gh), !dbg !134414
  %i.gi = icmp ult i64 %i.gg, %i.fq, !dbg !134415
  call void @llvm.assume(i1 %i.gi), !dbg !134416
  %i.gj = add nuw nsw i64 %i.gg, 1, !dbg !134394  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gg, %i.dx, !dbg !134395
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.aq, !dbg !134395

bb.aq:                                            ; preds = %.lr.ph.split.i.split.i
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.gg, !dbg !134417
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8, !dbg !134418
  %i.gm = load i64, ptr %i.eb, align 8, !dbg !134404, !noalias !134235, !noundef !860
  %i.gn = icmp ult i64 %i.gg, %i.gm, !dbg !134405
  call void @llvm.assume(i1 %i.gn), !dbg !134406
  %i.go = load ptr, ptr %i.ec, align 8, !dbg !134407, !noalias !134235, !nonnull !860, !noundef !860
  %i.gp = load i64, ptr %i.ed, align 8, !dbg !134408, !noalias !134235, !noundef !860
  %i.gq = icmp ult i64 %i.gg, %i.gp, !dbg !134409
  call void @llvm.assume(i1 %i.gq), !dbg !134410
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gg, !dbg !134411
  %i.gs = load i32, ptr %i.gl, align 8, !dbg !134418, !noalias !134249, !noundef !860 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !134412
  %i.gu = load i32, ptr %i.gt, align 8, !dbg !134412, !noalias !134249, !noundef !860 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.gs, %i.gu, !dbg !134402
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i, label %bb.ar, !dbg !134402

bb.ar:                                            ; preds = %bb.aq
  %i.gv = icmp eq i32 %i.gs, 1, !dbg !134403
  %i.gw = icmp eq i32 %i.gu, 1
  %or.cond298.i = or i1 %i.gv, %i.gw, !dbg !134403
  br i1 %or.cond298.i, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i, !dbg !134403

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position15GroupsIndicatorB1c_ENCNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB2F_10BinaryExprNtB2H_12PhysicalExpr23evaluate_on_groups_impl0s0_0E0B2J_.exit.thread.i.i: ; preds = %bb.ar, %bb.aq
  %exitcond54.not.i.i = icmp eq i64 %i.gj, %i.do, !dbg !134388
  br i1 %exitcond54.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.split.i, !dbg !134388

bb.as:                                            ; preds = %.loopexit.i
  %or.cond3.not.i = icmp ne i8 %i.bv, 0
  %or.cond.not.i = and i1 %or.cond3.not.i, %i.bt, !dbg !134419
  br i1 %or.cond.not.i, label %bb.av, label %bb.au, !dbg !134419

bb.at:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !134420, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.n, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134420, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !134421, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.m, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134421, !noalias !134174
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_all_literal(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.n, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.m), !dbg !134422, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !134423, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !134423, !noalias !134174
  br label %bb.bv, !dbg !134424

bb.au:                                            ; preds = %bb.as
  %i.gx = select i1 %i.bs, i1 true, i1 %.sroa.044.0.ph.lcssa212.i, !dbg !134345
  %i.gy = select i1 %i.bu, i1 %i.gx, i1 false, !dbg !134345 ; 2 uses
  %or.cond5.i = select i1 %i.gy, i1 %.sroa.043.0.ph.lcssa211.i, i1 false, !dbg !134425
  br i1 %or.cond5.i, label %bb.ax, label %bb.aw, !dbg !134425

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !134426, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.l, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134426, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !134427, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.k, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134427, !noalias !134174
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_group_aware(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.k), !dbg !134428, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !134429, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !134429, !noalias !134174
  br label %bb.bv, !dbg !134430

bb.aw:                                            ; preds = %bb.au
  br i1 %.sroa.066.0.i, label %bb.az, label %bb.ay, !dbg !134431

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !134432, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.j, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134432, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !134433, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.i, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134433, !noalias !134174
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_group_aware(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.j, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.i), !dbg !134434, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !134435, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !134435, !noalias !134174
  br label %bb.bv, !dbg !134436

bb.ay:                                            ; preds = %bb.bd, %bb.aw
  br i1 %i.gy, label %bb.bf, label %bb.be, !dbg !134437

bb.az:                                            ; preds = %bb.aw
  %i.gz = invoke noundef zeroext i1 @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext23groups_cover_all_values(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.q)
          to label %bb.ba unwind label %.thread178.i, !dbg !134438, !noalias !134174

bb.ba:                                            ; preds = %bb.az
  br i1 %i.gz, label %bb.bb, label %bb.bc, !dbg !134439

bb.bb:                                            ; preds = %bb.ba
  %i.ha = invoke noundef zeroext i1 @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext23groups_cover_all_values(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.p)
          to label %bb.bd unwind label %.thread178.i, !dbg !134440, !noalias !134174

bb.bc:                                            ; preds = %bb.bd, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !134441, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.h, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134441, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !134442, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.g, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134442, !noalias !134174
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_group_aware(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.g), !dbg !134443, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !134444, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !134444, !noalias !134174
  br label %bb.bv, !dbg !134445

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.ha, label %bb.ay, label %bb.bc, !dbg !134446

bb.be:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i, %bb.bk, %bb.ay
  %.sroa.056.1.i = phi i8 [ %..sroa.037.0.i, %bb.ay ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i ], [ 1, %bb.bk ], !dbg !134447
  br i1 %.sroa.067.0.i, label %bb.bi, label %bb.bh, !dbg !134448

bb.bf:                                            ; preds = %bb.ay
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.hc = load i128, ptr %i.q, align 16, !dbg !134449, !range !1024, !noalias !134174, !noundef !860
  %i.hd = icmp eq i128 %i.hc, 2, !dbg !134450
  br i1 %i.hd, label %bb.bj, label %bb.bk, !dbg !134450

bb.bg:                                            ; preds = %bb.bt, %bb.bs, %bb.bp, %bb.bn, %bb.bl, %bb.bj
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !134451

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !134452, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.c, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134452, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !134453, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.b, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134453, !noalias !134174
  %i.hf = trunc nuw i8 %.sroa.056.1.i to i1, !dbg !134454
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_elementwise(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.b, i1 noundef zeroext %i.hf), !dbg !134455, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !134456, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !134456, !noalias !134174
  br label %bb.bv, !dbg !134457

bb.bi:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !134458, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.e, ptr noundef nonnull align 16 dereferenceable(272) %i.q, i64 272, i1 false), !dbg !134458, !noalias !134174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !134459, !noalias !134174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.d, ptr noundef nonnull align 16 dereferenceable(272) %i.p, i64 272, i1 false), !dbg !134459, !noalias !134174
  call void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB4_10BinaryExpr17apply_group_aware(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.t, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %i.d), !dbg !134460, !noalias !134176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !134461, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !134461, !noalias !134174
  br label %bb.bv, !dbg !134457

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !134462, !noalias !134174
  invoke void @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext10aggregated(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.f, ptr noalias noundef nonnull align 16 dereferenceable(272) %i.q)
          to label %bb.bq unwind label %bb.bg, !dbg !134463, !noalias !134174

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i, %bb.bf
  %i.hg = load i128, ptr %i.p, align 16, !dbg !134449, !range !1024, !noalias !134174, !noundef !860
  %i.hh = icmp eq i128 %i.hg, 2, !dbg !134450
  br i1 %i.hh, label %bb.bl, label %bb.be, !dbg !134450

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !134462, !noalias !134174
  invoke void @_RNvMs_NtCskY9G75ZWc4U_11polars_expr11expressionsNtB4_18AggregationContext10aggregated(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.f, ptr noalias noundef nonnull align 16 dereferenceable(272) %i.p)
          to label %bb.bm unwind label %bb.bg, !dbg !134463, !noalias !134174

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !134251), !dbg !134464
  %i.hi = load i8, ptr %i.f, align 16, !dbg !134465, !range !872, !alias.scope !134251, !noalias !134174, !noundef !860
  %i.hj = icmp eq i8 %i.hi, 31, !dbg !134465
  br i1 %i.hj, label %bb.bo, label %bb.bn, !dbg !134465

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i unwind label %bb.bg, !dbg !134465, !noalias !134174

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !134252), !dbg !134465
  call void @llvm.experimental.noalias.scope.decl(metadata !134253), !dbg !134466
  call void @llvm.experimental.noalias.scope.decl(metadata !134254), !dbg !134467
  call void @llvm.experimental.noalias.scope.decl(metadata !134255), !dbg !134468
  %i.hk = load ptr, ptr %i.hb, align 8, !dbg !134469, !alias.scope !134256, !noalias !134174, !nonnull !860, !noundef !860
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !dbg !134470, !noalias !134257
  %i.hm = icmp eq i64 %i.hl, 1, !dbg !134471
  br i1 %i.hm, label %bb.bp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i, !dbg !134471

bb.bp:                                            ; preds = %bb.bo
  fence acquire, !dbg !134472
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hb) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i unwind label %bb.bg, !dbg !134473, !noalias !134174

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.1.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !134464, !noalias !134174
  br label %bb.be, !dbg !134474

bb.bq:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !134258), !dbg !134464
  %i.hn = load i8, ptr %i.f, align 16, !dbg !134465, !range !872, !alias.scope !134258, !noalias !134174, !noundef !860
  %i.ho = icmp eq i8 %i.hn, 31, !dbg !134465
  br i1 %i.ho, label %bb.br, label %bb.bt, !dbg !134465

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !134259), !dbg !134465
  call void @llvm.experimental.noalias.scope.decl(metadata !134260), !dbg !134466
  call void @llvm.experimental.noalias.scope.decl(metadata !134261), !dbg !134467
  call void @llvm.experimental.noalias.scope.decl(metadata !134262), !dbg !134468
  %i.hp = load ptr, ptr %i.hb, align 8, !dbg !134469, !alias.scope !134263, !noalias !134174, !nonnull !860, !noundef !860
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !dbg !134470, !noalias !134264
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !134471
  br i1 %i.hr, label %bb.bs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !134471

bb.bs:                                            ; preds = %bb.br
  fence acquire, !dbg !134472
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hb) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.bg, !dbg !134473, !noalias !134174

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.bg, !dbg !134465, !noalias !134174

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.bt, %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !134464, !noalias !134174
  br label %bb.bk, !dbg !134474

bb.bu:                                            ; preds = %bb.ch, %.thread.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !134475, !noalias !134174
  unreachable, !dbg !134475

bb.bv:                                            ; preds = %bb.bi, %bb.bh, %bb.bc, %bb.ax, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !134316, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !134287, !noalias !134174
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit, !dbg !134476

.outer191.i:                                      ; preds = %.lr.ph.i, %.lr.ph.lr.ph.i
  %.sroa.033.0.ph197238.i.lcssa238 = phi i8 [ %.sroa.033.0.ph194262.i, %.lr.ph.lr.ph.i ], [ 1, %.lr.ph.i ] ; 2 uses
  %.not.i154217.i.lcssa230 = phi i1 [ %.not.i154217.i.peel, %.lr.ph.lr.ph.i ], [ true, %.lr.ph.i ], !dbg !134338
  br i1 %.not.i154217.i.lcssa230, label %._crit_edge.i, label %.lr.ph.lr.ph.i, !dbg !134338

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.lr.ph.i, %.peel.next
  %.sroa.033.0.ph197238.i242 = phi i8 [ %.sroa.033.0.ph197238.i.lcssa240, %.peel.next ], [ 1, %.lr.ph.i ], [ %.sroa.033.0.ph194262.i, %.lr.ph.lr.ph.i ] ; 2 uses
  %.lcssa61 = phi i1 [ true, %.peel.next ], [ true, %.lr.ph.i ], [ %.not.i154217.i.peel, %.lr.ph.lr.ph.i ], !dbg !134477
  %.lcssa56 = phi ptr [ %i.p, %.peel.next ], [ %i.p, %.lr.ph.i ], [ %i.bp, %.lr.ph.lr.ph.i ], !dbg !134340 ; 6 uses
  %.not146.i = icmp eq ptr %.sroa.047.0.ph287.i, null, !dbg !134478
  br i1 %.not146.i, label %._crit_edge350.i, label %bb.bw, !dbg !134479

._crit_edge350.i:                                 ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 176
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !dbg !134480, !range !936, !noalias !134174
  br label %bb.bx, !dbg !134479

bb.bw:                                            ; preds = %.loopexit
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.047.0.ph287.i, i64 176, !dbg !134481 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 16, !dbg !134481, !range !936, !noalias !134174, !noundef !860
  %.not147.i = icmp eq i64 %i.hu, -9223372036854775807, !dbg !134481
  br i1 %.not147.i, label %bb.by, label %bb.bz, !dbg !134482

bb.bx:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %._crit_edge350.i
  %i.hv = phi i64 [ %.pre.i, %._crit_edge350.i ], [ %i.ia, %bb.cb ], [ %i.ia, %bb.cc ], [ %i.ia, %bb.cd ], !dbg !134480 ; 2 uses
  %.sroa.044.2.i = phi i1 [ %.sroa.044.0.ph288.i, %._crit_edge350.i ], [ true, %bb.cb ], [ true, %bb.cc ], [ %i.is, %bb.cd ], !dbg !134483 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 176, !dbg !134480
  %.not149.i = icmp eq i64 %i.hv, -9223372036854775807, !dbg !134480
  br i1 %.not149.i, label %bb.ce, label %bb.cf, !dbg !134484

bb.by:                                            ; preds = %bb.bw
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.047.0.ph287.i, i64 184, !dbg !134485
  %i.hy = load ptr, ptr %i.hx, align 8, !dbg !134485, !noalias !134174, !nonnull !860, !align !884, !noundef !860
  br label %bb.bz, !dbg !134486

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sroa.098.0.i = phi ptr [ %i.hy, %bb.by ], [ %i.ht, %bb.bw ], !dbg !134487 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 176, !dbg !134488 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 16, !dbg !134488, !range !936, !noalias !134174, !noundef !860 ; 4 uses
  %.not148.i = icmp eq i64 %i.ia, -9223372036854775807, !dbg !134488
  br i1 %.not148.i, label %bb.ca, label %bb.cb, !dbg !134489

bb.ca:                                            ; preds = %bb.bz
  %i.ib = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 184, !dbg !134490
  %i.ic = load ptr, ptr %i.ib, align 8, !dbg !134490, !noalias !134174, !nonnull !860, !align !884, !noundef !860
  br label %bb.cb, !dbg !134491

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0101.0.i = phi ptr [ %i.ic, %bb.ca ], [ %i.hz, %bb.bz ], !dbg !134492 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i, i64 56, !dbg !134493
  %i.ie = load ptr, ptr %i.id, align 8, !dbg !134493, !noalias !134174, !nonnull !860, !noundef !860
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i, i64 56, !dbg !134494
  %i.ig = load ptr, ptr %i.if, align 8, !dbg !134494, !noalias !134174, !nonnull !860, !noundef !860
  %i.ih = icmp eq ptr %i.ie, %i.ig, !dbg !134495
  br i1 %i.ih, label %bb.cc, label %bb.bx, !dbg !134496

bb.cc:                                            ; preds = %bb.cb
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i, i64 64, !dbg !134497
  %i.ij = load i64, ptr %i.ii, align 8, !dbg !134497, !noalias !134174, !noundef !860
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i, i64 64, !dbg !134498
  %i.il = load i64, ptr %i.ik, align 8, !dbg !134498, !noalias !134174, !noundef !860
  %i.im = icmp eq i64 %i.ij, %i.il, !dbg !134497
  br i1 %i.im, label %bb.cd, label %bb.bx, !dbg !134497

bb.cd:                                            ; preds = %bb.cc
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i, i64 72, !dbg !134499
  %i.io = load i64, ptr %i.in, align 8, !dbg !134499, !noalias !134174, !noundef !860
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i, i64 72, !dbg !134500
  %i.iq = load i64, ptr %i.ip, align 8, !dbg !134500, !noalias !134174, !noundef !860
  %i.ir = icmp ne i64 %i.io, %i.iq, !dbg !134499
  %i.is = or i1 %.sroa.044.0.ph288.i, %i.ir, !dbg !134501
  br label %bb.bx, !dbg !134496

bb.ce:                                            ; preds = %bb.bx
  %i.it = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 184, !dbg !134502
  %i.iu = load ptr, ptr %i.it, align 8, !dbg !134502, !noalias !134174, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %.pr187.i = load i64, ptr %i.iu, align 8, !dbg !134503, !noalias !134174
  br label %bb.cf, !dbg !134504

bb.cf:                                            ; preds = %bb.ce, %bb.bx
  %i.iv = phi i64 [ %i.hv, %bb.bx ], [ %.pr187.i, %bb.ce ], !dbg !134503
  %.sroa.0104.0.i = phi ptr [ %i.hw, %bb.bx ], [ %i.iu, %bb.ce ], !dbg !134505
  %i.iw = icmp eq i64 %i.iv, -9223372036854775808, !dbg !134503
  br i1 %i.iw, label %bb.cg, label %.outer.i, !dbg !134506

bb.cg:                                            ; preds = %bb.cf
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.i, i64 32, !dbg !134506
  %i.iy = load i8, ptr %i.ix, align 8, !dbg !134506, !range !919, !noalias !134174, !noundef !860
  %i.iz = trunc nuw i8 %i.iy to i1, !dbg !134506
  %spec.select153.i = select i1 %i.iz, i1 true, i1 %.sroa.043.0.ph289.i, !dbg !134507
  br label %.outer.i, !dbg !134507

.outer.i:                                         ; preds = %bb.cg, %bb.cf
  %.sroa.043.1.i = phi i1 [ %.sroa.043.0.ph289.i, %bb.cf ], [ %spec.select153.i, %bb.cg ], !dbg !134508 ; 2 uses
  br i1 %.lcssa61, label %._crit_edge.i, label %.lr.ph.lr.ph.lr.ph.i, !dbg !134338

.thread.i:                                        ; preds = %bb.bg, %.thread178.i
  %.pn176.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread178.i ], [ %i.he, %bb.bg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_(ptr noalias noundef align 16 dereferenceable(272) %i.p) #34
          to label %bb.ch unwind label %bb.bu, !dbg !134316, !noalias !134174

bb.ch:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_(ptr noalias noundef align 16 dereferenceable(272) %i.q) #34
          to label %common.resume unwind label %bb.bu, !dbg !134287, !noalias !134174

_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions6binaryNtB7_10BinaryExprNtB9_12PhysicalExpr23evaluate_on_groups_impl0Bb_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEBK_.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !134334, !noalias !134174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i), !dbg !134476
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !134476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.u, ptr noundef nonnull align 16 dereferenceable(272) %i.t, i64 272, i1 false), !dbg !134273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !134509
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !134510
end_hunk_0
