Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15skip_till_depthBa_:bb.a
  %.not.i.i137 = icmp eq i64 %i.ct, 0, !dbg !41956
  br i1 %.not.i.i137, label %.loopexit, label %bb.ak, !dbg !41956
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol16read_field_beginBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i16 noundef %2) unnamed_addr #13 !dbg !837 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42141), !dbg !42159
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42160 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !42160, !alias.scope !42141, !noalias !42142, !noundef !859 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0, !dbg !42161
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !42161

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !dbg !42162
  br label %bb.o, !dbg !42163

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !dbg !42160, !alias.scope !42141, !noalias !42142, !nonnull !859, !noundef !859 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !42164, !noalias !42146, !noundef !859 ; 2 uses
  %i.f = add i64 %i.c, -1, !dbg !42165
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !42166
  store ptr %i.g, ptr %1, align 8, !dbg !42167, !alias.scope !42141, !noalias !42142
  store i64 %i.f, ptr %i.b, align 8, !dbg !42167, !alias.scope !42141, !noalias !42142
  %i.h = lshr i8 %i.e, 4, !dbg !42168             ; 3 uses
  %i.i = and i8 %i.e, 15, !dbg !42169             ; 3 uses
  switch i8 %i.i, label %bb.d [
    i8 0, label %bb.e
    i8 2, label %bb.f
    i8 1, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 6, label %bb.h
    i8 7, label %bb.h
    i8 8, label %bb.h
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
  ], !dbg !42170

bb.d:                                             ; preds = %bb.c
  store i8 2, ptr %0, align 8, !dbg !42171
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42171
  store i8 %i.i, ptr %.sroa.294.0..sroa_idx, align 1, !dbg !42171
  br label %bb.o, !dbg !42172

bb.e:                                             ; preds = %bb.c, %bb.l, %bb.m
  %.sroa.056.0.sink = phi i16 [ %i.r, %bb.m ], [ %i.q, %bb.l ], [ 0, %bb.c ]
  %.sroa.027.0.sink = phi i8 [ %.sroa.027.0, %bb.m ], [ %.sroa.027.0, %bb.l ], [ 2, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42173
  store i16 %.sroa.056.0.sink, ptr %i.j, align 2, !dbg !42173
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !42173
  store i8 %i.i, ptr %.sroa.472.0..sroa_idx, align 4, !dbg !42173
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !42173
  store i8 %.sroa.027.0.sink, ptr %.sroa.573.0..sroa_idx, align 1, !dbg !42173
  store i8 9, ptr %0, align 8, !dbg !42173
  br label %bb.o, !dbg !42174

bb.f:                                             ; preds = %bb.c
  br label %bb.h, !dbg !42175

bb.g:                                             ; preds = %bb.c
  br label %bb.h, !dbg !42176

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.g, %bb.f
  %.sroa.027.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], [ 2, %bb.c ], !dbg !42177 ; 2 uses
  %i.k = icmp eq i8 %i.h, 0, !dbg !42178
  br i1 %i.k, label %bb.i, label %bb.j, !dbg !42178, !prof !880

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42151
  call fastcc void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol18read_full_field_idBa_(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(16) %1), !dbg !42179
  %i.l = load i8, ptr %i.a, align 8, !dbg !42180, !range !1318, !noundef !859 ; 2 uses
  %.not124 = icmp eq i8 %i.l, 9, !dbg !42180
  br i1 %.not124, label %bb.l, label %bb.k, !dbg !42181

bb.j:                                             ; preds = %bb.h
  %i.m = zext nneg i8 %i.h to i16, !dbg !42182
  %i.n = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %2, i16 %i.m), !dbg !42183 ; 2 uses
  %i.o = extractvalue { i16, i1 } %i.n, 1, !dbg !42183
  br i1 %i.o, label %bb.n, label %bb.m, !dbg !42184, !prof !880

bb.k:                                             ; preds = %bb.i
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !42185
  %.sroa.5116.0.copyload = load i8, ptr %.sroa.5116.0..sroa_idx, align 1, !dbg !42185
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !42185
  %.sroa.6117.0.copyload = load i16, ptr %.sroa.6117.0..sroa_idx, align 2, !dbg !42185
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !42185
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !42186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4122.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7118.0..sroa_idx, i64 12, i1 false), !dbg !42185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42187
  store i8 %i.l, ptr %0, align 8, !dbg !42186
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42186
  store i8 %.sroa.5116.0.copyload, ptr %.sroa.2120.0..sroa_idx, align 1, !dbg !42186
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42186
  store i16 %.sroa.6117.0.copyload, ptr %.sroa.3121.0..sroa_idx, align 2, !dbg !42186
  br label %bb.o, !dbg !42188

bb.l:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !42189
  %i.q = load i16, ptr %i.p, align 2, !dbg !42189, !noundef !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42187
  br label %bb.e, !dbg !42190

bb.m:                                             ; preds = %bb.j
  %i.r = extractvalue { i16, i1 } %i.n, 0, !dbg !42183
  br label %bb.e, !dbg !42190

bb.n:                                             ; preds = %bb.j
  store i8 4, ptr %0, align 8, !dbg !42191
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42191
  store i8 %i.h, ptr %.sroa.2108.0..sroa_idx, align 1, !dbg !42191
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42191
  store i16 %2, ptr %.sroa.3109.0..sroa_idx, align 2, !dbg !42191
  br label %bb.o, !dbg !42188

bb.o:                                             ; preds = %bb.d, %bb.n, %bb.k, %bb.b, %bb.e
  ret void, !dbg !42174
}

; Function Attrs: cold nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol18read_full_field_idBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1), (2, 4)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #19 !dbg !42192 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42220), !dbg !42231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42221), !dbg !42231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42222), !dbg !42232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42233, !noalias !42223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42224), !dbg !42234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42225), !dbg !42235
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42236 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !42236, !alias.scope !42226, !noalias !42227, !noundef !859 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0, !dbg !42237
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !dbg !42237

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !dbg !42236, !alias.scope !42226, !noalias !42227, !nonnull !859, !noundef !859 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !42238, !noalias !42228, !noundef !859 ; 3 uses
  %i.f = add i64 %i.c, -1, !dbg !42239
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !42240
  store ptr %i.g, ptr %1, align 8, !dbg !42241, !alias.scope !42226, !noalias !42227
  store i64 %i.f, ptr %i.b, align 8, !dbg !42241, !alias.scope !42226, !noalias !42227
  %i.h = icmp sgt i8 %i.e, -1, !dbg !42242
  br i1 %i.h, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i.i, !dbg !42242, !prof !944

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i.i: ; preds = %bb.b
  %i.i = zext nneg i8 %i.e to i64, !dbg !42243
  br label %bb.d, !dbg !42244

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i.i: ; preds = %bb.b
  call void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol13read_vlq_slowBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.e) #39, !dbg !42245, !noalias !42229
  %.pr.i.i = load i8, ptr %i.a, align 8, !dbg !42246, !noalias !42223 ; 2 uses
  %.not.i.i = icmp eq i8 %.pr.i.i, 9, !dbg !42246
  br i1 %.not.i.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i.i, label %bb.c, !dbg !42244

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i.i: ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !dbg !42247, !noalias !42223
  br label %bb.d, !dbg !42244

bb.c:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i.i, %bb.a
  %i.j = phi i8 [ %.pr.i.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i.i ], [ 0, %bb.a ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !42248
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.212.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.59.0..sroa_idx.i.i, i64 7, i1 false), !dbg !42248, !noalias !42221
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !42248
  %.sroa.610.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !dbg !42248, !noalias !42223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42250, !noalias !42223
  store i8 %i.j, ptr %0, align 8, !dbg !42249, !alias.scope !42220, !noalias !42221
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42249
  store i64 %.sroa.610.0.copyload.i.i, ptr %.sroa.313.0..sroa_idx.i, align 8, !dbg !42249, !alias.scope !42220, !noalias !42221
  br label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_.exit, !dbg !42251

bb.d:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i.i
  %i.k = phi i64 [ %.pre.i.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i.i ], [ %i.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i.i ], !dbg !42247 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42250, !noalias !42223
  %i.l = lshr i64 %i.k, 1, !dbg !42252
  %i.m = and i64 %i.k, 1, !dbg !42253
  %i.n = sub nsw i64 0, %i.m, !dbg !42254
  %i.o = xor i64 %i.l, %i.n, !dbg !42252
  %i.p = trunc i64 %i.o to i16, !dbg !42255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42256
  store i16 %i.p, ptr %i.q, align 2, !dbg !42256, !alias.scope !42220, !noalias !42221
  store i8 9, ptr %0, align 8, !dbg !42256, !alias.scope !42220, !noalias !42221
  br label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_.exit, !dbg !42251

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !42257
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol19skip_list_of_binaryBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !42258 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42334), !dbg !42372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42335), !dbg !42373
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42374 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !42374, !alias.scope !42336, !noalias !42337, !noundef !859 ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0, !dbg !42375
  br i1 %.not.i.i, label %bb.h, label %bb.b, !dbg !42375

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !dbg !42374, !alias.scope !42336, !noalias !42337, !nonnull !859, !noundef !859 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !dbg !42376, !noalias !42338, !noundef !859 ; 2 uses
  %i.g = add i64 %i.d, -1, !dbg !42377            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !42378 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !dbg !42379, !alias.scope !42336, !noalias !42337
  store i64 %i.g, ptr %i.c, align 8, !dbg !42379, !alias.scope !42336, !noalias !42337
  %i.i = lshr i8 %i.f, 4, !dbg !42380             ; 3 uses
  %i.j = and i8 %i.f, 15, !dbg !42381             ; 3 uses
  %i.k = or i8 %i.j, %i.i, !dbg !42382
  %or.cond.i = icmp eq i8 %i.k, 0, !dbg !42382
  %.off = add nsw i8 %i.j, -1
  %switch = icmp ult i8 %.off, 12
  %or.cond = or i1 %or.cond.i, %switch, !dbg !42382
  br i1 %or.cond, label %bb.c, label %bb.h, !dbg !42382

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i8 %i.i, 15, !dbg !42383
  br i1 %i.l, label %bb.d, label %bb.f, !dbg !42383

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !42384, !noalias !42339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42340), !dbg !42385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42341), !dbg !42386
  %.not.i.i.i = icmp eq i64 %i.g, 0, !dbg !42387
  br i1 %.not.i.i.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i, label %bb.e, !dbg !42387

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.h, align 1, !dbg !42388, !noalias !42342, !noundef !859 ; 3 uses
  %i.n = add i64 %i.d, -2, !dbg !42389
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !42390
  store ptr %i.o, ptr %1, align 8, !dbg !42391, !alias.scope !42343, !noalias !42344
  store i64 %i.n, ptr %i.c, align 8, !dbg !42391, !alias.scope !42343, !noalias !42344
  %i.p = icmp sgt i8 %i.m, -1, !dbg !42392
  br i1 %i.p, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i, !dbg !42392, !prof !944

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i: ; preds = %bb.e
  %i.q = zext nneg i8 %i.m to i64, !dbg !42393
  br label %bb.g, !dbg !42394

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i: ; preds = %bb.e
  call void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol13read_vlq_slowBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.m) #39, !dbg !42395, !noalias !42345
  %.pr.i = load i8, ptr %i.b, align 8, !dbg !42396, !noalias !42339 ; 2 uses
  %.not60.i = icmp eq i8 %.pr.i, 9, !dbg !42396
  br i1 %.not60.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i, !dbg !42394

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i: ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !42397, !noalias !42339
  br label %bb.g, !dbg !42394

bb.f:                                             ; preds = %bb.c
  %i.r = zext nneg i8 %i.i to i32, !dbg !42398
  br label %bb.i, !dbg !42399

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i: ; preds = %bb.d, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i
  %i.s = phi i8 [ %.pr.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i ], [ 0, %bb.d ]
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !42400
  %.sroa.8.1.copyload = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !dbg !42400, !noalias !42334
  %.sroa.11.1..sroa.555.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !42400
  %.sroa.11.1.copyload = load i16, ptr %.sroa.11.1..sroa.555.0..sroa_idx.i.sroa_idx, align 2, !dbg !42400, !noalias !42334
  %.sroa.1137.1..sroa.555.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !42400
  %.sroa.1137.1.copyload = load i32, ptr %.sroa.1137.1..sroa.555.0..sroa_idx.i.sroa_idx, align 4, !dbg !42400, !noalias !42334
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !42400
  %.sroa.656.0.copyload.i = load i64, ptr %.sroa.656.0..sroa_idx.i, align 8, !dbg !42400, !noalias !42339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !42401, !noalias !42339
  br label %bb.h, !dbg !42402

bb.g:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i
  %i.t = phi i64 [ %.pre.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i ], [ %i.q, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i ], !dbg !42397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !42401, !noalias !42339
  %i.u = trunc i64 %i.t to i32, !dbg !42384
  %i.v = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.u, i32 0), !dbg !42403
  br label %bb.i, !dbg !42399

bb.h:                                             ; preds = %bb.b, %bb.a, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i
  %.sroa.14.0.ph = phi i64 [ undef, %bb.b ], [ %.sroa.656.0.copyload.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.1137.0.ph = phi i32 [ undef, %bb.b ], [ %.sroa.1137.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i16 [ undef, %bb.b ], [ %.sroa.11.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.8.0.ph = phi i8 [ %i.j, %bb.b ], [ %.sroa.8.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.0.0.ph = phi i8 [ 3, %bb.b ], [ %i.s, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ 0, %bb.a ]
  store i8 %.sroa.0.0.ph, ptr %0, align 8, !dbg !42404
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42404
  store i8 %.sroa.8.0.ph, ptr %.sroa.220.0..sroa_idx, align 1, !dbg !42404
  %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42404
  store i16 %.sroa.11.0.ph, ptr %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx, align 2, !dbg !42404
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !42404
  store i32 %.sroa.1137.0.ph, ptr %.sroa.321.0..sroa_idx, align 4, !dbg !42404
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42404
  store i64 %.sroa.14.0.ph, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !42404
  br label %bb.m, !dbg !42405

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.022.0.i = phi i32 [ %i.v, %bb.g ], [ %i.r, %bb.f ], !dbg !42406 ; 2 uses
  %.not = icmp eq i32 %.sroa.022.0.i, 0, !dbg !42407
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !42352

.lr.ph:                                           ; preds = %bb.i
  %.phi.trans.insert.i31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.w = load i64, ptr %i.c, align 8, !dbg !42408, !alias.scope !42353, !noalias !42354, !noundef !859 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !42409
  br i1 %i.x, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i.us, label %.lr.ph.split

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i.us: ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42355), !dbg !42410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42411, !noalias !42356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42357), !dbg !42412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42358), !dbg !42413
  %.sroa.039.1.copyload.us = load i56, ptr %.sroa.59.0..sroa_idx.i, align 1, !dbg !42414, !noalias !42355
  %.sroa.610.0.copyload.i.us = load i64, ptr %.phi.trans.insert.i31, align 8, !dbg !42414, !noalias !42356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42415, !noalias !42356
  %.sroa.039.1.insert.ext.us.le = zext i56 %.sroa.039.1.copyload.us to i64
  %.sroa.039.1.insert.shift.us.le = shl nuw i64 %.sroa.039.1.insert.ext.us.le, 8
  %i.y = inttoptr i64 %.sroa.039.1.insert.shift.us.le to ptr
  br label %.split, !dbg !42416

bb.j:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit
  %i.z = add nuw nsw i32 %.sroa.024.061, 1, !dbg !42417 ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %.sroa.022.0.i, !dbg !42407
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !dbg !42352, !llvm.loop !42317

._crit_edge:                                      ; preds = %bb.j, %bb.i
  store i8 9, ptr %0, align 8, !dbg !42418
  br label %bb.m, !dbg !42419

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.aa = phi i64 [ %3, %bb.j ], [ %i.w, %.lr.ph ], !dbg !42408 ; 2 uses
  %.sroa.024.061 = phi i32 [ %i.z, %bb.j ], [ 0, %.lr.ph ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42355), !dbg !42410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42411, !noalias !42356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42357), !dbg !42412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42358), !dbg !42413
  %.not.i.i.i27 = icmp eq i64 %i.aa, 0, !dbg !42409
  br i1 %.not.i.i.i27, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i, label %bb.k, !dbg !42409

bb.k:                                             ; preds = %.lr.ph.split
  %i.ab = load ptr, ptr %1, align 8, !dbg !42408, !alias.scope !42353, !noalias !42354, !nonnull !859, !noundef !859 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !42420, !noalias !42366, !noundef !859 ; 3 uses
  %i.ad = add i64 %i.aa, -1, !dbg !42421          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !42422
  store ptr %i.ae, ptr %1, align 8, !dbg !42423, !alias.scope !42353, !noalias !42354
  store i64 %i.ad, ptr %i.c, align 8, !dbg !42423, !alias.scope !42353, !noalias !42354
  %i.af = icmp sgt i8 %i.ac, -1, !dbg !42424
  br i1 %i.af, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i34, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28, !dbg !42424, !prof !944

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i34: ; preds = %bb.k
  %i.ag = zext nneg i8 %i.ac to i64, !dbg !42425
  br label %bb.l, !dbg !42426

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28: ; preds = %bb.k
  call void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol13read_vlq_slowBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.ac) #39, !dbg !42427, !noalias !42367
  %.pr.i29 = load i8, ptr %i.a, align 8, !dbg !42428, !noalias !42356 ; 2 uses
  %.not.i = icmp eq i8 %.pr.i29, 9, !dbg !42428
  %.pre = load i64, ptr %i.c, align 8, !dbg !42408, !alias.scope !42353, !noalias !42354 ; 2 uses
  br i1 %.not.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i30, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i, !dbg !42426

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i30: ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28
  %.pre.i32 = load i64, ptr %.phi.trans.insert.i31, align 8, !dbg !42429, !noalias !42356
  br label %bb.l, !dbg !42426

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i: ; preds = %.lr.ph.split, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28
  %2 = phi i64 [ %.pre, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28 ], [ 0, %.lr.ph.split ]
  %i.ah = phi i8 [ %.pr.i29, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i28 ], [ 0, %.lr.ph.split ]
  %.sroa.039.1.copyload = load i56, ptr %.sroa.59.0..sroa_idx.i, align 1, !dbg !42414, !noalias !42355
  %.sroa.039.1.insert.ext = zext i56 %.sroa.039.1.copyload to i64, !dbg !42414
  %.sroa.039.1.insert.shift = shl nuw i64 %.sroa.039.1.insert.ext, 8, !dbg !42414
  %.sroa.610.0.copyload.i = load i64, ptr %.phi.trans.insert.i31, align 8, !dbg !42414, !noalias !42356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42415, !noalias !42356
  %.sroa.039.0.insert.ext = zext i8 %i.ah to i64, !dbg !42430
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.039.1.insert.shift, %.sroa.039.0.insert.ext, !dbg !42430
  %i.ai = inttoptr i64 %.sroa.039.0.insert.insert to ptr, !dbg !42430
  br label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit, !dbg !42431

bb.l:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i30, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i34
  %i.aj = phi i64 [ %.pre, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i30 ], [ %i.ad, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i34 ], !dbg !42432 ; 3 uses
  %i.ak = phi i64 [ %.pre.i32, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i30 ], [ %i.ag, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i34 ], !dbg !42429 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42415, !noalias !42356
  %.not.i.i33 = icmp ugt i64 %i.ak, %i.aj
  br i1 %.not.i.i33, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i, !dbg !42433

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i: ; preds = %bb.l
  %i.al = load ptr, ptr %1, align 8, !dbg !42434, !alias.scope !42368, !noalias !42369, !nonnull !859, !noundef !859
  %i.am = sub nuw i64 %i.aj, %i.ak, !dbg !42435   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak, !dbg !42436
  store ptr %i.an, ptr %1, align 8, !dbg !42437, !alias.scope !42368, !noalias !42369
  store i64 %i.am, ptr %i.c, align 8, !dbg !42437, !alias.scope !42368, !noalias !42369
  br label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit, !dbg !42438

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit: ; preds = %bb.l, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i
  %3 = phi i64 [ %2, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i ], [ %i.am, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i ], [ %i.aj, %bb.l ]
  %.sroa.039.0 = phi ptr [ %i.ai, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i ], [ inttoptr (i64 9 to ptr), %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i ], [ null, %bb.l ], !dbg !42439 ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.610.0.copyload.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEBO_.exit.i.i ], [ undef, %bb.l ], !dbg !42440
  %i.ao = ptrtoint ptr %.sroa.039.0 to i64, !dbg !42441
  %i.ap = and i64 %i.ao, 255, !dbg !42441
  %.not26 = icmp eq i64 %i.ap, 9, !dbg !42441
  br i1 %.not26, label %bb.j, label %.split, !dbg !42442

bb.m:                                             ; preds = %bb.h, %.split, %._crit_edge
  ret void, !dbg !42419

.split:                                           ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i.us
  %.us-phi = phi ptr [ %i.y, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i.us ], [ %.sroa.039.0, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit ], !dbg !42416
  %.us-phi62 = phi i64 [ %.sroa.610.0.copyload.i.us, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread15.i.us ], [ %.sroa.9.0, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_.exit ], !dbg !42416
  store ptr %.us-phi, ptr %0, align 8, !dbg !42416
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42416
  store i64 %.us-phi62, ptr %.sroa.249.0..sroa_idx, align 8, !dbg !42416
  br label %bb.m, !dbg !42443
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol19skip_list_of_varintBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !42444 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42501), !dbg !42532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42502), !dbg !42533
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42534 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !42534, !alias.scope !42503, !noalias !42504, !noundef !859 ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0, !dbg !42535
  br i1 %.not.i.i, label %bb.h, label %bb.b, !dbg !42535

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !dbg !42534, !alias.scope !42503, !noalias !42504, !nonnull !859, !noundef !859 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !42536, !noalias !42505, !noundef !859 ; 2 uses
  %i.f = add i64 %i.c, -1, !dbg !42537            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !42538 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !dbg !42539, !alias.scope !42503, !noalias !42504
  store i64 %i.f, ptr %i.b, align 8, !dbg !42539, !alias.scope !42503, !noalias !42504
  %i.h = lshr i8 %i.e, 4, !dbg !42540             ; 3 uses
  %i.i = and i8 %i.e, 15, !dbg !42541             ; 3 uses
  %i.j = or i8 %i.i, %i.h, !dbg !42542
  %or.cond.i = icmp eq i8 %i.j, 0, !dbg !42542
  %.off = add nsw i8 %i.i, -1
  %switch = icmp ult i8 %.off, 12
  %or.cond = or i1 %or.cond.i, %switch, !dbg !42542
  br i1 %or.cond, label %bb.c, label %bb.h, !dbg !42542

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.h, 15, !dbg !42543
  br i1 %i.k, label %bb.d, label %bb.f, !dbg !42543

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42544, !noalias !42506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42507), !dbg !42545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42508), !dbg !42546
  %.not.i.i.i = icmp eq i64 %i.f, 0, !dbg !42547
  br i1 %.not.i.i.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i, label %bb.e, !dbg !42547

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.g, align 1, !dbg !42548, !noalias !42509, !noundef !859 ; 3 uses
  %i.m = add i64 %i.c, -2, !dbg !42549            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !42550 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !dbg !42551, !alias.scope !42510, !noalias !42511
  store i64 %i.m, ptr %i.b, align 8, !dbg !42551, !alias.scope !42510, !noalias !42511
  %i.o = icmp sgt i8 %i.l, -1, !dbg !42552
  br i1 %i.o, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i, !dbg !42552, !prof !944

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i: ; preds = %bb.e
  %i.p = zext nneg i8 %i.l to i64, !dbg !42553
  br label %bb.g, !dbg !42554

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i: ; preds = %bb.e
  call void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol13read_vlq_slowBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.l) #39, !dbg !42555, !noalias !42512
  %.pr.i = load i8, ptr %i.a, align 8, !dbg !42556, !noalias !42506 ; 2 uses
  %.not60.i = icmp eq i8 %.pr.i, 9, !dbg !42556
  br i1 %.not60.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i, label %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i, !dbg !42554

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i: ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !42557, !noalias !42506
  %.promoted.pre.pre = load i64, ptr %i.b, align 8
  %.promoted55.pre.pre = load ptr, ptr %1, align 8
  br label %bb.g, !dbg !42554

bb.f:                                             ; preds = %bb.c
  %i.q = zext nneg i8 %i.h to i32, !dbg !42558
  br label %bb.i, !dbg !42559

_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i: ; preds = %bb.d, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i
  %i.r = phi i8 [ %.pr.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.i ], [ 0, %bb.d ]
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !42560
  %.sroa.8.1.copyload = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !dbg !42560, !noalias !42501
  %.sroa.11.1..sroa.555.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !42560
  %.sroa.11.1.copyload = load i16, ptr %.sroa.11.1..sroa.555.0..sroa_idx.i.sroa_idx, align 2, !dbg !42560, !noalias !42501
  %.sroa.1130.1..sroa.555.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !42560
  %.sroa.1130.1.copyload = load i32, ptr %.sroa.1130.1..sroa.555.0..sroa_idx.i.sroa_idx, align 4, !dbg !42560, !noalias !42501
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !42560
  %.sroa.656.0.copyload.i = load i64, ptr %.sroa.656.0..sroa_idx.i, align 8, !dbg !42560, !noalias !42506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42561, !noalias !42506
  br label %bb.h, !dbg !42562

bb.g:                                             ; preds = %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i
  %.promoted55.pre = phi ptr [ %.promoted55.pre.pre, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i ], [ %i.n, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i ]
  %.promoted.pre = phi i64 [ %.promoted.pre.pre, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i ], [ %i.m, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i ]
  %i.s = phi i64 [ %.pre.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit._crit_edge.i ], [ %i.p, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread.i ], !dbg !42557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42561, !noalias !42506
  %i.t = trunc i64 %i.s to i32, !dbg !42544
  %i.u = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.t, i32 0), !dbg !42563
  br label %bb.i, !dbg !42559

bb.h:                                             ; preds = %bb.b, %bb.a, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i
  %.sroa.14.0.ph = phi i64 [ undef, %bb.b ], [ %.sroa.656.0.copyload.i, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.1130.0.ph = phi i32 [ undef, %bb.b ], [ %.sroa.1130.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.11.0.ph = phi i16 [ undef, %bb.b ], [ %.sroa.11.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.8.0.ph = phi i8 [ %i.i, %bb.b ], [ %.sroa.8.1.copyload, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ undef, %bb.a ]
  %.sroa.0.0.ph = phi i8 [ 3, %bb.b ], [ %i.r, %_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_.exit.thread69.i ], [ 0, %bb.a ]
  store i8 %.sroa.0.0.ph, ptr %0, align 8, !dbg !42564
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !42564
  store i8 %.sroa.8.0.ph, ptr %.sroa.220.0..sroa_idx, align 1, !dbg !42564
  %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !42564
  store i16 %.sroa.11.0.ph, ptr %.sroa.220.sroa.2.0..sroa.220.0..sroa_idx.sroa_idx, align 2, !dbg !42564
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !42564
  store i32 %.sroa.1130.0.ph, ptr %.sroa.321.0..sroa_idx, align 4, !dbg !42564
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42564
  store i64 %.sroa.14.0.ph, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !42564
  br label %bb.k, !dbg !42565

bb.i:                                             ; preds = %bb.g, %bb.f
  %.promoted55 = phi ptr [ %.promoted55.pre, %bb.g ], [ %i.g, %bb.f ]
  %.promoted = phi i64 [ %.promoted.pre, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.022.0.i = phi i32 [ %i.u, %bb.g ], [ %i.q, %bb.f ], !dbg !42566 ; 2 uses
  %.not = icmp eq i32 %.sroa.022.0.i, 0, !dbg !42567
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !42519

._crit_edge:                                      ; preds = %bb.l, %bb.i
  store i8 9, ptr %0, align 8, !dbg !42568
  br label %bb.k, !dbg !42569

.lr.ph:                                           ; preds = %bb.i, %bb.l
  %.sroa.024.058 = phi i32 [ %i.ac, %bb.l ], [ 0, %bb.i ]
  %.promoted.i5457 = phi i64 [ %i.z, %bb.l ], [ %.promoted, %bb.i ] ; 2 uses
  %i.v = phi ptr [ %i.aa, %bb.l ], [ %.promoted55, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42520), !dbg !42570
  %.not.i.i2770 = icmp eq i64 %.promoted.i5457, 0, !dbg !42571
  br i1 %.not.i.i2770, label %.lr.ph._crit_edge, label %.lr.ph71, !dbg !42571

bb.j:                                             ; preds = %.lr.ph71
  %.not.i.i27 = icmp eq i64 %i.z, 0, !dbg !42571
  br i1 %.not.i.i27, label %.lr.ph._crit_edge.loopexit, label %.lr.ph71, !dbg !42571

.lr.ph71:                                         ; preds = %.lr.ph, %bb.j
  %i.w = phi i64 [ %i.z, %bb.j ], [ %.promoted.i5457, %.lr.ph ]
  %i.x = phi ptr [ %i.aa, %bb.j ], [ %i.v, %.lr.ph ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42521), !dbg !42572
  %i.y = load i8, ptr %i.x, align 1, !dbg !42573, !noalias !42522, !noundef !859
  %i.z = add i64 %i.w, -1, !dbg !42574            ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !42575 ; 4 uses
  %i.ab = icmp sgt i8 %i.y, -1, !dbg !42576
  br i1 %i.ab, label %bb.l, label %bb.j, !dbg !42576

bb.k:                                             ; preds = %bb.h, %.lr.ph._crit_edge, %._crit_edge
  ret void, !dbg !42569

.lr.ph._crit_edge.loopexit:                       ; preds = %bb.j
  store ptr %i.aa, ptr %1, align 8, !dbg !42577, !alias.scope !42523, !noalias !42524
  store i64 %i.z, ptr %i.b, align 8, !dbg !42577, !alias.scope !42523, !noalias !42524
  br label %.lr.ph._crit_edge, !dbg !42578

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph._crit_edge.loopexit
  store i8 0, ptr %0, align 8, !dbg !42578
  br label %bb.k, !dbg !42579

bb.l:                                             ; preds = %.lr.ph71
  store ptr %i.aa, ptr %1, align 8, !dbg !42577, !alias.scope !42523, !noalias !42524
  store i64 %i.z, ptr %i.b, align 8, !dbg !42577, !alias.scope !42523, !noalias !42524
  %i.ac = add nuw nsw i32 %.sroa.024.058, 1, !dbg !42580 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %.sroa.022.0.i, !dbg !42567
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !42519
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol4skipBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i8 noundef range(i8 0, 13) %2) unnamed_addr #18 !dbg !42581 {
bb.a:
  tail call void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15skip_till_depthBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %2, i8 noundef 64), !dbg !42582
  ret void, !dbg !42583
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol7read_i8Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #20 !dbg !838 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42592), !dbg !42595
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42596 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !42596, !alias.scope !42592, !noalias !42593, !noundef !859 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !42597
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !42597

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !dbg !42596, !alias.scope !42592, !noalias !42593, !nonnull !859, !noundef !859 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !dbg !42598, !noalias !42594, !noundef !859
  %i.e = add i64 %i.b, -1, !dbg !42599
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !42600
end_hunk_0
begin_hunk_1_@llvm.smax.i32
!42121 = distinct !{!42121, !42120, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42122 = distinct !DILocation(line: 376, column: 31, scope: !837)
!42123 = distinct !{!42123, !42120, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42124 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42122)
!42125 = distinct !DISubprogram(name: "from_residual<polars_parquet::parquet::handwritten_thrift::parquet_thrift::FieldIdentifier, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift15FieldIdentifierNtBM_19ThriftProtocolErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2l_EE13from_residualBS_", scope: !1149, file: !1146, line: 2187, type: !860, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42126 = distinct !DILexicalBlock(scope: !42125, file: !1146, line: 2189, column: 13)
!42127 = distinct !DILexicalBlock(scope: !837, file: !1370, line: 376, column: 42)
!42128 = distinct !DILexicalBlock(scope: !42127, file: !1370, line: 376, column: 42)
!42129 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42122)
!42130 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42129)
!42131 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42130)
!42132 = distinct !DILexicalBlock(scope: !42125, file: !1146, line: 2189, column: 13)
!42133 = distinct !DILexicalBlock(scope: !842, file: !1370, line: 378, column: 63)
!42134 = distinct !DILexicalBlock(scope: !42133, file: !1370, line: 378, column: 63)
!42135 = distinct !DILexicalBlock(scope: !42125, file: !1146, line: 2189, column: 13)
!42136 = distinct !DILexicalBlock(scope: !845, file: !1370, line: 402, column: 46)
!42137 = distinct !DILexicalBlock(scope: !42136, file: !1370, line: 402, column: 46)
!42138 = distinct !DILexicalBlock(scope: !42125, file: !1146, line: 2189, column: 13)
!42139 = distinct !DILexicalBlock(scope: !845, file: !1370, line: 400, column: 22)
!42140 = distinct !DILexicalBlock(scope: !42139, file: !1370, line: 400, column: 22)
!42141 = !{!42121}
!42142 = !{!42123}
!42143 = !DILexicalBlockFile(scope: !42128, file: !1370, discriminator: 2)
!42144 = !DILocation(line: 376, column: 26, scope: !42143)
!42145 = !DILexicalBlockFile(scope: !837, file: !1006, discriminator: 0)
!42146 = !{!42123, !42121}
!42147 = !DILocation(line: 378, column: 26, scope: !842)
!42148 = !DILexicalBlockFile(scope: !42134, file: !1370, discriminator: 4)
!42149 = !DILocation(line: 378, column: 26, scope: !42148)
!42150 = !DILexicalBlockFile(scope: !842, file: !1006, discriminator: 0)
!42151 = !DILocation(line: 402, column: 21, scope: !845)
!42152 = !DILocation(line: 395, column: 35, scope: !845)
!42153 = !DILocation(line: 524, column: 31, scope: !848, inlinedAt: !42152)
!42154 = !DILocation(line: 525, column: 16, scope: !850, inlinedAt: !42152)
!42155 = !DILexicalBlockFile(scope: !42137, file: !1370, discriminator: 2)
!42156 = !DILocation(line: 402, column: 21, scope: !42155)
!42157 = !DILexicalBlockFile(scope: !42140, file: !1370, discriminator: 2)
!42158 = !DILocation(line: 395, column: 21, scope: !42157)
!42159 = !DILocation(line: 376, column: 31, scope: !837)
!42160 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42122)
!42161 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42124)
!42162 = !DILocation(line: 2189, column: 23, scope: !42126, inlinedAt: !42144)
!42163 = !DILocation(line: 0, scope: !42145)
!42164 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42122)
!42165 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42130)
!42166 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42131)
!42167 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42122)
!42168 = !DILocation(line: 377, column: 27, scope: !841)
!42169 = !DILocation(line: 378, column: 46, scope: !842)
!42170 = !DILocation(line: 174, column: 9, scope: !843, inlinedAt: !42147)
!42171 = !DILocation(line: 2189, column: 23, scope: !42132, inlinedAt: !42149)
!42172 = !DILocation(line: 0, scope: !42150)
!42173 = !DILocation(line: 0, scope: !845)
!42174 = !DILocation(line: 412, column: 6, scope: !837)
!42175 = !DILocation(line: 389, column: 17, scope: !845)
!42176 = !DILocation(line: 391, column: 24, scope: !845)
!42177 = !DILocation(line: 0, scope: !844)
!42178 = !DILocation(line: 394, column: 35, scope: !845)
!42179 = !DILocation(line: 402, column: 26, scope: !845)
!42180 = !DILocation(line: 2173, column: 15, scope: !846, inlinedAt: !42151)
!42181 = !DILocation(line: 2173, column: 9, scope: !846, inlinedAt: !42151)
!42182 = !DILocation(line: 395, column: 47, scope: !845)
!42183 = !DILocation(line: 2499, column: 26, scope: !847, inlinedAt: !42153)
!42184 = !DILocation(line: 457, column: 8, scope: !849, inlinedAt: !42154)
!42185 = !DILocation(line: 2175, column: 17, scope: !846, inlinedAt: !42151)
!42186 = !DILocation(line: 2189, column: 23, scope: !42135, inlinedAt: !42156)
!42187 = !DILocation(line: 402, column: 46, scope: !845)
!42188 = !DILocation(line: 0, scope: !1389)
!42189 = !DILocation(line: 2174, column: 16, scope: !846, inlinedAt: !42151)
!42190 = !DILocation(line: 394, column: 32, scope: !845)
!42191 = !DILocation(line: 2189, column: 23, scope: !42138, inlinedAt: !42158)
!42192 = distinct !DISubprogram(name: "read_full_field_id<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol18read_full_field_idBa_", scope: !1374, file: !1370, line: 367, type: !860, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42193 = distinct !{!42193, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_"}
!42194 = distinct !{!42194, !42193, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_: argument 0"}
!42195 = distinct !{!42195, !42193, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_: argument 1"}
!42196 = distinct !{!42196, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_"}
!42197 = distinct !{!42197, !42196, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_: argument 1"}
!42198 = distinct !DISubprogram(name: "read_i16<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i16Ba_", scope: !1374, file: !1370, line: 456, type: !860, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42199 = distinct !DILocation(line: 368, column: 14, scope: !42192)
!42200 = distinct !{!42200, !42196, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_: argument 0"}
!42201 = distinct !DILocation(line: 457, column: 17, scope: !42198, inlinedAt: !42199)
!42202 = distinct !{!42202, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_"}
!42203 = distinct !{!42203, !42202, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 1"}
!42204 = distinct !{!42204, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42205 = distinct !{!42205, !42204, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42206 = distinct !DILocation(line: 332, column: 24, scope: !823, inlinedAt: !42201)
!42207 = distinct !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42206)
!42208 = distinct !{!42208, !42202, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 0"}
!42209 = distinct !{!42209, !42204, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42210 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42207)
!42211 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42207)
!42212 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42211)
!42213 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42212)
!42214 = distinct !DILocation(line: 332, column: 19, scope: !823, inlinedAt: !42201)
!42215 = distinct !DISubprogram(name: "from_residual<i16, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultsNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBT_", scope: !1149, file: !1146, line: 2187, type: !860, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42216 = distinct !DILexicalBlock(scope: !42215, file: !1146, line: 2189, column: 13)
!42217 = distinct !DILexicalBlock(scope: !42198, file: !1370, line: 457, column: 31)
!42218 = distinct !DILexicalBlock(scope: !42217, file: !1370, line: 457, column: 31)
!42219 = distinct !DILocation(line: 457, column: 12, scope: !42230, inlinedAt: !42199)
!42220 = !{!42194}
!42221 = !{!42195}
!42222 = !{!42197}
!42223 = !{!42200, !42197, !42194, !42195}
!42224 = !{!42203}
!42225 = !{!42205}
!42226 = !{!42205, !42203, !42197, !42195}
!42227 = !{!42209, !42208, !42200, !42194}
!42228 = !{!42209, !42205, !42208, !42203, !42200, !42197, !42194, !42195}
!42229 = !{!42200, !42194}
!42230 = !DILexicalBlockFile(scope: !42218, file: !1370, discriminator: 2)
!42231 = !DILocation(line: 368, column: 14, scope: !42192)
!42232 = !DILocation(line: 457, column: 17, scope: !42198, inlinedAt: !42199)
!42233 = !DILocation(line: 332, column: 19, scope: !823, inlinedAt: !42201)
!42234 = !DILocation(line: 332, column: 24, scope: !823, inlinedAt: !42201)
!42235 = !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42206)
!42236 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42207)
!42237 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42210)
!42238 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42207)
!42239 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42212)
!42240 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42213)
!42241 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42207)
!42242 = !DILocation(line: 307, column: 12, scope: !785, inlinedAt: !42206)
!42243 = !DILocation(line: 308, column: 23, scope: !785, inlinedAt: !42206)
!42244 = !DILocation(line: 2173, column: 9, scope: !824, inlinedAt: !42214)
!42245 = !DILocation(line: 310, column: 14, scope: !785, inlinedAt: !42206)
!42246 = !DILocation(line: 2173, column: 15, scope: !824, inlinedAt: !42214)
!42247 = !DILocation(line: 2174, column: 16, scope: !824, inlinedAt: !42214)
!42248 = !DILocation(line: 2175, column: 17, scope: !824, inlinedAt: !42214)
!42249 = !DILocation(line: 2189, column: 23, scope: !42216, inlinedAt: !42219)
!42250 = !DILocation(line: 332, column: 34, scope: !823, inlinedAt: !42201)
!42251 = !DILocation(line: 458, column: 6, scope: !42198, inlinedAt: !42199)
!42252 = !DILocation(line: 333, column: 12, scope: !829, inlinedAt: !42201)
!42253 = !DILocation(line: 333, column: 34, scope: !829, inlinedAt: !42201)
!42254 = !DILocation(line: 333, column: 32, scope: !829, inlinedAt: !42201)
!42255 = !DILocation(line: 457, column: 12, scope: !42198, inlinedAt: !42199)
!42256 = !DILocation(line: 457, column: 9, scope: !42198, inlinedAt: !42199)
!42257 = !DILocation(line: 369, column: 6, scope: !42192)
!42258 = distinct !DISubprogram(name: "skip_list_of_binary<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol19skip_list_of_binaryBa_", scope: !1374, file: !1370, line: 507, type: !860, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42259 = distinct !{!42259, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_"}
!42260 = distinct !{!42260, !42259, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_: argument 1"}
!42261 = distinct !{!42261, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42262 = distinct !{!42262, !42261, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42263 = distinct !DILocation(line: 508, column: 25, scope: !42258)
!42264 = distinct !DILocation(line: 338, column: 27, scope: !830, inlinedAt: !42263)
!42265 = distinct !{!42265, !42259, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_: argument 0"}
!42266 = distinct !{!42266, !42261, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42267 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42264)
!42268 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42264)
!42269 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42268)
!42270 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42269)
!42271 = distinct !{!42271, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_"}
!42272 = distinct !{!42272, !42271, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 1"}
!42273 = distinct !{!42273, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42274 = distinct !{!42274, !42273, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42275 = distinct !DILocation(line: 354, column: 18, scope: !835, inlinedAt: !42263)
!42276 = distinct !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42275)
!42277 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42276)
!42278 = distinct !{!42278, !42271, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 0"}
!42279 = distinct !{!42279, !42273, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42280 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42276)
!42281 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42280)
!42282 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42281)
!42283 = distinct !DILocation(line: 354, column: 13, scope: !835, inlinedAt: !42263)
!42284 = distinct !DILexicalBlock(scope: !42258, file: !1370, line: 508, column: 9)
!42285 = distinct !DILocation(line: 509, column: 31, scope: !42284)
!42286 = distinct !DISubprogram(name: "from_residual<(), polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBT_", scope: !1149, file: !1146, line: 2187, type: !860, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42287 = distinct !DILexicalBlock(scope: !42286, file: !1146, line: 2189, column: 13)
!42288 = distinct !DILexicalBlock(scope: !42258, file: !1370, line: 508, column: 42)
!42289 = distinct !DILexicalBlock(scope: !42288, file: !1370, line: 508, column: 42)
!42290 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1c_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB8_10PartialOrd2lt", scope: !1384, file: !990, line: 1917, type: !860, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42291 = distinct !DILexicalBlock(scope: !42284, file: !1370, line: 509, column: 9)
!42292 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !1058, file: !988, line: 865, type: !860, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42293 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsfISxE4fmY1Y_14polars_parquet", scope: !1059, file: !988, line: 780, type: !860, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42294 = distinct !{!42294, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_"}
!42295 = distinct !{!42295, !42294, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_: argument 1"}
!42296 = distinct !{!42296, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_"}
!42297 = distinct !{!42297, !42296, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 1"}
!42298 = distinct !{!42298, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42299 = distinct !{!42299, !42298, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42300 = distinct !{!42300, !42294, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol11skip_binaryBa_: argument 0"}
!42301 = distinct !{!42301, !42296, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 0"}
!42302 = distinct !{!42302, !42298, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42303 = distinct !DILocation(line: 510, column: 18, scope: !42291)
!42304 = distinct !DILocation(line: 487, column: 24, scope: !802, inlinedAt: !42303)
!42305 = distinct !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42304)
!42306 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42305)
!42307 = distinct !DILocation(line: 487, column: 19, scope: !802, inlinedAt: !42303)
!42308 = distinct !DILexicalBlock(scope: !42286, file: !1146, line: 2189, column: 13)
!42309 = distinct !DILexicalBlock(scope: !42291, file: !1370, line: 510, column: 31)
!42310 = distinct !DILexicalBlock(scope: !42309, file: !1370, line: 510, column: 31)
!42311 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_add", scope: !1385, file: !993, line: 2498, type: !860, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42312 = distinct !DILexicalBlock(scope: !42293, file: !988, line: 782, column: 13)
!42313 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsC_NtNtCscgRAwXFJnXP_4core4iter5rangelNtB5_4Step17forward_unchecked", scope: !1386, file: !988, line: 196, type: !860, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42314 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl20checked_add_unsigned", scope: !1385, file: !993, line: 613, type: !860, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42315 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl24overflowing_add_unsigned", scope: !1385, file: !993, line: 2581, type: !860, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42316 = distinct !DILexicalBlock(scope: !42315, file: !993, line: 2582, column: 13)
!42317 = distinct !{!42317, !42365}
!42318 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42305)
!42319 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42318)
!42320 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42319)
!42321 = distinct !DILocation(line: 487, column: 19, scope: !1379, inlinedAt: !42303)
!42322 = distinct !DILocation(line: 488, column: 14, scope: !805, inlinedAt: !42303)
!42323 = distinct !DILocation(line: 622, column: 18, scope: !804, inlinedAt: !42322)
!42324 = distinct !DILocation(line: 576, column: 15, scope: !813, inlinedAt: !42323)
!42325 = distinct !DILocation(line: 507, column: 23, scope: !812, inlinedAt: !42324)
!42326 = distinct !DILocation(line: 368, column: 32, scope: !811, inlinedAt: !42325)
!42327 = distinct !{!42327, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol10skip_bytes"}
!42328 = distinct !{!42328, !42327, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol10skip_bytes: argument 1"}
!42329 = distinct !{!42329, !42327, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol10skip_bytes: argument 0"}
!42330 = distinct !DILocation(line: 623, column: 29, scope: !804, inlinedAt: !42322)
!42331 = distinct !DILocation(line: 19, column: 15, scope: !819, inlinedAt: !42330)
!42332 = distinct !DILocation(line: 574, column: 15, scope: !822, inlinedAt: !42331)
!42333 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorENtNtNtB7_3ops9try_trait3Try6branchBT_", scope: !1148, file: !1146, line: 2172, type: !860, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42334 = !{!42260}
!42335 = !{!42262}
!42336 = !{!42262, !42260}
!42337 = !{!42266, !42265}
!42338 = !{!42266, !42262, !42265, !42260}
!42339 = !{!42265, !42260}
!42340 = !{!42272}
!42341 = !{!42274}
!42342 = !{!42279, !42274, !42278, !42272, !42265, !42260}
!42343 = !{!42274, !42272, !42260}
!42344 = !{!42279, !42278, !42265}
!42345 = !{!42265}
!42346 = !DILexicalBlockFile(scope: !42289, file: !1370, discriminator: 2)
!42347 = !DILocation(line: 508, column: 20, scope: !42346)
!42348 = !DILexicalBlockFile(scope: !42258, file: !1006, discriminator: 0)
!42349 = !DILexicalBlockFile(scope: !42291, file: !1370, discriminator: 2)
!42350 = !DILocation(line: 509, column: 18, scope: !42349)
!42351 = !DILocation(line: 866, column: 14, scope: !42292, inlinedAt: !42350)
!42352 = !DILocation(line: 781, column: 12, scope: !42293, inlinedAt: !42351)
!42353 = !{!42299, !42297, !42295}
!42354 = !{!42302, !42301, !42300}
!42355 = !{!42295}
!42356 = !{!42300, !42295}
!42357 = !{!42297}
!42358 = !{!42299}
!42359 = !DILexicalBlockFile(scope: !42310, file: !1370, discriminator: 2)
!42360 = !DILocation(line: 510, column: 13, scope: !42359)
!42361 = !DILocation(line: 784, column: 35, scope: !42312, inlinedAt: !42351)
!42362 = !DILocation(line: 198, column: 28, scope: !42313, inlinedAt: !42361)
!42363 = !DILocation(line: 614, column: 31, scope: !42314, inlinedAt: !42362)
!42364 = !DILocation(line: 2583, column: 42, scope: !42316, inlinedAt: !42363)
!42365 = !{!"llvm.loop.unswitch.partial.disable"}
!42366 = !{!42302, !42299, !42301, !42297, !42300, !42295}
!42367 = !{!42300}
!42368 = !{!42328, !42295}
!42369 = !{!42329, !42300}
!42370 = !DILocation(line: 510, column: 13, scope: !42291)
!42371 = !DILexicalBlockFile(scope: !42284, file: !1006, discriminator: 0)
!42372 = !DILocation(line: 508, column: 25, scope: !42258)
!42373 = !DILocation(line: 338, column: 27, scope: !830, inlinedAt: !42263)
!42374 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42264)
!42375 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42267)
!42376 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42264)
!42377 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42269)
!42378 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42270)
!42379 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42264)
!42380 = !DILocation(line: 339, column: 38, scope: !831, inlinedAt: !42263)
!42381 = !DILocation(line: 345, column: 34, scope: !832, inlinedAt: !42263)
!42382 = !DILocation(line: 345, column: 28, scope: !832, inlinedAt: !42263)
!42383 = !DILocation(line: 350, column: 32, scope: !835, inlinedAt: !42263)
!42384 = !DILocation(line: 354, column: 13, scope: !835, inlinedAt: !42263)
!42385 = !DILocation(line: 354, column: 18, scope: !835, inlinedAt: !42263)
!42386 = !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42275)
!42387 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42277)
!42388 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42276)
!42389 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42281)
!42390 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42282)
!42391 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42276)
!42392 = !DILocation(line: 307, column: 12, scope: !785, inlinedAt: !42275)
!42393 = !DILocation(line: 308, column: 23, scope: !785, inlinedAt: !42275)
!42394 = !DILocation(line: 2173, column: 9, scope: !836, inlinedAt: !42283)
!42395 = !DILocation(line: 310, column: 14, scope: !785, inlinedAt: !42275)
!42396 = !DILocation(line: 2173, column: 15, scope: !836, inlinedAt: !42283)
!42397 = !DILocation(line: 2174, column: 16, scope: !836, inlinedAt: !42283)
!42398 = !DILocation(line: 352, column: 13, scope: !835, inlinedAt: !42263)
!42399 = !DILocation(line: 350, column: 29, scope: !835, inlinedAt: !42263)
!42400 = !DILocation(line: 2175, column: 17, scope: !836, inlinedAt: !42283)
!42401 = !DILocation(line: 354, column: 28, scope: !835, inlinedAt: !42263)
!42402 = !DILocation(line: 0, scope: !1383, inlinedAt: !42263)
!42403 = !DILocation(line: 1038, column: 12, scope: !851, inlinedAt: !42285)
!42404 = !DILocation(line: 2189, column: 23, scope: !42287, inlinedAt: !42347)
!42405 = !DILocation(line: 0, scope: !42348)
!42406 = !DILocation(line: 0, scope: !835, inlinedAt: !42263)
!42407 = !DILocation(line: 1917, column: 50, scope: !42290, inlinedAt: !42352)
!42408 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42305)
!42409 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42306)
!42410 = !DILocation(line: 510, column: 18, scope: !42291)
!42411 = !DILocation(line: 487, column: 19, scope: !802, inlinedAt: !42303)
!42412 = !DILocation(line: 487, column: 24, scope: !802, inlinedAt: !42303)
!42413 = !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42304)
!42414 = !DILocation(line: 2175, column: 17, scope: !803, inlinedAt: !42307)
!42415 = !DILocation(line: 487, column: 34, scope: !802, inlinedAt: !42303)
!42416 = !DILocation(line: 2189, column: 23, scope: !42308, inlinedAt: !42360)
!42417 = !DILocation(line: 2499, column: 26, scope: !42311, inlinedAt: !42364)
!42418 = !DILocation(line: 512, column: 9, scope: !42284)
!42419 = !DILocation(line: 513, column: 6, scope: !42258)
!42420 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42305)
!42421 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42319)
!42422 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42320)
!42423 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42305)
!42424 = !DILocation(line: 307, column: 12, scope: !785, inlinedAt: !42304)
!42425 = !DILocation(line: 308, column: 23, scope: !785, inlinedAt: !42304)
!42426 = !DILocation(line: 2173, column: 9, scope: !803, inlinedAt: !42307)
!42427 = !DILocation(line: 310, column: 14, scope: !785, inlinedAt: !42304)
!42428 = !DILocation(line: 2173, column: 15, scope: !803, inlinedAt: !42307)
!42429 = !DILocation(line: 2174, column: 16, scope: !803, inlinedAt: !42307)
!42430 = !DILocation(line: 2189, column: 23, scope: !807, inlinedAt: !42321)
!42431 = !DILocation(line: 489, column: 6, scope: !802, inlinedAt: !42303)
!42432 = !DILocation(line: 622, column: 9, scope: !804, inlinedAt: !42322)
!42433 = !DILocation(line: 977, column: 16, scope: !810, inlinedAt: !42326)
!42434 = !DILocation(line: 623, column: 21, scope: !804, inlinedAt: !42322)
!42435 = !DILocation(line: 573, column: 27, scope: !818, inlinedAt: !42331)
!42436 = !DILocation(line: 89, column: 24, scope: !821, inlinedAt: !42332)
!42437 = !DILocation(line: 623, column: 9, scope: !804, inlinedAt: !42322)
!42438 = !DILocation(line: 625, column: 6, scope: !804, inlinedAt: !42322)
!42439 = !DILocation(line: 0, scope: !802, inlinedAt: !42303)
!42440 = !DILocation(line: 510, scope: !42291)
!42441 = !DILocation(line: 2173, column: 15, scope: !42333, inlinedAt: !42370)
!42442 = !DILocation(line: 2173, column: 9, scope: !42333, inlinedAt: !42370)
!42443 = !DILocation(line: 0, scope: !42371)
!42444 = distinct !DISubprogram(name: "skip_list_of_varint<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol19skip_list_of_varintBa_", scope: !1374, file: !1370, line: 496, type: !860, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42445 = distinct !{!42445, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_"}
!42446 = distinct !{!42446, !42445, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_: argument 1"}
!42447 = distinct !{!42447, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42448 = distinct !{!42448, !42447, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42449 = distinct !DILocation(line: 497, column: 25, scope: !42444)
!42450 = distinct !DILocation(line: 338, column: 27, scope: !830, inlinedAt: !42449)
!42451 = distinct !{!42451, !42445, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15read_list_beginBa_: argument 0"}
!42452 = distinct !{!42452, !42447, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42453 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42450)
!42454 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42450)
!42455 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42454)
!42456 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42455)
!42457 = distinct !{!42457, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_"}
!42458 = distinct !{!42458, !42457, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 1"}
!42459 = distinct !{!42459, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42460 = distinct !{!42460, !42459, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42461 = distinct !DILocation(line: 354, column: 18, scope: !835, inlinedAt: !42449)
!42462 = distinct !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42461)
!42463 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42462)
!42464 = distinct !{!42464, !42457, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 0"}
!42465 = distinct !{!42465, !42459, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42466 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42462)
!42467 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42466)
!42468 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42467)
!42469 = distinct !DILocation(line: 354, column: 13, scope: !835, inlinedAt: !42449)
!42470 = distinct !DILexicalBlock(scope: !42444, file: !1370, line: 497, column: 9)
!42471 = distinct !DILocation(line: 498, column: 31, scope: !42470)
!42472 = distinct !DISubprogram(name: "from_residual<(), polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBT_", scope: !1149, file: !1146, line: 2187, type: !860, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42473 = distinct !DILexicalBlock(scope: !42472, file: !1146, line: 2189, column: 13)
!42474 = distinct !DILexicalBlock(scope: !42444, file: !1370, line: 497, column: 42)
!42475 = distinct !DILexicalBlock(scope: !42474, file: !1370, line: 497, column: 42)
!42476 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1c_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB8_10PartialOrd2lt", scope: !1384, file: !990, line: 1917, type: !860, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42477 = distinct !DILexicalBlock(scope: !42470, file: !1370, line: 498, column: 9)
!42478 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !1058, file: !988, line: 865, type: !860, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42479 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCsfISxE4fmY1Y_14polars_parquet", scope: !1059, file: !988, line: 780, type: !860, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42480 = distinct !{!42480, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8skip_vlqBa_"}
!42481 = distinct !{!42481, !42480, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8skip_vlqBa_: argument 1"}
!42482 = distinct !DILocation(line: 499, column: 18, scope: !42477)
!42483 = distinct !DILocation(line: 476, column: 29, scope: !839, inlinedAt: !42482)
!42484 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42483)
!42485 = distinct !{!42485, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42486 = distinct !{!42486, !42485, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42487 = distinct !{!42487, !42480, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8skip_vlqBa_: argument 0"}
!42488 = distinct !{!42488, !42485, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42489 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42483)
!42490 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42489)
!42491 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42490)
!42492 = distinct !DILexicalBlock(scope: !42472, file: !1146, line: 2189, column: 13)
!42493 = distinct !DILexicalBlock(scope: !42477, file: !1370, line: 499, column: 28)
!42494 = distinct !DILexicalBlock(scope: !42493, file: !1370, line: 499, column: 28)
!42495 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_add", scope: !1385, file: !993, line: 2498, type: !860, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42496 = distinct !DILexicalBlock(scope: !42479, file: !988, line: 782, column: 13)
!42497 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsC_NtNtCscgRAwXFJnXP_4core4iter5rangelNtB5_4Step17forward_unchecked", scope: !1386, file: !988, line: 196, type: !860, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42498 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl20checked_add_unsigned", scope: !1385, file: !993, line: 613, type: !860, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42499 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl24overflowing_add_unsigned", scope: !1385, file: !993, line: 2581, type: !860, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42500 = distinct !DILexicalBlock(scope: !42499, file: !993, line: 2582, column: 13)
!42501 = !{!42446}
!42502 = !{!42448}
!42503 = !{!42448, !42446}
!42504 = !{!42452, !42451}
!42505 = !{!42452, !42448, !42451, !42446}
!42506 = !{!42451, !42446}
!42507 = !{!42458}
!42508 = !{!42460}
!42509 = !{!42465, !42460, !42464, !42458, !42451, !42446}
!42510 = !{!42460, !42458, !42446}
!42511 = !{!42465, !42464, !42451}
!42512 = !{!42451}
!42513 = !DILexicalBlockFile(scope: !42475, file: !1370, discriminator: 2)
!42514 = !DILocation(line: 497, column: 20, scope: !42513)
!42515 = !DILexicalBlockFile(scope: !42444, file: !1006, discriminator: 0)
!42516 = !DILexicalBlockFile(scope: !42477, file: !1370, discriminator: 2)
!42517 = !DILocation(line: 498, column: 18, scope: !42516)
!42518 = !DILocation(line: 866, column: 14, scope: !42478, inlinedAt: !42517)
!42519 = !DILocation(line: 781, column: 12, scope: !42479, inlinedAt: !42518)
!42520 = !{!42481}
!42521 = !{!42486}
!42522 = !{!42488, !42486, !42487, !42481}
!42523 = !{!42486, !42481}
!42524 = !{!42488, !42487}
!42525 = !DILexicalBlockFile(scope: !42494, file: !1370, discriminator: 2)
!42526 = !DILocation(line: 499, column: 13, scope: !42525)
!42527 = !DILexicalBlockFile(scope: !42470, file: !1006, discriminator: 0)
!42528 = !DILocation(line: 784, column: 35, scope: !42496, inlinedAt: !42518)
!42529 = !DILocation(line: 198, column: 28, scope: !42497, inlinedAt: !42528)
!42530 = !DILocation(line: 614, column: 31, scope: !42498, inlinedAt: !42529)
!42531 = !DILocation(line: 2583, column: 42, scope: !42500, inlinedAt: !42530)
!42532 = !DILocation(line: 497, column: 25, scope: !42444)
!42533 = !DILocation(line: 338, column: 27, scope: !830, inlinedAt: !42449)
!42534 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42450)
!42535 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42453)
!42536 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42450)
!42537 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42455)
!42538 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42456)
!42539 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42450)
!42540 = !DILocation(line: 339, column: 38, scope: !831, inlinedAt: !42449)
!42541 = !DILocation(line: 345, column: 34, scope: !832, inlinedAt: !42449)
!42542 = !DILocation(line: 345, column: 28, scope: !832, inlinedAt: !42449)
!42543 = !DILocation(line: 350, column: 32, scope: !835, inlinedAt: !42449)
!42544 = !DILocation(line: 354, column: 13, scope: !835, inlinedAt: !42449)
!42545 = !DILocation(line: 354, column: 18, scope: !835, inlinedAt: !42449)
!42546 = !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42461)
!42547 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42463)
!42548 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42462)
!42549 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42467)
!42550 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42468)
!42551 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42462)
!42552 = !DILocation(line: 307, column: 12, scope: !785, inlinedAt: !42461)
!42553 = !DILocation(line: 308, column: 23, scope: !785, inlinedAt: !42461)
!42554 = !DILocation(line: 2173, column: 9, scope: !836, inlinedAt: !42469)
!42555 = !DILocation(line: 310, column: 14, scope: !785, inlinedAt: !42461)
!42556 = !DILocation(line: 2173, column: 15, scope: !836, inlinedAt: !42469)
!42557 = !DILocation(line: 2174, column: 16, scope: !836, inlinedAt: !42469)
!42558 = !DILocation(line: 352, column: 13, scope: !835, inlinedAt: !42449)
!42559 = !DILocation(line: 350, column: 29, scope: !835, inlinedAt: !42449)
!42560 = !DILocation(line: 2175, column: 17, scope: !836, inlinedAt: !42469)
!42561 = !DILocation(line: 354, column: 28, scope: !835, inlinedAt: !42449)
!42562 = !DILocation(line: 0, scope: !1383, inlinedAt: !42449)
!42563 = !DILocation(line: 1038, column: 12, scope: !851, inlinedAt: !42471)
!42564 = !DILocation(line: 2189, column: 23, scope: !42473, inlinedAt: !42514)
!42565 = !DILocation(line: 0, scope: !42515)
!42566 = !DILocation(line: 0, scope: !835, inlinedAt: !42449)
!42567 = !DILocation(line: 1917, column: 50, scope: !42476, inlinedAt: !42519)
!42568 = !DILocation(line: 501, column: 9, scope: !42470)
!42569 = !DILocation(line: 502, column: 6, scope: !42444)
!42570 = !DILocation(line: 499, column: 18, scope: !42477)
!42571 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42484)
!42572 = !DILocation(line: 476, column: 29, scope: !839, inlinedAt: !42482)
!42573 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42483)
!42574 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42490)
!42575 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42491)
!42576 = !DILocation(line: 477, column: 16, scope: !840, inlinedAt: !42482)
!42577 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42483)
!42578 = !DILocation(line: 2189, column: 23, scope: !42492, inlinedAt: !42526)
!42579 = !DILocation(line: 0, scope: !42527)
!42580 = !DILocation(line: 2499, column: 26, scope: !42495, inlinedAt: !42531)
!42581 = distinct !DISubprogram(name: "skip<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol4skipBa_", scope: !1374, file: !1370, line: 517, type: !860, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42582 = !DILocation(line: 519, column: 14, scope: !42581)
!42583 = !DILocation(line: 520, column: 6, scope: !42581)
!42584 = distinct !{!42584, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42585 = distinct !{!42585, !42584, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42586 = distinct !DILocation(line: 452, column: 17, scope: !838)
!42587 = distinct !{!42587, !42584, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42588 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42586)
!42589 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42586)
!42590 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42589)
!42591 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42590)
!42592 = !{!42585}
!42593 = !{!42587}
!42594 = !{!42587, !42585}
!42595 = !DILocation(line: 452, column: 17, scope: !838)
!42596 = !DILocation(line: 604, column: 20, scope: !776, inlinedAt: !42586)
!42597 = !DILocation(line: 156, column: 16, scope: !778, inlinedAt: !42588)
!42598 = !DILocation(line: 604, column: 19, scope: !776, inlinedAt: !42586)
!42599 = !DILocation(line: 573, column: 27, scope: !779, inlinedAt: !42590)
!42600 = !DILocation(line: 89, column: 24, scope: !783, inlinedAt: !42591)
!42601 = !DILocation(line: 605, column: 9, scope: !781, inlinedAt: !42586)
!42602 = !DILocation(line: 452, column: 9, scope: !838)
!42603 = !DILocation(line: 453, column: 6, scope: !838)
!42604 = !DILocation(line: 452, scope: !838)
!42605 = distinct !DISubprogram(name: "read_i32<polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftSliceInputProtocol>", linkageName: "_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_i32Ba_", scope: !1374, file: !1370, line: 461, type: !860, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42606 = distinct !{!42606, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_"}
!42607 = distinct !{!42607, !42606, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_: argument 1"}
!42608 = distinct !{!42608, !42606, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol12read_zig_zagBa_: argument 0"}
!42609 = distinct !DILocation(line: 462, column: 17, scope: !42605)
!42610 = distinct !{!42610, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_"}
!42611 = distinct !{!42611, !42610, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 1"}
!42612 = distinct !{!42612, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte"}
!42613 = distinct !{!42613, !42612, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 1"}
!42614 = distinct !DILocation(line: 332, column: 24, scope: !823, inlinedAt: !42609)
!42615 = distinct !DILocation(line: 306, column: 25, scope: !775, inlinedAt: !42614)
!42616 = distinct !{!42616, !42610, !"_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol8read_vlqBa_: argument 0"}
!42617 = distinct !{!42617, !42612, !"_RNvXsa_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtB5_24ThriftSliceInputProtocolNtB5_26ThriftCompactInputProtocol9read_byte: argument 0"}
!42618 = distinct !DILocation(line: 604, column: 29, scope: !776, inlinedAt: !42615)
!42619 = distinct !DILocation(line: 605, column: 29, scope: !781, inlinedAt: !42615)
!42620 = distinct !DILocation(line: 19, column: 15, scope: !780, inlinedAt: !42619)
!42621 = distinct !DILocation(line: 574, column: 15, scope: !784, inlinedAt: !42620)
!42622 = distinct !DILocation(line: 332, column: 19, scope: !823, inlinedAt: !42609)
!42623 = distinct !DISubprogram(name: "from_residual<i32, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError, polars_parquet::parquet::handwritten_thrift::parquet_thrift::ThriftProtocolError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultlNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift19ThriftProtocolErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBT_", scope: !1149, file: !1146, line: 2187, type: !860, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!42624 = distinct !DILexicalBlock(scope: !42623, file: !1146, line: 2189, column: 13)
!42625 = distinct !DILexicalBlock(scope: !42605, file: !1370, line: 462, column: 31)
!42626 = distinct !DILexicalBlock(scope: !42625, file: !1370, line: 462, column: 31)
!42627 = !{!42607}
!42628 = !{!42608, !42607}
!42629 = !{!42611}
!42630 = !{!42613}
!42631 = !{!42613, !42611, !42607}
!42632 = !{!42617, !42616, !42608}
!42633 = !{!42617, !42613, !42616, !42611, !42608, !42607}
!42634 = !{!42608}
!42635 = !DILexicalBlockFile(scope: !42626, file: !1370, discriminator: 2)
!42636 = !DILocation(line: 462, column: 12, scope: !42635)
!42637 = !DILocation(line: 462, column: 17, scope: !42605)
!42638 = !DILocation(line: 332, column: 19, scope: !823, inlinedAt: !42609)
end_hunk_1
