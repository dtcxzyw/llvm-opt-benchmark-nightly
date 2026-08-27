Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.06?download=true
inline.NumInlined: 4463
inline.NumDeleted: 2366
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeE7reserveBU_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecTNtNtCscdodAO9FK5_5alloc6string6StringBN_EE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = udiv i64 %i.g, 48
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowTNtNtCscdodAO9FK5_5alloc6string6StringB1e_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVechE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowhEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecmE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecmE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 2
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowmEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVectE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVectE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 1
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowtEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecxE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecxE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowxEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecyE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecyE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB8_7FastVecpE7reserve12reserve_slowyEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE6removeB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5125)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5125, !noalias !5128, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5125, !noalias !5128, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5125 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5130
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5125, !noalias !5128
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE10try_removeB2g_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEE8truncateB2g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2v_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5138)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5141, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5144
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2v_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5151)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5154, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5155
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2v_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v319LastCacheDefinitionEEEB2u_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE6removeB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5156)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5156, !noalias !5159, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5156, !noalias !5159, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5156 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5156
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5161
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5156, !noalias !5159
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE10try_removeB2g_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEE8truncateB2g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2v_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5168)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5171, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5174
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2v_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5181)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5184, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5185
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2v_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419LastCacheDefinitionEEEB2u_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE6removeB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5186)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5186, !noalias !5189, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5186, !noalias !5189, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5186 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5186
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5191
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5186, !noalias !5189
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE10try_removeB2k_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEE8truncateB2k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5198)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5201, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5204
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5211)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5214, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5215
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEEB2y_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE6removeB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5216)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5216, !noalias !5219, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5216, !noalias !5219, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5216 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5216
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5221
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5216, !noalias !5219
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE10try_removeB2l_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEE8truncateB2l_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2A_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5228)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5231, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5234
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2A_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5241)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5244, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5245
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2A_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEEB2z_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEE8truncateB2i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2x_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5252)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5255, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5258
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2x_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5265)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5268, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5269
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2x_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v221FieldFamilyDefinitionEEEB2w_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEE8truncateB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2B_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5276)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5279, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5282
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2B_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5292, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5293
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2B_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEEB2A_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE6removeB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5294)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5294, !noalias !5297, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5294, !noalias !5297, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5294 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5294
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5299
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5294, !noalias !5297
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE10try_removeB2k_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEE8truncateB2k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5306)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5309, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5312
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5319)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5322, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5323
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v323DistinctCacheDefinitionEEEB2y_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE6removeB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5324)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5324, !noalias !5327, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5324, !noalias !5327, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5324 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5324
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5329
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5324, !noalias !5327
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE10try_removeB2k_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEE8truncateB2k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5336)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5339, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5342
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2z_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5352, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5353
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v423DistinctCacheDefinitionEEEB2y_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE6removeB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5354)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5354, !noalias !5357, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5354, !noalias !5357, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5354 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5354
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5359
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5354, !noalias !5357
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE10try_removeB2o_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEE8truncateB2o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2D_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5366)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5369, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5372
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2D_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5382, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5383
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2D_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEEEB2C_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEE8truncateB24_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEEB23_(ptr noalias noundef nonnull align 8 %i.g, i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionEE8truncateB28_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionEEB27_(ptr noalias noundef nonnull align 8 %i.g, i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE6removeB28_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5384, !noalias !5387, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5384, !noalias !5387, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5384 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5384
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5389
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5384, !noalias !5387
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE10try_removeB28_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEE8truncateB28_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2n_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5396)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5399, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5402
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2n_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5409)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5412, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5413
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2n_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114DatabaseSchemaEEEB2m_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE6removeB28_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5414)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5414, !noalias !5417, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5414, !noalias !5417, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5414 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5414
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5419
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5414, !noalias !5417
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE10try_removeB28_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEE8truncateB28_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2n_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5426)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5429, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5432
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2n_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5439)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5442, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5443
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2n_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEEB2m_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE6removeB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5444)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5444, !noalias !5447, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5444, !noalias !5447, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5444 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5444
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5449
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5444, !noalias !5447
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE10try_removeB2c_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEE8truncateB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2r_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5456)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5459, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5462
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2r_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5469)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5472, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5473
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2r_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEEB2q_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEE8truncateB29_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5483, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5486
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2o_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5493)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5496, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5497
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2o_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnEEEB2n_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEE8truncateB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2s_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5501)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEE8truncateB2d_:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2s_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnEEEB2r_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEE8truncateB2a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2p_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5531, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5534
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2p_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5541)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5544, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5545
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2p_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v114NodeDefinitionEEEB2o_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEE8truncateB2a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2p_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5552)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5555, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5558
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2p_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5568, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5569
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2p_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEEEB2o_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE6removeB2e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5570)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5570, !noalias !5573, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5570, !noalias !5573, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5570 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5570
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5575
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5570, !noalias !5573
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE10try_removeB2e_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEE8truncateB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2t_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5585, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5588
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2t_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5595)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5598, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5599
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2t_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node14NodeDefinitionEEEB2s_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE6removeCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5600, !noalias !5603, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5600, !noalias !5603, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5600 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5600
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5605
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5600, !noalias !5603
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtB6_4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEE8truncateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5612)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5615, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5618
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleE9drop_slowCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5625)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5628, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5629
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleE9drop_slowCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6RoleIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role4role4RoleEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEE8truncateB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2t_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5639, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5642
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2t_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5652, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5653
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2t_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id6UserIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4user8UserInfoEEEB2s_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEE8truncateB2b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2q_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5660)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5663, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5666
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2q_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5673)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5676, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5677
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2q_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnEEEB2p_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEE8truncateB2f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2u_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5684)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5687, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5690
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2u_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5697)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5700, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5701
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2u_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnEEEB2t_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE6removeB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5702, !noalias !5705, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5702, !noalias !5705, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5702 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5702
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5707
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5702, !noalias !5705
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE10try_removeB2b_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEE8truncateB2b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2q_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5714)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5717, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5720
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2q_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5727)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5730, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5731
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2q_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEEB2p_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE6removeB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5732, !noalias !5735, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5732, !noalias !5735, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5732 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5732
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5737
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5732, !noalias !5735
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE10try_removeB2b_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEE8truncateB2b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2q_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5747, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5750
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2q_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5757)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5760, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5761
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2q_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEEB2p_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE6removeB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5762)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5762, !noalias !5765, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5762, !noalias !5765, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5762 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5762
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5767
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5762, !noalias !5765
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE10try_removeB2f_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEE8truncateB2f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2u_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5774)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5777, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5780
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2u_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5787)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5790, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5791
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2u_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEEEB2t_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEE8truncateB1W_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [1320 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1V_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.d
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1V_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [1320 x i8], ptr %i.g, i64 %.sroa.0.0.i4
  %i.k = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1U_(ptr noalias noundef align 8 dereferenceable(1320) %i.j)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph6
  %i.l = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph6

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.d
  br i1 %i.o, label %._crit_edge, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i5 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [1320 x i8], ptr %i.g, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1U_(ptr noalias noundef align 8 dereferenceable(1320) %i.p) #33
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %.lr.ph6
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEEB1V_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE6removeCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5792)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5792, !noalias !5795, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5792, !noalias !5795, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5792 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5792
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5797
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5792, !noalias !5795
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE10try_removeCs844E4pPEVZX_17influxdb3_catalog.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEE8truncateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5804)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5807, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5810
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5817)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5820, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5821
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEE8truncateB2c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2r_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5828)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5831, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5834
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2r_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5844, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5845
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2r_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEEB2q_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE6removeB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5846)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5846, !noalias !5849, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5846, !noalias !5849, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5846 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5846
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5851
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5846, !noalias !5849
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE10try_removeB2d_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEE8truncateB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2s_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5858)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5861, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5864
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2s_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5871)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5874, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5875
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2s_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317TriggerDefinitionEEEB2r_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE6removeB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5876)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5876, !noalias !5879, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5876, !noalias !5879, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5876 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5876
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5881
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5876, !noalias !5879
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE10try_removeB2d_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEE8truncateB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2s_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5888)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5891, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5894
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2s_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5901)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5904, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5905
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2s_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEEEB2r_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE6removeB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5906)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5906, !noalias !5909, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5906, !noalias !5909, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !5906 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !5906
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !5911
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !5906, !noalias !5909
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit.thread, label %bb.b, !prof !5131

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE10try_removeB2h_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtB6_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEE8truncateB2h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2w_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.09.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5918)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !5921, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5924
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.n = icmp eq i64 %i.j, %i.d
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2w_.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5931)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5934, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !5935
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.v = icmp eq i64 %i.r, %i.d
  br i1 %i.v, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2w_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEEEB2v_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtNtB6_6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEE8truncateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.i = icmp eq i64 %i.k, %i.d
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.0.0.i16 ; 3 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.p = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph18

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.l, %bb.c ]
  %i.s = icmp eq i64 %i.k, %i.d
  br i1 %i.s, label %._crit_edge, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.p, %bb.e ], [ %i.k, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(64) %i.t) #33
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph18
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCscdodAO9FK5_5alloc6string6StringNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !90, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 96)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdE6removeCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5936)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5936, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5936, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !5936, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.h, i64 %i.k, i1 false), !noalias !5936
  %i.l = add nsw i64 %i.b, -1
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !5936
  ret i32 %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !90, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit._crit_edge, label %bb.e, !prof !36

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #32
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !90, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_4sync3ArceEIB1J_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEE10take_frontB2e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #8 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !5939

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1K_7counter10U64CounterE10take_frontCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #8 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void
end_hunk_1
