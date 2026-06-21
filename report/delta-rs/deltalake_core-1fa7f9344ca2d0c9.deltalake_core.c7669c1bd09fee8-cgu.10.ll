inline.NumInlined: 7791
inline.NumDeleted: 3011
begin_hunk_0_@_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs14kWLkQVSKO_14deltalake_core:bb.a
bb.g:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.n = sext i16 %3 to i64
  %.lobit = lshr i16 %3, 15
  %i.o = zext nneg i16 %.lobit to i64             ; 2 uses
  %i.p = sub nsw i64 0, %i.o
  %i.q = xor i64 %i.p, %i.n
  %i.r = shl nsw i64 %i.q, 1                      ; 2 uses
  %i.s = or disjoint i64 %i.r, %i.o               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16331)
  %i.t = icmp ugt i64 %i.r, 127
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.g
  %.sroa.0.0.lcssa.i = phi i64 [ %i.s, %bb.g ], [ %i.z, %bb.k ]
  %i.u = trunc nuw nsw i64 %.sroa.0.0.lcssa.i to i8
  call void @llvm.experimental.noalias.scope.decl(metadata !16334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16337
  store i8 %i.u, ptr %i.b, align 1, !noalias !16337
  %.val.i.i.i = load ptr, ptr %.val.i, align 8, !noalias !16340, !nonnull !16, !align !134, !noundef !16
  %i.v = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !16337 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  call void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.v), !noalias !16343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16337
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16337
  store i64 8, ptr %0, align 8, !alias.scope !16344, !noalias !16343
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit4

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.sroa.0.010.i = phi i64 [ %i.z, %bb.k ], [ %i.s, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16345
  %i.w = trunc i64 %.sroa.0.010.i to i8
  %i.x = or i8 %i.w, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16346
  store i8 %i.x, ptr %i.a, align 1, !noalias !16346
  %.val.i.i5.i = load ptr, ptr %.val.i, align 8, !noalias !16350, !nonnull !16, !align !134, !noundef !16
  %i.y = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !16346 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.y, null
  br i1 %.not.i6.i, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread.i, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.i

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16346
  br label %bb.k

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.i: ; preds = %.lr.ph.i
  call void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull %i.y), !noalias !16353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16346
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !16345
  %.not.i5 = icmp eq i64 %.pr.i, 8
  br i1 %.not.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !16354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16345
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.i, %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16345
  %i.z = lshr i64 %.sroa.0.010.i, 7               ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.010.i, 16383
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE18write_empty_structCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 10)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i16 noundef %2, i16 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 12, i16 noundef %2, i16 noundef %3)
  %i.d = load i64, ptr %i.c, align 8, !range !9871, !noundef !16
  %.not = icmp eq i64 %i.d, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16358
  store i8 0, ptr %i.a, align 1, !noalias !16358
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !16355, !noalias !16360, !nonnull !16, !align !134, !noundef !16
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !16361, !nonnull !16, !align !134, !noundef !16
  %i.e = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !16358 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16358
  br label %bb.e

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %i.e), !noalias !16355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16358
  %.pr = load i64, ptr %i.b, align 8
  %.not1 = icmp eq i64 %.pr, 8
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %3, ptr %i.f, align 8
  store i64 8, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9write_vlqCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = icmp ugt i64 %2, 127
  %.val.i.pre = load ptr, ptr %1, align 8, !noalias !16 ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %bb.e ]
  %i.e = trunc nuw nsw i64 %.sroa.0.0.lcssa to i8
  call void @llvm.experimental.noalias.scope.decl(metadata !16364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16367
  store i8 %i.e, ptr %i.b, align 1, !noalias !16367
  %.val.i.i = load ptr, ptr %.val.i.pre, align 8, !noalias !16369, !nonnull !16, !align !134, !noundef !16
  %i.f = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !16367 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.f), !noalias !16372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16367
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16367
  store i64 8, ptr %0, align 8, !alias.scope !16364, !noalias !16372
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.0.010 = phi i64 [ %i.j, %bb.e ], [ %2, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = trunc i64 %.sroa.0.010 to i8
  %i.h = or i8 %i.g, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16373
  store i8 %i.h, ptr %i.a, align 1, !noalias !16373
  %.val.i.i5 = load ptr, ptr %.val.i.pre, align 8, !noalias !16377, !nonnull !16, !align !134, !noundef !16
  %i.i = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !16373 ; 2 uses
  %.not.i6 = icmp eq ptr %i.i, null
  br i1 %.not.i6, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread, label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16373
  br label %bb.e

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %.lr.ph
  call void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull %i.i), !noalias !16380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16373
  %.pr = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %.pr, 8
  br i1 %.not, label %bb.e, label %bb.d

_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7.thread, %_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = lshr i64 %.sroa.0.010, 7                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.0.010, 16383
  br i1 %i.k, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_7RawIterTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBP_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE13drop_elementsCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader, %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.f = phi i64 [ %i.b, %.preheader ], [ %.old, %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16381)
  %i.g = load i16, ptr %i.d, align 8, !alias.scope !16381, !noundef !16 ; 2 uses
  %.not9.i = icmp eq i16 %i.g, 0
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !16381 ; 2 uses
  br i1 %.not9.i, label %.lr.ph.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted11.i = load ptr, ptr %i.e, align 8, !alias.scope !16381
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.e, align 8, !alias.scope !16381
  store ptr %i.l, ptr %0, align 8, !alias.scope !16381
  br label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted11.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !16384
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.d, align 8, !alias.scope !16381
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.f, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBI_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.v)
  %.old = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %.old3 = icmp eq i64 %.old, 0
  br i1 %.old3, label %.loopexit, label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 8, 1041) %2) unnamed_addr #19 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %min.iters.check = icmp samesign ult i64 %2, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = and i64 %2, 2040                         ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep6 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep6
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 252                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16390)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.c, align 1, !alias.scope !16392, !noalias !16395
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !16392, !noalias !16395
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load8 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !16395, !noalias !16387
  %wide.load9 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !16395, !noalias !16387
  store <2 x i64> %wide.load8, ptr %i.c, align 1, !alias.scope !16392, !noalias !16395
  store <2 x i64> %wide.load9, ptr %i.e, align 1, !alias.scope !16392, !noalias !16395
  store <2 x i64> %wide.load, ptr %i.d, align 1, !alias.scope !16395, !noalias !16387
  store <2 x i64> %wide.load7, ptr %i.f, align 1, !alias.scope !16395, !noalias !16387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !16397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.ph, 1
  %i.h = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.i.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16390)
  %.sroa.0.0.copyload.i.i.prol = load i64, ptr %i.j, align 1, !alias.scope !16387, !noalias !16390
  %.sroa.02.0.copyload.i.i.prol = load i64, ptr %i.k, align 1, !alias.scope !16390, !noalias !16387
  store i64 %.sroa.02.0.copyload.i.i.prol, ptr %i.j, align 1, !alias.scope !16387, !noalias !16390
  store i64 %.sroa.0.0.copyload.i.i.prol, ptr %i.k, align 1, !alias.scope !16390, !noalias !16387
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.i.unr = phi i64 [ %.sroa.0.04.i.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %i.a, %.neg
  br i1 %i.l, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw nsw i64 %.sroa.0.04.i, 1         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16390)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 1, !alias.scope !16387, !noalias !16390
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.o, align 1, !alias.scope !16390, !noalias !16387
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.n, align 1, !alias.scope !16387, !noalias !16390
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 1, !alias.scope !16390, !noalias !16387
  %i.p = add nuw nsw i64 %.sroa.0.04.i, 2         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16400)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.q, align 1, !alias.scope !16398, !noalias !16400
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !16400, !noalias !16398
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.q, align 1, !alias.scope !16398, !noalias !16400
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.r, align 1, !alias.scope !16400, !noalias !16398
  %exitcond.not.i.1 = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not.i.1, label %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit, label %scalar.ph, !llvm.loop !16402

_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.s = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.t = and i64 %2, 2040                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 4 uses
  %i.w = icmp samesign ult i64 %i.s, 4
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16406)
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.u, align 1, !alias.scope !16403, !noalias !16406
  %.sroa.02.0.copyload.i.i5 = load i32, ptr %i.v, align 1, !alias.scope !16406, !noalias !16403
  store i32 %.sroa.02.0.copyload.i.i5, ptr %i.u, align 1, !alias.scope !16403, !noalias !16406
  store i32 %.sroa.0.0.copyload.i.i4, ptr %i.v, align 1, !alias.scope !16406, !noalias !16403
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.x = and i64 %2, 2
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16411)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.z, align 1, !alias.scope !16408, !noalias !16411
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.aa, align 1, !alias.scope !16411, !noalias !16408
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.z, align 1, !alias.scope !16408, !noalias !16411
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.aa, align 1, !alias.scope !16411, !noalias !16408
  %i.ab = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ac = and i64 %2, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.1.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16416)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.ae, align 1, !alias.scope !16413, !noalias !16416
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.af, align 1, !alias.scope !16416, !noalias !16413
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.ae, align 1, !alias.scope !16413, !noalias !16416
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.af, align 1, !alias.scope !16416, !noalias !16413
  br label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #53
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #53
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @118, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @119, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2r_6marker4SyncNtB2Y_4SendEL_EENtCs574AjYkQ1m0_9http_body4Body10poll_frameCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !16418, !noundef !16
  %i.e = icmp eq i64 %i.d, 6
end_hunk_0
begin_hunk_1_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1H_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18434)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18434, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !18437
  %.promoted4 = load ptr, ptr %i.a, align 8
  %.promoted7 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.preheader.i
  %.promoted12.i.i9 = phi ptr [ %.promoted7, %.preheader.i ], [ %.promoted12.i.i8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.lcssa16 = phi ptr [ %.promoted4, %.preheader.i ], [ %.lcssa15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18440)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !18437
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !18437
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i9, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa16, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !18441
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted12.i.i8 = phi ptr [ %i.n, %._crit_edge.i.i ], [ %.promoted12.i.i9, %bb.b ]
  %.lcssa15 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa16, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18437
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %.lcssa15, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !18434
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !18434

bb.c:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.d, !noalias !18434

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !18434
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !18434
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBI_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %i.y = load i64, ptr %0, align 8, !range !17, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !16 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.y) #54
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.f, %bb.e, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #54
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #54
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBU_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18444)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18444, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18444 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18444
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18444
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18444
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18447
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18444
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18450)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18450, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18450 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18450
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18450
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18450
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18453
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1792 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18450
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB22_bEEEEEENtNtNtNtB3y_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18456)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18456, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18456 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB24_bEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18456
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18456
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18456
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB24_bEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18459
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1792 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB24_bEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18456
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB24_bEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB32_3ops5range5RangeyEEEEEENtNtNtNtB32_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18462)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18462, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18462 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB34_3ops5range5RangeyEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18462
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18462
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18462
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB34_3ops5range5RangeyEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18465
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1792 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB34_3ops5range5RangeyEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18462
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB34_3ops5range5RangeyEEEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18468)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18468, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18468 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18468
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18468
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18468
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18471
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18468
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBX_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18474)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18474, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18474 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18474
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18474
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18474
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18477
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18474
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBT_EEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18480)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18480, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18480 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18480
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18480
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18480
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18483
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18480
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18486)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18486, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18486 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18486
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18486
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18486
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18489
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -896 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18486
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18492)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18492, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18492 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18492
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18492
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18492
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18495
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -896 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18492
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([648 x i8]) align 8 captures(none) dereferenceable(648) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18498)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18498, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18498 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE9next_implKb0_EB1D_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18498
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18498
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18498
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE9next_implKb0_EB1D_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18501
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -10368 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE9next_implKb0_EB1D_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18498
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [648 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -648
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(648) %i.v, i64 648, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE9next_implKb0_EB1D_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([648 x i8]) align 8 captures(none) dereferenceable(648) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18504)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18504, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18504 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE9next_implKb0_EB1D_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18504
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18504
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18504
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE9next_implKb0_EB1D_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18507
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -10368 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE9next_implKb0_EB1D_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18504
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [648 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -648
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(648) %i.v, i64 648, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE9next_implKb0_EB1D_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18510)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18510, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18510 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18510
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18510
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18510
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18513
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -2048 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18510
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -128
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.v, i64 128, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18516)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18516, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18516 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE9next_implKb0_EB1F_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18516
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18516
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18516
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE9next_implKb0_EB1F_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18519
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -4736 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE9next_implKb0_EB1F_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18516
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [296 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -296
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.v, i64 296, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE9next_implKb0_EB1F_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBT_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBX_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB3B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18522)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18522, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18522 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEE9next_implKb0_EB3D_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18522
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18522
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18522
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEE9next_implKb0_EB3D_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18525
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1920 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEE9next_implKb0_EB3D_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18522
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [120 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -120
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEE9next_implKb0_EB3D_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBT_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBX_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB3D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18528)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18528, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18528 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEE9next_implKb0_EB3F_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18528
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18528
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18528
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEE9next_implKb0_EB3F_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18531
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1920 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEE9next_implKb0_EB3F_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18528
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [120 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -120
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBZ_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEE9next_implKb0_EB3F_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBT_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB3l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18534)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18534, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18534 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEE9next_implKb0_EB3n_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18534
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18534
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18534
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEE9next_implKb0_EB3n_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18537
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -2048 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEE9next_implKb0_EB3n_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18534
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -128
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 128, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBV_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEE9next_implKb0_EB3n_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18540)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18540, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18540 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18540
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18540
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18540
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18543
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18540
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18546)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18546, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18546 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18546
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18546
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18546
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18549
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1792 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18546
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 37, ptr %0, align 16
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18552)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18552, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18552 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18552
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18552
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18552
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18555
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18552
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 16 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18558)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18558, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18558 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE9next_implKb0_EB1Q_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18558
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18558
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18558
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE9next_implKb0_EB1Q_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18561
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -3584 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE9next_implKb0_EB1Q_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18558
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [224 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -224
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 16 dereferenceable(224) %i.v, i64 224, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 4, ptr %0, align 16
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE9next_implKb0_EB1Q_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1040 x i8]) align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18564)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18564, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18564 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEE9next_implKb0_EB1J_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18564
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18564
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18564
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEE9next_implKb0_EB1J_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18567
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16640 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEE9next_implKb0_EB1J_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18564
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [1040 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -1040
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(1040) %i.v, i64 1040, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEE9next_implKb0_EB1J_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18570)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18570, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18570 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18570
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18570
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18570
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18573
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18570
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18576)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18576, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18576 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18576
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18576
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18576
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18579
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18576
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !16, !align !134, !noundef !16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18582)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !18582, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !18582 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !18582
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !18582
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !18582
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18585
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !18582
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !16, !align !134, !noundef !16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameuEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsK_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawDrainTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18588)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18588, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE13drop_elementsCs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i16, ptr %i.d, align 8, !alias.scope !18591
  %.promoted11 = load ptr, ptr %0, align 8
  %.promoted14 = load ptr, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit.i, %.preheader.i
  %.lcssa16 = phi ptr [ %.promoted14, %.preheader.i ], [ %.lcssa15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.lcssa413 = phi ptr [ %.promoted11, %.preheader.i ], [ %.lcssa412, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.f = phi i16 [ %.promoted, %.preheader.i ], [ %i.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.g = phi i64 [ %i.b, %.preheader.i ], [ %i.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18594)
  %.not10.i.i = icmp eq i16 %i.f, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.m, ptr %i.e, align 8, !alias.scope !18591
  store ptr %i.l, ptr %0, align 8, !alias.scope !18591
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.h = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa16, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.lcssa413, %bb.b ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !18595
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -896 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.lcssa15 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa16, %bb.b ]
  %.lcssa412 = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.lcssa413, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i                ; 2 uses
  store i16 %i.q, ptr %i.d, align 8, !alias.scope !18591
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [56 x i8], ptr %.lcssa412, i64 %i.r ; 3 uses
  %i.t = add i64 %i.g, -1                         ; 3 uses
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !18588
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.c, !noalias !18588

bb.c:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %.body.i.i unwind label %bb.d, !noalias !18588

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !18588
  unreachable

end_hunk_1
begin_hunk_2_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.gi = load i8, ptr %i.gh, align 2, !range !5409, !alias.scope !18651, !noalias !18648, !noundef !16
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !18648, !noalias !18651, !nonnull !16, !noundef !16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !18651, !noalias !18648, !nonnull !16, !noundef !16 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gr = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.gp, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.gq) #53, !noalias !18653, !inline_history !18654
  br i1 %i.gr, label %bb.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !18648, !noalias !18651, !noundef !16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !18651, !noalias !18648, !noundef !16
  %i.gw = icmp eq i64 %i.gt, %i.gv
  br i1 %i.gw, label %bb.aw, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aw:                                            ; preds = %bb.av
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !18651, !noalias !18648, !nonnull !16, !noundef !16
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !18648, !noalias !18651, !nonnull !16, !noundef !16
  %i.hb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ha, ptr noundef nonnull %i.gy, i64 noundef %i.gt), !noalias !18653, !inline_history !18654
  br i1 %i.hb, label %bb.ax, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr87, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !18648, !noalias !18651, !nonnull !16, !noundef !16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.tr1488, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !18651, !noalias !18648, !nonnull !16, !noundef !16 ; 2 uses
  %i.hg = icmp eq ptr %i.hd, %i.hf
  br i1 %i.hg, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hj = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hi) #53, !noalias !18653, !inline_history !18654
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.az:                                            ; preds = %.lr.ph
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.hm = tail call fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #53
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ba:                                            ; preds = %.lr.ph
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.hp = tail call noundef zeroext i1 @_RNvXsq_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9ExtensionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ho)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bb:                                            ; preds = %.lr.ph
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.hs = tail call fastcc noundef zeroext i1 @_RNvXs2m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.hr) #53
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.hv = tail call noundef zeroext i1 @_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.hu)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bd:                                            ; preds = %.lr.ph
  %i.hw = tail call fastcc noundef zeroext i1 @_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %.tr87, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %.tr1488) #53
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.be:                                            ; preds = %.lr.ph
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.hz = tail call noundef zeroext i1 @_RNvXs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB4_6CopyToNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.hx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.hy)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bf:                                            ; preds = %.lr.ph
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val5 = load ptr, ptr %i.ia, align 8, !nonnull !16, !noundef !16
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val6 = load ptr, ptr %i.ic, align 8
  %.val7 = load ptr, ptr %i.ib, align 8, !nonnull !16, !noundef !16
  %i.id = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val8 = load ptr, ptr %i.id, align 8
  %i.ie = tail call fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr nonnull %.val5, ptr %.val6, ptr nonnull %.val7, ptr %.val8) #53
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bg:                                            ; preds = %.lr.ph
  %i.if = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ih = tail call fastcc noundef zeroext i1 @_RNvXs3c_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.if, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ig) #53
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bh:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18658)
  %i.ii = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.ij = load i8, ptr %i.ii, align 8, !range !6561, !alias.scope !18655, !noalias !18658, !noundef !16
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.il = load i8, ptr %i.ik, align 8, !range !6561, !alias.scope !18658, !noalias !18655, !noundef !16
  %i.im = icmp eq i8 %i.ij, %i.il
  br i1 %i.im, label %bb.bi, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bi:                                            ; preds = %bb.bh
  %i.in = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !18655, !noalias !18658, !noundef !16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !18658, !noalias !18655, !noundef !16
  %i.ir = icmp eq i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.bj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bj:                                            ; preds = %bb.bi
  %i.is = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !18658, !noalias !18655, !nonnull !16, !noundef !16
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !18655, !noalias !18658, !nonnull !16, !noundef !16
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.iv, ptr nonnull %i.it, i64 %i.io), !noalias !18660, !inline_history !18661
  %i.iw = icmp eq i32 %bcmp.i, 0
  br i1 %i.iw, label %bb.bk, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ix = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !18655, !noalias !18658, !nonnull !16, !noundef !16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !18658, !noalias !18655, !nonnull !16, !noundef !16 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.je = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.jc, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.jd) #53, !noalias !18660, !inline_history !18661
  br i1 %i.je, label %bb.bm, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jf = getelementptr inbounds nuw i8, ptr %.tr87, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !18655, !noalias !18658, !nonnull !16, !noundef !16 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 40
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !18658, !noalias !18655, !nonnull !16, !noundef !16 ; 2 uses
  %i.jj = icmp eq ptr %i.jg, %i.ji
  br i1 %i.jj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsL_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawDrainTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18662)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !18662, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !18662 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.f, align 8, !alias.scope !18662
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.f, align 8, !alias.scope !18662
  store ptr %i.k, ptr %1, align 8, !alias.scope !18662
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !18665
  %i.j = icmp sgt <16 x i8> %i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -896 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.d, align 8, !alias.scope !18662
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !12103, !noundef !16 ; 3 uses
  %i.b = icmp ne i64 %i.a, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -11
  %i.d = icmp samesign ugt i64 %i.a, 10
  %i.e = select i1 %i.d, i64 %i.c, i64 20         ; 3 uses
  %i.f = load i64, ptr %1, align 16, !range !12103, !noundef !16 ; 3 uses
  %i.g = icmp ne i64 %i.f, 31
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20         ; 2 uses
  %.not105 = icmp eq i64 %i.e, %i.j
  br i1 %.not105, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.k = phi i64 [ %i.bq, %tailrecurse ], [ %i.e, %bb.a ]
  %.tr3107 = phi ptr [ %i.bl, %tailrecurse ], [ %1, %bb.a ] ; 30 uses
  %.tr106 = phi ptr [ %i.bj, %tailrecurse ], [ %0, %bb.a ] ; 30 uses
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.w
    i64 14, label %bb.x
    i64 15, label %bb.y
    i64 16, label %bb.z
    i64 17, label %bb.aa
    i64 18, label %bb.ab
    i64 19, label %bb.ac
    i64 20, label %bb.ad
    i64 21, label %bb.ae
    i64 22, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
    i64 23, label %bb.af
    i64 24, label %bb.ag
  ]

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa29 = phi i64 [ %i.e, %bb.a ], [ %i.bq, %tailrecurse ]
  %.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.bv, %tailrecurse ]
  %i.l = tail call i8 @llvm.scmp.i8.i64(i64 %.lcssa29, i64 %.lcssa)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.o = tail call noundef i8 @_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr106, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3107, i64 16
  %i.r = tail call fastcc noundef i8 @_RNvXs1o_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #53
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.u = tail call noundef i8 @_RNvXsc_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_6WindowNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.x = tail call noundef i8 @_RNvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.aa = tail call fastcc noundef i8 @_RNvXs2H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #53
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr106, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr3107, i64 16
  %i.ad = tail call noundef i8 @_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.ag = tail call fastcc noundef i8 @_RNvXs1C_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #53
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.aj = tail call noundef i8 @_RNvXsk_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_5UnionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.am = tail call noundef i8 @_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.al)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.ap = tail call noundef i8 @_RNvXs4_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.as = tail call fastcc noundef i8 @_RNvXs2T_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ar) #53
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  %i.av = tail call noundef i8 @_RNvXs9_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.au)
  br label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr106, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr3107, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18671)
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr106, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !18668, !noalias !18671, !align !3443, !noundef !16 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr3107, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !18671, !noalias !18668, !align !3443, !noundef !16 ; 2 uses
  %.not8.i = icmp eq ptr %i.bb, null              ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not8.i, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.s

bb.q:                                             ; preds = %bb.o
  br i1 %.not8.i, label %bb.r, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr106, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !18668, !noalias !18671, !align !3443, !noundef !16 ; 2 uses
  %.not10.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3107, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !18671, !noalias !18668, !align !3443, !noundef !16 ; 2 uses
  %.not11.i = icmp eq ptr %i.bf, null             ; 2 uses
  br i1 %.not10.i, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.bg = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bb) #53, !noalias !18673, !inline_history !18674 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.t:                                             ; preds = %bb.r
  br i1 %.not11.i, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.v

bb.u:                                             ; preds = %bb.r
  br i1 %.not11.i, label %tailrecurse, label %_RNvXs2h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

tailrecurse:                                      ; preds = %bb.v, %bb.u
  %i.bi = load ptr, ptr %i.aw, align 8, !alias.scope !18668, !noalias !18671, !nonnull !16, !noundef !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !18671, !noalias !18668, !nonnull !16, !noundef !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bj, align 16, !range !12103, !noundef !16 ; 3 uses
  %i.bn = icmp ne i64 %i.bm, 31
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nsw i64 %i.bm, -11
  %i.bp = icmp samesign ugt i64 %i.bm, 10
  %i.bq = select i1 %i.bp, i64 %i.bo, i64 20      ; 3 uses
  %i.br = load i64, ptr %i.bl, align 16, !range !12103, !noundef !16 ; 3 uses
  %i.bs = icmp ne i64 %i.br, 31
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nsw i64 %i.br, -11
  %i.bu = icmp samesign ugt i64 %i.br, 10
  %i.bv = select i1 %i.bu, i64 %i.bt, i64 20      ; 2 uses
  %.not = icmp eq i64 %i.bq, %i.bv
  br i1 %.not, label %.lr.ph, label %tailrecurse._crit_edge

end_hunk_2
