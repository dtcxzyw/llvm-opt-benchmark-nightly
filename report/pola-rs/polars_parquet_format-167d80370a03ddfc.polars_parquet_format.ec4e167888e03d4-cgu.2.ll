Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet_format-167d80370a03ddfc.polars_parquet_format.ec4e167888e03d4-cgu.2?download=true
inline.NumInlined: 43
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact21collection_u8_to_type:bb.a
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !407

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !408
  store i8 6, ptr %i.h, align 8, !dbg !408, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !408, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !409

bb.h:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !410
  store i8 7, ptr %i.i, align 8, !dbg !410, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !410, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !411

bb.i:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !412
  store i8 4, ptr %i.j, align 8, !dbg !412, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !412, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !413

bb.j:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !414
  store i8 8, ptr %i.k, align 8, !dbg !414, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !414, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !415

bb.k:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !416
  store i8 13, ptr %i.l, align 8, !dbg !416, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !416, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !417

bb.l:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !418
  store i8 12, ptr %i.m, align 8, !dbg !418, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !418, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !419

bb.m:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !420
  store i8 11, ptr %i.n, align 8, !dbg !420, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !420, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !421

bb.n:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !422
  store i8 10, ptr %i.o, align 8, !dbg !422, !alias.scope !390
  store i64 3, ptr %0, align 8, !dbg !422, !alias.scope !390
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !423

_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.split.i, %bb.b
  ret void, !dbg !424
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !431, !range !68, !noundef !51 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !432
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i, !dbg !432

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !431
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !431, !nonnull !51, !noundef !51
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !dbg !433
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !434

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit: ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i
  ret void, !dbg !435
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionsENtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !436 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !447, !nonnull !51, !align !110, !noundef !51 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443), !dbg !448
  %i.c = load i16, ptr %i.b, align 2, !dbg !449, !range !444, !alias.scope !443, !noundef !51
  %i.d = trunc nuw i16 %i.c to i1, !dbg !449
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !449

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !450, !noalias !446
  store ptr %i.e, ptr %i.a, align 8, !dbg !450, !noalias !446
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12), !dbg !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !452, !noalias !446
  br label %_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !452

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4), !dbg !449, !noalias !443
  br label %_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !449

_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !453
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !454 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !459, !nonnull !51, !align !457, !noundef !51 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !460
  %.val = load ptr, ptr %i.b, align 8, !dbg !460, !nonnull !51, !noundef !51
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !460
  %.val1 = load i64, ptr %i.c, align 8, !dbg !460, !noundef !51
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !461
  ret i1 %i.d, !dbg !462
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRsNtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !463 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !477, !nonnull !51, !align !110, !noundef !51 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !478
  %i.c = load i32, ptr %i.b, align 8, !dbg !478, !alias.scope !476, !noundef !51 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !478
  %i.e = icmp eq i32 %i.d, 0, !dbg !479
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !479

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864, !dbg !480
  %i.g = icmp eq i32 %i.f, 0, !dbg !481
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !481

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsn_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !482
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !482

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !483
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !483

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsp_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !484
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !484

_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !485
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !486 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !488, !nonnull !51, !noundef !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !488
  %i.c = load i64, ptr %i.b, align 8, !dbg !488, !noundef !51
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !489
  ret i1 %i.d, !dbg !490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs3_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodemNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !491 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !494
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !494
  %i.b = load i64, ptr %i.a, align 8, !dbg !495, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !496
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !496

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !497
  %i.e = load i64, ptr %i.d, align 8, !dbg !497, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !497
  %i.g = load i64, ptr %i.f, align 8, !dbg !497, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !498
  %i.h = trunc i64 %i.e to i32, !dbg !499
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !500
  store i32 %i.h, ptr %i.i, align 8, !dbg !500
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !500
  store i64 %i.g, ptr %i.j, align 8, !dbg !500
  br label %bb.d, !dbg !501

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !498
  br label %bb.d, !dbg !501

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !502
  store i64 %storemerge, ptr %0, align 8, !dbg !502
  ret void, !dbg !501
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs3_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodemNtB5_6VarInt10encode_var(i32 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !503 {
bb.a:
  %i.a = zext i32 %0 to i64, !dbg !510            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !dbg !511
  %i.b = icmp eq i32 %0, 0, !dbg !512
  br i1 %i.b, label %.loopexit.thread.i, label %.preheader16.i, !dbg !512

.loopexit.i:                                      ; preds = %.preheader16.i.3, %.preheader16.i.2, %.preheader16.i.1, %.preheader16.i
  %.sroa.05.120.i.lcssa = phi i64 [ 0, %.preheader16.i ], [ 1, %.preheader16.i.1 ], [ 2, %.preheader16.i.2 ], [ %spec.select, %.preheader16.i.3 ]
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !513
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !513, !prof !116

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !513
  br i1 %.not1529.i, label %bb.b, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, !dbg !513, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.c = icmp ugt i32 %0, 127, !dbg !514
  br i1 %i.c, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !514

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp ult i32 %0, 128, !dbg !515
  br i1 %.not.i, label %.loopexit.i, label %.preheader16.i.1, !dbg !515

.preheader16.i.1:                                 ; preds = %.preheader16.i
  %.not.i.1 = icmp ult i32 %0, 16384, !dbg !515
  br i1 %.not.i.1, label %.loopexit.i, label %.preheader16.i.2, !dbg !515

.preheader16.i.2:                                 ; preds = %.preheader16.i.1
  %.not.i.2 = icmp ult i32 %0, 2097152, !dbg !515
  br i1 %.not.i.2, label %.loopexit.i, label %.preheader16.i.3, !dbg !515

.preheader16.i.3:                                 ; preds = %.preheader16.i.2
  %.not.i.3 = icmp ult i32 %0, 268435456, !dbg !515
  %spec.select = select i1 %.not.i.3, i64 3, i64 4, !dbg !515
  br label %.loopexit.i, !dbg !515

bb.b:                                             ; preds = %.loopexit.thread.i, %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !516, !noalias !509
  unreachable, !dbg !516

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.preheader.1, %.lr.ph.i.preheader.2, %.lr.ph.i.preheader.3, %.preheader.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.preheader.1 ], [ 3, %.lr.ph.i.preheader.2 ], [ 4, %.lr.ph.i.preheader.3 ], !dbg !517 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.a, %.preheader.i ], [ %i.u, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.preheader.1 ], [ %i.m, %.lr.ph.i.preheader.2 ], [ %i.r, %.lr.ph.i.preheader.3 ]
  %i.d = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !518
  br i1 %i.d, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !518

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %exitcond.not.i = icmp eq i64 %2, 1, !dbg !519
  br i1 %exitcond.not.i, label %bb.d, label %.lr.ph.i.preheader.1, !dbg !519

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %i.e = trunc i64 %i.u to i8, !dbg !520
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !519
  %i.g = or i8 %i.e, -128, !dbg !519
  store i8 %i.g, ptr %i.f, align 1, !dbg !519, !alias.scope !509
  %i.h = lshr i64 %i.a, 14, !dbg !521             ; 2 uses
  %i.i = icmp ugt i32 %0, 2097151, !dbg !514
  br i1 %i.i, label %.lr.ph.i.1, label %._crit_edge.i, !dbg !514

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader.1
  %exitcond.not.i.1 = icmp eq i64 %2, 2, !dbg !519
  br i1 %exitcond.not.i.1, label %bb.d, label %.lr.ph.i.preheader.2, !dbg !519

.lr.ph.i.preheader.2:                             ; preds = %.lr.ph.i.1
  %i.j = trunc i64 %i.h to i8, !dbg !520
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !519
  %i.l = or i8 %i.j, -128, !dbg !519
  store i8 %i.l, ptr %i.k, align 1, !dbg !519, !alias.scope !509
  %i.m = lshr i64 %i.a, 21, !dbg !521             ; 2 uses
  %i.n = icmp ugt i32 %0, 268435455, !dbg !514
  br i1 %i.n, label %.lr.ph.i.2, label %._crit_edge.i, !dbg !514

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.preheader.2
  %exitcond.not.i.2 = icmp eq i64 %2, 3, !dbg !519
  br i1 %exitcond.not.i.2, label %bb.d, label %.lr.ph.i.preheader.3, !dbg !519

.lr.ph.i.preheader.3:                             ; preds = %.lr.ph.i.2
  %i.o = trunc i64 %i.m to i8, !dbg !520
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3, !dbg !519
  %i.q = or i8 %i.o, -128, !dbg !519
  store i8 %i.q, ptr %i.p, align 1, !dbg !519, !alias.scope !509
  %i.r = lshr i64 %i.a, 28, !dbg !521
  br label %._crit_edge.i, !dbg !514

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !518, !noalias !509
  unreachable, !dbg !518

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.s = trunc i32 %0 to i8, !dbg !520
  %i.t = or i8 %i.s, -128, !dbg !519
  store i8 %i.t, ptr %1, align 1, !dbg !519, !alias.scope !509
  %i.u = lshr i64 %i.a, 7, !dbg !521              ; 2 uses
  %i.v = icmp ugt i32 %0, 16383, !dbg !514
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !dbg !514

bb.d:                                             ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !519, !noalias !509
  unreachable, !dbg !519

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %.loopexit.thread.i, %._crit_edge.i
  %.sroa.0.0.lcssa33.i = phi i64 [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ]
  %.sroa.010.0.lcssa32.i = phi i64 [ %.sroa.010.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa32.i, !dbg !518
  %i.x = trunc nuw nsw i64 %.sroa.0.0.lcssa33.i to i8, !dbg !518
  store i8 %i.x, ptr %i.w, align 1, !dbg !518, !alias.scope !509
  %i.y = add nuw nsw i64 %.sroa.010.0.lcssa32.i, 1, !dbg !522
  ret i64 %i.y, !dbg !523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs4_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodetNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !524 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !527
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !527
  %i.b = load i64, ptr %i.a, align 8, !dbg !528, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !529
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !529

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !530
  %i.e = load i64, ptr %i.d, align 8, !dbg !530, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !530
  %i.g = load i64, ptr %i.f, align 8, !dbg !530, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !531
  %i.h = trunc i64 %i.e to i16, !dbg !532
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !533
  store i16 %i.h, ptr %i.i, align 8, !dbg !533
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !533
  store i64 %i.g, ptr %i.j, align 8, !dbg !533
  br label %bb.d, !dbg !534

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !531
  br label %bb.d, !dbg !534

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !535
  store i64 %storemerge, ptr %0, align 8, !dbg !535
  ret void, !dbg !534
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs4_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodetNtB5_6VarInt10encode_var(i16 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !536 {
bb.a:
  %i.a = zext i16 %0 to i64, !dbg !543            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542), !dbg !544
  %i.b = icmp eq i16 %0, 0, !dbg !545
  br i1 %i.b, label %.loopexit.thread.i, label %.preheader16.i, !dbg !545

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !546
  br i1 %.not1529.i, label %bb.b, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, !dbg !546, !prof !90

.preheader.i:                                     ; preds = %.preheader16.i
  %i.c = icmp ugt i16 %0, 127, !dbg !547
  br i1 %i.c, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !547

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp ult i16 %0, 128, !dbg !548
  %.not.i.1 = icmp ult i16 %0, 16384, !dbg !548
  %spec.select = select i1 %.not.i.1, i64 1, i64 2, !dbg !548
  %.sroa.05.120.i.lcssa = select i1 %.not.i, i64 0, i64 %spec.select, !dbg !548
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !546
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !546, !prof !116

bb.b:                                             ; preds = %.loopexit.thread.i, %.preheader16.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !549, !noalias !542
  unreachable, !dbg !549

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.preheader.1, %.preheader.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.preheader.1 ], !dbg !550 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.a, %.preheader.i ], [ %i.k, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.preheader.1 ]
  %i.d = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !551
  br i1 %i.d, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !551

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %exitcond.not.i = icmp eq i64 %2, 1, !dbg !552
  br i1 %exitcond.not.i, label %bb.d, label %.lr.ph.i.preheader.1, !dbg !552

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %i.e = trunc i64 %i.k to i8, !dbg !553
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !552
  %i.g = or i8 %i.e, -128, !dbg !552
  store i8 %i.g, ptr %i.f, align 1, !dbg !552, !alias.scope !542
  %i.h = lshr i64 %i.a, 14, !dbg !554
  br label %._crit_edge.i, !dbg !547

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !551, !noalias !542
  unreachable, !dbg !551

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.i = trunc i16 %0 to i8, !dbg !553
  %i.j = or i8 %i.i, -128, !dbg !552
  store i8 %i.j, ptr %1, align 1, !dbg !552, !alias.scope !542
  %i.k = lshr i64 %i.a, 7, !dbg !554              ; 2 uses
  %i.l = icmp ugt i16 %0, 16383, !dbg !547
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !dbg !547

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !552, !noalias !542
  unreachable, !dbg !552

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %.loopexit.thread.i, %._crit_edge.i
  %.sroa.0.0.lcssa33.i = phi i64 [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ]
  %.sroa.010.0.lcssa32.i = phi i64 [ %.sroa.010.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa32.i, !dbg !551
  %i.n = trunc nuw nsw i64 %.sroa.0.0.lcssa33.i to i8, !dbg !551
  store i8 %i.n, ptr %i.m, align 1, !dbg !551, !alias.scope !542
  %i.o = add nuw nsw i64 %.sroa.010.0.lcssa32.i, 1, !dbg !555
  ret i64 %i.o, !dbg !556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs5_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodehNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !557 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !560
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !560
  %i.b = load i64, ptr %i.a, align 8, !dbg !561, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !562
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !562

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !563
  %i.e = load i64, ptr %i.d, align 8, !dbg !563, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !563
  %i.g = load i64, ptr %i.f, align 8, !dbg !563, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !564
  %i.h = trunc i64 %i.e to i8, !dbg !565
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !566
  store i8 %i.h, ptr %i.i, align 8, !dbg !566
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !566
  store i64 %i.g, ptr %i.j, align 8, !dbg !566
  br label %bb.d, !dbg !567

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !564
  br label %bb.d, !dbg !567

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !568
  store i64 %storemerge, ptr %0, align 8, !dbg !568
  ret void, !dbg !567
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 3) i64 @_RNvXs5_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodehNtB5_6VarInt10encode_var(i8 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !569 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575), !dbg !576
  %i.a = icmp eq i8 %0, 0, !dbg !577
  br i1 %i.a, label %.loopexit.thread.i, label %.preheader16.i, !dbg !577

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !578
  br i1 %.not1529.i, label %bb.b, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, !dbg !578, !prof !90

.preheader.i:                                     ; preds = %.preheader16.i
  %i.b = icmp slt i8 %0, 0, !dbg !579
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i, !dbg !579

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp sgt i8 %0, -1, !dbg !580
  %.sroa.05.120.i.lcssa = select i1 %.not.i, i64 0, i64 1, !dbg !580
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !578
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !578, !prof !116

bb.b:                                             ; preds = %.loopexit.thread.i, %.preheader16.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !581, !noalias !575
  unreachable, !dbg !581

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 1, %.lr.ph.i ], !dbg !582 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i8 [ %0, %.preheader.i ], [ 1, %.lr.ph.i ]
  %i.c = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !583
  br i1 %i.c, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !583

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !583, !noalias !575
  unreachable, !dbg !583

.lr.ph.i:                                         ; preds = %.preheader.i
  store i8 %0, ptr %1, align 1, !dbg !584, !alias.scope !575
  br label %._crit_edge.i, !dbg !579

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %.loopexit.thread.i, %._crit_edge.i
  %.sroa.0.0.lcssa33.i = phi i8 [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ]
  %.sroa.010.0.lcssa32.i = phi i64 [ %.sroa.010.0.lcssa.i, %._crit_edge.i ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa32.i, !dbg !583
  store i8 %.sroa.0.0.lcssa33.i, ptr %i.d, align 1, !dbg !583, !alias.scope !575
  %i.e = add nuw nsw i64 %.sroa.010.0.lcssa32.i, 1, !dbg !585
  ret i64 %i.e, !dbg !586
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs6_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodelNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !587 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !594
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !594
  %i.b = load i64, ptr %i.a, align 8, !dbg !594, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !595
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !595

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !596
  %i.e = load i64, ptr %i.d, align 8, !dbg !596, !noundef !51 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !597
  %i.g = load i64, ptr %i.f, align 8, !dbg !597, !noundef !51
  %i.h = lshr i64 %i.e, 1, !dbg !598
  %i.i = and i64 %i.e, 1, !dbg !599
  %i.j = sub nsw i64 0, %i.i, !dbg !600
  %i.k = xor i64 %i.h, %i.j, !dbg !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !602
  %i.l = trunc i64 %i.k to i32, !dbg !603
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !604
  store i32 %i.l, ptr %i.m, align 8, !dbg !604
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !604
  store i64 %i.g, ptr %i.n, align 8, !dbg !604
  br label %bb.d, !dbg !605

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !602
  br label %bb.d, !dbg !605

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !606
  store i64 %storemerge, ptr %0, align 8, !dbg !606
  ret void, !dbg !605
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs6_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodelNtB5_6VarInt10encode_var(i32 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !607 {
bb.a:
  %i.a = sext i32 %0 to i64, !dbg !616            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !dbg !617
  %i.b = shl nsw i64 %i.a, 1, !dbg !618           ; 2 uses
  %i.c = ashr i64 %i.a, 63, !dbg !619             ; 2 uses
  %i.d = xor i64 %i.b, %i.c, !dbg !620            ; 4 uses
  %i.e = icmp eq i64 %i.b, %i.c, !dbg !621
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i, !dbg !621

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ %i.g, %.lr.ph.i ], !dbg !622
  %.not14.i = icmp ult i64 %2, %.sroa.0.0.i, !dbg !623
  br i1 %.not14.i, label %bb.b, label %.preheader.i, !dbg !623, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.f = icmp ugt i64 %i.d, 127, !dbg !624
  br i1 %i.f, label %.lr.ph23.i.preheader, label %._crit_edge.i, !dbg !624

.lr.ph23.i.preheader:                             ; preds = %.preheader.i
  %exitcond.not.i10 = icmp eq i64 %2, 0, !dbg !625
  br i1 %exitcond.not.i10, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !625

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.120.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.010.019.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.g = add nuw nsw i64 %.sroa.0.120.i, 1, !dbg !626 ; 2 uses
  %i.h = lshr i64 %.sroa.010.019.i, 7, !dbg !627  ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0, !dbg !628
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !628

bb.b:                                             ; preds = %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !dbg !629, !noalias !615
  unreachable, !dbg !629

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.m, %.lr.ph ], !dbg !630 ; 4 uses
  %.sroa.02.0.lcssa.i = phi i64 [ %i.d, %.preheader.i ], [ %i.n, %.lr.ph ], !dbg !631
  %i.i = icmp samesign ult i64 %.sroa.06.0.lcssa.i, %2, !dbg !632
  br i1 %i.i, label %_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit, label %bb.c, !dbg !632

.lr.ph23.i:                                       ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.m, %2, !dbg !625
  br i1 %exitcond.not.i, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !625

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !632, !noalias !615
  unreachable, !dbg !632

.lr.ph:                                           ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %.sroa.06.021.i12 = phi i64 [ %i.m, %.lr.ph23.i ], [ 0, %.lr.ph23.i.preheader ] ; 2 uses
  %.sroa.02.022.i11 = phi i64 [ %i.n, %.lr.ph23.i ], [ %i.d, %.lr.ph23.i.preheader ] ; 3 uses
  %i.j = trunc i64 %.sroa.02.022.i11 to i8, !dbg !633
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.021.i12, !dbg !625
  %i.l = or i8 %i.j, -128, !dbg !625
  store i8 %i.l, ptr %i.k, align 1, !dbg !625, !alias.scope !615
  %i.m = add nuw nsw i64 %.sroa.06.021.i12, 1, !dbg !634 ; 3 uses
  %i.n = lshr i64 %.sroa.02.022.i11, 7, !dbg !635 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.02.022.i11, 16383, !dbg !624
  br i1 %i.o, label %.lr.ph23.i, label %._crit_edge.i, !dbg !624

.lr.ph23.i._crit_edge:                            ; preds = %.lr.ph23.i, %.lr.ph23.i.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !dbg !625, !noalias !615
  unreachable, !dbg !625

_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit: ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.lcssa.i, !dbg !632
  %i.q = trunc nuw nsw i64 %.sroa.02.0.lcssa.i to i8, !dbg !632
  store i8 %i.q, ptr %i.p, align 1, !dbg !632, !alias.scope !615
  %i.r = add nuw nsw i64 %.sroa.06.0.lcssa.i, 1, !dbg !636
  ret i64 %i.r, !dbg !637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i32 @_RNvXs7_NtCs1gC9x3uey1Y_21polars_parquet_format14parquet_formatNtB5_13ConvertedTypeINtNtCscgRAwXFJnXP_4core7convert4FromRlE4from(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #5 !dbg !638 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !642, !noundef !51
  ret i32 %i.a, !dbg !643
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs7_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodesNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !644 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !651
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !651
  %i.b = load i64, ptr %i.a, align 8, !dbg !651, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !652
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !652

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !653
  %i.e = load i64, ptr %i.d, align 8, !dbg !653, !noundef !51 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !654
  %i.g = load i64, ptr %i.f, align 8, !dbg !654, !noundef !51
  %i.h = lshr i64 %i.e, 1, !dbg !655
  %i.i = and i64 %i.e, 1, !dbg !656
  %i.j = sub nsw i64 0, %i.i, !dbg !657
  %i.k = xor i64 %i.h, %i.j, !dbg !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !659
  %i.l = trunc i64 %i.k to i16, !dbg !660
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !661
  store i16 %i.l, ptr %i.m, align 8, !dbg !661
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !661
  store i64 %i.g, ptr %i.n, align 8, !dbg !661
  br label %bb.d, !dbg !662

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !659
  br label %bb.d, !dbg !662

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !663
  store i64 %storemerge, ptr %0, align 8, !dbg !663
  ret void, !dbg !662
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs7_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodesNtB5_6VarInt10encode_var(i16 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !664 {
bb.a:
  %i.a = sext i16 %0 to i64, !dbg !673            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !dbg !674
  %i.b = shl nsw i64 %i.a, 1, !dbg !675           ; 2 uses
  %i.c = ashr i64 %i.a, 63, !dbg !676             ; 2 uses
  %i.d = xor i64 %i.b, %i.c, !dbg !677            ; 4 uses
  %i.e = icmp eq i64 %i.b, %i.c, !dbg !678
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i, !dbg !678

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ %i.g, %.lr.ph.i ], !dbg !679
  %.not14.i = icmp ult i64 %2, %.sroa.0.0.i, !dbg !680
  br i1 %.not14.i, label %bb.b, label %.preheader.i, !dbg !680, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.f = icmp ugt i64 %i.d, 127, !dbg !681
  br i1 %i.f, label %.lr.ph23.i.preheader, label %._crit_edge.i, !dbg !681

.lr.ph23.i.preheader:                             ; preds = %.preheader.i
  %exitcond.not.i10 = icmp eq i64 %2, 0, !dbg !682
  br i1 %exitcond.not.i10, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !682

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.120.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.010.019.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.g = add nuw nsw i64 %.sroa.0.120.i, 1, !dbg !683 ; 2 uses
  %i.h = lshr i64 %.sroa.010.019.i, 7, !dbg !684  ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0, !dbg !685
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !685

bb.b:                                             ; preds = %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !dbg !686, !noalias !672
  unreachable, !dbg !686

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.m, %.lr.ph ], !dbg !687 ; 4 uses
  %.sroa.02.0.lcssa.i = phi i64 [ %i.d, %.preheader.i ], [ %i.n, %.lr.ph ], !dbg !688
  %i.i = icmp samesign ult i64 %.sroa.06.0.lcssa.i, %2, !dbg !689
  br i1 %i.i, label %_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit, label %bb.c, !dbg !689

end_hunk_0
