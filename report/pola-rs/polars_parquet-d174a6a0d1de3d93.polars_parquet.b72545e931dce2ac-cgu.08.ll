Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression10decompress:bb.a
  %i.eg = load i64, ptr %i.d, align 8, !dbg !15464, !range !15268, !noundef !16
  %.not70 = icmp eq i64 %i.eg, -9223372036854775803, !dbg !15464
  br i1 %.not70, label %bb.as, label %bb.ap, !dbg !15465

bb.ap:                                            ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression13decompress_v1.exit90
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !15472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15473
  store i64 3, ptr %0, align 8, !dbg !15466
  %i.ei = load i64, ptr %i.e, align 8, !dbg !15474, !range !51, !alias.scope !15477, !noundef !16
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !15474
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15474 ; 2 uses
  br i1 %i.ej, label %bb.aq, label %bb.ar, !dbg !15474

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek), !dbg !15482
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit, !dbg !15474

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek), !dbg !15485
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit, !dbg !15474

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15441
  br label %bb.av, !dbg !15357

bb.as:                                            ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression13decompress_v1.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !dbg !15488
  %.sroa.446.0.copyload = load i64, ptr %i.ac, align 8, !dbg !15488
  store i64 0, ptr %2, align 8, !dbg !15492
  store ptr inttoptr (i64 1 to ptr), ptr %i.ee, align 8, !dbg !15492
  store i64 0, ptr %i.ac, align 8, !dbg !15492
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !15494
  %i.em = load i64, ptr %i.el, align 8, !dbg !15494, !noundef !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !15496
  %i.eo = load i8, ptr %i.en, align 8, !dbg !15496, !range !28, !noundef !16
  %.sroa.844.40.insert.ext = zext nneg i8 %i.eo to i64, !dbg !15497
  %i.ep = load i64, ptr %i.e, align 8, !dbg !15498, !range !51, !alias.scope !15501, !noundef !16
  %i.eq = icmp eq i64 %i.ep, 0, !dbg !15498
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15498 ; 2 uses
  br i1 %i.eq, label %bb.at, label %bb.au, !dbg !15498

bb.at:                                            ; preds = %bb.as
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er), !dbg !15506
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit91, !dbg !15498

bb.au:                                            ; preds = %bb.as
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er), !dbg !15509
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit91, !dbg !15498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit91: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15441
  br label %bb.e, !dbg !15441

bb.av:                                            ; preds = %bb.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page18CompressedDictPageEBM_.exit, %bb.e
  ret void, !dbg !15512
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read6column19get_column_iterator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15513 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15516
  invoke void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadataNtB2_16RowGroupMetadata23columns_under_root_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.c unwind label %bb.b, !dbg !15517

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.h, !dbg !15518

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !dbg !15522, !noundef !16
  %.not = icmp eq ptr %i.e, null, !dbg !15522
  br i1 %.not, label %bb.e, label %bb.d, !dbg !15525, !prof !80

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !15526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15527
  invoke void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata21column_chunk_metadata19ColumnChunkMetadataEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2G_8adapters3rev3RevINtNtB3S_3map3MapINtNtNtB2I_5slice4iter4IterjENCNCNvMNtB11_12row_metadataNtB56_16RowGroupMetadata23columns_under_root_iter00EEEB15_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.b, !dbg !15528

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #36
          to label %bb.f unwind label %bb.b, !dbg !15531

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !15533
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !15535
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15535
  store i64 %5, ptr %i.g, align 8, !dbg !15535
  ret void, !dbg !15539

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !15540
  unreachable, !dbg !15540

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !15540
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read8metadata12metadata_len(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15541 {
bb.a:
  %i.a = add nsw i64 %1, -8, !dbg !15544          ; 3 uses
  %i.b = add nsw i64 %1, -4, !dbg !15546          ; 2 uses
  %i.c = icmp ult i64 %i.b, %i.a, !dbg !15547
  %.not = icmp samesign ult i64 %1, 4
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !15547, !prof !1970
  br i1 %or.cond, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15547, !prof !1970

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.b, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #35, !dbg !15554
  unreachable, !dbg !15554

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a, !dbg !15555
  %.sroa.02.0.copyload = load i32, ptr %i.d, align 1, !dbg !15559
  ret i32 %.sroa.02.0.copyload, !dbg !15568
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read8metadata20deserialize_metadata(ptr dead_on_unwind noalias noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 !dbg !15569 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !15570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15570
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift20decode_file_metadata(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !15570
  %i.c = load i64, ptr %i.b, align 8, !dbg !15571, !range !2058, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808, !dbg !15571
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !15573
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !15574

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15575
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !15575
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !15576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !15583
  br label %bb.d, !dbg !15584

bb.c:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15585
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !15570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.65.0..sroa_idx, i64 120, i1 false), !dbg !15585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15575
  store i64 %i.c, ptr %i.a, align 8, !dbg !15570
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !15570
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !15583
  call void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata13file_metadataNtB2_12FileMetadata12from_compact(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a), !dbg !15586
  br label %bb.d, !dbg !15584

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !15588
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read8metadata20deserialize_num_rows(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 !dbg !15589 {
bb.a:
  tail call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift15decode_num_rows(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !15590
  ret void, !dbg !15591
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write12column_chunk18build_column_chunk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 15372286728091294) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15592 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [80 x i8], align 8                ; 10 uses
  %i.l = alloca [40 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [192 x i8], align 8               ; 7 uses
  %i.q = alloca [136 x i8], align 8               ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.11 = alloca i32, align 4                 ; 9 uses
  %.sroa.19 = alloca i32, align 4                 ; 3 uses
  %i.s = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.321 = alloca [32 x i8], align 8          ; 2 uses
  %.sroa.4 = alloca [152 x i8], align 8           ; 2 uses
  %i.t = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [80 x i8], align 8                ; 9 uses
  %i.w = alloca [64 x i8], align 8                ; 11 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [64 x i8], align 8                ; 11 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [40 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !15596
  %.idx = mul nuw nsw i64 %2, 600, !dbg !15597
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !15597 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15606, !noalias !15614
  %i.ac = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !15617, !noalias !15614
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !15620, !noalias !15614
  %i.ae = icmp eq i8 %i.ad, 2, !dbg !15624
  br i1 %i.ae, label %bb.d, label %bb.b, !dbg !15624, !prof !462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #39, !dbg !15625, !noalias !15614
  br label %bb.d, !dbg !15625

bb.c:                                             ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_.exit.i.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalEB1j_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i, i64 noundef 1, i64 noundef 16)
          to label %common.resume unwind label %bb.f, !dbg !15626, !noalias !15614

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @34, i64 32, i1 false), !dbg !15635, !noalias !15614
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !15635 ; 3 uses
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !15635, !noalias !15614
  %.not.i = icmp eq i64 %2, 0, !dbg !15639        ; 2 uses
  br i1 %.not.i, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_.exit.i.i, label %bb.e, !dbg !15656, !prof !462

bb.e:                                             ; preds = %bb.d
  %i.ag = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_.exit.i.i unwind label %bb.c, !dbg !15661, !noalias !15614 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_.exit.i.i: ; preds = %bb.e, %bb.d
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENCNvNtB1v_12column_chunk18build_column_chunk0ENCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB3v_7HashSetNtNtB1x_14parquet_bridge11CompressionNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB4e_E6extendBX_E0ENtNtB5H_8iterator8Iterator4folduNCINvNvB6q_8for_each4callTB4e_uENCINvXs1l_NtB3x_3mapINtB7C_7HashMapB4e_uB4P_EIB5D_B7l_E6extendBN_E0E0EB1z_(ptr noundef nonnull %1, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvXs9_NtCs7tGzs63DEEy_9hashbrown3setINtB6_7HashSetNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB2T_8adapters3map3MapINtNtNtB2V_5slice4iter4IterNtNtNtBS_5write4page13PageWriteSpecENCNvNtB4X_12column_chunk18build_column_chunk0EEBU_.exit unwind label %bb.c, !dbg !15662, !noalias !15614

bb.f:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !15665, !noalias !15614
  unreachable, !dbg !15665

common.resume:                                    ; preds = %.body119, %bb.cm, %bb.bb, %.body152.thread, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.c ], [ %eh.lpad-body, %bb.cm ], [ %eh.lpad-body, %.body119 ], [ %.pn94220, %.body152.thread ], [ %.pn.pn.pn, %bb.bb ]
  resume { ptr, i32 } %common.resume.op, !dbg !15666

_RINvXs9_NtCs7tGzs63DEEy_9hashbrown3setINtB6_7HashSetNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB2T_8adapters3map3MapINtNtNtB2V_5slice4iter4IterNtNtNtBS_5write4page13PageWriteSpecENCNvNtB4X_12column_chunk18build_column_chunk0EEBU_.exit: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !dbg !15667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15668, !noalias !15614
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !15669
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !15669, !noundef !16 ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 1, !dbg !15677      ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !15677

bb.g:                                             ; preds = %_RINvXs9_NtCs7tGzs63DEEy_9hashbrown3setINtB6_7HashSetNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB2T_8adapters3map3MapINtNtNtB2V_5slice4iter4IterNtNtNtBS_5write4page13PageWriteSpecENCNvNtB4X_12column_chunk18build_column_chunk0EEBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15678
  %.sroa.0208.0.copyload = load ptr, ptr %i.aa, align 8, !dbg !15678, !nonnull !16, !noundef !16 ; 7 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !15678
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15678 ; 5 uses
  %.val4.i.i.i = load <16 x i8>, ptr %.sroa.0208.0.copyload, align 16, !dbg !15679, !noalias !15706
  %i.al = icmp eq i64 %.sroa.2.0.copyload, 0, !dbg !15716
  br i1 %i.al, label %bb.i, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !15716

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.g
  %i.am = add i64 %.sroa.2.0.copyload, 1, !dbg !15722
  %i.an = icmp ult i64 %i.am, -15, !dbg !15722
  call void @llvm.assume(i1 %i.an), !dbg !15729
  %i.ao = and i64 %.sroa.2.0.copyload, -16, !dbg !15734 ; 2 uses
  %i.ap = add i64 %i.ao, 16, !dbg !15734          ; 2 uses
  %i.aq = add i64 %.sroa.2.0.copyload, 17, !dbg !15735
  %i.ar = add i64 %i.aq, %i.ap, !dbg !15737       ; 3 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !15737
  call void @llvm.assume(i1 %i.as), !dbg !15739
  %i.at = icmp ult i64 %i.ar, 9223372036854775793, !dbg !15742
  call void @llvm.assume(i1 %i.at), !dbg !15742
  %i.au = sub nuw nsw i64 -16, %i.ao, !dbg !15744
  %i.av = getelementptr inbounds i8, ptr %.sroa.0208.0.copyload, i64 %i.au, !dbg !15748
  br label %bb.i, !dbg !15749

bb.h:                                             ; preds = %_RINvXs9_NtCs7tGzs63DEEy_9hashbrown3setINtB6_7HashSetNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB2T_8adapters3map3MapINtNtNtB2V_5slice4iter4IterNtNtNtBS_5write4page13PageWriteSpecENCNvNtB4X_12column_chunk18build_column_chunk0EEBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !15750
  invoke void @_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError3oosReEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 70)
          to label %bb.cl unwind label %.loopexit.split-lp, !dbg !15750

.body119:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.am, %.body.i141, %bb.z, %.body.i, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.es, %bb.r ], [ %eh.lpad-body.i142, %.body.i141 ], [ %i.fj, %bb.z ], [ %i.hh, %bb.am ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  br i1 %i.ak, label %bb.cm, label %common.resume, !dbg !15751

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.loopexit.split-lp:                               ; preds = %.invoke, %bb.h, %bb.l, %bb.aj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRINtNtB4_6option6OptionNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsEEEB1G_.exit156
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.g
  %.sroa.49.0.i.i = phi i64 [ undef, %bb.g ], [ %i.ar, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], !dbg !15752
  %.sroa.510.0.i.i = phi ptr [ undef, %bb.g ], [ %i.av, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], !dbg !15752
  %.sink.i.i.i = phi i64 [ 0, %bb.g ], [ 16, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], !dbg !15753
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0208.0.copyload, i64 16, !dbg !15754 ; 2 uses
  %i.ax = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1), !dbg !15757 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.0208.0.copyload, i64 %.sroa.2.0.copyload, !dbg !15771
  %i.az = getelementptr i8, ptr %i.ay, i64 1, !dbg !15771
  store i64 %.sink.i.i.i, ptr %i.y, align 8, !dbg !15773
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !15773 ; 2 uses
  store i64 %.sroa.49.0.i.i, ptr %.sroa.4182.0..sroa_idx, align 8, !dbg !15773
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !15773 ; 2 uses
  store ptr %.sroa.510.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15773
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !15773 ; 3 uses
  store ptr %.sroa.0208.0.copyload, ptr %.sroa.6183.0..sroa_idx, align 8, !dbg !15773
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32, !dbg !15773 ; 2 uses
  store ptr %i.aw, ptr %.sroa.7184.0..sroa_idx, align 8, !dbg !15773
  %.sroa.8185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40, !dbg !15773
  store ptr %i.az, ptr %.sroa.8185.0..sroa_idx, align 8, !dbg !15773
  %.sroa.9186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48, !dbg !15773 ; 2 uses
  store <16 x i1> %i.ax, ptr %.sroa.9186.0..sroa_idx, align 8, !dbg !15773
  %.sroa.10188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56, !dbg !15773 ; 2 uses
  store i64 %i.aj, ptr %.sroa.10188.0..sroa_idx, align 8, !dbg !15773
  %i.ba = icmp eq i64 %i.aj, 0, !dbg !15774
  br i1 %i.ba, label %bb.l, label %bb.j, !dbg !15774

bb.j:                                             ; preds = %bb.i
  %i.bb = bitcast <16 x i1> %i.ax to i16, !dbg !15774 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15787), !dbg !15790
  %.not11.i = icmp eq i16 %i.bb, 0, !dbg !15791
  br i1 %.not11.i, label %.lr.ph.i, label %bb.k, !dbg !15804

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.bg, ptr %.sroa.7184.0..sroa_idx, align 8, !dbg !15805, !alias.scope !15787
  store ptr %i.bf, ptr %.sroa.6183.0..sroa_idx, align 8, !dbg !15806, !alias.scope !15787
  br label %bb.k, !dbg !15804

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.aw, %bb.j ], !dbg !15807 ; 2 uses
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.0208.0.copyload, %bb.j ]
  %.val9.i = load <16 x i8>, ptr %i.bc, align 16, !dbg !15808, !noalias !15787
  %i.be = icmp sgt <16 x i8> %.val9.i, splat (i8 -1), !dbg !15811
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -16, !dbg !15818 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !15825 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.be to i16, !dbg !15828 ; 2 uses
  %.not.i101 = icmp eq i16 %.cast.i, 0, !dbg !15791
  br i1 %.not.i101, label %.lr.ph.i, label %._crit_edge.i, !dbg !15804

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  %i.bh = phi ptr [ %i.bf, %._crit_edge.i ], [ %.sroa.0208.0.copyload, %bb.j ], !dbg !15829
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.bb, %bb.j ], !dbg !15828 ; 3 uses
  %i.bi = add i16 %.lcssa.i, -1, !dbg !15831
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !15838
  %i.bk = zext nneg i16 %i.bj to i64, !dbg !15839
  %i.bl = and i16 %i.bi, %.lcssa.i, !dbg !15840
  store i16 %i.bl, ptr %.sroa.9186.0..sroa_idx, align 8, !dbg !15844, !alias.scope !15787
  %i.bm = sub nsw i64 0, %i.bk, !dbg !15845
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 %i.bm, !dbg !15847
  store i64 0, ptr %.sroa.10188.0..sroa_idx, align 8, !dbg !15848
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1, !dbg !15850
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !15857, !range !14974, !noundef !16
  %i.bq = zext nneg i8 %i.bp to i32, !dbg !15862
  br label %bb.l, !dbg !15881

bb.l:                                             ; preds = %bb.i, %bb.k
  %.sroa.0.0 = phi i32 [ %i.bq, %bb.k ], [ 0, %bb.i ], !dbg !15884
  invoke void @_RNvMsn_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_7RawIterTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE13drop_elementsBU_(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.6183.0..sroa_idx)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !15885

.noexc:                                           ; preds = %bb.l
  %i.br = load i64, ptr %i.y, align 8, !dbg !15894, !range !2058, !alias.scope !15896, !noundef !16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.br, 0, !dbg !15894
  br i1 %.not.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, label %bb.m, !dbg !15905

bb.m:                                             ; preds = %.noexc
  %i.bs = load i64, ptr %.sroa.4182.0..sroa_idx, align 8, !dbg !15906, !alias.scope !15896, !noundef !16 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !15907
  br i1 %i.bt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, label %bb.n, !dbg !15907

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15909, !alias.scope !15896, !nonnull !16, !noundef !16
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %i.br) #40, !dbg !15910
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, !dbg !15913

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit: ; preds = %bb.n, %bb.m, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15914
  br i1 %.not.i, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks5_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, label %.preheader.preheader, !dbg !15915

.preheader.preheader:                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit
  %xtraiter = and i64 %2, 3, !dbg !15928          ; 3 uses
  %i.bv = icmp samesign ult i64 %2, 4, !dbg !15928
  br i1 %i.bv, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !15928
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet:bb.a

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !38079
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16, !dbg !38082
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.022.i, !dbg !38085 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.u, 0, !dbg !38086 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.u, 1, !dbg !38086 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !dbg !38087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ], !dbg !38087
  store ptr %i.y, ptr %i.x, align 8, !dbg !38092, !noalias !38078
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !38092
  store ptr %i.z, ptr %i.aa, align 8, !dbg !38092, !noalias !38078
  %i.ab = icmp eq i64 %i.s, 0, !dbg !38057
  br i1 %i.ab, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !38057

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !38093, !noalias !38078
  unreachable, !dbg !38093

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.p, align 8, !dbg !38094, !noalias !38023
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.g unwind label %bb.e, !dbg !38103, !noalias !38078

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !38093

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !38104, !noalias !38023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !38107, !noalias !38108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38103, !noalias !38023
  ret void, !dbg !38109
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38110 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.05 = alloca [56 x i8], align 8           ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38111
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !38118
  %i.h = load ptr, ptr %i.g, align 8, !dbg !38118, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !dbg !38132, !noundef !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38133, !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38142, !noalias !38138
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !38142, !noalias !38138
  %i.j = load i64, ptr %i.a, align 8, !dbg !38142, !range !51, !noalias !38138, !noundef !16
  %i.k = trunc nuw i64 %i.j to i1, !dbg !38148
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38149
  %i.m = load i64, ptr %i.l, align 8, !dbg !38149, !range !2058, !noalias !38138, !noundef !16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38149 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !38148, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !dbg !38150, !noalias !38138
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #36, !dbg !38151, !noalias !38138
  unreachable, !dbg !38151

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !dbg !38152, !noalias !38138, !nonnull !16, !noundef !16 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m, !dbg !38153
  tail call void @llvm.assume(i1 %i.q), !dbg !38156, !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38158, !noalias !38138
  store i64 %i.m, ptr %i.e, align 8, !dbg !38159, !noalias !38138
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !38159
  store ptr %i.p, ptr %i.r, align 8, !dbg !38159, !noalias !38138
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !38159 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.i, !dbg !38160
  %i.u = icmp eq i64 %i.m, 0, !dbg !38172
  br i1 %i.u, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph, !dbg !38172

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.05.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 32
  br label %bb.c, !dbg !38172

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.04.033 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %bb.m ] ; 7 uses
  %.sroa.7.032 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.m ] ; 3 uses
  %.sroa.10.031 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %bb.m ]
  %i.v = add i64 %.sroa.10.031, -1, !dbg !38177   ; 2 uses
  %i.w = icmp eq ptr %.sroa.04.033, %i.t, !dbg !38178
  br i1 %i.w, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.d, !dbg !38187

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.033, i64 72, !dbg !38188
  %i.y = add nuw nsw i64 %.sroa.7.032, 1, !dbg !38191
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05), !dbg !38194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38196), !dbg !38199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38200, !noalias !38202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38204, !noalias !38202
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.033, i64 32, !dbg !38204 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.033, i64 55, !dbg !38207
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !38207, !range !2036, !alias.scope !38196, !noalias !38211, !noundef !16
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !38212
  br i1 %i.ac, label %bb.e, label %bb.f, !dbg !38212

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #39
          to label %.noexc unwind label %.loopexit, !dbg !38213, !inline_history !38214

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !38215, !noalias !38211
  br label %.noexc, !dbg !38217

.noexc:                                           ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !38218, !noalias !38202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38219, !noalias !38202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !38220, !noalias !38202
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.04.033)
          to label %bb.i unwind label %bb.g, !dbg !38220, !noalias !38211, !inline_history !38214

bb.g:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !38221
  %i.af = load i8, ptr %i.ae, align 1, !dbg !38221, !range !2036, !alias.scope !38228, !noalias !38202, !noundef !16
  %i.ag = icmp eq i8 %i.af, -40, !dbg !38237
  br i1 %i.ag, label %bb.h, label %bb.o, !dbg !38237, !prof !80

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !dbg !38238, !noalias !38211, !inline_history !38214

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.033, i64 64, !dbg !38239
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !38239, !range !28, !alias.scope !38196, !noalias !38211, !noundef !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.033, i64 56, !dbg !38240
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !38240, !alias.scope !38196, !noalias !38211, !noundef !16 ; 3 uses
  %.not.i1 = icmp eq ptr %i.ak, null, !dbg !38240
  br i1 %.not.i1, label %bb.m, label %bb.j, !dbg !38242

bb.j:                                             ; preds = %bb.i
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !dbg !38243, !noalias !38211
  %i.am = icmp slt i64 %i.al, 0, !dbg !38247
  br i1 %i.am, label %bb.k, label %bb.m, !dbg !38247

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !38248, !noalias !38249
  unreachable, !dbg !38248

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !38250, !noalias !38211, !inline_history !38214
  unreachable, !dbg !38250

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !38250, !noalias !38251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !38250, !noalias !38251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38252, !noalias !38202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !38252, !noalias !38202
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.7.032, !dbg !38253 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false), !dbg !38254, !noalias !38249
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56, !dbg !38270
  store ptr %i.ak, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !38270, !noalias !38249
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64, !dbg !38270
  store i8 %i.ai, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !38270, !noalias !38249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05), !dbg !38271
  %i.ap = icmp eq i64 %i.v, 0, !dbg !38172
  br i1 %i.ap, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.c, !dbg !38172

bb.n:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !38272, !noalias !38249, !inline_history !38273
  unreachable, !dbg !38272

bb.o:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.032, ptr %i.s, align 8, !dbg !38274, !noalias !38249
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %bb.p unwind label %bb.n, !dbg !38281, !noalias !38249, !inline_history !38273

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body, !dbg !38272

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.m, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit
  store i64 %i.i, ptr %i.s, align 8, !dbg !38282, !noalias !38138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !38285, !noalias !38286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !38281, !noalias !38138
  ret void, !dbg !38287
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38288 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.14.i = alloca i64, align 8               ; 8 uses
  %.sroa.19.i = alloca i64, align 8               ; 8 uses
  %.sroa.24.i = alloca i64, align 8               ; 8 uses
  %.sroa.29.i = alloca i64, align 8               ; 8 uses
  %.sroa.34.i = alloca i64, align 8               ; 6 uses
  %.sroa.37.i = alloca i8, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38289
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !38296
  %i.d = load ptr, ptr %i.c, align 8, !dbg !38296, !nonnull !16, !noundef !16 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !dbg !38310, !noundef !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38311, !noalias !38321
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !38311, !noalias !38321
  %i.f = load i64, ptr %i.a, align 8, !dbg !38311, !range !51, !noalias !38321, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1, !dbg !38324
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38325
  %i.i = load i64, ptr %i.h, align 8, !dbg !38325, !range !2058, !noalias !38321, !noundef !16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38325 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !38324, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !38326, !noalias !38321
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36, !dbg !38327, !noalias !38321
  unreachable, !dbg !38327

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !38328, !noalias !38321, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !38329
  tail call void @llvm.assume(i1 %i.m), !dbg !38332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38334, !noalias !38321
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.e, !dbg !38335
  %i.o = icmp eq i64 %i.i, 0, !dbg !38347
  br i1 %i.o, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i, !dbg !38347

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.ab
  %.sroa.012.066.i = phi ptr [ %i.r, %bb.ab ], [ %i.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i ] ; 34 uses
  %.sroa.7.065.i = phi i64 [ %i.s, %bb.ab ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i ] ; 2 uses
  %.sroa.10.064.i = phi i64 [ %i.p, %bb.ab ], [ %i.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i ]
  %i.p = add i64 %.sroa.10.064.i, -1, !dbg !38352 ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.066.i, %i.n, !dbg !38353
  br i1 %i.q, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.c, !dbg !38362

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 72, !dbg !38363
  %i.s = add nuw nsw i64 %.sroa.7.065.i, 1, !dbg !38366
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i), !dbg !38369
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i), !dbg !38369
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i), !dbg !38369
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.i), !dbg !38369
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34.i), !dbg !38369
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i), !dbg !38369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38371), !dbg !38374
  %i.t = load i64, ptr %.sroa.012.066.i, align 8, !dbg !38375, !range !4671, !noalias !38381, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 8, !dbg !38382 ; 5 uses
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.q
    i64 4, label %bb.r
  ], !dbg !38375

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 48, !dbg !38383
  %i.w = load i8, ptr %i.v, align 8, !dbg !38383, !range !28, !noalias !38381, !noundef !16
  %i.x = load ptr, ptr %i.u, align 8, !dbg !38388, !noalias !38381, !noundef !16 ; 4 uses
  %.not19.i.i = icmp eq ptr %i.x, null, !dbg !38388
  br i1 %.not19.i.i, label %bb.u, label %bb.s, !dbg !38391

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 64, !dbg !38392
  %i.z = load i8, ptr %i.y, align 8, !dbg !38392, !range !28, !noalias !38397, !noundef !16
  %i.aa = load ptr, ptr %i.u, align 8, !dbg !38400, !noalias !38397, !nonnull !16, !noundef !16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !38412, !range !2248, !noalias !38397, !noundef !16
  %i.ac = icmp eq i64 %i.ab, 3, !dbg !38416
  br i1 %i.ac, label %bb.f, label %bb.g, !dbg !38416

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 16, !dbg !38417
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !38417, !noalias !38397, !noundef !16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 24, !dbg !38418
  %i.ag = load i64, ptr %i.af, align 8, !dbg !38418, !noalias !38397, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 32, !dbg !38419
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !38419, !noalias !38397, !noundef !16 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null, !dbg !38419
  br i1 %.not.i.i.i, label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, label %bb.h, !dbg !38422

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !38423
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !dbg !38430, !noalias !38397 ; 0 uses
  br label %bb.f, !dbg !38433

bb.h:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.ai, align 8, !dbg !38434, !range !2248, !noalias !38446, !noundef !16
  %i.am = icmp eq i64 %i.al, 3, !dbg !38449
  br i1 %i.am, label %bb.j, label %bb.i, !dbg !38449

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !38450
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !dbg !38457, !noalias !38446 ; 0 uses
  br label %bb.j, !dbg !38460

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 40, !dbg !38461
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !38461, !noalias !38446, !noundef !16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 48, !dbg !38462
  %i.as = load i64, ptr %i.ar, align 8, !dbg !38462, !noalias !38446, !noundef !16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 56, !dbg !38463
  %i.au = load atomic i64, ptr %i.at monotonic, align 8, !dbg !38480, !noalias !38446
  br label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, !dbg !38483

_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i: ; preds = %bb.j, %bb.f
  %.sroa.5.sroa.5.0.i.i.i = phi i64 [ undef, %bb.f ], [ %i.au, %bb.j ], !dbg !38484
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %bb.f ], [ %i.as, %bb.j ], !dbg !38484
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ undef, %bb.f ], [ %i.aq, %bb.j ], !dbg !38484
  %i.av = ptrtoint ptr %i.ae to i64, !dbg !38485
  store i64 %i.ag, ptr %.sroa.14.i, align 8, !dbg !38485, !alias.scope !38371, !noalias !38321
  %2 = ptrtoint ptr %i.ai to i64, !dbg !38485
  store i64 %2, ptr %.sroa.19.i, align 8, !dbg !38485, !alias.scope !38371, !noalias !38321
  br label %bb.ab, !dbg !38486

bb.k:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 64, !dbg !38487
  %i.ax = load i8, ptr %i.aw, align 8, !dbg !38487, !range !28, !noalias !38491, !noundef !16
  %i.ay = load ptr, ptr %i.u, align 8, !dbg !38494, !noalias !38491, !nonnull !16, !noundef !16 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !dbg !38503, !range !2248, !noalias !38491, !noundef !16
  %i.ba = icmp eq i64 %i.az, 3, !dbg !38507
  br i1 %i.ba, label %bb.l, label %bb.m, !dbg !38507

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 16, !dbg !38508
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !38508, !noalias !38491, !noundef !16
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 24, !dbg !38509
  %i.be = load i64, ptr %i.bd, align 8, !dbg !38509, !noalias !38491, !noundef !16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 32, !dbg !38510
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !38510, !noalias !38491, !noundef !16 ; 4 uses
  %.not.i20.i.i = icmp eq ptr %i.bg, null, !dbg !38510
  br i1 %.not.i20.i.i, label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, label %bb.n, !dbg !38513

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !38514
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !dbg !38521, !noalias !38491 ; 0 uses
  br label %bb.l, !dbg !38524

bb.n:                                             ; preds = %bb.l
  %i.bj = load i64, ptr %i.bg, align 8, !dbg !38525, !range !2248, !noalias !38529, !noundef !16
  %i.bk = icmp eq i64 %i.bj, 3, !dbg !38532
  br i1 %i.bk, label %bb.p, label %bb.o, !dbg !38532

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !38533
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !dbg !38537, !noalias !38529 ; 0 uses
  br label %bb.p, !dbg !38539

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 40, !dbg !38540
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !38540, !noalias !38529, !noundef !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 48, !dbg !38541
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !38541, !noalias !38529, !noundef !16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 56, !dbg !38542
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8, !dbg !38549, !noalias !38529
  br label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, !dbg !38551

_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i: ; preds = %bb.p, %bb.l
  %.sroa.5.sroa.5.0.i21.i.i = phi i64 [ undef, %bb.l ], [ %i.bs, %bb.p ], !dbg !38552
  %.sroa.5.sroa.4.0.i22.i.i = phi i64 [ undef, %bb.l ], [ %i.bq, %bb.p ], !dbg !38552
  %.sroa.5.sroa.0.0.i23.i.i = phi i64 [ undef, %bb.l ], [ %i.bo, %bb.p ], !dbg !38552
  %i.bt = ptrtoint ptr %i.bc to i64, !dbg !38553
  store i64 %i.be, ptr %.sroa.14.i, align 8, !dbg !38553, !alias.scope !38371, !noalias !38321
  %3 = ptrtoint ptr %i.bg to i64, !dbg !38553
  store i64 %3, ptr %.sroa.19.i, align 8, !dbg !38553, !alias.scope !38371, !noalias !38321
  br label %bb.ab, !dbg !38486

bb.q:                                             ; preds = %bb.c
  %i.bu = load ptr, ptr %i.u, align 8, !dbg !38554, !noalias !38381, !noundef !16 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.bu, null, !dbg !38554
  br i1 %.not18.i.i, label %bb.x, label %bb.v, !dbg !38560

bb.r:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 48, !dbg !38561
  %i.bw = load i8, ptr %i.bv, align 8, !dbg !38561, !range !28, !noalias !38381, !noundef !16
  %i.bx = load ptr, ptr %i.u, align 8, !dbg !38566, !noalias !38381, !noundef !16 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bx, null, !dbg !38566
  br i1 %.not.i.i, label %bb.aa, label %bb.y, !dbg !38568

bb.s:                                             ; preds = %bb.d
  %i.by = load i64, ptr %i.x, align 8, !dbg !38569, !range !2248, !noalias !38573, !noundef !16
  %i.bz = icmp eq i64 %i.by, 3, !dbg !38576
  br i1 %i.bz, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, label %bb.t, !dbg !38576

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !38577
  %i.cb = atomicrmw add ptr %i.ca, i64 1 monotonic, align 8, !dbg !38581, !noalias !38573 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !38583

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 16, !dbg !38584
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !38584, !noalias !38573, !noundef !16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 24, !dbg !38585
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !38585, !noalias !38573, !noundef !16
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 32, !dbg !38586
  %i.ch = load atomic i64, ptr %i.cg monotonic, align 8, !dbg !38593, !noalias !38573
  br label %bb.u, !dbg !38595

bb.u:                                             ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.d
  %.sroa.517.sroa.5.0.i.i = phi i64 [ undef, %bb.d ], [ %i.ch, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38383
  %.sroa.517.sroa.4.0.i.i = phi i64 [ undef, %bb.d ], [ %i.cf, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38383
  %.sroa.517.sroa.0.0.i.i = phi i64 [ undef, %bb.d ], [ %i.cd, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38383
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 40, !dbg !38383
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !38383, !noalias !38381, !noundef !16
  br label %bb.ab, !dbg !38486

bb.v:                                             ; preds = %bb.q
  %i.ck = load i64, ptr %i.bu, align 8, !dbg !38596, !range !2248, !noalias !38600, !noundef !16
  %i.cl = icmp eq i64 %i.ck, 3, !dbg !38603
  br i1 %i.cl, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, label %bb.w, !dbg !38603

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !38604
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !dbg !38608, !noalias !38600 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, !dbg !38610

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i: ; preds = %bb.w, %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 16, !dbg !38611
  %i.cp = load i64, ptr %i.co, align 8, !dbg !38611, !noalias !38600, !noundef !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 24, !dbg !38612
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !38612, !noalias !38600, !noundef !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 32, !dbg !38613
  %i.ct = load atomic i64, ptr %i.cs monotonic, align 8, !dbg !38620, !noalias !38600
  br label %bb.x, !dbg !38622

bb.x:                                             ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, %bb.q
  %.sroa.514.sroa.5.0.i.i = phi i64 [ undef, %bb.q ], [ %i.ct, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !38623
  %.sroa.514.sroa.4.0.i.i = phi i64 [ undef, %bb.q ], [ %i.cr, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !38623
  %.sroa.514.sroa.0.0.i.i = phi i64 [ undef, %bb.q ], [ %i.cp, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !38623
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 56, !dbg !38623
  %i.cv = load i8, ptr %i.cu, align 8, !dbg !38623, !range !28, !noalias !38381, !noundef !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 40, !dbg !38623
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !38623, !noalias !38381, !noundef !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 48, !dbg !38623
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !38623, !noalias !38381, !noundef !16
  store i64 %.sroa.514.sroa.4.0.i.i, ptr %.sroa.14.i, align 8, !dbg !38624, !alias.scope !38371, !noalias !38321
  br label %bb.ab, !dbg !38486

bb.y:                                             ; preds = %bb.r
  %i.da = load i64, ptr %i.bx, align 8, !dbg !38625, !range !2248, !noalias !38629, !noundef !16
  %i.db = icmp eq i64 %i.da, 3, !dbg !38632
  br i1 %i.db, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, label %bb.z, !dbg !38632

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !38633
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8, !dbg !38637, !noalias !38629 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, !dbg !38639

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i: ; preds = %bb.z, %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 16, !dbg !38640
  %i.df = load i64, ptr %i.de, align 8, !dbg !38640, !noalias !38629, !noundef !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 24, !dbg !38641
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !38641, !noalias !38629, !noundef !16
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 32, !dbg !38642
  %i.dj = load atomic i64, ptr %i.di monotonic, align 8, !dbg !38649, !noalias !38629
  br label %bb.aa, !dbg !38651

bb.aa:                                            ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, %bb.r
  %.sroa.511.sroa.5.0.i.i = phi i64 [ undef, %bb.r ], [ %i.dj, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !38561
  %.sroa.511.sroa.4.0.i.i = phi i64 [ undef, %bb.r ], [ %i.dh, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !38561
  %.sroa.511.sroa.0.0.i.i = phi i64 [ undef, %bb.r ], [ %i.df, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !38561
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 40, !dbg !38561
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !38561, !noalias !38381, !noundef !16
  br label %bb.ab, !dbg !38486

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.u, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i
  %.sroa.9.0.i = phi i64 [ %.sroa.517.sroa.0.0.i.i, %bb.u ], [ %i.av, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.bt, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.514.sroa.0.0.i.i, %bb.x ], [ %.sroa.511.sroa.0.0.i.i, %bb.aa ], !dbg !38375
  %.sroa.430.0.i = phi ptr [ %i.x, %bb.u ], [ %i.aa, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.ay, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.bu, %bb.x ], [ %i.bx, %bb.aa ], !dbg !38375
  %.sink64.i.sroa.phi.i = phi ptr [ %.sroa.14.i, %bb.u ], [ %.sroa.24.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.24.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.19.i, %bb.x ], [ %.sroa.14.i, %bb.aa ]
  %.sroa.511.sroa.4.0.sink.i.i = phi i64 [ %.sroa.517.sroa.4.0.i.i, %bb.u ], [ %.sroa.5.sroa.0.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.0.0.i23.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.514.sroa.5.0.i.i, %bb.x ], [ %.sroa.511.sroa.4.0.i.i, %bb.aa ]
  %.sink63.i.sroa.phi.i = phi ptr [ %.sroa.19.i, %bb.u ], [ %.sroa.29.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.29.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.24.i, %bb.x ], [ %.sroa.19.i, %bb.aa ]
  %.sroa.511.sroa.5.0.sink.i.i = phi i64 [ %.sroa.517.sroa.5.0.i.i, %bb.u ], [ %.sroa.5.sroa.4.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.4.0.i22.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.cx, %bb.x ], [ %.sroa.511.sroa.5.0.i.i, %bb.aa ]
  %.sink62.i.sroa.phi.i = phi ptr [ %.sroa.24.i, %bb.u ], [ %.sroa.34.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.34.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.29.i, %bb.x ], [ %.sroa.24.i, %bb.aa ]
  %.sink61.i.i = phi i64 [ %i.cj, %bb.u ], [ %.sroa.5.sroa.5.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.5.0.i21.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.cz, %bb.x ], [ %i.dl, %bb.aa ]
  %.sink60.i.sroa.phi.i = phi ptr [ %.sroa.29.i, %bb.u ], [ %.sroa.37.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.37.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.34.i, %bb.x ], [ %.sroa.29.i, %bb.aa ]
  %.sink59.i.i = phi i8 [ %i.w, %bb.u ], [ %i.z, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.ax, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.cv, %bb.x ], [ %i.bw, %bb.aa ]
  store i64 %.sroa.511.sroa.4.0.sink.i.i, ptr %.sink64.i.sroa.phi.i, align 8, !dbg !38375, !alias.scope !38371, !noalias !38321
  store i64 %.sroa.511.sroa.5.0.sink.i.i, ptr %.sink63.i.sroa.phi.i, align 8, !dbg !38375, !alias.scope !38371, !noalias !38321
  store i64 %.sink61.i.i, ptr %.sink62.i.sroa.phi.i, align 8, !dbg !38375, !alias.scope !38371, !noalias !38321
  store i8 %.sink59.i.i, ptr %.sink60.i.sroa.phi.i, align 8, !dbg !38375, !alias.scope !38371, !noalias !38321
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.7.065.i, !dbg !38652 ; 9 uses
  %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i = load i64, ptr %.sroa.14.i, align 8, !dbg !38653, !noalias !38321
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload.i = load i64, ptr %.sroa.19.i, align 8, !dbg !38653, !noalias !38321
  %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i = load i64, ptr %.sroa.24.i, align 8, !dbg !38653, !noalias !38321
  %.sroa.29.i.0..sroa.29.i.0..sroa.29.i.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i = load i64, ptr %.sroa.29.i, align 8, !dbg !38653, !noalias !38321
  %.sroa.34.i.0..sroa.34.i.0..sroa.34.i.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload.i = load i64, ptr %.sroa.34.i, align 8, !dbg !38653, !noalias !38321
  %.sroa.37.i.0..sroa.37.i.0..sroa.37.i.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload.i = load i8, ptr %.sroa.37.i, align 8, !dbg !38653, !noalias !38321
  store i64 %i.t, ptr %i.dm, align 8, !dbg !38663, !noalias !38321
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8, !dbg !38663
  store ptr %.sroa.430.0.i, ptr %.sroa.448.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16, !dbg !38663
  store i64 %.sroa.9.0.i, ptr %.sroa.549.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24, !dbg !38663
  store i64 %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i, ptr %.sroa.650.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32, !dbg !38663
  store i64 %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload.i, ptr %.sroa.751.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 40, !dbg !38663
  store i64 %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.953.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 48, !dbg !38663
  store i64 %.sroa.29.i.0..sroa.29.i.0..sroa.29.i.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i, ptr %.sroa.953.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.1054.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 56, !dbg !38663
  store i64 %.sroa.34.i.0..sroa.34.i.0..sroa.34.i.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload.i, ptr %.sroa.1054.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  %.sroa.1155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 64, !dbg !38663
  store i8 %.sroa.37.i.0..sroa.37.i.0..sroa.37.i.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload.i, ptr %.sroa.1155.0..sroa_idx.i, align 8, !dbg !38663, !noalias !38321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i), !dbg !38664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !38664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i), !dbg !38664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i), !dbg !38664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34.i), !dbg !38664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i), !dbg !38664
  %i.dn = icmp eq i64 %i.p, 0, !dbg !38347
  br i1 %i.dn, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i, !dbg !38347

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %.lr.ph.i, %bb.ab, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i
  store i64 %i.i, ptr %0, align 8, !dbg !38665
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38665
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !38665
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38665
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !38665
  ret void, !dbg !38666
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils10InitNestedENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !38667 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38668
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !38675
  %i.d = load ptr, ptr %i.c, align 8, !dbg !38675, !nonnull !16, !noundef !16
  %i.e = load i64, ptr %i.b, align 8, !dbg !38689, !noundef !16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38690), !dbg !38693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38696, !noalias !38705
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !38696, !noalias !38705
  %i.f = load i64, ptr %i.a, align 8, !dbg !38696, !range !51, !noalias !38705, !noundef !16
  %i.g = trunc nuw i64 %i.f to i1, !dbg !38707
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38708
  %i.i = load i64, ptr %i.h, align 8, !dbg !38708, !range !2058, !noalias !38705, !noundef !16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38708 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !38707, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !38709, !noalias !38705
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36, !dbg !38710, !noalias !38705
  unreachable, !dbg !38710

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !38711, !noalias !38705, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !38712
  tail call void @llvm.assume(i1 %i.m), !dbg !38715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38717, !noalias !38705
  store i64 %i.i, ptr %0, align 8, !dbg !38718, !alias.scope !38690, !noalias !38719
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38718
  store ptr %i.l, ptr %i.n, align 8, !dbg !38718, !alias.scope !38690, !noalias !38719
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38718 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !38718, !alias.scope !38690, !noalias !38719
  %.not.i = icmp eq i64 %i.e, 0, !dbg !38720
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils10InitNestedNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBW_.exit, label %bb.c, !dbg !38720

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.p = shl nuw nsw i64 %i.e, 4, !dbg !38722
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !dbg !38722, !noalias !38690
  store i64 %i.e, ptr %i.o, align 8, !dbg !38727, !alias.scope !38690, !noalias !38719
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils10InitNestedNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBW_.exit, !dbg !38730

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils10InitNestedNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBW_.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.c
end_hunk_1
