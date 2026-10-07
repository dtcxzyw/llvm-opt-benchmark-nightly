Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 666
loop-unroll.NumUnrolled: 672
begin_hunk_0_@_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEENtNtB7_3fmt5Debug3fmtCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !dbg !268349, !range !3612, !noundef !3448
  %.not = icmp eq i64 %i.b, -9223372036854775808, !dbg !268349
  br i1 %.not, label %bb.c, label %bb.b, !dbg !268349

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !268350
  store ptr %0, ptr %i.a, align 8, !dbg !268350
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @499, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @498), !dbg !268351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !268352
  br label %bb.d, !dbg !268352

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 4), !dbg !268349
  br label %bb.d, !dbg !268349

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !268353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsS_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 !dbg !268354 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !268367
  %i.b = load ptr, ptr %i.a, align 8, !dbg !268367, !nonnull !3448, !noundef !3448
  %i.c = load ptr, ptr %1, align 8, !dbg !268368, !nonnull !3448, !noundef !3448
  %i.d = ptrtoint ptr %i.b to i64, !dbg !268369
  %i.e = ptrtoint ptr %i.c to i64, !dbg !268369
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !268369
  %i.g = udiv exact i64 %i.f, 80, !dbg !268369    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !268370
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !268370
  store i64 1, ptr %i.h, align 8, !dbg !268370
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !268370
  store i64 %i.g, ptr %i.i, align 8, !dbg !268370
  ret void, !dbg !268371
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsS_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 !dbg !2314 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !268377
  %i.b = load ptr, ptr %i.a, align 8, !dbg !268377, !nonnull !3448, !noundef !3448
  %i.c = load ptr, ptr %1, align 8, !dbg !268378, !nonnull !3448, !noundef !3448
  %i.d = ptrtoint ptr %i.b to i64, !dbg !268379
  %i.e = ptrtoint ptr %i.c to i64, !dbg !268379
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !268379
  %i.g = udiv exact i64 %i.f, 104, !dbg !268379   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !268380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !268380
  store i64 1, ptr %i.h, align 8, !dbg !268380
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !268380
  store i64 %i.g, ptr %i.i, align 8, !dbg !268380
  ret void, !dbg !268381
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsS_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_6ValuesmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 !dbg !268382 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !268395
  %i.b = load ptr, ptr %i.a, align 8, !dbg !268395, !nonnull !3448, !noundef !3448
  %i.c = load ptr, ptr %1, align 8, !dbg !268396, !nonnull !3448, !noundef !3448
  %i.d = ptrtoint ptr %i.b to i64, !dbg !268397
  %i.e = ptrtoint ptr %i.c to i64, !dbg !268397
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !268397
  %i.g = udiv exact i64 %i.f, 112, !dbg !268397   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !268398
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !268398
  store i64 1, ptr %i.h, align 8, !dbg !268398
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !268398
  store i64 %i.g, ptr %i.i, align 8, !dbg !268398
  ret void, !dbg !268399
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !268400 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !268406
  %i.b = load i32, ptr %i.a, align 8, !dbg !268406, !noundef !3448 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !268406
  %i.d = icmp eq i32 %i.c, 0, !dbg !268407
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !268407

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864, !dbg !268408
  %i.f = icmp eq i32 %i.e, 0, !dbg !268409
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !268409

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268410
  br label %bb.f, !dbg !268410

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268411
  br label %bb.f, !dbg !268411

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268412
  br label %bb.f, !dbg !268412

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !268413
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !268414 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !268420
  %i.b = load i32, ptr %i.a, align 8, !dbg !268420, !noundef !3448 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !268420
  %i.d = icmp eq i32 %i.c, 0, !dbg !268421
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !268421

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864, !dbg !268422
  %i.f = icmp eq i32 %i.e, 0, !dbg !268423
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !268423

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268424
  br label %bb.f, !dbg !268424

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268425
  br label %bb.f, !dbg !268425

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268426
  br label %bb.f, !dbg !268426

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !268427
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCse4dvU5uQ85g_8indexmap3mapINtB4_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtB1H_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !268428 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !268457
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !268458
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !268459
  %i.c = load ptr, ptr %i.b, align 8, !dbg !268459, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !268460
  %i.e = load i64, ptr %i.d, align 8, !dbg !268460, !noundef !3448
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.e, !dbg !268461
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB13_B1T_EEB1Z_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f), !dbg !268462
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !dbg !268463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !268464
  ret i1 %i.h, !dbg !268465
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB4_17StatisticsFlagsIMNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #0 !dbg !268466 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4, !dbg !268491 ; 2 uses
  %i.b = icmp ult i32 %i.a, 32, !dbg !268492
  br i1 %i.b, label %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit, label %bb.b, !dbg !268492, !prof !3552

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #53, !dbg !268493
  unreachable, !dbg !268493

_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit: ; preds = %bb.a
  %i.c = load atomic i32, ptr %1 monotonic, align 4, !dbg !268494 ; 2 uses
  %i.d = icmp ult i32 %i.c, 32, !dbg !268495
  br i1 %i.d, label %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit1, label %bb.c, !dbg !268495, !prof !3552

bb.c:                                             ; preds = %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #53, !dbg !268496
  unreachable, !dbg !268496

_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit1: ; preds = %_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get.exit
  %i.e = icmp eq i32 %i.a, %i.c, !dbg !268497
  ret i1 %i.e, !dbg !268498
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs1LHh8CLbVkQ_11polars_core5frame3rowNtB4_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !268499 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !268554, !nonnull !3448, !align !3985, !noundef !3448 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !268554
  %i.d = load i64, ptr %i.c, align 8, !dbg !268554, !noundef !3448
  %i.e = load ptr, ptr %1, align 8, !dbg !268555, !nonnull !3448, !align !3985, !noundef !3448 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !268555
  %i.g = load i64, ptr %i.f, align 8, !dbg !268555, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !268556
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.d, !dbg !268557
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.g, !dbg !268558
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBW_EINtB5_7ZipImplBW_BW_E3newB1s_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i), !dbg !268559
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !268550, !noundef !3448 ; 3 uses
  %.promoted.i = load i64, ptr %i.j, align 8, !alias.scope !268550 ; 3 uses
  %.val2.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !268551, !nonnull !3448
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !268551, !nonnull !3448
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %.promoted.i), !dbg !268560 ; 2 uses
  %exitcond.not.i1.not = icmp ult i64 %.promoted.i, %i.l, !dbg !268561
  br i1 %exitcond.not.i1.not, label %.lr.ph, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit, !dbg !268561

bb.b:                                             ; preds = %.lr.ph
  %i.n = add i64 %i.o, 1, !dbg !268562            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %umax.i, !dbg !268561
  br i1 %exitcond.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit.loopexit, label %.lr.ph, !dbg !268561

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.val2.i.i.i, i64 %i.o, !dbg !268563
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i, i64 %i.o, !dbg !268564
  %i.r = tail call fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q) #47, !dbg !268565
  br i1 %i.r, label %bb.b, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit.loopexit, !dbg !268566

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit.loopexit: ; preds = %bb.b, %.lr.ph
  %.lcssa.ph = phi i64 [ %umax.i, %bb.b ], [ %i.o, %.lr.ph ]
  %i.s = icmp uge i64 %.lcssa.ph, %i.l, !dbg !268561
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit, !dbg !268562

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.s, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2m_3all5checkTRB1h_B3q_ENCNvXs_NtNtB1n_5frame3rowNtB3H_11AnyValueRowNtNtCs2mZqlW55729_12polars_utils9total_ord7TotalEq6tot_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1n_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !268567
  ret i1 %.lcssa, !dbg !268568
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB4_11BinaryArrayxENtB6_5Array10as_any_mutCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #19 !dbg !268569 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !268570
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @500, 1, !dbg !268570
  ret { ptr, ptr } %i.b, !dbg !268570
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB4_11BinaryArrayxENtB6_5Array13with_validityCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !268571 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 14 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !268657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !268657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268643), !dbg !268658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !268659, !noalias !268643
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #47
          to label %.noexc unwind label %bb.x, !dbg !268659

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !268660
  %i.f = load ptr, ptr %i.e, align 8, !dbg !268660, !noalias !268643, !nonnull !3448, !noundef !3448 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !268661, !range !3591, !noalias !268643, !noundef !3448
  %i.h = icmp eq i64 %i.g, 3, !dbg !268662
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !268662

bb.b:                                             ; preds = %bb.c, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !268663
  %i.j = load ptr, ptr %i.i, align 8, !dbg !268663, !noalias !268643, !noundef !3448
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !268664
  %i.l = load i64, ptr %i.k, align 8, !dbg !268664, !noalias !268643, !noundef !3448 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !268665
  %i.n = load ptr, ptr %i.m, align 8, !dbg !268665, !noalias !268643, !nonnull !3448, !noundef !3448 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !268666, !range !3591, !noalias !268643, !noundef !3448
  %i.p = icmp eq i64 %i.o, 3, !dbg !268667
  br i1 %i.p, label %bb.d, label %bb.e, !dbg !268667

bb.c:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !268668
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !268669, !noalias !268643 ; 0 uses
  br label %bb.b, !dbg !268670

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !268671
  %i.t = load ptr, ptr %i.s, align 8, !dbg !268671, !noalias !268643, !noundef !3448
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !268672
  %i.v = load i64, ptr %i.u, align 8, !dbg !268672, !noalias !268643, !noundef !3448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !268673
  %i.x = load ptr, ptr %i.w, align 8, !dbg !268673, !noalias !268643, !noundef !3448 ; 4 uses
  %.not.i = icmp eq ptr %i.x, null, !dbg !268673  ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.f, !dbg !268674

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !268675
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !268676, !noalias !268643 ; 0 uses
  br label %bb.d, !dbg !268677

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.x, align 8, !dbg !268678, !range !3591, !noalias !268644, !noundef !3448
  %i.ab = icmp eq i64 %i.aa, 3, !dbg !268679
  br i1 %i.ab, label %bb.h, label %bb.g, !dbg !268679

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !268680
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !268681, !noalias !268644 ; 0 uses
  br label %bb.h, !dbg !268682

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !268683
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !dbg !268683, !noalias !268644
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !268684
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8, !dbg !268685, !noalias !268644
  br label %bb.i, !dbg !268686

bb.i:                                             ; preds = %bb.h, %bb.d
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.d ], [ %i.ah, %bb.h ], !dbg !268687
  %i.ai = phi <2 x i64> [ undef, %bb.d ], [ %i.af, %bb.h ], !dbg !268687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !268688
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !268688
  store ptr %i.f, ptr %i.aj, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !268688
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx9.i, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !268688
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx10.i, align 8, !dbg !268688, !alias.scope !268643
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !268688
  store ptr %i.n, ptr %i.ak, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !268688
  store ptr %i.t, ptr %.sroa.412.0..sroa_idx.i, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !268688
  store i64 %i.v, ptr %.sroa.513.0..sroa_idx.i, align 8, !dbg !268688, !alias.scope !268643
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !268688 ; 4 uses
  store ptr %i.x, ptr %i.al, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !268688
  store <2 x i64> %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !268688, !alias.scope !268643
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104, !dbg !268688
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !268688, !alias.scope !268643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !268689, !noalias !268643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !268690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !268690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268645), !dbg !268691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268646), !dbg !268691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268647), !dbg !268691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268648), !dbg !268692
  %i.am = load ptr, ptr %i.b, align 8, !dbg !268693, !alias.scope !268649, !noalias !268650, !noundef !3448
  %.not.i.i = icmp eq ptr %i.am, null, !dbg !268693
  br i1 %.not.i.i, label %bb.k, label %bb.j, !dbg !268694

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !268695
  %i.ao = load i64, ptr %i.an, align 8, !dbg !268695, !alias.scope !268649, !noalias !268650, !noundef !3448
  %i.ap = add i64 %i.l, -1, !dbg !268696
  %.not2.i.i = icmp eq i64 %i.ao, %i.ap, !dbg !268697
  br i1 %.not2.i.i, label %bb.k, label %bb.m, !dbg !268697, !prof !3552

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not.i, label %bb.s, label %bb.l, !dbg !268698

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.s unwind label %bb.n, !dbg !268699, !noalias !268652

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @162, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #48
          to label %bb.o unwind label %bb.p, !dbg !268700, !noalias !268653

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !268701
  br label %.body.i, !dbg !268702

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i unwind label %bb.q, !dbg !268703, !noalias !268650

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !268704, !noalias !268650
  unreachable, !dbg !268704

.body.i:                                          ; preds = %bb.p, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %i.aq, %bb.n ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #49
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.r, !dbg !268705, !noalias !268645

bb.r:                                             ; preds = %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !268706, !noalias !268645
  unreachable, !dbg !268706

bb.s:                                             ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !268701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !dbg !268707, !alias.scope !268654, !noalias !268647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !268708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !268708
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !dbg !268709, !noalias !268655
  %i.au = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 641) 112, i64 noundef range(i64 4, 17) 8) #52, !dbg !268710, !noalias !268655 ; 3 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !268711
  br i1 %i.av, label %bb.t, label %bb.w, !dbg !268712, !prof !3502

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #48
          to label %.noexc5 unwind label %bb.u, !dbg !268713

end_hunk_0
