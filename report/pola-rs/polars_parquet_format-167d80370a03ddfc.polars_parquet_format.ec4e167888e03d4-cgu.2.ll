Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet_format-167d80370a03ddfc.polars_parquet_format.ec4e167888e03d4-cgu.2?download=true
inline.NumInlined: 43
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact21collection_u8_to_type:bb.a
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !408

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !409
  store i8 6, ptr %i.h, align 8, !dbg !409, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !409, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !410

bb.h:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !411
  store i8 7, ptr %i.i, align 8, !dbg !411, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !411, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !412

bb.i:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !413
  store i8 4, ptr %i.j, align 8, !dbg !413, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !413, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !414

bb.j:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !415
  store i8 8, ptr %i.k, align 8, !dbg !415, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !415, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !416

bb.k:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !417
  store i8 13, ptr %i.l, align 8, !dbg !417, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !417, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !418

bb.l:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !419
  store i8 12, ptr %i.m, align 8, !dbg !419, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !419, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !420

bb.m:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !421
  store i8 11, ptr %i.n, align 8, !dbg !421, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !421, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !422

bb.n:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !423
  store i8 10, ptr %i.o, align 8, !dbg !423, !alias.scope !391
  store i64 3, ptr %0, align 8, !dbg !423, !alias.scope !391
  br label %_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit, !dbg !424

_RNvNtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocol7compact10u8_to_type.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.split.i, %bb.b
  ret void, !dbg !425
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !432, !range !68, !noundef !51 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !433
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i, !dbg !433

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !432
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !432, !nonnull !51, !noundef !51
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !dbg !434
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !435

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1gC9x3uey1Y_21polars_parquet_format.exit: ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i
  ret void, !dbg !436
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionsENtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !437 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !449, !nonnull !51, !align !111, !noundef !51 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444), !dbg !450
  %i.c = load i16, ptr %i.b, align 2, !dbg !451, !range !445, !alias.scope !444, !noalias !446, !noundef !51
  %i.d = trunc nuw i16 %i.c to i1, !dbg !451
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !451

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !452, !noalias !448
  store ptr %i.e, ptr %i.a, align 8, !dbg !452, !noalias !448
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12), !dbg !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !454, !noalias !448
  br label %_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !454

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4), !dbg !451, !noalias !444
  br label %_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit, !dbg !451

_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionsENtNtB7_3fmt5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !455
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !456 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !461, !nonnull !51, !align !459, !noundef !51 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !462
  %.val = load ptr, ptr %i.b, align 8, !dbg !462, !nonnull !51, !noundef !51
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !462
  %.val1 = load i64, ptr %i.c, align 8, !dbg !462, !noundef !51
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !463
  ret i1 %i.d, !dbg !464
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRsNtB6_5Debug3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !465 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !481, !nonnull !51, !align !111, !noundef !51 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !482
  %i.c = load i32, ptr %i.b, align 8, !dbg !482, !alias.scope !479, !noalias !480, !noundef !51 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !482
  %i.e = icmp eq i32 %i.d, 0, !dbg !483
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !483

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864, !dbg !484
  %i.g = icmp eq i32 %i.f, 0, !dbg !485
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !485

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsn_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !486
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !486

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !487
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !487

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsp_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !488
  br label %_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit, !dbg !488

_RNvXsP_NtNtCscgRAwXFJnXP_4core3fmt3numsNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !489
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs1gC9x3uey1Y_21polars_parquet_format(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !490 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !492, !nonnull !51, !noundef !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !492
  %i.c = load i64, ptr %i.b, align 8, !dbg !492, !noundef !51
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !493
  ret i1 %i.d, !dbg !494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs3_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodemNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !495 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !498
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !498
  %i.b = load i64, ptr %i.a, align 8, !dbg !499, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !500
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !500

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !501
  %i.e = load i64, ptr %i.d, align 8, !dbg !501, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !501
  %i.g = load i64, ptr %i.f, align 8, !dbg !501, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !502
  %i.h = trunc i64 %i.e to i32, !dbg !503
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !504
  store i32 %i.h, ptr %i.i, align 8, !dbg !504
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !504
  store i64 %i.g, ptr %i.j, align 8, !dbg !504
  br label %bb.d, !dbg !505

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !502
  br label %bb.d, !dbg !505

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !506
  store i64 %storemerge, ptr %0, align 8, !dbg !506
  ret void, !dbg !505
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs3_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodemNtB5_6VarInt10encode_var(i32 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !507 {
bb.a:
  %i.a = zext i32 %0 to i64, !dbg !514            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !dbg !515
  %i.b = icmp eq i32 %0, 0, !dbg !516
  br i1 %i.b, label %.loopexit.thread.i, label %.preheader16.i, !dbg !516

.loopexit.i:                                      ; preds = %.preheader16.i.3, %.preheader16.i.2, %.preheader16.i.1, %.preheader16.i
  %.sroa.05.120.i.lcssa = phi i64 [ 0, %.preheader16.i ], [ 1, %.preheader16.i.1 ], [ 2, %.preheader16.i.2 ], [ %spec.select, %.preheader16.i.3 ]
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !517
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !517, !prof !117

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !517
  br i1 %.not1529.i, label %bb.b, label %._crit_edge.i, !dbg !517, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.c = icmp ugt i32 %0, 127, !dbg !518
  br i1 %i.c, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !518

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp ult i32 %0, 128, !dbg !519
  br i1 %.not.i, label %.loopexit.i, label %.preheader16.i.1, !dbg !519

.preheader16.i.1:                                 ; preds = %.preheader16.i
  %.not.i.1 = icmp ult i32 %0, 16384, !dbg !519
  br i1 %.not.i.1, label %.loopexit.i, label %.preheader16.i.2, !dbg !519

.preheader16.i.2:                                 ; preds = %.preheader16.i.1
  %.not.i.2 = icmp ult i32 %0, 2097152, !dbg !519
  br i1 %.not.i.2, label %.loopexit.i, label %.preheader16.i.3, !dbg !519

.preheader16.i.3:                                 ; preds = %.preheader16.i.2
  %.not.i.3 = icmp ult i32 %0, 268435456, !dbg !519
  %spec.select = select i1 %.not.i.3, i64 3, i64 4, !dbg !519
  br label %.loopexit.i, !dbg !519

bb.b:                                             ; preds = %.loopexit.thread.i, %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !520, !noalias !513
  unreachable, !dbg !520

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.preheader.1, %.lr.ph.i.preheader.2, %.lr.ph.i.preheader.3, %.preheader.i, %.loopexit.thread.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.preheader.1 ], [ 3, %.lr.ph.i.preheader.2 ], [ 4, %.lr.ph.i.preheader.3 ], !dbg !521 ; 4 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.a, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ %i.u, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.preheader.1 ], [ %i.m, %.lr.ph.i.preheader.2 ], [ %i.r, %.lr.ph.i.preheader.3 ]
  %i.d = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !522
  br i1 %i.d, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !522

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %exitcond.not.i = icmp eq i64 %2, 1, !dbg !523
  br i1 %exitcond.not.i, label %bb.d, label %.lr.ph.i.preheader.1, !dbg !523

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %i.e = trunc i64 %i.u to i8, !dbg !524
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !523
  %i.g = or i8 %i.e, -128, !dbg !523
  store i8 %i.g, ptr %i.f, align 1, !dbg !523, !alias.scope !513
  %i.h = lshr i64 %i.a, 14, !dbg !525             ; 2 uses
  %i.i = icmp ugt i32 %0, 2097151, !dbg !518
  br i1 %i.i, label %.lr.ph.i.1, label %._crit_edge.i, !dbg !518

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader.1
  %exitcond.not.i.1 = icmp eq i64 %2, 2, !dbg !523
  br i1 %exitcond.not.i.1, label %bb.d, label %.lr.ph.i.preheader.2, !dbg !523

.lr.ph.i.preheader.2:                             ; preds = %.lr.ph.i.1
  %i.j = trunc i64 %i.h to i8, !dbg !524
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !523
  %i.l = or i8 %i.j, -128, !dbg !523
  store i8 %i.l, ptr %i.k, align 1, !dbg !523, !alias.scope !513
  %i.m = lshr i64 %i.a, 21, !dbg !525             ; 2 uses
  %i.n = icmp ugt i32 %0, 268435455, !dbg !518
  br i1 %i.n, label %.lr.ph.i.2, label %._crit_edge.i, !dbg !518

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.preheader.2
  %exitcond.not.i.2 = icmp eq i64 %2, 3, !dbg !523
  br i1 %exitcond.not.i.2, label %bb.d, label %.lr.ph.i.preheader.3, !dbg !523

.lr.ph.i.preheader.3:                             ; preds = %.lr.ph.i.2
  %i.o = trunc i64 %i.m to i8, !dbg !524
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3, !dbg !523
  %i.q = or i8 %i.o, -128, !dbg !523
  store i8 %i.q, ptr %i.p, align 1, !dbg !523, !alias.scope !513
  %i.r = lshr i64 %i.a, 28, !dbg !525
  br label %._crit_edge.i, !dbg !518

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !522, !noalias !513
  unreachable, !dbg !522

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.s = trunc i32 %0 to i8, !dbg !524
  %i.t = or i8 %i.s, -128, !dbg !523
  store i8 %i.t, ptr %1, align 1, !dbg !523, !alias.scope !513
  %i.u = lshr i64 %i.a, 7, !dbg !525              ; 2 uses
  %i.v = icmp ugt i32 %0, 16383, !dbg !518
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !dbg !518

bb.d:                                             ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !523, !noalias !513
  unreachable, !dbg !523

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa.i, !dbg !522
  %i.x = trunc nuw nsw i64 %.sroa.0.0.lcssa.i to i8, !dbg !522
  store i8 %i.x, ptr %i.w, align 1, !dbg !522, !alias.scope !513
  %i.y = add nuw nsw i64 %.sroa.010.0.lcssa.i, 1, !dbg !526
  ret i64 %i.y, !dbg !527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs4_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodetNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !528 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !531
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !531
  %i.b = load i64, ptr %i.a, align 8, !dbg !532, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !533
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !533

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !534
  %i.e = load i64, ptr %i.d, align 8, !dbg !534, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !534
  %i.g = load i64, ptr %i.f, align 8, !dbg !534, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !535
  %i.h = trunc i64 %i.e to i16, !dbg !536
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !537
  store i16 %i.h, ptr %i.i, align 8, !dbg !537
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !537
  store i64 %i.g, ptr %i.j, align 8, !dbg !537
  br label %bb.d, !dbg !538

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !535
  br label %bb.d, !dbg !538

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !539
  store i64 %storemerge, ptr %0, align 8, !dbg !539
  ret void, !dbg !538
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs4_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodetNtB5_6VarInt10encode_var(i16 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !540 {
bb.a:
  %i.a = zext i16 %0 to i64, !dbg !547            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546), !dbg !548
  %i.b = icmp eq i16 %0, 0, !dbg !549
  br i1 %i.b, label %.loopexit.thread.i, label %.preheader16.i, !dbg !549

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !550
  br i1 %.not1529.i, label %bb.b, label %._crit_edge.i, !dbg !550, !prof !90

.preheader.i:                                     ; preds = %.preheader16.i
  %i.c = icmp ugt i16 %0, 127, !dbg !551
  br i1 %i.c, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !551

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp ult i16 %0, 128, !dbg !552
  %.not.i.1 = icmp ult i16 %0, 16384, !dbg !552
  %spec.select = select i1 %.not.i.1, i64 1, i64 2, !dbg !552
  %.sroa.05.120.i.lcssa = select i1 %.not.i, i64 0, i64 %spec.select, !dbg !552
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !550
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !550, !prof !117

bb.b:                                             ; preds = %.loopexit.thread.i, %.preheader16.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !553, !noalias !546
  unreachable, !dbg !553

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.preheader.1, %.preheader.i, %.loopexit.thread.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.preheader.1 ], !dbg !554 ; 4 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.a, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ %i.k, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.preheader.1 ]
  %i.d = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !555
  br i1 %i.d, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !555

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %exitcond.not.i = icmp eq i64 %2, 1, !dbg !556
  br i1 %exitcond.not.i, label %bb.d, label %.lr.ph.i.preheader.1, !dbg !556

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %i.e = trunc i64 %i.k to i8, !dbg !557
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !556
  %i.g = or i8 %i.e, -128, !dbg !556
  store i8 %i.g, ptr %i.f, align 1, !dbg !556, !alias.scope !546
  %i.h = lshr i64 %i.a, 14, !dbg !558
  br label %._crit_edge.i, !dbg !551

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !555, !noalias !546
  unreachable, !dbg !555

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.i = trunc i16 %0 to i8, !dbg !557
  %i.j = or i8 %i.i, -128, !dbg !556
  store i8 %i.j, ptr %1, align 1, !dbg !556, !alias.scope !546
  %i.k = lshr i64 %i.a, 7, !dbg !558              ; 2 uses
  %i.l = icmp ugt i16 %0, 16383, !dbg !551
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !dbg !551

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !556, !noalias !546
  unreachable, !dbg !556

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa.i, !dbg !555
  %i.n = trunc nuw nsw i64 %.sroa.0.0.lcssa.i to i8, !dbg !555
  store i8 %i.n, ptr %i.m, align 1, !dbg !555, !alias.scope !546
  %i.o = add nuw nsw i64 %.sroa.010.0.lcssa.i, 1, !dbg !559
  ret i64 %i.o, !dbg !560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs5_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodehNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !561 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !564
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !564
  %i.b = load i64, ptr %i.a, align 8, !dbg !565, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !566
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !566

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !567
  %i.e = load i64, ptr %i.d, align 8, !dbg !567, !noundef !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !567
  %i.g = load i64, ptr %i.f, align 8, !dbg !567, !noundef !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !568
  %i.h = trunc i64 %i.e to i8, !dbg !569
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !570
  store i8 %i.h, ptr %i.i, align 8, !dbg !570
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !570
  store i64 %i.g, ptr %i.j, align 8, !dbg !570
  br label %bb.d, !dbg !571

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !568
  br label %bb.d, !dbg !571

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !572
  store i64 %storemerge, ptr %0, align 8, !dbg !572
  ret void, !dbg !571
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 3) i64 @_RNvXs5_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodehNtB5_6VarInt10encode_var(i8 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !573 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579), !dbg !580
  %i.a = icmp eq i8 %0, 0, !dbg !581
  br i1 %i.a, label %.loopexit.thread.i, label %.preheader16.i, !dbg !581

.loopexit.thread.i:                               ; preds = %bb.a
  %.not1529.i = icmp eq i64 %2, 0, !dbg !582
  br i1 %.not1529.i, label %bb.b, label %._crit_edge.i, !dbg !582, !prof !90

.preheader.i:                                     ; preds = %.preheader16.i
  %i.b = icmp slt i8 %0, 0, !dbg !583
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i, !dbg !583

.preheader16.i:                                   ; preds = %bb.a
  %.not.i = icmp sgt i8 %0, -1, !dbg !584
  %.sroa.05.120.i.lcssa = select i1 %.not.i, i64 0, i64 1, !dbg !584
  %.not15.not.i = icmp samesign ugt i64 %2, %.sroa.05.120.i.lcssa, !dbg !582
  br i1 %.not15.not.i, label %.preheader.i, label %bb.b, !dbg !582, !prof !117

bb.b:                                             ; preds = %.loopexit.thread.i, %.preheader16.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24, !dbg !585, !noalias !579
  unreachable, !dbg !585

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i, %.loopexit.thread.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ 1, %.lr.ph.i ], !dbg !586 ; 4 uses
  %.sroa.0.0.lcssa.i = phi i8 [ %0, %.preheader.i ], [ 0, %.loopexit.thread.i ], [ 1, %.lr.ph.i ]
  %i.c = icmp samesign ult i64 %.sroa.010.0.lcssa.i, %2, !dbg !587
  br i1 %i.c, label %_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit, label %bb.c, !dbg !587

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !dbg !587, !noalias !579
  unreachable, !dbg !587

.lr.ph.i:                                         ; preds = %.preheader.i
  store i8 %0, ptr %1, align 1, !dbg !588, !alias.scope !579
  br label %._crit_edge.i, !dbg !583

_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10encode_var.exit: ; preds = %._crit_edge.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0.lcssa.i, !dbg !587
  store i8 %.sroa.0.0.lcssa.i, ptr %i.d, align 1, !dbg !587, !alias.scope !579
  %i.e = add nuw nsw i64 %.sroa.010.0.lcssa.i, 1, !dbg !589
  ret i64 %i.e, !dbg !590
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs6_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodelNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !591 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !598
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !598
  %i.b = load i64, ptr %i.a, align 8, !dbg !598, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !599
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !599

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !600
  %i.e = load i64, ptr %i.d, align 8, !dbg !600, !noundef !51 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !601
  %i.g = load i64, ptr %i.f, align 8, !dbg !601, !noundef !51
  %i.h = lshr i64 %i.e, 1, !dbg !602
  %i.i = and i64 %i.e, 1, !dbg !603
  %i.j = sub nsw i64 0, %i.i, !dbg !604
  %i.k = xor i64 %i.h, %i.j, !dbg !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !606
  %i.l = trunc i64 %i.k to i32, !dbg !607
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !608
  store i32 %i.l, ptr %i.m, align 8, !dbg !608
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !608
  store i64 %i.g, ptr %i.n, align 8, !dbg !608
  br label %bb.d, !dbg !609

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !606
  br label %bb.d, !dbg !609

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !610
  store i64 %storemerge, ptr %0, align 8, !dbg !610
  ret void, !dbg !609
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs6_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodelNtB5_6VarInt10encode_var(i32 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !611 {
bb.a:
  %i.a = sext i32 %0 to i64, !dbg !620            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619), !dbg !621
  %i.b = shl nsw i64 %i.a, 1, !dbg !622           ; 2 uses
  %i.c = ashr i64 %i.a, 63, !dbg !623             ; 2 uses
  %i.d = xor i64 %i.b, %i.c, !dbg !624            ; 4 uses
  %i.e = icmp eq i64 %i.b, %i.c, !dbg !625
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i, !dbg !625

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ %i.g, %.lr.ph.i ], !dbg !626
  %.not14.i = icmp ult i64 %2, %.sroa.0.0.i, !dbg !627
  br i1 %.not14.i, label %bb.b, label %.preheader.i, !dbg !627, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.f = icmp ugt i64 %i.d, 127, !dbg !628
  br i1 %i.f, label %.lr.ph23.i.preheader, label %._crit_edge.i, !dbg !628

.lr.ph23.i.preheader:                             ; preds = %.preheader.i
  %exitcond.not.i10 = icmp eq i64 %2, 0, !dbg !629
  br i1 %exitcond.not.i10, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !629

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.120.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.010.019.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.g = add nuw nsw i64 %.sroa.0.120.i, 1, !dbg !630 ; 2 uses
  %i.h = lshr i64 %.sroa.010.019.i, 7, !dbg !631  ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0, !dbg !632
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !632

bb.b:                                             ; preds = %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !dbg !633, !noalias !619
  unreachable, !dbg !633

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.m, %.lr.ph ], !dbg !634 ; 4 uses
  %.sroa.02.0.lcssa.i = phi i64 [ %i.d, %.preheader.i ], [ %i.n, %.lr.ph ], !dbg !635
  %i.i = icmp samesign ult i64 %.sroa.06.0.lcssa.i, %2, !dbg !636
  br i1 %i.i, label %_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit, label %bb.c, !dbg !636

.lr.ph23.i:                                       ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.m, %2, !dbg !629
  br i1 %exitcond.not.i, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !629

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !636, !noalias !619
  unreachable, !dbg !636

.lr.ph:                                           ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %.sroa.06.021.i12 = phi i64 [ %i.m, %.lr.ph23.i ], [ 0, %.lr.ph23.i.preheader ] ; 2 uses
  %.sroa.02.022.i11 = phi i64 [ %i.n, %.lr.ph23.i ], [ %i.d, %.lr.ph23.i.preheader ] ; 3 uses
  %i.j = trunc i64 %.sroa.02.022.i11 to i8, !dbg !637
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.021.i12, !dbg !629
  %i.l = or i8 %i.j, -128, !dbg !629
  store i8 %i.l, ptr %i.k, align 1, !dbg !629, !alias.scope !619
  %i.m = add nuw nsw i64 %.sroa.06.021.i12, 1, !dbg !638 ; 3 uses
  %i.n = lshr i64 %.sroa.02.022.i11, 7, !dbg !639 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.02.022.i11, 16383, !dbg !628
  br i1 %i.o, label %.lr.ph23.i, label %._crit_edge.i, !dbg !628

.lr.ph23.i._crit_edge:                            ; preds = %.lr.ph23.i, %.lr.ph23.i.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !dbg !629, !noalias !619
  unreachable, !dbg !629

_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit: ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.lcssa.i, !dbg !636
  %i.q = trunc nuw nsw i64 %.sroa.02.0.lcssa.i to i8, !dbg !636
  store i8 %i.q, ptr %i.p, align 1, !dbg !636, !alias.scope !619
  %i.r = add nuw nsw i64 %.sroa.06.0.lcssa.i, 1, !dbg !640
  ret i64 %i.r, !dbg !641
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i32 @_RNvXs7_NtCs1gC9x3uey1Y_21polars_parquet_format14parquet_formatNtB5_13ConvertedTypeINtNtCscgRAwXFJnXP_4core7convert4FromRlE4from(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #5 !dbg !642 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !646, !noundef !51
  ret i32 %i.a, !dbg !647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs7_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodesNtB5_6VarInt10decode_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 !dbg !648 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !655
  call fastcc void @_RNvXs_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeyNtB4_6VarInt10decode_var(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25, !dbg !655
  %i.b = load i64, ptr %i.a, align 8, !dbg !655, !range !69, !noundef !51
  %i.c = trunc nuw i64 %i.b to i1, !dbg !656
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !656

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !657
  %i.e = load i64, ptr %i.d, align 8, !dbg !657, !noundef !51 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !658
  %i.g = load i64, ptr %i.f, align 8, !dbg !658, !noundef !51
  %i.h = lshr i64 %i.e, 1, !dbg !659
  %i.i = and i64 %i.e, 1, !dbg !660
  %i.j = sub nsw i64 0, %i.i, !dbg !661
  %i.k = xor i64 %i.h, %i.j, !dbg !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !663
  %i.l = trunc i64 %i.k to i16, !dbg !664
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !665
  store i16 %i.l, ptr %i.m, align 8, !dbg !665
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !665
  store i64 %i.g, ptr %i.n, align 8, !dbg !665
  br label %bb.d, !dbg !666

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !663
  br label %bb.d, !dbg !666

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !667
  store i64 %storemerge, ptr %0, align 8, !dbg !667
  ret void, !dbg !666
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, -9223372036854775808) i64 @_RNvXs7_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodesNtB5_6VarInt10encode_var(i16 noundef %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 !dbg !668 {
bb.a:
  %i.a = sext i16 %0 to i64, !dbg !677            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676), !dbg !678
  %i.b = shl nsw i64 %i.a, 1, !dbg !679           ; 2 uses
  %i.c = ashr i64 %i.a, 63, !dbg !680             ; 2 uses
  %i.d = xor i64 %i.b, %i.c, !dbg !681            ; 4 uses
  %i.e = icmp eq i64 %i.b, %i.c, !dbg !682
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i, !dbg !682

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ %i.g, %.lr.ph.i ], !dbg !683
  %.not14.i = icmp ult i64 %2, %.sroa.0.0.i, !dbg !684
  br i1 %.not14.i, label %bb.b, label %.preheader.i, !dbg !684, !prof !90

.preheader.i:                                     ; preds = %.loopexit.i
  %i.f = icmp ugt i64 %i.d, 127, !dbg !685
  br i1 %i.f, label %.lr.ph23.i.preheader, label %._crit_edge.i, !dbg !685

.lr.ph23.i.preheader:                             ; preds = %.preheader.i
  %exitcond.not.i10 = icmp eq i64 %2, 0, !dbg !686
  br i1 %exitcond.not.i10, label %.lr.ph23.i._crit_edge, label %.lr.ph, !dbg !686

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.120.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.010.019.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.g = add nuw nsw i64 %.sroa.0.120.i, 1, !dbg !687 ; 2 uses
  %i.h = lshr i64 %.sroa.010.019.i, 7, !dbg !688  ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0, !dbg !689
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !689

bb.b:                                             ; preds = %.loopexit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !dbg !690, !noalias !676
  unreachable, !dbg !690

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.m, %.lr.ph ], !dbg !691 ; 4 uses
  %.sroa.02.0.lcssa.i = phi i64 [ %i.d, %.preheader.i ], [ %i.n, %.lr.ph ], !dbg !692
  %i.i = icmp samesign ult i64 %.sroa.06.0.lcssa.i, %2, !dbg !693
  br i1 %i.i, label %_RNvXs0_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodexNtB5_6VarInt10encode_var.exit, label %bb.c, !dbg !693

end_hunk_0
