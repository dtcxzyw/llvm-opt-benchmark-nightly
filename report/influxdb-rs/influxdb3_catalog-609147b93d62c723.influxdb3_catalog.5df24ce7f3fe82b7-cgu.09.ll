Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.09?download=true
inline.NumInlined: 2842
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB6_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer25serialize_newtype_varianttECs844E4pPEVZX_17influxdb3_catalog
define hidden noundef nonnull align 8 ptr @_RINvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB6_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer25serialize_newtype_varianttECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef %5, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3552, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !3555, !noundef !5
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3558, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3561, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %1, align 2, !range !3567, !alias.scope !3568, !noalias !3569, !noundef !5 ; 2 uses
  %i.b = zext nneg i16 %i.a to i64
  %i.c = mul nsw i64 %i.b, -1065810590584100411   ; 3 uses
  switch i16 %i.a, label %default.unreachable [
    i16 1, label %.sink.split.i.i
    i16 2, label %bb.b
    i16 0, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtB8_4Hash4hashNtCsk6FPlRoJNeq_10rustc_hash8FxHasherECs844E4pPEVZX_17influxdb3_catalog.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !alias.scope !3568, !noalias !3569, !noundef !5
  %i.f = zext i16 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink6.i.i = phi i64 [ 4, %bb.b ], [ 2, %bb.a ]
  %.sink.i.i = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink6.i.i
  %i.j = load i16, ptr %i.i, align 2, !alias.scope !3568, !noalias !3569, !noundef !5
  %i.k = zext i16 %i.j to i64
  %i.l = add i64 %.sink.i.i, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtB8_4Hash4hashNtCsk6FPlRoJNeq_10rustc_hash8FxHasherECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtB8_4Hash4hashNtCsk6FPlRoJNeq_10rustc_hash8FxHasherECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a, %.sink.split.i.i
  %.sroa.03.0 = phi i64 [ %i.m, %.sink.split.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.03.0, i64 %.sroa.03.0, i64 26)
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !3572, !noundef !5
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id5TagIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3575, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !3578, !noundef !5
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !3581, !noundef !5
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id6UserIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !3584, !noundef !5
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3587, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !3590, !noundef !5
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !3593, !noundef !5
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i16, ptr %1, align 2, !noalias !3596, !noundef !5
  %i.a = zext i16 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !3599, !noundef !5
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRhECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i8, ptr %1, align 1, !noalias !3602, !noundef !5
  %i.a = zext i8 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncoderhEINtNtB8_5coder7EncoderhE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !3624, !noalias !3625 ; 6 uses
  %i.e = sub i64 %i.b, %i.c                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  %3 = ptrtoaddr ptr %.promoted to i64
  %.promoted8 = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %.promoted8, %3
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %.promoted, i64 %n.vec ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %index ; 2 uses
  %next.gep10 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %i.j = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep10, align 1, !alias.scope !3625, !noalias !3624
  %wide.load11 = load <16 x i8>, ptr %i.j, align 1, !alias.scope !3625, !noalias !3624
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !noalias !3626
  store <16 x i8> %wide.load11, ptr %i.k, align 1, !noalias !3626
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !3606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3627

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.e, -8                     ; 4 uses
  %i.m = getelementptr i8, ptr %.promoted, i64 %n.vec13 ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec13
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %next.gep15 = getelementptr i8, ptr %.promoted, i64 %index14
  %next.gep16 = getelementptr i8, ptr %1, i64 %index14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %wide.load17 = load <8 x i8>, ptr %next.gep16, align 1, !alias.scope !3625, !noalias !3624
  store <8 x i8> %wide.load17, ptr %next.gep15, align 1, !noalias !3626
  %index.next18 = add nuw i64 %index14, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3607

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.e, %n.vec13
  br i1 %cmp.n19, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0.06.ph = phi ptr [ %1, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.06.ph23 = ptrtoaddr ptr %.sroa.0.06.ph to i64 ; 2 uses
  %i.p = sub i64 %i.b, %.sroa.0.06.ph23
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.q = phi ptr [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06.prol = phi ptr [ %i.r, %vec.epilog.scalar.ph.prol ], [ %.sroa.0.06.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.06.prol, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %i.s = load i8, ptr %.sroa.0.06.prol, align 1, !alias.scope !3625, !noalias !3624, !noundef !5
  store i8 %i.s, ptr %i.q, align 1, !noalias !3626
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3608

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa22.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %.unr = phi ptr [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.06.unr = phi ptr [ %.sroa.0.06.ph, %vec.epilog.scalar.ph.preheader ], [ %i.r, %vec.epilog.scalar.ph.prol ]
  %i.u = sub i64 %.sroa.0.06.ph23, %i.b
  %i.v = icmp ugt i64 %i.u, -8
  br i1 %i.v, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.w = phi ptr [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.sroa.0.06 = phi ptr [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.0.06.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %i.y = load i8, ptr %.sroa.0.06, align 1, !alias.scope !3625, !noalias !3624, !noundef !5
  store i8 %i.y, ptr %i.w, align 1, !noalias !3626
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  %i.ab = load i8, ptr %i.x, align 1, !alias.scope !3629, !noalias !3630, !noundef !5
  store i8 %i.ab, ptr %i.z, align 1, !noalias !3631
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  %i.ae = load i8, ptr %i.aa, align 1, !alias.scope !3632, !noalias !3633, !noundef !5
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !3634
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  %i.ah = load i8, ptr %i.ad, align 1, !alias.scope !3635, !noalias !3636, !noundef !5
  store i8 %i.ah, ptr %i.af, align 1, !noalias !3637
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  %i.ak = load i8, ptr %i.ag, align 1, !alias.scope !3638, !noalias !3639, !noundef !5
  store i8 %i.ak, ptr %i.ai, align 1, !noalias !3640
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3641)
  %i.an = load i8, ptr %i.aj, align 1, !alias.scope !3641, !noalias !3642, !noundef !5
  store i8 %i.an, ptr %i.al, align 1, !noalias !3643
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  %i.aq = load i8, ptr %i.am, align 1, !alias.scope !3644, !noalias !3645, !noundef !5
  store i8 %i.aq, ptr %i.ao, align 1, !noalias !3646
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  %i.at = load i8, ptr %i.ap, align 1, !alias.scope !3647, !noalias !3648, !noundef !5
  store i8 %i.at, ptr %i.ar, align 1, !noalias !3649
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.av = icmp eq ptr %i.as, %2
  br i1 %i.av, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3623

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.m, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa22.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.d, align 8, !alias.scope !3624, !noalias !3625
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodermEINtNtB8_5coder7EncodermE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4ItermEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !alias.scope !3655, !noalias !3656 ; 4 uses
  %i.c = ptrtoaddr ptr %2 to i64
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.d = add i64 %i.c, -4
  %i.e = sub i64 %i.d, %3                         ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 44
  %.promoted8 = ptrtoaddr ptr %.promoted to i64
  %i.h = sub i64 %3, %.promoted8
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.i = shl i64 %n.vec, 2                        ; 2 uses
  %i.j = getelementptr i8, ptr %.promoted, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.l ; 2 uses
  %next.gep9 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  %i.m = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !alias.scope !3656, !noalias !3655
  %wide.load10 = load <4 x i32>, ptr %i.m, align 4, !alias.scope !3656, !noalias !3655
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !noalias !3657
  store <4 x i32> %wide.load10, ptr %i.n, align 4, !noalias !3657
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !3653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.p = phi ptr [ %i.s, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.q, %scalar.ph ], [ %.sroa.0.06.ph, %scalar.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  %i.r = load i32, ptr %.sroa.0.06, align 4, !alias.scope !3656, !noalias !3655, !noundef !5
  store i32 %i.r, ptr %i.p, align 4, !noalias !3657
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.t = icmp eq ptr %i.q, %2
  br i1 %i.t, label %._crit_edge, label %scalar.ph, !llvm.loop !3654

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.j, %middle.block ], [ %i.s, %scalar.ph ]
  store ptr %.lcssa, ptr %i.b, align 8, !alias.scope !3655, !noalias !3656
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodertEINtNtB8_5coder7EncodertE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4ItertEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !3664, !noalias !3665 ; 6 uses
  %i.e = add i64 %i.b, -2
  %i.f = sub i64 %i.e, %i.c                       ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 6
  %3 = ptrtoaddr ptr %.promoted to i64
  %.promoted8 = ptrtoaddr ptr %1 to i64
  %i.i = sub i64 %.promoted8, %3
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.f, 30
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 4 uses
  %i.k = shl i64 %n.vec, 1                        ; 2 uses
  %i.l = getelementptr i8, ptr %.promoted, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.n ; 2 uses
  %next.gep10 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  %i.o = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep10, align 2, !alias.scope !3665, !noalias !3664
  %wide.load11 = load <8 x i16>, ptr %i.o, align 2, !alias.scope !3665, !noalias !3664
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !noalias !3666
  store <8 x i16> %wide.load11, ptr %i.p, align 2, !noalias !3666
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !3661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3667

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.h, -4                     ; 3 uses
  %i.r = shl i64 %n.vec13, 1                      ; 2 uses
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.u = shl i64 %index14, 1                      ; 2 uses
  %next.gep15 = getelementptr i8, ptr %.promoted, i64 %i.u
  %next.gep16 = getelementptr i8, ptr %1, i64 %i.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  %wide.load17 = load <4 x i16>, ptr %next.gep16, align 2, !alias.scope !3665, !noalias !3664
  store <4 x i16> %wide.load17, ptr %next.gep15, align 2, !noalias !3666
  %index.next18 = add nuw i64 %index14, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.h, %n.vec13
  br i1 %cmp.n19, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.w = phi ptr [ %i.z, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.sroa.0.06.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  %i.y = load i16, ptr %.sroa.0.06, align 2, !alias.scope !3665, !noalias !3664, !noundef !5
  store i16 %i.y, ptr %i.w, align 2, !noalias !3666
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.aa = icmp eq ptr %i.x, %2
  br i1 %i.aa, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3663

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.s, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.z, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.d, align 8, !alias.scope !3664, !noalias !3665
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodertEINtNtB8_5coder7EncodertE15encode_vectoredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types21FieldFamilyDefinitionENCINvXs0_NvB2I_sz_1__NtB4d_28FieldFamilyDefinitionEncoderIBN_B2G_E15encode_vectoredB2f_E0EEB2O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !alias.scope !3676, !noalias !3677 ; 6 uses
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %i.e = add i64 %i.c, -32
  %i.f = sub i64 %i.e, %i.d                       ; 4 uses
  %i.g = lshr i64 %i.f, 5
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 1504
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = lshr i64 %i.f, 4
  %i.j = and i64 %i.i, 1152921504606846974
  %i.k = getelementptr i8, ptr %.promoted, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 2
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = and i64 %i.f, -32
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 26
  %bound0 = icmp ult ptr %.promoted, %i.p
  %bound1 = icmp ult ptr %i.m, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1152921504606846968      ; 4 uses
  %i.q = shl nuw nsw i64 %n.vec, 1
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q ; 2 uses
  %i.s = shl i64 %n.vec, 5
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.u
  %i.v = shl i64 %index, 5                        ; 8 uses
  %next.gep10 = getelementptr i8, ptr %1, i64 %i.v
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = getelementptr i8, ptr %1, i64 %i.v
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = getelementptr i8, ptr %1, i64 %i.v
  %i.aa = getelementptr i8, ptr %1, i64 %i.v
  %i.ab = getelementptr i8, ptr %1, i64 %i.v
  %i.ac = getelementptr i8, ptr %1, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep10, i64 24
  %i.ae = getelementptr i8, ptr %i.w, i64 56
  %i.af = getelementptr i8, ptr %i.x, i64 88
  %i.ag = getelementptr i8, ptr %i.y, i64 120
  %i.ah = getelementptr i8, ptr %i.z, i64 152
  %i.ai = getelementptr i8, ptr %i.aa, i64 184
  %i.aj = getelementptr i8, ptr %i.ab, i64 216
  %i.ak = getelementptr i8, ptr %i.ac, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  %i.al = load i16, ptr %i.ad, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.am = load i16, ptr %i.ae, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.an = load i16, ptr %i.af, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.ao = load i16, ptr %i.ag, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.ap = load i16, ptr %i.ah, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.aq = load i16, ptr %i.ai, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.ar = load i16, ptr %i.aj, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.as = load i16, ptr %i.ak, align 2, !alias.scope !3678, !noalias !3676, !noundef !5
  %i.at = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 1
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 2
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 3
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 4
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 5
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 6
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 7
  store <8 x i16> %i.ba, ptr %next.gep, align 2, !alias.scope !3679, !noalias !3680
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.r, %middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.t, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bc = phi ptr [ %i.bg, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.bd, %scalar.ph ], [ %.sroa.0.06.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  %i.bf = load i16, ptr %i.be, align 2, !alias.scope !3677, !noalias !3676, !noundef !5
  store i16 %i.bf, ptr %i.bc, align 2, !noalias !3681
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.bh = icmp eq ptr %i.bd, %2
  br i1 %i.bh, label %._crit_edge, label %scalar.ph, !llvm.loop !3675

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
end_hunk_0
