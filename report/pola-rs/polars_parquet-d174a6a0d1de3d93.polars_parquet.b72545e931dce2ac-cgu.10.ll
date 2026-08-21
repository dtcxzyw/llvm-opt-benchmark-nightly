Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RNvXs0_NtCs9VoZUfg37wD_6flate23crcINtB5_9CrcReaderINtNtNtB7_7deflate7bufread14DeflateDecoderINtNtB7_9bufreader9BufReaderRShEEENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.b = extractvalue { i64, ptr } %i.a, 0, !dbg !37644
  %i.c = extractvalue { i64, ptr } %i.a, 1, !dbg !37644 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64, !dbg !37644    ; 3 uses
  %i.e = trunc nuw i64 %i.b to i1, !dbg !37645
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !37645

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c, !dbg !37648, !prof !751

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !37658
  tail call void @_RNvMNtNtCs9VoZUfg37wD_6flate23crc12impl_zlib_rsNtB2_3Crc6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.d), !dbg !37659
  br label %bb.e, !dbg !37660

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.d, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @523) #18, !dbg !37661
  unreachable, !dbg !37661

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 1, %bb.a ], !dbg !37662
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !37660
  %i.h = insertvalue { i64, ptr } %i.g, ptr %i.c, 1, !dbg !37660
  ret { i64, ptr } %i.h, !dbg !37660
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !37663 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37664
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37664
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8, !dbg !37664
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37664
  store i64 0, ptr %i.c, align 8, !dbg !37664
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37667
  ret { ptr, i64 } %i.d, !dbg !37669
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !1731 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37670
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37670
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37670
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37670
  store i64 0, ptr %i.c, align 8, !dbg !37670
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37672
  ret { ptr, i64 } %i.d, !dbg !37673
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat11Compat16x16ENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !37674 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37675
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37675
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8, !dbg !37675
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37675
  store i64 0, ptr %i.c, align 8, !dbg !37675
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat11Compat16x16E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37678
  ret { ptr, i64 } %i.d, !dbg !37680
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8ENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !37681 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37682
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37682
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37682
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37682
  store i64 0, ptr %i.c, align 8, !dbg !37682
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37685
  ret { ptr, i64 } %i.d, !dbg !37687
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !6817 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37688
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37688
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37688
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37688
  store i64 0, ptr %i.c, align 8, !dbg !37688
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37690
  ret { ptr, i64 } %i.d, !dbg !37691
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !6671 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37692
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37692
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !37692
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37692
  store i64 0, ptr %i.c, align 8, !dbg !37692
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37694
  ret { ptr, i64 } %i.d, !dbg !37695
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !12464 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37696
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37696
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !37696
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37696
  store i64 0, ptr %i.c, align 8, !dbg !37696
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37698
  ret { ptr, i64 } %i.d, !dbg !37699
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !24647 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37700
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37700
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37700
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37700
  store i64 0, ptr %i.c, align 8, !dbg !37700
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37702
  ret { ptr, i64 } %i.d, !dbg !37703
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxfENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !5128 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37704
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37704
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37704
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37704
  store i64 0, ptr %i.c, align 8, !dbg !37704
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37706
  ret { ptr, i64 } %i.d, !dbg !37707
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !1518 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37708
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37708
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !37708
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37708
  store i64 0, ptr %i.c, align 8, !dbg !37708
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37710
  ret { ptr, i64 } %i.d, !dbg !37711
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !6843 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37712
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37712
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !37712
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37712
  store i64 0, ptr %i.c, align 8, !dbg !37712
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37714
  ret { ptr, i64 } %i.d, !dbg !37715
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxtENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !1533 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37716
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37716
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8, !dbg !37716
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37716
  store i64 0, ptr %i.c, align 8, !dbg !37716
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37718
  ret { ptr, i64 } %i.d, !dbg !37719
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxyENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0 !dbg !25405 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  store i64 0, ptr %i.a, align 8, !dbg !37720
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37720
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !37720
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37720
  store i64 0, ptr %i.c, align 8, !dbg !37720
  %i.d = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !37722
  ret { ptr, i64 } %i.d, !dbg !37723
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropyINtB5_17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter11update_costCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(920) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3, i64 noundef %4, i8 noundef %5) unnamed_addr #0 !dbg !37724 {
bb.a:
  %i.a = alloca [32 x i8], align 2                ; 4 uses
  %i.b = alloca [32 x i8], align 2                ; 4 uses
  %6 = alloca [8 x i8], align 8                   ; 2 uses
  store i64 %1, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 913, !dbg !37726
  %i.d = load i8, ptr %i.c, align 1, !dbg !37726, !noundef !14
  %i.e = zext i8 %i.d to i64, !dbg !37726
  %i.f = sub i64 %2, %i.e, !dbg !37727
  %i.g = and i64 %i.f, 7, !dbg !37731
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 %i.g, !dbg !37732
  %i.i = load i8, ptr %i.h, align 1, !dbg !37732, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37733), !dbg !37736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37737
  %i.j = lshr i8 %5, 4, !dbg !37737               ; 8 uses
  %i.k = and i8 %5, 15, !dbg !37740               ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !37742 ; 4 uses
  %.val10.i = load ptr, ptr %i.l, align 8, !dbg !37746, !alias.scope !37733, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !37746 ; 4 uses
  %.val11.i = load i64, ptr %i.m, align 8, !dbg !37746, !alias.scope !37733, !noundef !14
  %i.n = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy15get_cm_cdf_high(ptr noalias noundef nonnull align 2 %.val10.i, i64 noundef %.val11.i, i64 noundef %4), !dbg !37747, !noalias !37733 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0, !dbg !37747 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1, !dbg !37747 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !37748
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !37748
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy12compute_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef %i.p, i8 noundef %i.j), !dbg !37750
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy18extract_single_cdf(ptr noalias noundef nonnull sret([32 x i8]) align 2 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef %i.p, i64 noundef 8), !dbg !37751
  %.val8.i = load ptr, ptr %i.l, align 8, !dbg !37753, !alias.scope !37733, !nonnull !14, !noundef !14
  %.val9.i = load i64, ptr %i.m, align 8, !dbg !37753, !alias.scope !37733, !noundef !14
  %i.s = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy14get_cm_cdf_low(ptr noalias noundef nonnull align 2 %.val8.i, i64 noundef %.val9.i, i64 noundef %4, i8 noundef %i.j), !dbg !37754 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0, !dbg !37754 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1, !dbg !37754 ; 2 uses
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy12compute_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.t, i64 noundef %i.u, i8 noundef %i.k), !dbg !37755
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy18extract_single_cdf(ptr noalias noundef nonnull sret([32 x i8]) align 2 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.t, i64 noundef %i.u, i64 noundef 8), !dbg !37757
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !37759 ; 2 uses
  %.val6.i = load ptr, ptr %i.v, align 8, !dbg !37760, !alias.scope !37733, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !37760 ; 2 uses
  %.val7.i = load i64, ptr %i.w, align 8, !dbg !37760, !alias.scope !37733, !noundef !14
  %i.x = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy19get_stride_cdf_high(ptr noalias noundef nonnull align 2 %.val6.i, i64 noundef %.val7.i, i8 noundef %i.i, i64 noundef %4), !dbg !37761 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0, !dbg !37761 ; 3 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1, !dbg !37761 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 784, !dbg !37762
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 848, !dbg !37762
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !37764
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !37764
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy21compute_combined_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ab, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef %i.z, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(32) %i.b, i8 noundef %i.j, ptr noalias noundef nonnull align 4 dereferenceable(192) %i.ad), !dbg !37765
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !37766
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !37766
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy12compute_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef %i.z, i8 noundef %i.j), !dbg !37767
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy10update_cdf(ptr noalias noundef nonnull align 2 %i.y, i64 noundef %i.z, i8 noundef %i.j), !dbg !37768
  %.val4.i = load ptr, ptr %i.v, align 8, !dbg !37769, !alias.scope !37733, !nonnull !14, !noundef !14
  %.val5.i = load i64, ptr %i.w, align 8, !dbg !37769, !alias.scope !37733, !noundef !14
  %i.ag = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy18get_stride_cdf_low(ptr noalias noundef nonnull align 2 %.val4.i, i64 noundef %.val5.i, i8 noundef %i.i, i64 noundef %4, i8 noundef %i.j), !dbg !37770 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !37770 ; 3 uses
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !37770 ; 3 uses
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy21compute_combined_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.aa, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ah, i64 noundef %i.ai, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(32) %i.a, i8 noundef %i.k, ptr noalias noundef nonnull align 4 dereferenceable(192) %i.ac), !dbg !37771
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy12compute_cost(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ah, i64 noundef %i.ai, i8 noundef %i.k), !dbg !37773
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy10update_cdf(ptr noalias noundef nonnull align 2 %i.ah, i64 noundef %i.ai, i8 noundef %i.k), !dbg !37774
  %.val2.i = load ptr, ptr %i.l, align 8, !dbg !37775, !alias.scope !37733, !nonnull !14, !noundef !14
  %.val3.i = load i64, ptr %i.m, align 8, !dbg !37775, !alias.scope !37733, !noundef !14
  %i.aj = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy15get_cm_cdf_high(ptr noalias noundef nonnull align 2 %.val2.i, i64 noundef %.val3.i, i64 noundef %4), !dbg !37776 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0, !dbg !37776
  %i.al = extractvalue { ptr, i64 } %i.aj, 1, !dbg !37776
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy10update_cdf(ptr noalias noundef nonnull align 2 %i.ak, i64 noundef %i.al, i8 noundef %i.j), !dbg !37777
  %.val.i = load ptr, ptr %i.l, align 8, !dbg !37779, !alias.scope !37733, !nonnull !14, !noundef !14
  %.val1.i = load i64, ptr %i.m, align 8, !dbg !37779, !alias.scope !37733, !noundef !14
  %i.am = tail call { ptr, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy14get_cm_cdf_low(ptr noalias noundef nonnull align 2 %.val.i, i64 noundef %.val1.i, i64 noundef %4, i8 noundef %i.j), !dbg !37780 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0, !dbg !37780
  %i.ao = extractvalue { ptr, i64 } %i.am, 1, !dbg !37780
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy10update_cdf(ptr noalias noundef nonnull align 2 %i.an, i64 noundef %i.ao, i8 noundef %i.k), !dbg !37781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !37783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37783
  ret void, !dbg !37784
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvXs0_NtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropyINtB5_17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter22literal_data_at_offsetCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(920) %0, i64 noundef %1) unnamed_addr #0 !dbg !37785 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37786), !dbg !37789
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37790
  %i.b = load i64, ptr %i.a, align 8, !dbg !37790, !alias.scope !37786, !noalias !37798, !noundef !14 ; 2 uses
  %.not.i = icmp ult i64 %1, %i.b, !dbg !37800
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !37800

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %1, %i.b, !dbg !37801        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !37802
  %i.e = load i64, ptr %i.d, align 8, !dbg !37802, !alias.scope !37786, !noalias !37798, !noundef !14 ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e, !dbg !37802
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !37802

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !dbg !37790, !alias.scope !37786, !noalias !37798, !nonnull !14, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %1, !dbg !37803
  br label %_RNvXs5_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit, !dbg !37804

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !37802
  %i.j = load ptr, ptr %i.i, align 8, !dbg !37802, !alias.scope !37786, !noalias !37798, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !37805
  br label %_RNvXs5_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit, !dbg !37804

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @524) #18, !dbg !37802, !noalias !37786
  unreachable, !dbg !37802

_RNvXs5_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !37806
  %i.l = load i8, ptr %.sroa.0.0.i, align 1, !dbg !37807, !noundef !14
  ret i8 %i.l, !dbg !37808
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB5_7DecoderRShENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !37809 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37815), !dbg !37818
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.d, align 2, !dbg !37819, !range !37827, !alias.scope !37815, !noalias !37828, !noundef !14
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %.loopexit40.i
    i8 2, label %_RNvXs_NtNtNtCsi0YuHEPkLKL_4zstd6stream3zio6readerINtB4_6ReaderRShNtNtB8_3raw7DecoderENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet.exit
  ], !dbg !37830

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !37831, !noalias !37833
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8, !dbg !37834, !noalias !37833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !dbg !37834, !noalias !37833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37840, !noalias !37833
  store ptr %1, ptr %i.b, align 8, !dbg !37842, !noalias !37833
  store i64 %2, ptr %i.i, align 8, !dbg !37842, !noalias !37833
  store i64 0, ptr %i.j, align 8, !dbg !37842, !noalias !37833
  %i.n = call { i64, ptr } @_RINvXs1_NtNtCsi0YuHEPkLKL_4zstd6stream3rawNtB6_7DecoderNtB6_9Operation3runShECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !37846 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0, !dbg !37846
  %i.p = extractvalue { i64, ptr } %i.n, 1, !dbg !37846 ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1, !dbg !37848
  br i1 %i.q, label %.loopexit41.i, label %bb.c, !dbg !37848

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %i.p, null, !dbg !37851
  br i1 %i.r, label %bb.d, label %bb.f, !dbg !37851

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.k, align 1, !dbg !37853, !alias.scope !37815, !noalias !37828
  %i.s = load i8, ptr %i.l, align 8, !dbg !37854, !range !383, !alias.scope !37815, !noalias !37828, !noundef !14
  %i.t = trunc nuw i8 %i.s to i1, !dbg !37854
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !37854

bb.e:                                             ; preds = %bb.d
  store i8 2, ptr %i.d, align 2, !dbg !37855, !alias.scope !37815, !noalias !37828
  br label %bb.f, !dbg !37856

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = load i64, ptr %i.h, align 8, !dbg !37857, !noalias !37833, !noundef !14 ; 4 uses
  %i.v = call noundef i64 @_RNvMsq_CslcGXmMsZ7N2_9zstd_safeINtB5_9OutBufferShE3posCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !dbg !37860 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37861, !noalias !37833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !37862, !noalias !37833
  %i.w = load i64, ptr %i.f, align 8, !dbg !37863, !alias.scope !37871, !noalias !37828, !noundef !14 ; 3 uses
  %i.x = icmp ugt i64 %i.u, %i.w, !dbg !37874
  br i1 %i.x, label %.loopexit42.i, label %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.peel.i, !dbg !37874, !prof !168

_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.peel.i: ; preds = %bb.f
  %i.y = load ptr, ptr %i.e, align 8, !dbg !37863, !alias.scope !37871, !noalias !37828, !nonnull !14, !noundef !14
  %i.z = sub nuw nsw i64 %i.w, %i.u, !dbg !37879  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u, !dbg !37880 ; 2 uses
  store ptr %i.aa, ptr %i.e, align 8, !dbg !37885, !alias.scope !37871, !noalias !37828
  store i64 %i.z, ptr %i.f, align 8, !dbg !37885, !alias.scope !37871, !noalias !37828
  %.not22.peel.i = icmp eq i64 %i.v, 0, !dbg !37886
  br i1 %.not22.peel.i, label %.backedge.peel.i.outer, label %_RNvXs_NtNtNtCsi0YuHEPkLKL_4zstd6stream3zio6readerINtB4_6ReaderRShNtNtB8_3raw7DecoderENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !37886

.backedge.peel.i.outer:                           ; preds = %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.peel.i, %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.i
  %.val25.i.ph = phi i64 [ %i.bb, %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.i ], [ %i.z, %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.peel.i ] ; 2 uses
  %.val.i.ph = phi ptr [ %i.bc, %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.i ], [ %i.aa, %_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5implsRShNtB7_7BufRead7consume.exit.peel.i ]
  %i.ab = load i8, ptr %i.d, align 2, !dbg !37819, !range !37827, !alias.scope !37815, !noalias !37828, !noundef !14
  switch i8 %i.ab, label %.backedge.peel.i.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %.loopexit40.i
    i8 2, label %_RNvXs_NtNtNtCsi0YuHEPkLKL_4zstd6stream3zio6readerINtB4_6ReaderRShNtNtB8_3raw7DecoderENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet.exit
  ], !dbg !37830

bb.g:                                             ; preds = %.backedge.peel.i.outer
  %i.ac = icmp eq i64 %.val25.i.ph, 0
  br i1 %i.ac, label %.backedge.peel.i.peel.next, label %.thread.i, !dbg !37887

.backedge.peel.i.peel.next:                       ; preds = %bb.g
  store i8 1, ptr %i.d, align 2, !dbg !37888, !alias.scope !37815, !noalias !37828
  %.promoted = load i8, ptr %i.d, align 2, !alias.scope !37815, !noalias !37828
  br label %.backedge.peel.i, !dbg !37830

.backedge.peel.i:                                 ; preds = %.backedge.peel.i.peel.next, %bb.h
  %i.ad = phi i8 [ %.promoted, %.backedge.peel.i.peel.next ], [ 1, %bb.h ]
  switch i8 %i.ad, label %.backedge.peel.i.unreachabledefault [
    i8 0, label %bb.h
    i8 1, label %.loopexit40.i
    i8 2, label %_RNvXs_NtNtNtCsi0YuHEPkLKL_4zstd6stream3zio6readerINtB4_6ReaderRShNtNtB8_3raw7DecoderENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfISxE4fmY1Y_14polars_parquet.exit
  ], !dbg !37830

.backedge.peel.i.unreachabledefault:              ; preds = %.backedge.peel.i.outer, %.backedge.peel.i
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11BasicHasherINtB5_6H54SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEENtB5_9AnyHasher16FindLongestMatchCsfISxE4fmY1Y_14polars_parquet:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ak = sub nuw nsw i64 %2, %i.w, !dbg !38732
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.w, !dbg !38733
  %i.am = call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict28FindMatchLengthWithLimitMin4(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.g, i64 noundef %7), !dbg !38738 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !38739
  br i1 %i.an, label %bb.h, label %bb.o, !dbg !38739

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.w, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #18, !dbg !38741
  unreachable, !dbg !38741

bb.o:                                             ; preds = %bb.m
  %i.ao = icmp ult i64 %i.w, %4
  %i.ap = add i64 %i.am, %i.w
  %i.aq = icmp ugt i64 %i.ap, %4
  %or.cond113 = and i1 %i.ao, %i.aq, !dbg !38742
  %i.ar = sub i64 %4, %i.w, !dbg !38742
  %.sroa.031.0 = select i1 %or.cond113, i64 %i.ar, i64 %i.am, !dbg !38742 ; 4 uses
  %i.as = lshr i32 %i.c, 2, !dbg !38746
  %i.at = zext nneg i32 %i.as to i64, !dbg !38746
  %i.au = mul i64 %.sroa.031.0, %i.at, !dbg !38750
  %i.av = add i64 %i.au, 1935, !dbg !38753        ; 2 uses
  store i64 %.sroa.031.0, ptr %9, align 8, !dbg !38756
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16, !dbg !38757
  store i64 %i.s, ptr %i.aw, align 8, !dbg !38757
  store i64 %i.av, ptr %i.p, align 8, !dbg !38758
  %i.ax = add i64 %.sroa.031.0, %i.e, !dbg !38759 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %2, !dbg !38761
  br i1 %i.ay, label %bb.p, label %bb.q, !dbg !38761

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax, !dbg !38761
  %i.ba = load i8, ptr %i.az, align 1, !dbg !38761, !noundef !14
  br label %bb.h, !dbg !38762

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @527) #18, !dbg !38761
  unreachable, !dbg !38761

bb.r:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @537) #18, !dbg !38763
  unreachable, !dbg !38763

bb.s:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.047.0.idx12 = phi i64 [ %.sroa.047.0.idx.ph14, %.lr.ph ], [ %.sroa.047.0.add, %bb.ad ] ; 2 uses
  %.sroa.047.0.ptr = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.047.0.idx12, !dbg !38764
  %.sroa.047.0.add = add nuw nsw i64 %.sroa.047.0.idx12, 4, !dbg !38766 ; 4 uses
  %i.bb = load i32, ptr %.sroa.047.0.ptr, align 4, !dbg !38769, !noundef !14
  %i.bc = zext i32 %i.bb to i64, !dbg !38769      ; 3 uses
  %i.bd = sub i64 %6, %i.bc, !dbg !38771          ; 3 uses
  %i.be = and i64 %3, %i.bc, !dbg !38774          ; 8 uses
  %i.bf = add i64 %i.be, %.sroa.038.1.ph15, !dbg !38776 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %2, !dbg !38778
  br i1 %i.bg, label %bb.t, label %bb.u, !dbg !38778

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf, !dbg !38778
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !38778, !noundef !14
  %i.bj = zext i8 %i.bi to i32, !dbg !38778
  %.not109 = icmp eq i32 %.sroa.014.1.ph17, %i.bj, !dbg !38779
  br i1 %.not109, label %bb.v, label %bb.ad, !dbg !38779

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533) #18, !dbg !38778
  unreachable, !dbg !38778

bb.v:                                             ; preds = %bb.t
  %i.bk = icmp eq i64 %6, %i.bc, !dbg !38780
  %i.bl = icmp ugt i64 %i.bd, %8
  %or.cond1 = or i1 %i.bk, %i.bl, !dbg !38780
  br i1 %or.cond1, label %bb.ad, label %bb.w, !dbg !38780

bb.w:                                             ; preds = %bb.v
  %i.bm = icmp samesign ugt i64 %i.be, %2, !dbg !38781
  br i1 %i.bm, label %bb.y, label %bb.x, !dbg !38781, !prof !168

bb.x:                                             ; preds = %bb.w
  %i.bn = sub nuw nsw i64 %2, %i.be, !dbg !38785
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.be, !dbg !38786
  %i.bp = call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict28FindMatchLengthWithLimitMin4(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.g, i64 noundef %7), !dbg !38791 ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 0, !dbg !38792
  br i1 %i.bq, label %.outer, label %bb.z, !dbg !38792

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.be, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535) #18, !dbg !38794
  unreachable, !dbg !38794

.outer:                                           ; preds = %bb.ab, %bb.z, %bb.x
  %.sroa.038.2 = phi i64 [ %.sroa.038.1.ph15, %bb.x ], [ %.sroa.056.0, %bb.ab ], [ %.sroa.038.1.ph15, %bb.z ], !dbg !38692
  %.sroa.036.2 = phi i64 [ %.sroa.036.1.ph16, %bb.x ], [ %i.ca, %bb.ab ], [ %.sroa.036.1.ph16, %bb.z ], !dbg !38693
  %.sroa.014.2 = phi i32 [ %.sroa.014.1.ph17, %bb.x ], [ %i.cg, %bb.ab ], [ %.sroa.014.1.ph17, %bb.z ], !dbg !38719
  %.sroa.012.4 = phi i1 [ %.sroa.012.3.ph18, %bb.x ], [ true, %bb.ab ], [ %.sroa.012.3.ph18, %bb.z ], !dbg !38694 ; 2 uses
  %i.br = icmp eq i64 %.sroa.047.0.add, 16, !dbg !38764
  br i1 %i.br, label %.outer._crit_edge, label %.lr.ph, !dbg !38720

.lr.ph:                                           ; preds = %.preheader, %.outer
  %.sroa.012.3.ph18 = phi i1 [ %.sroa.012.0, %.preheader ], [ %.sroa.012.4, %.outer ] ; 3 uses
  %.sroa.014.1.ph17 = phi i32 [ %.sroa.014.0, %.preheader ], [ %.sroa.014.2, %.outer ] ; 3 uses
  %.sroa.036.1.ph16 = phi i64 [ %.sroa.036.0, %.preheader ], [ %.sroa.036.2, %.outer ] ; 3 uses
  %.sroa.038.1.ph15 = phi i64 [ %.sroa.038.0, %.preheader ], [ %.sroa.038.2, %.outer ] ; 3 uses
  %.sroa.047.0.idx.ph14 = phi i64 [ 0, %.preheader ], [ %.sroa.047.0.add, %.outer ]
  br label %bb.s, !dbg !38720

bb.z:                                             ; preds = %bb.x
  %i.bs = icmp ult i64 %i.be, %4
  %i.bt = add i64 %i.bp, %i.be
  %i.bu = icmp ugt i64 %i.bt, %4
  %or.cond116 = and i1 %i.bs, %i.bu, !dbg !38795
  %i.bv = sub i64 %4, %i.be, !dbg !38795
  %.sroa.056.0 = select i1 %or.cond116, i64 %i.bv, i64 %i.bp, !dbg !38795 ; 4 uses
  %i.bw = mul i64 %.sroa.056.0, %i.ae, !dbg !38798
  %i.bx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true), !dbg !38805
  %i.by = xor i64 %i.bx, 63, !dbg !38811
  %.neg = mul nsw i64 %i.by, -30, !dbg !38812
  %i.bz = add nsw i64 %.neg, 1920, !dbg !38814
  %i.ca = add i64 %i.bz, %i.bw, !dbg !38816       ; 3 uses
  %i.cb = icmp ult i64 %.sroa.036.1.ph16, %i.ca, !dbg !38819
  br i1 %i.cb, label %bb.aa, label %.outer, !dbg !38819

bb.aa:                                            ; preds = %bb.z
  store i64 %.sroa.056.0, ptr %9, align 8, !dbg !38821
  store i64 %i.bd, ptr %i.af, align 8, !dbg !38822
  store i64 %i.ca, ptr %i.p, align 8, !dbg !38823
  %i.cc = add i64 %.sroa.056.0, %i.e, !dbg !38824 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %2, !dbg !38826
  br i1 %i.cd, label %bb.ab, label %bb.ac, !dbg !38826

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc, !dbg !38826
  %i.cf = load i8, ptr %i.ce, align 1, !dbg !38826, !noundef !14
  %i.cg = zext i8 %i.cf to i32, !dbg !38827
  br label %.outer, !dbg !38828

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #18, !dbg !38826
  unreachable, !dbg !38826

bb.ad:                                            ; preds = %bb.v, %bb.t
  %i.ch = icmp eq i64 %.sroa.047.0.add, 16, !dbg !38764
  br i1 %i.ch, label %.outer._crit_edge, label %bb.s, !dbg !38720

.outer._crit_edge:                                ; preds = %.outer, %bb.ad
  %.sroa.012.3.ph.lcssa11 = phi i1 [ %.sroa.012.3.ph18, %bb.ad ], [ %.sroa.012.4, %.outer ]
  %i.ci = lshr i64 %6, 3, !dbg !38829
  %i.cj = and i64 %i.ci, 3, !dbg !38830
  %i.ck = add nuw nsw i64 %i.k, %i.cj, !dbg !38833 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %.val119, !dbg !38835
  br i1 %i.cl, label %bb.ae, label %bb.af, !dbg !38835

bb.ae:                                            ; preds = %.outer._crit_edge
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val118, i64 %i.ck, !dbg !38835
  %i.cn = trunc i64 %6 to i32, !dbg !38835
  store i32 %i.cn, ptr %i.cm, align 4, !dbg !38835
  ret i1 %.sroa.012.3.ph.lcssa11, !dbg !38836

bb.af:                                            ; preds = %.outer._crit_edge
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef %.val119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #18, !dbg !38835
  unreachable, !dbg !38835
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCshdiYQzaKNQ1_4half8binary163f16NtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !38837 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !38841, !nonnull !14, !align !1808, !noundef !14
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !38842
  ret i1 %i.b, !dbg !38843
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair14InputReferenceNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !38844 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !38845, !nonnull !14, !align !15163, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38846, !noalias !38850
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !38846
  store ptr %i.c, ptr %i.a, align 8, !dbg !38846, !noalias !38850
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @551, ptr noalias noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @552), !dbg !38854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38855, !noalias !38850
  ret i1 %i.d, !dbg !38856
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !38857 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !38858, !nonnull !14, !align !15163, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38859, !noalias !38863
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !38859
  store ptr %i.c, ptr %i.a, align 8, !dbg !38859, !noalias !38863
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 9, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @556, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @557), !dbg !38867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38868, !noalias !38863
  ret i1 %i.d, !dbg !38869
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_12ir_interpret13IRInterpreter11update_costCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3, i64 noundef %4, i8 noundef %5) unnamed_addr #0 !dbg !38870 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 41 uses
  %i.b = alloca [16 x i8], align 8                ; 41 uses
  %6 = alloca [8 x i8], align 8                   ; 9 uses
  store i64 %1, ptr %6, align 8
  %i.c = and i64 %2, 7, !dbg !38872               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 %i.c, !dbg !38873
  %i.e = load i8, ptr %i.d, align 1, !dbg !38873, !noundef !14 ; 2 uses
  %i.f = add i64 %2, 7, !dbg !38874
  %i.g = and i64 %i.f, 7, !dbg !38877
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 %i.g, !dbg !38878
  %i.i = load i8, ptr %i.h, align 1, !dbg !38878, !noundef !14 ; 2 uses
  %i.j = add i64 %2, 6, !dbg !38879
  %i.k = and i64 %i.j, 7, !dbg !38881
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 %i.k, !dbg !38882
  %i.m = load i8, ptr %i.l, align 1, !dbg !38882, !noundef !14 ; 2 uses
  %i.n = add i64 %2, 5, !dbg !38883
  %i.o = and i64 %i.n, 7, !dbg !38885
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o, !dbg !38886
  %i.q = load i8, ptr %i.p, align 1, !dbg !38886, !noundef !14 ; 2 uses
  %i.r = xor i64 %i.c, 4, !dbg !38887
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 %i.r, !dbg !38888
  %i.t = load i8, ptr %i.s, align 1, !dbg !38888, !noundef !14 ; 2 uses
  %i.u = add i64 %2, 3, !dbg !38889
  %i.v = and i64 %i.u, 7, !dbg !38891
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 %i.v, !dbg !38892
  %i.x = load i8, ptr %i.w, align 1, !dbg !38892, !noundef !14 ; 2 uses
  %i.y = add i64 %2, 1, !dbg !38893
  %i.z = and i64 %i.y, 7, !dbg !38895
  %i.aa = add i64 %2, 2, !dbg !38896
  %i.ab = and i64 %i.aa, 7, !dbg !38898
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 %i.ab, !dbg !38899
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !38899, !noundef !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 %i.z, !dbg !38900
  %i.af = load i8, ptr %i.ae, align 1, !dbg !38900, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38901), !dbg !38904
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.ai = lshr i8 %5, 4                           ; 24 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val16.i = load i64, ptr %i.aj, align 8, !alias.scope !38901 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !38901
  %i.am = shl i64 %i.al, 3                        ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val15.i = load ptr, ptr %i.an, align 8, !alias.scope !38901, !nonnull !14 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ap = load i16, ptr %i.ao, align 4, !alias.scope !38901 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.ar = load i16, ptr %i.aq, align 2, !alias.scope !38901 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %.val.i = load ptr, ptr %i.ag, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !38911
  %.val12.i = load i64, ptr %i.as, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.at = tail call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.i, i64 noundef %.val12.i, i8 noundef %i.e, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0, !dbg !38912
  %i.av = extractvalue { ptr, i64 } %i.at, 1, !dbg !38912
  store ptr %i.au, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.av, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.aw = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.ax = icmp ult i64 %i.am, %.val16.i, !dbg !38915
  br i1 %i.ax, label %bb.b, label %bb.i, !dbg !38915

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.am, !dbg !38915 ; 4 uses
  %i.az = load float, ptr %i.ay, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.ba = fadd float %i.aw, %i.az, !dbg !38915
  store float %i.ba, ptr %i.ay, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !38918
  %.val.1.i = load ptr, ptr %i.bb, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !38911
  %.val12.1.i = load i64, ptr %i.bc, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.bd = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.1.i, i64 noundef %.val12.1.i, i8 noundef %i.i, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0, !dbg !38912
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1, !dbg !38912
  store ptr %i.be, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.bf, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.bg = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.bh = or disjoint i64 %i.am, 1, !dbg !38919   ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %.val16.i, !dbg !38915
  br i1 %i.bi, label %bb.c, label %bb.i, !dbg !38915

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.bh, !dbg !38915 ; 4 uses
  %i.bk = load float, ptr %i.bj, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.bl = fadd float %i.bg, %i.bk, !dbg !38915
  store float %i.bl, ptr %i.bj, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !38918
  %.val.2.i = load ptr, ptr %i.bm, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !38911
  %.val12.2.i = load i64, ptr %i.bn, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.bo = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.2.i, i64 noundef %.val12.2.i, i8 noundef %i.m, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0, !dbg !38912
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1, !dbg !38912
  store ptr %i.bp, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.bq, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.br = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.bs = or disjoint i64 %i.am, 2, !dbg !38919   ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %.val16.i, !dbg !38915
  br i1 %i.bt, label %bb.d, label %bb.i, !dbg !38915

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.bs, !dbg !38915 ; 4 uses
  %i.bv = load float, ptr %i.bu, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.bw = fadd float %i.br, %i.bv, !dbg !38915
  store float %i.bw, ptr %i.bu, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !38918
  %.val.3.i = load ptr, ptr %i.bx, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !38911
  %.val12.3.i = load i64, ptr %i.by, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.bz = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.3.i, i64 noundef %.val12.3.i, i8 noundef %i.q, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0, !dbg !38912
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1, !dbg !38912
  store ptr %i.ca, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.cb, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.cc = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.cd = or disjoint i64 %i.am, 3, !dbg !38919   ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %.val16.i, !dbg !38915
  br i1 %i.ce, label %bb.e, label %bb.i, !dbg !38915

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.cd, !dbg !38915 ; 4 uses
  %i.cg = load float, ptr %i.cf, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.ch = fadd float %i.cc, %i.cg, !dbg !38915
  store float %i.ch, ptr %i.cf, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !38918
  %.val.4.i = load ptr, ptr %i.ci, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !38911
  %.val12.4.i = load i64, ptr %i.cj, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.ck = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.4.i, i64 noundef %.val12.4.i, i8 noundef %i.t, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0, !dbg !38912
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1, !dbg !38912
  store ptr %i.cl, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.cm, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.cn = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.co = or disjoint i64 %i.am, 4, !dbg !38919   ; 3 uses
  %i.cp = icmp ult i64 %i.co, %.val16.i, !dbg !38915
  br i1 %i.cp, label %bb.f, label %bb.i, !dbg !38915

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.co, !dbg !38915 ; 4 uses
  %i.cr = load float, ptr %i.cq, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.cs = fadd float %i.cn, %i.cr, !dbg !38915
  store float %i.cs, ptr %i.cq, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !38918
  %.val.5.i = load ptr, ptr %i.ct, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !38911
  %.val12.5.i = load i64, ptr %i.cu, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.cv = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.5.i, i64 noundef %.val12.5.i, i8 noundef %i.x, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0, !dbg !38912
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1, !dbg !38912
  store ptr %i.cw, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.cx, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.cy = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.cz = or disjoint i64 %i.am, 5, !dbg !38919   ; 3 uses
  %i.da = icmp ult i64 %i.cz, %.val16.i, !dbg !38915
  br i1 %i.da, label %bb.g, label %bb.i, !dbg !38915

bb.g:                                             ; preds = %bb.f
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.cz, !dbg !38915 ; 4 uses
  %i.dc = load float, ptr %i.db, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.dd = fadd float %i.cy, %i.dc, !dbg !38915
  store float %i.dd, ptr %i.db, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !38918
  %.val.6.i = load ptr, ptr %i.de, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !38911
  %.val12.6.i = load i64, ptr %i.df, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.dg = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.6.i, i64 noundef %.val12.6.i, i8 noundef %i.ad, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0, !dbg !38912
  %i.di = extractvalue { ptr, i64 } %i.dg, 1, !dbg !38912
  store ptr %i.dh, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.di, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.dj = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.dk = or disjoint i64 %i.am, 6, !dbg !38919   ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.val16.i, !dbg !38915
  br i1 %i.dl, label %bb.h, label %bb.i, !dbg !38915

bb.h:                                             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.dk, !dbg !38915 ; 4 uses
  %i.dn = load float, ptr %i.dm, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.do = fadd float %i.dj, %i.dn, !dbg !38915
  store float %i.do, ptr %i.dm, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38906, !noalias !38901
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !38918
  %.val.7.i = load ptr, ptr %i.dp, align 8, !dbg !38911, !alias.scope !38901, !nonnull !14, !noundef !14 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !38911
  %.val12.7.i = load i64, ptr %i.dq, align 8, !dbg !38911, !alias.scope !38901, !noundef !14 ; 2 uses
  %i.dr = call { ptr, i64 } @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB2_12Stride1Prior10lookup_mut(ptr noalias noundef nonnull align 2 %.val.7.i, i64 noundef %.val12.7.i, i8 noundef %i.af, i8 noundef %3, i64 noundef %4, i1 noundef zeroext false, i8 undef), !dbg !38912, !noalias !38901 ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0, !dbg !38912
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1, !dbg !38912
  store ptr %i.ds, ptr %i.b, align 8, !dbg !38912, !noalias !38901
  store i64 %i.dt, ptr %i.ah, align 8, !dbg !38912, !noalias !38901
  %i.du = call noundef float @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF4cost(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i8 noundef %i.ai), !dbg !38913, !noalias !38901
  %i.dv = or disjoint i64 %i.am, 7, !dbg !38919   ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %.val16.i, !dbg !38915
  br i1 %i.dw, label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !38915

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa23.i = phi i64 [ %i.am, %bb.a ], [ %i.bh, %bb.b ], [ %i.bs, %bb.c ], [ %i.cd, %bb.d ], [ %i.co, %bb.e ], [ %i.cz, %bb.f ], [ %i.dk, %bb.g ], [ %i.dv, %bb.h ], !dbg !38919
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa23.i, i64 noundef %.val16.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #18, !dbg !38915, !noalias !38901
  unreachable, !dbg !38915

_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.h
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.dv, !dbg !38915 ; 4 uses
  %i.dy = load float, ptr %i.dx, align 4, !dbg !38915, !noalias !38901, !noundef !14
  %i.dz = fadd float %i.du, %i.dy, !dbg !38915
  store float %i.dz, ptr %i.dx, align 4, !dbg !38915, !noalias !38901
  call void @_RNvMs_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalNtB4_3CDF6update(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 noundef %i.ai, i16 noundef %i.ap, i16 noundef %i.ar), !dbg !38916, !noalias !38901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38917, !noalias !38901
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.eb = and i8 %5, 15                           ; 16 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ed = load i16, ptr %i.ec, align 8, !alias.scope !38901 ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.ef = load i16, ptr %i.ee, align 2, !alias.scope !38901 ; 8 uses
end_hunk_1
