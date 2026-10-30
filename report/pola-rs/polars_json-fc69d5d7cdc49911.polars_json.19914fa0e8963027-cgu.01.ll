Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_json-fc69d5d7cdc49911.polars_json.19914fa0e8963027-cgu.01?download=true
inline.NumInlined: 1105
inline.NumDeleted: 464
begin_hunk_0_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteraENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB3t_:bb.a
  br label %_RNvXs6_CsgHtAh0uHj3K_4itoaaNtNtB5_7private6Sealed5write.exit.i.i, !dbg !10944

_RNvXs6_CsgHtAh0uHj3K_4itoaaNtNtB5_7private6Sealed5write.exit.i.i: ; preds = %bb.l, %_RNvXsr_CsgHtAh0uHj3K_4itoahNtB5_8Unsigned3fmt.exit.i.i.i
  %.sroa.0.0.i.i.i4 = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.l ], [ %i.bh, %_RNvXsr_CsgHtAh0uHj3K_4itoahNtB5_8Unsigned3fmt.exit.i.i.i ], !dbg !10945 ; 3 uses
  %i.bj = sub nuw nsw i64 4, %.sroa.0.0.i.i.i4, !dbg !10946 ; 3 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bj), !dbg !10947, !noalias !10851
  %i.bk = load i64, ptr %i.am, align 8, !dbg !10948, !alias.scope !10858, !noundef !1151 ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1, !dbg !10949
  tail call void @llvm.assume(i1 %i.bl), !dbg !10950
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i4, 4, !dbg !10951
  br i1 %.not.i.i.i, label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize13write_integeraEB8_.exit.i, label %bb.m, !dbg !10951

bb.m:                                             ; preds = %_RNvXs6_CsgHtAh0uHj3K_4itoaaNtNtB5_7private6Sealed5write.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i4, !dbg !10952
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10953
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !10953, !alias.scope !10858, !nonnull !1151, !noundef !1151
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk, !dbg !10954
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %i.bm, i64 %i.bj, i1 false), !dbg !10955, !noalias !10851
  %.pre.i.i.i5 = load i64, ptr %i.am, align 8, !dbg !10956, !alias.scope !10858
  br label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize13write_integeraEB8_.exit.i, !dbg !10957

_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize13write_integeraEB8_.exit.i: ; preds = %bb.m, %_RNvXs6_CsgHtAh0uHj3K_4itoaaNtNtB5_7private6Sealed5write.exit.i.i
  %i.bq = phi i64 [ %.pre.i.i.i5, %bb.m ], [ %i.bk, %_RNvXs6_CsgHtAh0uHj3K_4itoaaNtNtB5_7private6Sealed5write.exit.i.i ], !dbg !10956
  %i.br = add i64 %i.bq, %i.bj, !dbg !10956
  store i64 %i.br, ptr %i.am, align 8, !dbg !10956, !alias.scope !10858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10958, !noalias !10853
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit, !dbg !10959

bb.n:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10906
  store i8 1, ptr %i.bs, align 8, !dbg !10906
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10907 ; 4 uses
  store i64 0, ptr %i.bt, align 8, !dbg !10907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10851), !dbg !10960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10859), !dbg !10960
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !10961, !noalias !10851
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !10962, !alias.scope !10860, !noundef !1151 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !10963
  tail call void @llvm.assume(i1 %i.bv), !dbg !10964
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10965
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !10965, !alias.scope !10860, !nonnull !1151, !noundef !1151
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu, !dbg !10966
  store i32 1819047278, ptr %i.by, align 1, !dbg !10967, !noalias !10851
  %.pre.i.i = load i64, ptr %i.bt, align 8, !dbg !10968, !alias.scope !10860
  %i.bz = add i64 %.pre.i.i, 4, !dbg !10968
  store i64 %i.bz, ptr %i.bt, align 8, !dbg !10968, !alias.scope !10860
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit, !dbg !10959

bb.o:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10969
  store i8 0, ptr %i.ca, align 8, !dbg !10969
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit, !dbg !10970

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit: ; preds = %bb.n, %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize13write_integeraEB8_.exit.i, %bb.o
  ret void, !dbg !10971
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteraENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #5 !dbg !10972 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10977), !dbg !10980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10978), !dbg !10980
  %i.b = load ptr, ptr %i.a, align 8, !dbg !10981, !alias.scope !10978, !noundef !1151 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !10981   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10982
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !10982, !alias.scope !10978, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !10983
  %.val1.i = load ptr, ptr %i.d, align 8, !dbg !10983, !alias.scope !10978, !nonnull !1151
  %.val1.sink.i = select i1 %.not.i, ptr %.val1.i, ptr %.val.i, !dbg !10983
  %.val.sink.i = select i1 %.not.i, ptr %.val.i, ptr %i.b, !dbg !10983
  %i.e = ptrtoint ptr %.val1.sink.i to i64, !dbg !10982
  %i.f = ptrtoint ptr %.val.sink.i to i64, !dbg !10982
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !10982      ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !10982, !alias.scope !10977
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10982
  store i64 1, ptr %i.h, align 8, !dbg !10982, !alias.scope !10977
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10982
  store i64 %i.g, ptr %i.i, align 8, !dbg !10982, !alias.scope !10977
  ret void, !dbg !10984
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB3t_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #4 !dbg !497 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10985
  %i.b = load i8, ptr %i.a, align 8, !dbg !10985, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !10985     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10985
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10985, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10985
  %i.g = load i64, ptr %i.f, align 8, !dbg !10985
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !10985
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !10985
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !10986
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !10986
  ret { ptr, i64 } %i.i, !dbg !10986
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB3t_(ptr noalias noundef align 8 dereferenceable(88) initializes((80, 81)) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10987 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11081 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11066), !dbg !11082
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11083, !alias.scope !11066, !noundef !1151 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !11083
  br i1 %.not.i, label %bb.g, label %bb.b, !dbg !11084

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11067), !dbg !11085
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11086
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11086, !alias.scope !11068, !nonnull !1151, !noundef !1151
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !11087
  br i1 %i.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.c, !dbg !11088

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11089
  store ptr %i.g, ptr %i.b, align 8, !dbg !11090, !alias.scope !11068
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !11091

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], !dbg !11092
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11093 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11069), !dbg !11094
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11095 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !11095, !alias.scope !11070, !noundef !1151 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !11095
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i, !dbg !11095

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !11096, !alias.scope !11070
  br label %bb.e, !dbg !11095

bb.d:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11097 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !11097, !alias.scope !11070, !noundef !1151 ; 3 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !11097
  br i1 %i.n, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !11097

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 64), !dbg !11098 ; 2 uses
  %i.o = sub nuw i64 %i.m, %.sroa.0.0.i.i.i.i, !dbg !11099
  store i64 %i.o, ptr %i.l, align 8, !dbg !11099, !alias.scope !11070
  %i.p = load ptr, ptr %i.h, align 8, !dbg !11100, !alias.scope !11070, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11100 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.p, align 1, !dbg !11101, !noalias !11070
  %i.r = load i64, ptr %i.q, align 8, !dbg !11102, !alias.scope !11070, !noundef !1151
  %i.s = add i64 %i.r, -8, !dbg !11103
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !11104
  store ptr %i.t, ptr %i.h, align 8, !dbg !11105, !alias.scope !11070
  store i64 %i.s, ptr %i.q, align 8, !dbg !11105, !alias.scope !11070
  br label %bb.e, !dbg !11106

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, %._crit_edge.i.i.i
  %i.u = phi i64 [ %i.j, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11107
  %i.v = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11096 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11096
  %i.x = trunc i64 %i.v to i8, !dbg !11096
  %i.y = lshr i64 %i.v, 1, !dbg !11108
  store i64 %i.y, ptr %i.w, align 8, !dbg !11108, !alias.scope !11070
  %i.z = add i64 %i.u, -1, !dbg !11107
  store i64 %i.z, ptr %i.i, align 8, !dbg !11107, !alias.scope !11070
  %i.aa = and i8 %i.x, 1, !dbg !11109
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !11110

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i = phi i8 [ %i.aa, %bb.e ], [ 2, %bb.d ], !dbg !11111
  %i.ab = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.0.0.i.i.i), !dbg !11112, !noalias !11071 ; 2 uses
  %i.ac = extractvalue { i8, ptr } %i.ab, 0, !dbg !11113 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ac, 2, !dbg !11114
  br i1 %.not.i.i, label %bb.m, label %bb.f, !dbg !11115

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.ad = extractvalue { i8, ptr } %i.ab, 1, !dbg !11113 ; 2 uses
  %i.ae = trunc nuw i8 %i.ac to i1, !dbg !11116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  br i1 %i.ae, label %select.unfold, label %bb.i, !dbg !11117

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11118 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !11119, !alias.scope !11072, !nonnull !1151, !noundef !1151 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11120
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !11120, !alias.scope !11072, !nonnull !1151, !noundef !1151
  %i.aj = icmp eq ptr %i.ag, %i.ai, !dbg !11121
  br i1 %i.aj, label %bb.m, label %bb.h, !dbg !11122

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !11123
  store ptr %i.ak, ptr %i.af, align 8, !dbg !11124, !alias.scope !11072
  br label %select.unfold, !dbg !11125

select.unfold:                                    ; preds = %bb.f, %bb.h
  %.sroa.3.0.i.pn.i.ph.ph = phi ptr [ %i.ag, %bb.h ], [ %i.ad, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11126
  store i8 1, ptr %i.al, align 8, !dbg !11126
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11127 ; 7 uses
  store i64 0, ptr %i.am, align 8, !dbg !11127
  %i.an = load double, ptr %.sroa.3.0.i.pn.i.ph.ph, align 8, !dbg !11128, !alias.scope !11074, !noundef !1151 ; 2 uses
  %i.ao = tail call double @llvm.fabs.f64(double %i.an), !dbg !11129
  %or.cond.i = fcmp ueq double %i.ao, +inf, !dbg !11129
  br i1 %or.cond.i, label %bb.l, label %bb.j, !dbg !11129

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11126
  store i8 1, ptr %i.ap, align 8, !dbg !11126
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11127 ; 4 uses
  store i64 0, ptr %i.aq, align 8, !dbg !11127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11074), !dbg !11130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11075), !dbg !11130
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !11131, !noalias !11074
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !11132, !alias.scope !11076, !noundef !1151 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !11133
  tail call void @llvm.assume(i1 %i.as), !dbg !11134
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11135
  %i.au = load ptr, ptr %i.at, align 8, !dbg !11135, !alias.scope !11076, !nonnull !1151, !noundef !1151
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar, !dbg !11136
  store i32 1819047278, ptr %i.av, align 1, !dbg !11137, !noalias !11074
  %.pre.i.i = load i64, ptr %i.aq, align 8, !dbg !11138, !alias.scope !11076
  %i.aw = add i64 %.pre.i.i, 4, !dbg !11138
  store i64 %i.aw, ptr %i.aq, align 8, !dbg !11138, !alias.scope !11076
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !11139

bb.j:                                             ; preds = %select.unfold
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11077), !dbg !11140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11141, !noalias !11078
  %i.ax = call { ptr, i64 } @_RINvMs2_CskFfanrUhUOy_4zmijNtB6_6Buffer6formatdECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %i.an), !dbg !11142, !noalias !11078 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1, !dbg !11142 ; 4 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ay), !dbg !11143, !noalias !11074
  %i.az = load i64, ptr %i.am, align 8, !dbg !11144, !alias.scope !11079, !noundef !1151 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1, !dbg !11145
  call void @llvm.assume(i1 %i.ba), !dbg !11146
  %.not.i.i.i = icmp eq i64 %i.ay, 0, !dbg !11147
  br i1 %.not.i.i.i, label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, label %bb.k, !dbg !11147

bb.k:                                             ; preds = %bb.j
  %i.bb = extractvalue { ptr, i64 } %i.ax, 0, !dbg !11142 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !11148
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11149
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !11149, !alias.scope !11079, !nonnull !1151, !noundef !1151
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az, !dbg !11150
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %i.bb, i64 %i.ay, i1 false), !dbg !11151, !noalias !11074
  %.pre.i.i.i3 = load i64, ptr %i.am, align 8, !dbg !11152, !alias.scope !11079
  br label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, !dbg !11153

_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi i64 [ %.pre.i.i.i3, %bb.k ], [ %i.az, %bb.j ], !dbg !11152
  %i.bg = add i64 %i.bf, %i.ay, !dbg !11152
  store i64 %i.bg, ptr %i.am, align 8, !dbg !11152, !alias.scope !11079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11154, !noalias !11078
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !11155

bb.l:                                             ; preds = %select.unfold
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !11156, !noalias !11074
  %i.bh = load i64, ptr %i.am, align 8, !dbg !11157, !alias.scope !11080, !noundef !1151 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !11158
  tail call void @llvm.assume(i1 %i.bi), !dbg !11159
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11160
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !11160, !alias.scope !11080, !nonnull !1151, !noundef !1151
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !11161
  store i32 1819047278, ptr %i.bl, align 1, !dbg !11162, !noalias !11074
  %.pre.i4.i = load i64, ptr %i.am, align 8, !dbg !11163, !alias.scope !11080
  %i.bm = add i64 %.pre.i4.i, 4, !dbg !11163
  store i64 %i.bm, ptr %i.am, align 8, !dbg !11163, !alias.scope !11080
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !11155

bb.m:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11164
  store i8 0, ptr %i.bn, align 8, !dbg !11164
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !11165

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit: ; preds = %bb.l, %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, %bb.i, %bb.m
  ret void, !dbg !11166
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #5 !dbg !11167 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11172), !dbg !11175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11173), !dbg !11175
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11176, !alias.scope !11173, !noundef !1151 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !11176   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11177
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !11177, !alias.scope !11173, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11178
  %.val1.i = load ptr, ptr %i.d, align 8, !dbg !11178, !alias.scope !11173, !nonnull !1151
  %.val1.sink.i = select i1 %.not.i, ptr %.val1.i, ptr %.val.i, !dbg !11178
  %.val.sink.i = select i1 %.not.i, ptr %.val.i, ptr %i.b, !dbg !11178
  %i.e = ptrtoint ptr %.val1.sink.i to i64, !dbg !11177
  %i.f = ptrtoint ptr %.val.sink.i to i64, !dbg !11177
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !11177
  %.sink4.i = lshr exact i64 %i.g, 3, !dbg !11177 ; 2 uses
  store i64 %.sink4.i, ptr %0, align 8, !dbg !11177, !alias.scope !11172
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11177
  store i64 1, ptr %i.h, align 8, !dbg !11177, !alias.scope !11172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11177
  store i64 %.sink4.i, ptr %i.i, align 8, !dbg !11177, !alias.scope !11172
  ret void, !dbg !11179
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB2b_4utf89Utf8ArrayxEENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0INtNtCscgRAwXFJnXP_4core6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB3S_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #4 !dbg !518 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11180
  %i.b = load i8, ptr %i.a, align 8, !dbg !11180, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !11180     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11180
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11180, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11180
  %i.g = load i64, ptr %i.f, align 8, !dbg !11180
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !11180
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !11180
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !11181
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !11181
  ret { ptr, i64 } %i.i, !dbg !11181
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB2b_4utf89Utf8ArrayxEENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0INtNtCscgRAwXFJnXP_4core6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB3S_(ptr noalias noundef align 8 dereferenceable(96) initializes((88, 89)) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11182 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11263), !dbg !11281
  %i.d = load ptr, ptr %i.c, align 8, !dbg !11282, !alias.scope !11263, !noundef !1151 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !11282
  br i1 %.not.i, label %bb.f, label %bb.b, !dbg !11283

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11264), !dbg !11284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11265), !dbg !11285
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11286 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !11286, !alias.scope !11266, !noundef !1151 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11287
  %i.h = load i64, ptr %i.g, align 8, !dbg !11287, !alias.scope !11266, !noundef !1151
  %i.i = icmp eq i64 %i.f, %i.h, !dbg !11286
  br i1 %i.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.c, !dbg !11286

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1, !dbg !11288             ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !dbg !11288, !alias.scope !11266
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !11289
  %i.l = load ptr, ptr %i.k, align 8, !dbg !11289, !noalias !11267, !noundef !1151 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !11290
  %i.n = load i64, ptr %i.m, align 8, !dbg !11290, !noalias !11267, !noundef !1151
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.f, !dbg !11291
  %.val1.i.i.i.i.i = load i64, ptr %i.o, align 8, !dbg !11292, !noalias !11267, !noundef !1151 ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.n, !dbg !11293
  tail call void @llvm.assume(i1 %i.p), !dbg !11294
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j, !dbg !11295
  %.val.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !11296, !noalias !11267, !noundef !1151
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !11297
  %i.s = load ptr, ptr %i.r, align 8, !dbg !11297, !noalias !11267, !noundef !1151
  %i.t = sub nuw i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i, !dbg !11298
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i.i, !dbg !11299
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !11300

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i.i = phi i64 [ %i.t, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ], !dbg !11301
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11302 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11268), !dbg !11303
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11304 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !11304, !alias.scope !11269, !noundef !1151 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !11304
  br i1 %i.y, label %bb.d, label %._crit_edge.i.i.i, !dbg !11304

._crit_edge.i.i.i:                                ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !11305, !alias.scope !11269
  br label %bb.e, !dbg !11304

bb.d:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11306 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11306, !alias.scope !11269, !noundef !1151 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !11306
  br i1 %i.ab, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !11306

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 64), !dbg !11307 ; 2 uses
  %i.ac = sub nuw i64 %i.aa, %.sroa.0.0.i.i.i.i, !dbg !11308
  store i64 %i.ac, ptr %i.z, align 8, !dbg !11308, !alias.scope !11269
  %i.ad = load ptr, ptr %i.v, align 8, !dbg !11309, !alias.scope !11269, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11309 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ad, align 1, !dbg !11310, !noalias !11270
  %i.af = load i64, ptr %i.ae, align 8, !dbg !11311, !alias.scope !11269, !noundef !1151
  %i.ag = add i64 %i.af, -8, !dbg !11312
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !11313
  store ptr %i.ah, ptr %i.v, align 8, !dbg !11314, !alias.scope !11269
  store i64 %i.ag, ptr %i.ae, align 8, !dbg !11314, !alias.scope !11269
  br label %bb.e, !dbg !11315

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, %._crit_edge.i.i.i
  %i.ai = phi i64 [ %i.x, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11316
  %i.aj = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11305 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11305
  %i.al = trunc i64 %i.aj to i8, !dbg !11305
  %i.am = lshr i64 %i.aj, 1, !dbg !11317
  store i64 %i.am, ptr %i.ak, align 8, !dbg !11317, !alias.scope !11269
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB2b_7binview22BinaryViewArrayGenericeEENtNtB1j_8iterator10BitmapIterENCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0INtNtCscgRAwXFJnXP_4core6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB48_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11422 ; 4 uses
  store i64 0, ptr %i.k, align 8, !dbg !11422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11411), !dbg !11423
  %.not.i = icmp eq ptr %i.g, null, !dbg !11424
  br i1 %.not.i, label %bb.i, label %bb.c, !dbg !11425

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write4utf89write_strINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i), !dbg !11426 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null, !dbg !11427
  br i1 %.not.i.i, label %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit, label %bb.d, !dbg !11428, !prof !1307

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11429, !noalias !11412
  store ptr %i.l, ptr %i.a, align 8, !dbg !11429, !noalias !11412
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28
          to label %bb.f unwind label %bb.e, !dbg !11430

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %bb.h unwind label %bb.g, !dbg !11431

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !11432
  unreachable, !dbg !11432

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m, !dbg !11432

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !11433, !noalias !11413
  %i.o = load i64, ptr %i.k, align 8, !dbg !11434, !alias.scope !11414, !noundef !1151 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !11435
  tail call void @llvm.assume(i1 %i.p), !dbg !11436
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11437
  %i.r = load ptr, ptr %i.q, align 8, !dbg !11437, !alias.scope !11414, !nonnull !1151, !noundef !1151
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !11438
  store i32 1819047278, ptr %i.s, align 1, !dbg !11439, !noalias !11413
  %.pre.i.i = load i64, ptr %i.k, align 8, !dbg !11440, !alias.scope !11414
  %i.t = add i64 %.pre.i.i, 4, !dbg !11440
  store i64 %i.t, ptr %i.k, align 8, !dbg !11440, !alias.scope !11414
  br label %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit, !dbg !11441

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11442
  store i8 0, ptr %i.u, align 8, !dbg !11442
  br label %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit, !dbg !11443

_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit: ; preds = %bb.i, %bb.c, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11444
  ret void, !dbg !11445
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB2b_7binview22BinaryViewArrayGenericeEENtNtB1j_8iterator10BitmapIterENCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0INtNtCscgRAwXFJnXP_4core6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 !dbg !11446 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11453 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11451), !dbg !11454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11452), !dbg !11454
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11455, !alias.scope !11452, !noundef !1151
  %.not.i = icmp eq ptr %i.b, null, !dbg !11455   ; 2 uses
  %..i = select i1 %.not.i, i64 16, i64 8, !dbg !11456
  %.7.i = select i1 %.not.i, i64 24, i64 16, !dbg !11456
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %..i, !dbg !11456
  %.val.i = load i64, ptr %i.c, align 8, !dbg !11456, !alias.scope !11452, !noundef !1151
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.i, !dbg !11456
  %.val1.i = load i64, ptr %i.d, align 8, !dbg !11456, !alias.scope !11452, !noundef !1151
  %i.e = sub i64 %.val1.i, %.val.i, !dbg !11456   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !11456, !alias.scope !11451
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11456
  store i64 1, ptr %i.f, align 8, !dbg !11456, !alias.scope !11451
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11456
  store i64 %i.e, ptr %i.g, align 8, !dbg !11456, !alias.scope !11451
  ret void, !dbg !11457
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB3t_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #4 !dbg !546 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11458
  %i.b = load i8, ptr %i.a, align 8, !dbg !11458, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !11458     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11458
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11458, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11458
  %i.g = load i64, ptr %i.f, align 8, !dbg !11458
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !11458
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !11458
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !11459
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !11459
  ret { ptr, i64 } %i.i, !dbg !11459
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB3t_(ptr noalias noundef align 8 dereferenceable(88) initializes((80, 81)) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11460 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11554 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11539), !dbg !11555
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11556, !alias.scope !11539, !noundef !1151 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !11556
  br i1 %.not.i, label %bb.g, label %bb.b, !dbg !11557

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11540), !dbg !11558
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11559
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11559, !alias.scope !11541, !nonnull !1151, !noundef !1151
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !11560
  br i1 %i.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.c, !dbg !11561

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !11562
  store ptr %i.g, ptr %i.b, align 8, !dbg !11563, !alias.scope !11541
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !11564

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], !dbg !11565
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11566 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11542), !dbg !11567
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11568 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !11568, !alias.scope !11543, !noundef !1151 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !11568
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i, !dbg !11568

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !11569, !alias.scope !11543
  br label %bb.e, !dbg !11568

bb.d:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11570 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !11570, !alias.scope !11543, !noundef !1151 ; 3 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !11570
  br i1 %i.n, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !11570

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 64), !dbg !11571 ; 2 uses
  %i.o = sub nuw i64 %i.m, %.sroa.0.0.i.i.i.i, !dbg !11572
  store i64 %i.o, ptr %i.l, align 8, !dbg !11572, !alias.scope !11543
  %i.p = load ptr, ptr %i.h, align 8, !dbg !11573, !alias.scope !11543, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11573 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.p, align 1, !dbg !11574, !noalias !11543
  %i.r = load i64, ptr %i.q, align 8, !dbg !11575, !alias.scope !11543, !noundef !1151
  %i.s = add i64 %i.r, -8, !dbg !11576
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !11577
  store ptr %i.t, ptr %i.h, align 8, !dbg !11578, !alias.scope !11543
  store i64 %i.s, ptr %i.q, align 8, !dbg !11578, !alias.scope !11543
  br label %bb.e, !dbg !11579

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, %._crit_edge.i.i.i
  %i.u = phi i64 [ %i.j, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11580
  %i.v = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11569 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11569
  %i.x = trunc i64 %i.v to i8, !dbg !11569
  %i.y = lshr i64 %i.v, 1, !dbg !11581
  store i64 %i.y, ptr %i.w, align 8, !dbg !11581, !alias.scope !11543
  %i.z = add i64 %i.u, -1, !dbg !11580
  store i64 %i.z, ptr %i.i, align 8, !dbg !11580, !alias.scope !11543
  %i.aa = and i8 %i.x, 1, !dbg !11582
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !11583

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i = phi i8 [ %i.aa, %bb.e ], [ 2, %bb.d ], !dbg !11584
  %i.ab = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.0.0.i.i.i), !dbg !11585, !noalias !11544 ; 2 uses
  %i.ac = extractvalue { i8, ptr } %i.ab, 0, !dbg !11586 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ac, 2, !dbg !11587
  br i1 %.not.i.i, label %bb.m, label %bb.f, !dbg !11588

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.ad = extractvalue { i8, ptr } %i.ab, 1, !dbg !11586 ; 2 uses
  %i.ae = trunc nuw i8 %i.ac to i1, !dbg !11589
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  br i1 %i.ae, label %select.unfold, label %bb.i, !dbg !11590

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11591 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !11592, !alias.scope !11545, !nonnull !1151, !noundef !1151 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11593
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !11593, !alias.scope !11545, !nonnull !1151, !noundef !1151
  %i.aj = icmp eq ptr %i.ag, %i.ai, !dbg !11594
  br i1 %i.aj, label %bb.m, label %bb.h, !dbg !11595

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !11596
  store ptr %i.ak, ptr %i.af, align 8, !dbg !11597, !alias.scope !11545
  br label %select.unfold, !dbg !11598

select.unfold:                                    ; preds = %bb.f, %bb.h
  %.sroa.3.0.i.pn.i.ph.ph = phi ptr [ %i.ag, %bb.h ], [ %i.ad, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11599
  store i8 1, ptr %i.al, align 8, !dbg !11599
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11600 ; 7 uses
  store i64 0, ptr %i.am, align 8, !dbg !11600
  %i.an = load float, ptr %.sroa.3.0.i.pn.i.ph.ph, align 4, !dbg !11601, !alias.scope !11547, !noundef !1151 ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an), !dbg !11602
  %or.cond.i = fcmp ueq float %i.ao, +inf, !dbg !11602
  br i1 %or.cond.i, label %bb.l, label %bb.j, !dbg !11602

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11599
  store i8 1, ptr %i.ap, align 8, !dbg !11599
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11600 ; 4 uses
  store i64 0, ptr %i.aq, align 8, !dbg !11600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11547), !dbg !11603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11548), !dbg !11603
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !11604, !noalias !11547
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !11605, !alias.scope !11549, !noundef !1151 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !11606
  tail call void @llvm.assume(i1 %i.as), !dbg !11607
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11608
  %i.au = load ptr, ptr %i.at, align 8, !dbg !11608, !alias.scope !11549, !nonnull !1151, !noundef !1151
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar, !dbg !11609
  store i32 1819047278, ptr %i.av, align 1, !dbg !11610, !noalias !11547
  %.pre.i.i = load i64, ptr %i.aq, align 8, !dbg !11611, !alias.scope !11549
  %i.aw = add i64 %.pre.i.i, 4, !dbg !11611
  store i64 %i.aw, ptr %i.aq, align 8, !dbg !11611, !alias.scope !11549
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !11612

bb.j:                                             ; preds = %select.unfold
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11550), !dbg !11613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11614, !noalias !11551
  %i.ax = call { ptr, i64 } @_RINvMs2_CskFfanrUhUOy_4zmijNtB6_6Buffer6formatfECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull dereferenceable(24) %i.a, float noundef %i.an), !dbg !11615, !noalias !11551 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1, !dbg !11615 ; 4 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ay), !dbg !11616, !noalias !11547
  %i.az = load i64, ptr %i.am, align 8, !dbg !11617, !alias.scope !11552, !noundef !1151 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1, !dbg !11618
  call void @llvm.assume(i1 %i.ba), !dbg !11619
  %.not.i.i.i = icmp eq i64 %i.ay, 0, !dbg !11620
  br i1 %.not.i.i.i, label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, label %bb.k, !dbg !11620

bb.k:                                             ; preds = %bb.j
  %i.bb = extractvalue { ptr, i64 } %i.ax, 0, !dbg !11615 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !11621
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11622
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !11622, !alias.scope !11552, !nonnull !1151, !noundef !1151
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az, !dbg !11623
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %i.bb, i64 %i.ay, i1 false), !dbg !11624, !noalias !11547
  %.pre.i.i.i3 = load i64, ptr %i.am, align 8, !dbg !11625, !alias.scope !11552
  br label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, !dbg !11626

_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi i64 [ %.pre.i.i.i3, %bb.k ], [ %i.az, %bb.j ], !dbg !11625
  %i.bg = add i64 %i.bf, %i.ay, !dbg !11625
  store i64 %i.bg, ptr %i.am, align 8, !dbg !11625, !alias.scope !11552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11627, !noalias !11551
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !11628

bb.l:                                             ; preds = %select.unfold
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !11629, !noalias !11547
  %i.bh = load i64, ptr %i.am, align 8, !dbg !11630, !alias.scope !11553, !noundef !1151 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !11631
  tail call void @llvm.assume(i1 %i.bi), !dbg !11632
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11633
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !11633, !alias.scope !11553, !nonnull !1151, !noundef !1151
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !11634
  store i32 1819047278, ptr %i.bl, align 1, !dbg !11635, !noalias !11547
  %.pre.i4.i = load i64, ptr %i.am, align 8, !dbg !11636, !alias.scope !11553
  %i.bm = add i64 %.pre.i4.i, 4, !dbg !11636
  store i64 %i.bm, ptr %i.am, align 8, !dbg !11636, !alias.scope !11553
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !11628

bb.m:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11637
  store i8 0, ptr %i.bn, align 8, !dbg !11637
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !11638

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit: ; preds = %bb.l, %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, %bb.i, %bb.m
  ret void, !dbg !11639
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #5 !dbg !11640 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11645), !dbg !11648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11646), !dbg !11648
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11649, !alias.scope !11646, !noundef !1151 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !11649   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11650
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !11650, !alias.scope !11646, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11651
  %.val1.i = load ptr, ptr %i.d, align 8, !dbg !11651, !alias.scope !11646, !nonnull !1151
  %.val1.sink.i = select i1 %.not.i, ptr %.val1.i, ptr %.val.i, !dbg !11651
  %.val.sink.i = select i1 %.not.i, ptr %.val.i, ptr %i.b, !dbg !11651
  %i.e = ptrtoint ptr %.val1.sink.i to i64, !dbg !11650
  %i.f = ptrtoint ptr %.val.sink.i to i64, !dbg !11650
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !11650
  %.sink4.i = lshr exact i64 %i.g, 2, !dbg !11650 ; 2 uses
  store i64 %.sink4.i, ptr %0, align 8, !dbg !11650, !alias.scope !11645
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11650
  store i64 1, ptr %i.h, align 8, !dbg !11650, !alias.scope !11645
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11650
  store i64 %.sink4.i, ptr %i.i, align 8, !dbg !11650, !alias.scope !11645
  ret void, !dbg !11652
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializerhE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB3t_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #4 !dbg !567 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11653
  %i.b = load i8, ptr %i.a, align 8, !dbg !11653, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !11653     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11653
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11653, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11653
  %i.g = load i64, ptr %i.f, align 8, !dbg !11653
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !11653
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !11653
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !11654
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !11654
  ret { ptr, i64 } %i.i, !dbg !11654
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtB1j_8iterator10BitmapIterENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializerhE0INtNtB2d_6option6OptionB24_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB3t_(ptr noalias noundef align 8 dereferenceable(88) initializes((80, 81)) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11655 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11758 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11740), !dbg !11759
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11760, !alias.scope !11740, !noundef !1151 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !11760
  br i1 %.not.i, label %bb.g, label %bb.b, !dbg !11761

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11741), !dbg !11762
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11763
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11763, !alias.scope !11742, !nonnull !1151, !noundef !1151
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !11764
  br i1 %i.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.c, !dbg !11765

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !11766
  store ptr %i.g, ptr %i.b, align 8, !dbg !11767, !alias.scope !11742
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !11768

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], !dbg !11769
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11770 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11743), !dbg !11771
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11772 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !11772, !alias.scope !11744, !noundef !1151 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !11772
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i, !dbg !11772

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !11773, !alias.scope !11744
  br label %bb.e, !dbg !11772

bb.d:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11774 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !11774, !alias.scope !11744, !noundef !1151 ; 3 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !11774
  br i1 %i.n, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !11774

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 64), !dbg !11775 ; 2 uses
  %i.o = sub nuw i64 %i.m, %.sroa.0.0.i.i.i.i, !dbg !11776
  store i64 %i.o, ptr %i.l, align 8, !dbg !11776, !alias.scope !11744
  %i.p = load ptr, ptr %i.h, align 8, !dbg !11777, !alias.scope !11744, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11777 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.p, align 1, !dbg !11778, !noalias !11744
  %i.r = load i64, ptr %i.q, align 8, !dbg !11779, !alias.scope !11744, !noundef !1151
  %i.s = add i64 %i.r, -8, !dbg !11780
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !11781
  store ptr %i.t, ptr %i.h, align 8, !dbg !11782, !alias.scope !11744
  store i64 %i.s, ptr %i.q, align 8, !dbg !11782, !alias.scope !11744
  br label %bb.e, !dbg !11783

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, %._crit_edge.i.i.i
  %i.u = phi i64 [ %i.j, %._crit_edge.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11784
  %i.v = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], !dbg !11773 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11773
  %i.x = trunc i64 %i.v to i8, !dbg !11773
  %i.y = lshr i64 %i.v, 1, !dbg !11785
  store i64 %i.y, ptr %i.w, align 8, !dbg !11785, !alias.scope !11744
  %i.z = add i64 %i.u, -1, !dbg !11784
  store i64 %i.z, ptr %i.i, align 8, !dbg !11784, !alias.scope !11744
  %i.aa = and i8 %i.x, 1, !dbg !11786
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !11787

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i = phi i8 [ %i.aa, %bb.e ], [ 2, %bb.d ], !dbg !11788
  %i.ab = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRhECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) %.sroa.0.0.i.i.i), !dbg !11789, !noalias !11745 ; 2 uses
  %i.ac = extractvalue { i8, ptr } %i.ab, 0, !dbg !11790 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ac, 2, !dbg !11791
  br i1 %.not.i.i, label %bb.n, label %bb.f, !dbg !11792

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.ad = extractvalue { i8, ptr } %i.ab, 1, !dbg !11790 ; 2 uses
  %i.ae = trunc nuw i8 %i.ac to i1, !dbg !11793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  br i1 %i.ae, label %select.unfold, label %bb.m, !dbg !11794

bb.g:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB1n_5slice4iter4IteraENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB4p_:bb.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB1n_5slice4iter4IteraENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !16777 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16796), !dbg !16800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16797), !dbg !16800
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !16801
  %i.b = load i64, ptr %i.a, align 8, !dbg !16801, !alias.scope !16797, !noundef !1151 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !16801
  br i1 %i.c, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRaINtNtNtBa_5slice4iter4IteraENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !16801

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16802
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16803, !alias.scope !16798, !noundef !1151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null, !dbg !16803 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16804
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !dbg !16804, !alias.scope !16798, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !16805
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !dbg !16805, !alias.scope !16798, !nonnull !1151
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val1.i.i.i, ptr %.val.i.i.i, !dbg !16805
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val.i.i.i, ptr %i.e, !dbg !16805
  %i.h = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !16804
  %i.i = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !16804
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !16804
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16806
  %i.l = load i64, ptr %i.k, align 8, !dbg !16806, !alias.scope !16799, !noundef !1151
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.l), !dbg !16807
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.m), !dbg !16808
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRaINtNtNtBa_5slice4iter4IteraENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, !dbg !16809

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRaINtNtNtBa_5slice4iter4IteraENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ], !dbg !16810 ; 2 uses
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !dbg !16810, !alias.scope !16796
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16810
  store i64 1, ptr %i.n, align 8, !dbg !16810, !alias.scope !16796
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16810
  store i64 %.sroa.0.0.i.sink.i, ptr %i.o, align 8, !dbg !16810, !alias.scope !16796
  ret void, !dbg !16811
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1n_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB4p_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 !dbg !1005 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !16812
  %i.b = load i8, ptr %i.a, align 8, !dbg !16812, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !16812     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16812
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16812, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16812
  %i.g = load i64, ptr %i.f, align 8, !dbg !16812
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !16812
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !16812
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !16813
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !16813
  ret { ptr, i64 } %i.i, !dbg !16813
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1n_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB4p_(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16814 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16933 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16914), !dbg !16934
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16935 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !16935, !alias.scope !16914, !noundef !1151 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !16935
  br i1 %i.e, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, label %bb.b, !dbg !16935

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1, !dbg !16936
  store i64 %i.f, ptr %i.c, align 8, !dbg !16936, !alias.scope !16914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16915), !dbg !16937
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !16938 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !16938, !alias.scope !16916, !noundef !1151 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0, !dbg !16938
  br i1 %.not.i.i, label %bb.c, label %bb.k, !dbg !16939, !prof !1307

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16917), !dbg !16940
  %i.i = load ptr, ptr %i.b, align 8, !dbg !16941, !alias.scope !16918, !noundef !1151 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null, !dbg !16941
  br i1 %.not.i.i.i, label %bb.i, label %bb.d, !dbg !16942

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16919), !dbg !16943
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16944
  %i.k = load ptr, ptr %i.j, align 8, !dbg !16944, !alias.scope !16920, !nonnull !1151, !noundef !1151
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !16945
  br i1 %i.l, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.e, !dbg !16946

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16947
  store ptr %i.m, ptr %i.b, align 8, !dbg !16948, !alias.scope !16920
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !16949

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], !dbg !16950
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16951 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16921), !dbg !16952
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !16953 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !16953, !alias.scope !16922, !noundef !1151 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !16953
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i.i.i.i, !dbg !16953

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !16954, !alias.scope !16922
  br label %bb.g, !dbg !16953

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16955 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !16955, !alias.scope !16922, !noundef !1151 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0, !dbg !16955
  br i1 %i.t, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !16955

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64), !dbg !16956 ; 2 uses
  %i.u = sub nuw i64 %i.s, %.sroa.0.0.i.i.i.i.i.i, !dbg !16957
  store i64 %i.u, ptr %i.r, align 8, !dbg !16957, !alias.scope !16922
  %i.v = load ptr, ptr %i.n, align 8, !dbg !16958, !alias.scope !16922, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16958 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 1, !dbg !16959, !noalias !16922
  %i.x = load i64, ptr %i.w, align 8, !dbg !16960, !alias.scope !16922, !noundef !1151
  %i.y = add i64 %i.x, -8, !dbg !16961
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !16962
  store ptr %i.z, ptr %i.n, align 8, !dbg !16963, !alias.scope !16922
  store i64 %i.y, ptr %i.w, align 8, !dbg !16963, !alias.scope !16922
  br label %bb.g, !dbg !16964

bb.g:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.aa = phi i64 [ %i.p, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !16965
  %i.ab = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !16954 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16954
  %i.ad = trunc i64 %i.ab to i8, !dbg !16954
  %i.ae = lshr i64 %i.ab, 1, !dbg !16966
  store i64 %i.ae, ptr %i.ac, align 8, !dbg !16966, !alias.scope !16922
  %i.af = add i64 %i.aa, -1, !dbg !16965
  store i64 %i.af, ptr %i.o, align 8, !dbg !16965, !alias.scope !16922
  %i.ag = and i8 %i.ad, 1, !dbg !16967
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !16968

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ %i.ag, %bb.g ], [ 2, %bb.f ], !dbg !16969
  %i.ah = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.0.0.i.i.i.i.i), !dbg !16970, !noalias !16923 ; 2 uses
  %i.ai = extractvalue { i8, ptr } %i.ah, 0, !dbg !16971 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ai, 2, !dbg !16972
  br i1 %.not.i.i.i.i, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.h, !dbg !16973

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.aj = extractvalue { i8, ptr } %i.ah, 1, !dbg !16971 ; 2 uses
  %i.ak = trunc nuw i8 %i.ai to i1, !dbg !16974
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %..i.i.i.i = select i1 %i.ak, ptr %i.aj, ptr null, !dbg !16975
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !16976

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16977 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !dbg !16978, !alias.scope !16924, !nonnull !1151, !noundef !1151 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16979
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !16979, !alias.scope !16924, !nonnull !1151, !noundef !1151
  %i.ap = icmp eq ptr %i.am, %i.ao, !dbg !16980
  br i1 %i.ap, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.j, !dbg !16981

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !16982
  store ptr %i.aq, ptr %i.al, align 8, !dbg !16983, !alias.scope !16924
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !16984

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.0.0.i.pn.i.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ 1, %bb.h ], [ 1, %bb.j ], [ 0, %bb.i ]
  %.sroa.3.0.i.pn.i.i.i = phi ptr [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %..i.i.i.i, %bb.h ], [ %i.am, %bb.j ], [ null, %bb.i ]
  %.pn.i.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.pn.i.i.i, 0, !dbg !16985
  %.merged.i.i.i = insertvalue { i64, ptr } %.pn.i.i.i, ptr %.sroa.3.0.i.pn.i.i.i, 1, !dbg !16985
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit, !dbg !16986

bb.k:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !dbg !16987, !alias.scope !16916
  %i.ar = tail call fastcc { i64, ptr } @_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator3nthCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %i.h) #27, !dbg !16988
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit, !dbg !16986

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit: ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %bb.k
  %.pn.i.i = phi { i64, ptr } [ %i.ar, %bb.k ], [ %.merged.i.i.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ] ; 2 uses
  %i.as = extractvalue { i64, ptr } %.pn.i.i, 0, !dbg !16937
  %i.at = extractvalue { i64, ptr } %.pn.i.i, 1, !dbg !16937 ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1, !dbg !16989
  br i1 %i.au, label %bb.l, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, !dbg !16989

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !16990
  store i8 1, ptr %i.av, align 8, !dbg !16990
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16991 ; 10 uses
  store i64 0, ptr %i.aw, align 8, !dbg !16991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16926), !dbg !16992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16927), !dbg !16992
  %.not.i = icmp eq ptr %i.at, null, !dbg !16993
  br i1 %.not.i, label %bb.n, label %bb.m, !dbg !16994

bb.m:                                             ; preds = %bb.l
  %i.ax = load double, ptr %i.at, align 8, !dbg !16995, !alias.scope !16926, !noundef !1151 ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax), !dbg !16996
  %or.cond.i = fcmp ueq double %i.ay, +inf, !dbg !16996
  br i1 %or.cond.i, label %bb.q, label %bb.o, !dbg !16996

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !16997, !noalias !16926
  %i.az = load i64, ptr %i.aw, align 8, !dbg !16998, !alias.scope !16928, !noundef !1151 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, -1, !dbg !16999
  tail call void @llvm.assume(i1 %i.ba), !dbg !17000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17001
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !17001, !alias.scope !16928, !nonnull !1151, !noundef !1151
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az, !dbg !17002
  store i32 1819047278, ptr %i.bd, align 1, !dbg !17003, !noalias !16926
  %.pre.i.i = load i64, ptr %i.aw, align 8, !dbg !17004, !alias.scope !16928
  %i.be = add i64 %.pre.i.i, 4, !dbg !17004
  store i64 %i.be, ptr %i.aw, align 8, !dbg !17004, !alias.scope !16928
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !17005

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16929), !dbg !17006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17007, !noalias !16930
  %i.bf = call { ptr, i64 } @_RINvMs2_CskFfanrUhUOy_4zmijNtB6_6Buffer6formatdECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %i.ax), !dbg !17008, !noalias !16930 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1, !dbg !17008 ; 4 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bg), !dbg !17009, !noalias !16926
  %i.bh = load i64, ptr %i.aw, align 8, !dbg !17010, !alias.scope !16931, !noundef !1151 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !17011
  call void @llvm.assume(i1 %i.bi), !dbg !17012
  %.not.i.i.i2 = icmp eq i64 %i.bg, 0, !dbg !17013
  br i1 %.not.i.i.i2, label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, label %bb.p, !dbg !17013

bb.p:                                             ; preds = %bb.o
  %i.bj = extractvalue { ptr, i64 } %i.bf, 0, !dbg !17008 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ], !dbg !17014
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17015
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !17015, !alias.scope !16931, !nonnull !1151, !noundef !1151
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh, !dbg !17016
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bj, i64 %i.bg, i1 false), !dbg !17017, !noalias !16926
  %.pre.i.i.i = load i64, ptr %i.aw, align 8, !dbg !17018, !alias.scope !16931
  br label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, !dbg !17019

_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i: ; preds = %bb.p, %bb.o
  %i.bn = phi i64 [ %.pre.i.i.i, %bb.p ], [ %i.bh, %bb.o ], !dbg !17018
  %i.bo = add i64 %i.bn, %i.bg, !dbg !17018
  store i64 %i.bo, ptr %i.aw, align 8, !dbg !17018, !alias.scope !16931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17020, !noalias !16930
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !17021

bb.q:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !17022, !noalias !16926
  %i.bp = load i64, ptr %i.aw, align 8, !dbg !17023, !alias.scope !16932, !noundef !1151 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1, !dbg !17024
  tail call void @llvm.assume(i1 %i.bq), !dbg !17025
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17026
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !17026, !alias.scope !16932, !nonnull !1151, !noundef !1151
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp, !dbg !17027
  store i32 1819047278, ptr %i.bt, align 1, !dbg !17028, !noalias !16926
  %.pre.i4.i = load i64, ptr %i.aw, align 8, !dbg !17029, !alias.scope !16932
  %i.bu = add i64 %.pre.i4.i, 4, !dbg !17029
  store i64 %i.bu, ptr %i.aw, align 8, !dbg !17029, !alias.scope !16932
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !17021

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread: ; preds = %bb.a, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17030
  store i8 0, ptr %i.bv, align 8, !dbg !17030
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !17031

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit: ; preds = %bb.q, %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_.exit.i, %bb.n, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread
  ret void, !dbg !17032
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1n_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !17033 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17052), !dbg !17056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17053), !dbg !17056
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17057
  %i.b = load i64, ptr %i.a, align 8, !dbg !17057, !alias.scope !17053, !noundef !1151 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !17057
  br i1 %i.c, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !17057

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17058
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17059, !alias.scope !17054, !noundef !1151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null, !dbg !17059 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17060
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !dbg !17060, !alias.scope !17054, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17061
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !dbg !17061, !alias.scope !17054, !nonnull !1151
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val1.i.i.i, ptr %.val.i.i.i, !dbg !17061
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val.i.i.i, ptr %i.e, !dbg !17061
  %i.h = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !17060
  %i.i = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !17060
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !17060
  %.sink4.i.i.i = lshr exact i64 %i.j, 3, !dbg !17060
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17062
  %i.l = load i64, ptr %i.k, align 8, !dbg !17062, !alias.scope !17055, !noundef !1151
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %.sink4.i.i.i, i64 %i.l), !dbg !17063
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.m), !dbg !17064
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, !dbg !17065

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ], !dbg !17066 ; 2 uses
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !dbg !17066, !alias.scope !17052
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17066
  store i64 1, ptr %i.n, align 8, !dbg !17066, !alias.scope !17052
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17066
  store i64 %.sroa.0.0.i.sink.i, ptr %i.o, align 8, !dbg !17066, !alias.scope !17052
  ret void, !dbg !17067
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB3k_4utf89Utf8ArrayxEENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB53_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #4 !dbg !1006 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !17068
  %i.b = load i8, ptr %i.a, align 8, !dbg !17068, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !17068     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17068
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17068, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17068
  %i.g = load i64, ptr %i.f, align 8, !dbg !17068
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !17068
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !17068
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !17069
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !17069
  ret { ptr, i64 } %i.i, !dbg !17069
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB3k_4utf89Utf8ArrayxEENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB53_(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17070 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17197 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17169), !dbg !17198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17170), !dbg !17198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17199 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !17199, !alias.scope !17170, !noundef !1151 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !17199
  br i1 %i.g, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, label %bb.b, !dbg !17199

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.f, -1, !dbg !17200
  store i64 %i.h, ptr %i.e, align 8, !dbg !17200, !alias.scope !17170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17171), !dbg !17201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17172), !dbg !17201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17202 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !17202, !alias.scope !17173, !noundef !1151 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !17202
  br i1 %.not.i.i, label %bb.c, label %bb.k, !dbg !17203, !prof !1307

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17174), !dbg !17204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17175), !dbg !17204
  %i.k = load ptr, ptr %i.d, align 8, !dbg !17205, !alias.scope !17176, !noundef !1151 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null, !dbg !17205
  br i1 %.not.i.i.i, label %bb.i, label %bb.d, !dbg !17206

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17177), !dbg !17207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17178), !dbg !17207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17179), !dbg !17208
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17209 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !17209, !alias.scope !17180, !noundef !1151 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17210
  %i.o = load i64, ptr %i.n, align 8, !dbg !17210, !alias.scope !17180, !noundef !1151
  %i.p = icmp eq i64 %i.m, %i.o, !dbg !17209
  br i1 %i.p, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.e, !dbg !17209

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.m, 1, !dbg !17211             ; 3 uses
  store i64 %i.q, ptr %i.l, align 8, !dbg !17211, !alias.scope !17180
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !17212
  %i.s = load ptr, ptr %i.r, align 8, !dbg !17212, !noalias !17181, !noundef !1151 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !17213
  %i.u = load i64, ptr %i.t, align 8, !dbg !17213, !noalias !17181, !noundef !1151
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m, !dbg !17214
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !17215, !noalias !17181, !noundef !1151 ; 2 uses
  %i.w = icmp ult i64 %i.q, %i.u, !dbg !17216
  tail call void @llvm.assume(i1 %i.w), !dbg !17217
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q, !dbg !17218
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !dbg !17219, !noalias !17181, !noundef !1151
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 64, !dbg !17220
  %i.z = load ptr, ptr %i.y, align 8, !dbg !17220, !noalias !17181, !noundef !1151
  %i.aa = sub nuw i64 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i, !dbg !17221
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.val1.i.i.i.i.i.i.i, !dbg !17222
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !17223

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ab, %bb.e ], [ null, %bb.d ], !dbg !17224
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17225 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17182), !dbg !17226
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17227 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !17227, !alias.scope !17183, !noundef !1151 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !17227
  br i1 %i.af, label %bb.f, label %._crit_edge.i.i.i.i.i, !dbg !17227

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB3k_7binview22BinaryViewArrayGenericeEENtNtB2s_8iterator10BitmapIterEEENCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB5j_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17429
  ret void, !dbg !17430
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB3k_7binview22BinaryViewArrayGenericeEENtNtB2s_8iterator10BitmapIterEEENCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB5j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !17431 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17450), !dbg !17454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17451), !dbg !17454
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !17455
  %i.b = load i64, ptr %i.a, align 8, !dbg !17455, !alias.scope !17451, !noundef !1151 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !17455
  br i1 %i.c, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_7binview22BinaryViewArrayGenericeEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !17455

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17456 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17457, !alias.scope !17452, !noundef !1151
  %.not.i.i.i = icmp eq ptr %i.e, null, !dbg !17457 ; 2 uses
  %..i.i.i = select i1 %.not.i.i.i, i64 16, i64 8, !dbg !17458
  %.7.i.i.i = select i1 %.not.i.i.i, i64 24, i64 16, !dbg !17458
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %..i.i.i, !dbg !17458
  %.val.i.i.i = load i64, ptr %i.f, align 8, !dbg !17458, !alias.scope !17452, !noundef !1151
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.7.i.i.i, !dbg !17458
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !dbg !17458, !alias.scope !17452, !noundef !1151
  %i.h = sub i64 %.val1.i.i.i, %.val.i.i.i, !dbg !17458
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17459
  %i.j = load i64, ptr %i.i, align 8, !dbg !17459, !alias.scope !17453, !noundef !1151
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.j), !dbg !17460
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k), !dbg !17461
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_7binview22BinaryViewArrayGenericeEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, !dbg !17462

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_7binview22BinaryViewArrayGenericeEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ], !dbg !17463 ; 2 uses
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !dbg !17463, !alias.scope !17450
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17463
  store i64 1, ptr %i.l, align 8, !dbg !17463, !alias.scope !17450
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17463
  store i64 %.sroa.0.0.i.sink.i, ptr %i.m, align 8, !dbg !17463, !alias.scope !17450
  ret void, !dbg !17464
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1n_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB4p_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 !dbg !1008 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17465
  %i.b = load i8, ptr %i.a, align 8, !dbg !17465, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !17465     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17465
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17465, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17465
  %i.g = load i64, ptr %i.f, align 8, !dbg !17465
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !17465
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !17465
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !17466
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !17466
  ret { ptr, i64 } %i.i, !dbg !17466
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1n_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB4p_(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17467 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17586 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17567), !dbg !17587
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17588 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !17588, !alias.scope !17567, !noundef !1151 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !17588
  br i1 %i.e, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, label %bb.b, !dbg !17588

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1, !dbg !17589
  store i64 %i.f, ptr %i.c, align 8, !dbg !17589, !alias.scope !17567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17568), !dbg !17590
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17591 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !17591, !alias.scope !17569, !noundef !1151 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0, !dbg !17591
  br i1 %.not.i.i, label %bb.c, label %bb.k, !dbg !17592, !prof !1307

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17570), !dbg !17593
  %i.i = load ptr, ptr %i.b, align 8, !dbg !17594, !alias.scope !17571, !noundef !1151 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null, !dbg !17594
  br i1 %.not.i.i.i, label %bb.i, label %bb.d, !dbg !17595

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17572), !dbg !17596
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17597
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17597, !alias.scope !17573, !nonnull !1151, !noundef !1151
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !17598
  br i1 %i.l, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.e, !dbg !17599

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4, !dbg !17600
  store ptr %i.m, ptr %i.b, align 8, !dbg !17601, !alias.scope !17573
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !17602

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], !dbg !17603
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17604 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17574), !dbg !17605
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17606 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !17606, !alias.scope !17575, !noundef !1151 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !17606
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i.i.i.i, !dbg !17606

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !17607, !alias.scope !17575
  br label %bb.g, !dbg !17606

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17608 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !17608, !alias.scope !17575, !noundef !1151 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0, !dbg !17608
  br i1 %i.t, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !17608

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64), !dbg !17609 ; 2 uses
  %i.u = sub nuw i64 %i.s, %.sroa.0.0.i.i.i.i.i.i, !dbg !17610
  store i64 %i.u, ptr %i.r, align 8, !dbg !17610, !alias.scope !17575
  %i.v = load ptr, ptr %i.n, align 8, !dbg !17611, !alias.scope !17575, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17611 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 1, !dbg !17612, !noalias !17575
  %i.x = load i64, ptr %i.w, align 8, !dbg !17613, !alias.scope !17575, !noundef !1151
  %i.y = add i64 %i.x, -8, !dbg !17614
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !17615
  store ptr %i.z, ptr %i.n, align 8, !dbg !17616, !alias.scope !17575
  store i64 %i.y, ptr %i.w, align 8, !dbg !17616, !alias.scope !17575
  br label %bb.g, !dbg !17617

bb.g:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.aa = phi i64 [ %i.p, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !17618
  %i.ab = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !17607 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17607
  %i.ad = trunc i64 %i.ab to i8, !dbg !17607
  %i.ae = lshr i64 %i.ab, 1, !dbg !17619
  store i64 %i.ae, ptr %i.ac, align 8, !dbg !17619, !alias.scope !17575
  %i.af = add i64 %i.aa, -1, !dbg !17618
  store i64 %i.af, ptr %i.o, align 8, !dbg !17618, !alias.scope !17575
  %i.ag = and i8 %i.ad, 1, !dbg !17620
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !17621

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ %i.ag, %bb.g ], [ 2, %bb.f ], !dbg !17622
  %i.ah = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.0.0.i.i.i.i.i), !dbg !17623, !noalias !17576 ; 2 uses
  %i.ai = extractvalue { i8, ptr } %i.ah, 0, !dbg !17624 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ai, 2, !dbg !17625
  br i1 %.not.i.i.i.i, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.h, !dbg !17626

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.aj = extractvalue { i8, ptr } %i.ah, 1, !dbg !17624 ; 2 uses
  %i.ak = trunc nuw i8 %i.ai to i1, !dbg !17627
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %..i.i.i.i = select i1 %i.ak, ptr %i.aj, ptr null, !dbg !17628
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !17629

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17630 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !dbg !17631, !alias.scope !17577, !nonnull !1151, !noundef !1151 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17632
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !17632, !alias.scope !17577, !nonnull !1151, !noundef !1151
  %i.ap = icmp eq ptr %i.am, %i.ao, !dbg !17633
  br i1 %i.ap, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.j, !dbg !17634

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !17635
  store ptr %i.aq, ptr %i.al, align 8, !dbg !17636, !alias.scope !17577
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !17637

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.0.0.i.pn.i.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ 1, %bb.h ], [ 1, %bb.j ], [ 0, %bb.i ]
  %.sroa.3.0.i.pn.i.i.i = phi ptr [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %..i.i.i.i, %bb.h ], [ %i.am, %bb.j ], [ null, %bb.i ]
  %.pn.i.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.pn.i.i.i, 0, !dbg !17638
  %.merged.i.i.i = insertvalue { i64, ptr } %.pn.i.i.i, ptr %.sroa.3.0.i.pn.i.i.i, 1, !dbg !17638
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit, !dbg !17639

bb.k:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !dbg !17640, !alias.scope !17569
  %i.ar = tail call fastcc { i64, ptr } @_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator3nthCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %i.h) #27, !dbg !17641
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit, !dbg !17639

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit: ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %bb.k
  %.pn.i.i = phi { i64, ptr } [ %i.ar, %bb.k ], [ %.merged.i.i.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ] ; 2 uses
  %i.as = extractvalue { i64, ptr } %.pn.i.i, 0, !dbg !17590
  %i.at = extractvalue { i64, ptr } %.pn.i.i, 1, !dbg !17590 ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1, !dbg !17642
  br i1 %i.au, label %bb.l, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, !dbg !17642

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17643
  store i8 1, ptr %i.av, align 8, !dbg !17643
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17644 ; 10 uses
  store i64 0, ptr %i.aw, align 8, !dbg !17644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17579), !dbg !17645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17580), !dbg !17645
  %.not.i = icmp eq ptr %i.at, null, !dbg !17646
  br i1 %.not.i, label %bb.n, label %bb.m, !dbg !17647

bb.m:                                             ; preds = %bb.l
  %i.ax = load float, ptr %i.at, align 4, !dbg !17648, !alias.scope !17579, !noundef !1151 ; 2 uses
  %i.ay = tail call float @llvm.fabs.f32(float %i.ax), !dbg !17649
  %or.cond.i = fcmp ueq float %i.ay, +inf, !dbg !17649
  br i1 %or.cond.i, label %bb.q, label %bb.o, !dbg !17649

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !17650, !noalias !17579
  %i.az = load i64, ptr %i.aw, align 8, !dbg !17651, !alias.scope !17581, !noundef !1151 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, -1, !dbg !17652
  tail call void @llvm.assume(i1 %i.ba), !dbg !17653
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17654
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !17654, !alias.scope !17581, !nonnull !1151, !noundef !1151
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az, !dbg !17655
  store i32 1819047278, ptr %i.bd, align 1, !dbg !17656, !noalias !17579
  %.pre.i.i = load i64, ptr %i.aw, align 8, !dbg !17657, !alias.scope !17581
  %i.be = add i64 %.pre.i.i, 4, !dbg !17657
  store i64 %i.be, ptr %i.aw, align 8, !dbg !17657, !alias.scope !17581
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !17658

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17582), !dbg !17659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17660, !noalias !17583
  %i.bf = call { ptr, i64 } @_RINvMs2_CskFfanrUhUOy_4zmijNtB6_6Buffer6formatfECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull dereferenceable(24) %i.a, float noundef %i.ax), !dbg !17661, !noalias !17583 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1, !dbg !17661 ; 4 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bg), !dbg !17662, !noalias !17579
  %i.bh = load i64, ptr %i.aw, align 8, !dbg !17663, !alias.scope !17584, !noundef !1151 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !17664
  call void @llvm.assume(i1 %i.bi), !dbg !17665
  %.not.i.i.i2 = icmp eq i64 %i.bg, 0, !dbg !17666
  br i1 %.not.i.i.i2, label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, label %bb.p, !dbg !17666

bb.p:                                             ; preds = %bb.o
  %i.bj = extractvalue { ptr, i64 } %i.bf, 0, !dbg !17661 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ], !dbg !17667
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17668
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !17668, !alias.scope !17584, !nonnull !1151, !noundef !1151
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh, !dbg !17669
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bj, i64 %i.bg, i1 false), !dbg !17670, !noalias !17579
  %.pre.i.i.i = load i64, ptr %i.aw, align 8, !dbg !17671, !alias.scope !17584
  br label %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, !dbg !17672

_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i: ; preds = %bb.p, %bb.o
  %i.bn = phi i64 [ %.pre.i.i.i, %bb.p ], [ %i.bh, %bb.o ], !dbg !17671
  %i.bo = add i64 %i.bn, %i.bg, !dbg !17671
  store i64 %i.bo, ptr %i.aw, align 8, !dbg !17671, !alias.scope !17584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17673, !noalias !17583
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !17674

bb.q:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !17675, !noalias !17579
  %i.bp = load i64, ptr %i.aw, align 8, !dbg !17676, !alias.scope !17585, !noundef !1151 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1, !dbg !17677
  tail call void @llvm.assume(i1 %i.bq), !dbg !17678
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17679
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !17679, !alias.scope !17585, !nonnull !1151, !noundef !1151
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp, !dbg !17680
  store i32 1819047278, ptr %i.bt, align 1, !dbg !17681, !noalias !17579
  %.pre.i4.i = load i64, ptr %i.aw, align 8, !dbg !17682, !alias.scope !17585
  %i.bu = add i64 %.pre.i4.i, 4, !dbg !17682
  store i64 %i.bu, ptr %i.aw, align 8, !dbg !17682, !alias.scope !17585
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !17674

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread: ; preds = %bb.a, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17683
  store i8 0, ptr %i.bv, align 8, !dbg !17683
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !17684

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit: ; preds = %bb.q, %_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_.exit.i, %bb.n, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread
  ret void, !dbg !17685
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1n_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator9size_hintB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !17686 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17705), !dbg !17709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17706), !dbg !17709
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17710
  %i.b = load i64, ptr %i.a, align 8, !dbg !17710, !alias.scope !17706, !noundef !1151 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !17710
  br i1 %i.c, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !17710

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17711
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17712, !alias.scope !17707, !noundef !1151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null, !dbg !17712 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17713
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !dbg !17713, !alias.scope !17707, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17714
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !dbg !17714, !alias.scope !17707, !nonnull !1151
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val1.i.i.i, ptr %.val.i.i.i, !dbg !17714
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.val.i.i.i, ptr %i.e, !dbg !17714
  %i.h = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !17713
  %i.i = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !17713
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !17713
  %.sink4.i.i.i = lshr exact i64 %i.j, 2, !dbg !17713
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17715
  %i.l = load i64, ptr %i.k, align 8, !dbg !17715, !alias.scope !17708, !noundef !1151
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %.sink4.i.i.i, i64 %i.l), !dbg !17716
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.m), !dbg !17717
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit, !dbg !17718

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ], !dbg !17719 ; 2 uses
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !dbg !17719, !alias.scope !17705
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17719
  store i64 1, ptr %i.n, align 8, !dbg !17719, !alias.scope !17705
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17719
  store i64 %.sroa.0.0.i.sink.i, ptr %i.o, align 8, !dbg !17719, !alias.scope !17705
  ret void, !dbg !17720
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtB1n_5slice4iter4IterhENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializerhE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator3getB4p_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 !dbg !1009 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !17721
  %i.b = load i8, ptr %i.a, align 8, !dbg !17721, !range !1423, !noundef !1151
  %i.c = trunc nuw i8 %i.b to i1, !dbg !17721     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17721
  %i.e = load ptr, ptr %i.d, align 8, !dbg !17721, !nonnull !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17721
  %i.g = load i64, ptr %i.f, align 8, !dbg !17721
  %.sroa.3.0 = select i1 %i.c, i64 %i.g, i64 undef, !dbg !17721
  %.sroa.0.0 = select i1 %i.c, ptr %i.e, ptr null, !dbg !17721
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !17722
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !17722
  ret { ptr, i64 } %i.i, !dbg !17722
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow2io8iteratorINtB4_20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB1j_4skip4SkipINtNtNtNtB8_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtB1n_5slice4iter4IterhENtNtB2s_8iterator10BitmapIterEEENCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializerhE0INtNtB1n_6option6OptionB3d_EENtCsgJh9yXrUZzG_18streaming_iterator17StreamingIterator7advanceB4p_(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17723 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17851 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17829), !dbg !17852
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17853 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !17853, !alias.scope !17829, !noundef !1151 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !17853
  br i1 %i.e, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRhINtNtNtBa_5slice4iter4IterhENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, label %bb.b, !dbg !17853

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1, !dbg !17854
  store i64 %i.f, ptr %i.c, align 8, !dbg !17854, !alias.scope !17829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17830), !dbg !17855
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17856 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !17856, !alias.scope !17831, !noundef !1151 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0, !dbg !17856
  br i1 %.not.i.i, label %bb.c, label %bb.k, !dbg !17857, !prof !1307

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17832), !dbg !17858
  %i.i = load ptr, ptr %i.b, align 8, !dbg !17859, !alias.scope !17833, !noundef !1151 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null, !dbg !17859
  br i1 %.not.i.i.i, label %bb.i, label %bb.d, !dbg !17860

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17834), !dbg !17861
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17862
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17862, !alias.scope !17835, !nonnull !1151, !noundef !1151
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !17863
  br i1 %i.l, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.e, !dbg !17864

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !17865
  store ptr %i.m, ptr %i.b, align 8, !dbg !17866, !alias.scope !17835
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !17867

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], !dbg !17868
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17869 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17836), !dbg !17870
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17871 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !17871, !alias.scope !17837, !noundef !1151 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !17871
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i.i.i.i, !dbg !17871

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !17872, !alias.scope !17837
  br label %bb.g, !dbg !17871

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17873 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !17873, !alias.scope !17837, !noundef !1151 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0, !dbg !17873
  br i1 %i.t, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !17873

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64), !dbg !17874 ; 2 uses
  %i.u = sub nuw i64 %i.s, %.sroa.0.0.i.i.i.i.i.i, !dbg !17875
  store i64 %i.u, ptr %i.r, align 8, !dbg !17875, !alias.scope !17837
  %i.v = load ptr, ptr %i.n, align 8, !dbg !17876, !alias.scope !17837, !nonnull !1151, !noundef !1151 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17876 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 1, !dbg !17877, !noalias !17837
  %i.x = load i64, ptr %i.w, align 8, !dbg !17878, !alias.scope !17837, !noundef !1151
  %i.y = add i64 %i.x, -8, !dbg !17879
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !17880
  store ptr %i.z, ptr %i.n, align 8, !dbg !17881, !alias.scope !17837
  store i64 %i.y, ptr %i.w, align 8, !dbg !17881, !alias.scope !17837
  br label %bb.g, !dbg !17882

bb.g:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.aa = phi i64 [ %i.p, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !17883
end_hunk_3
