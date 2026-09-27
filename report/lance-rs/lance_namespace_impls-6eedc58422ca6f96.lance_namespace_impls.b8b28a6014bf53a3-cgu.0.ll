Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice:bb.a
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %i.bg, -16384
  %i.bo = icmp samesign ugt i64 %2, 6
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !416 ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 14
  %i.bt = or disjoint i32 %i.bs, %i.bn            ; 2 uses
  %i.bu = icmp sgt i8 %i.bq, -1
  br i1 %i.bu, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bv = zext nneg i32 %i.bg to i64
  %i.bw = shl nuw nsw i64 %i.bv, 28
  %i.bx = add nuw nsw i64 %i.bw, %i.ar
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.bz, align 8
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ca = add nsw i32 %i.bt, -2097152
  %i.cb = icmp samesign ugt i64 %2, 7
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !416 ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 21
  %i.cg = add nsw i32 %i.ca, %i.cf                ; 2 uses
  %i.ch = icmp sgt i8 %i.cd, -1
  br i1 %i.ch, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = zext nneg i32 %i.bt to i64
  %i.cj = shl nuw nsw i64 %i.ci, 28
  %i.ck = add nuw nsw i64 %i.cj, %i.ar
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.cm, align 8
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.cg, -268435456
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 28
  %i.cq = add nuw nsw i64 %i.cp, %i.ar            ; 2 uses
  %i.cr = icmp samesign ugt i64 %2, 8
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !416 ; 3 uses
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cv = zext i32 %i.cg to i64
  %i.cw = shl nuw nsw i64 %i.cv, 28
  %i.cx = add nuw nsw i64 %i.cw, %i.ar
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 8, ptr %i.cz, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.da = icmp samesign ugt i64 %2, 9
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dc = load i8, ptr %i.db, align 1, !noundef !416 ; 2 uses
  %i.dd = icmp ult i8 %i.dc, 2
  br i1 %i.dd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.de = zext nneg i8 %i.ct to i64
  %i.df = shl nuw nsw i64 %i.de, 56
  %i.dg = add nuw i64 %i.df, %i.cq
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %i.di, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %i.a, align 8
  %i.dj = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dj, ptr %i.dk, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dl = and i8 %i.ct, 127
  %i.dm = shl nuw i8 %i.dc, 7
  %i.dn = or disjoint i8 %i.dm, %i.dl
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw i64 %i.do, 56
  %i.dq = add i64 %i.dp, %i.cq
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.ds, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.v, %bb.x, %bb.t, %bb.r, %bb.p, %bb.n, %bb.w
  %.sink = phi i64 [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.n ], [ 1, %bb.w ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs2bHstFFhpHt_17datafusion_common13null_equalityNtB2_12NullEqualityNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 14, i64 17
  %.1 = select i1 %i.b, ptr @3531, ptr @3530
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs40Ppcsylqp4_17crossbeam_channel3errINtB2_9SendErrorINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1H_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3532, i64 noundef 13, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef nonnull ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array12record_batchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB2_17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB2_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1S_6marker4SendEL_EB1j_6schemaCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !416, !align !417, !noundef !416
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !416, !nonnull !416
  %i.f = tail call noundef nonnull ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array12record_batchINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtB2_19RecordBatchIteratorINtNtBO_3vec3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtB2_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEEENtB2_17RecordBatchReader6schemaCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #35 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219375)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !219375, !nonnull !416, !noundef !416 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !219375
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtCs4ytUTZt2Gw9_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtB5_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEENtB5_17RecordBatchReader6schemaCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs7_NtCs4ytUTZt2Gw9_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtB5_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEENtB5_17RecordBatchReader6schemaCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array6scalarINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENtB2_5Datum3getCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #33 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1037, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs8d5NHFTTVL0_4uuid3fmtNtB4_4UuidNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCs8d5NHFTTVL0_4uuid3fmtNtB7_4UuidNtNtCscI6d9CVNmLh_4core3fmt8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXNtCs8l9P2lL5xvY_16lance_index_core7metricsNtB2_20NoOpMetricsCollectorNtB2_16MetricsCollector18record_comparisons(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXNtCs8l9P2lL5xvY_16lance_index_core7metricsNtB2_20NoOpMetricsCollectorNtB2_16MetricsCollector18record_index_loads(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXNtCs8l9P2lL5xvY_16lance_index_core7metricsNtB2_20NoOpMetricsCollectorNtB2_16MetricsCollector19record_parts_loaded(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXNtCsa7501wwoJJ1_11lance_index6scalarNtNtNtB2_8inverted9tokenizer19InvertedIndexParamsNtCs8l9P2lL5xvY_16lance_index_core11IndexParams10index_name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @3367, i64 8 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCsa7501wwoJJ1_11lance_index6scalarNtNtNtB2_8inverted9tokenizer19InvertedIndexParamsNtCs8l9P2lL5xvY_16lance_index_core11IndexParams6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3533, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table9PageTableENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBy_5types17GenericStringTypelEENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @102, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @350, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @353, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15list_view_array20GenericListViewArraylENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3534, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15list_view_array20GenericListViewArrayxENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3535, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types10UInt16TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3536, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types10UInt32TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types10UInt64TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @104, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types11Float32TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3537, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types8Int8TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3538, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9Int16TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3539, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9Int32TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3540, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9Int64TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @105, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9UInt8TypeENtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3541, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3542, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs5E8EBwPtAkp_24datafusion_physical_plan11repartition15RepartitionExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3543, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitions22CoalescePartitionsExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3544, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3545, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3546, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs8l9P2lL5xvY_16lance_index_core6scalar17ScalarIndexParamsNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3547, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3548, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCsc85D0lJ81Z_16lance_datafusion4exec11OneShotExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3549, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtCsc85D0lJ81Z_16lance_datafusion4exec20HardCapBatchSizeExecNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3550, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB2_3Any7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3551, i64 16, i1 false)
  ret void
}
end_hunk_0
begin_hunk_1_@_RNvXNvXs1_NtCs5QD3CVEMyfH_10serde_json3serQINtB8_10SerializerppENtNtCskpEw9nXJLNc_10serde_core3ser10Serializer11collect_strINtB2_7AdapterQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB8_15PrettyFormatterENtNtCscI6d9CVNmLh_4core3fmt5Write9write_strCsfR8GmIBoxTX_21lance_namespace_impls
define internal noundef zeroext i1 @_RNvXNvXs1_NtCs5QD3CVEMyfH_10serde_json3serQINtB8_10SerializerppENtNtCskpEw9nXJLNc_10serde_core3ser10Serializer11collect_strINtB2_7AdapterQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB8_15PrettyFormatterENtNtCscI6d9CVNmLh_4core3fmt5Write9write_strCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !align !417, !noundef !416
  %.val = load ptr, ptr %i.a, align 8
  tail call fastcc void @_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_15PrettyFormatterECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBe_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtNtBe_5alloc6GlobalEB1e_4dropCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10dying_nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.j, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.41.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.41.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221850), !noalias !221851
  %.val.i.i = load i64, ptr %i.f, align 8, !range !419, !alias.scope !221852, !noalias !221851, !noundef !416 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !221852, !noalias !221851, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !221853
  br label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %bb.b
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !221854, !inline_history !221848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10dying_nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.j = load ptr, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs2bHstFFhpHt_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !416
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3591, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3590, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3592, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3589, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs2bHstFFhpHt_17datafusion_common7displayNtB5_8PlanTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !525, !noundef !416
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3598, i64 noundef 18)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3599, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3600, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3601, i64 noundef 24)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3602, i64 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3603, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3604, i64 noundef 16)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3605, i64 noundef 19)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3606, i64 noundef 28)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3607, i64 noundef 29)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3608, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3603, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3609, i64 noundef 17)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3610, i64 noundef 26)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3611, i64 noundef 27)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3612, i64 noundef 17)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.t, %bb.n ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan18cardinality_effect(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @3613, i64 14 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan18cardinality_effect(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @3614, i64 22 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan5fetch(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #26 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !442, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan7analyzeNtB5_11AnalyzeExecNtNtB7_14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(88) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan7analyzeNtB5_11AnalyzeExecNtNtB7_14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @3615, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 3) i8 @_RNvXs0_NtCs5q7AjagIPjV_18datafusion_catalog9streamingNtB5_14StreamingTableNtNtB7_5table13TableProvider10table_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i8 1
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs0_NtCs5q7AjagIPjV_18datafusion_catalog9streamingNtB5_14StreamingTableNtNtB7_5table13TableProvider6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsaSXGKSfiU2E_10lance_file2ioNtB5_16LanceEncodingsIoNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3617, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3618, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3616, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3619, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCscTsYlPPaaMf_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !711, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtCscTsYlPPaaMf_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtCscTsYlPPaaMf_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.9962, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsfR8GmIBoxTX_21lance_namespace_impls11credentialsNtB5_16VendedPermissionNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !429, !noundef !416
  %i.b = load ptr, ptr %1, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !416, !align !417, !noundef !416
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !416, !nonnull !416 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3663, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3664, i64 noundef 5)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3665, i64 noundef 5)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_25DirectoryNamespaceBuilderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3666, i64 noundef 25)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3262, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3566)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3668, i64 noundef 15, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3667)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3263, i64 noundef 16, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3264, i64 noundef 19, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3265, i64 noundef 27, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3266, i64 noundef 30, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.p = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3267, i64 noundef 41, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !noundef !416
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 9, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ @3571, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %i.a, align 8
  %i.t = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3573, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3572)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 173
  %i.v = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3269, i64 noundef 26, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.w = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3270, i64 noundef 50, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3669)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.y = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3271, i64 noundef 19, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.z = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs0_NtCsjjbR6Jfsbqw_8lance_io5localNtB5_17LocalObjectReaderNtNtB7_6traits6Reader10block_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtCsjjbR6Jfsbqw_8lance_io5localNtB5_17LocalObjectReaderNtNtB7_6traits6Reader14io_parallelism(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCsjjbR6Jfsbqw_8lance_io5localNtB5_17LocalObjectReaderNtNtB7_6traits6Reader4path(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs40MM8ukkVQd_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !736, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtCs40MM8ukkVQd_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtCs40MM8ukkVQd_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.9963, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @561, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @3437, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.48.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !416, !noundef !416
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !align !417, !noundef !416
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3682, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !221881)
  call void @llvm.experimental.noalias.scope.decl(metadata !221882)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !221883, !noalias !221882, !noundef !416
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %i.l = add nsw i64 %i.k, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 10) ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCs5QD3CVEMyfH_10serde_json3serQINtB5_10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCskpEw9nXJLNc_10serde_core3ser10Serializer13serialize_strCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br i1 %exitcond.not.i.i411, label %.outer.i.i._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.lr.ph

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.lr.ph: ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.05.0.ph.i.i13 = phi ptr [ %i.ac, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %0, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 4 uses
  %.sroa.5.0.ph.i.i12 = phi i64 [ %i.ae, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %1, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.k = phi i64 [ %storemerge.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.j, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 5 uses
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.l = add i64 %.sroa.010.0.i.i5, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.sroa.5.0.ph.i.i12
  br i1 %exitcond.not.i.i, label %.outer.i.i._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

.outer.i.i._crit_edge:                            ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.b, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.lcssa3 = phi i64 [ %i.k, %bb.b ], [ %i.j, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %storemerge.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 4 uses
  %.sroa.5.0.ph.i.i.lcssa = phi i64 [ %.sroa.5.0.ph.i.i12, %bb.b ], [ %1, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.ae, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 5 uses
  %.sroa.05.0.ph.i.i.lcssa = phi ptr [ %.sroa.05.0.ph.i.i13, %bb.b ], [ %0, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.ac, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.m = icmp eq i64 %.sroa.5.0.ph.i.i.lcssa, 0
  br i1 %i.m, label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.i.i._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226923)
  %i.n = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !226924, !noalias !226925, !noundef !416
  %i.o = sub i64 %i.n, %.lcssa3
  %i.p = icmp ugt i64 %.sroa.5.0.ph.i.i.lcssa, %i.o
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.lcssa3, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.lcssa, i64 noundef 1, i64 noundef 1), !noalias !226925
  %i.q = load i64, ptr %i.a, align 8, !alias.scope !226926, !noalias !226925, !noundef !416
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i, %bb.c
  %.sink1.i.i.i = phi i64 [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i ], [ %.lcssa3, %bb.c ] ; 3 uses
  %i.r = icmp sgt i64 %.sink1.i.i.i, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !226926, !noalias !226925, !nonnull !416, !noundef !416
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink1.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i.i.lcssa, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.lcssa, i1 false), !noalias !226926
  %i.u = add nuw i64 %.sink1.i.i.i, %.sroa.5.0.ph.i.i.lcssa ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !226926, !noalias !226925
  br label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.lr.ph, %bb.b
  %.sroa.010.0.i.i5 = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.lr.ph ], [ %i.l, %bb.b ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i13, i64 %.sroa.010.0.i.i5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !226927, !noundef !416 ; 3 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_RNvNtCs5QD3CVEMyfH_10serde_json3ser6ESCAPE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !226927, !noundef !416 ; 3 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i13, i64 %.sroa.010.0.i.i5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = xor i64 %.sroa.010.0.i.i5, -1
  %i.ae = add i64 %.sroa.5.0.ph.i.i12, %i.ad      ; 3 uses
  %i.af = icmp eq i64 %.sroa.010.0.i.i5, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226931)
  %i.ag = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !226932, !noalias !226933, !noundef !416
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = icmp ugt i64 %.sroa.010.0.i.i5, %i.ah
  br i1 %i.ai, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i23.i.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i23.i.i: ; preds = %bb.e
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i.i5, i64 noundef 1, i64 noundef 1), !noalias !226933
  %i.aj = load i64, ptr %i.a, align 8, !alias.scope !226934, !noalias !226933, !noundef !416
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i23.i.i, %bb.e
  %.sink1.i22.i.i = phi i64 [ %i.aj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i23.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %i.ak = icmp sgt i64 %.sink1.i22.i.i, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !226934, !noalias !226933, !nonnull !416, !noundef !416
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink1.i22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i.i13, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i.i5, i1 false), !noalias !226934
  %i.an = add nuw i64 %.sink1.i22.i.i, %.sroa.010.0.i.i5 ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !226934, !noalias !226933
  br label %bb.f

bb.f:                                             ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i.i, %bb.d
  %i.ao = phi i64 [ %i.an, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i.i ], [ %i.k, %bb.d ] ; 6 uses
  %i.ap = icmp eq i8 %i.z, 117
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = and i8 %i.w, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = lshr i8 %i.w, 4
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCs5QD3CVEMyfH_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !226927, !noundef !416
  %i.aw = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCs5QD3CVEMyfH_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !226927, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226938)
  %i.ay = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !226939, !noalias !226940, !noundef !416
  %i.az = sub i64 %i.ay, %i.ao
  %i.ba = icmp ult i64 %i.az, 6
  br i1 %i.ba, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i25.i.i, label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i25.i.i: ; preds = %bb.g
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef 1, i64 noundef 1), !noalias !226940
  %i.bb = load i64, ptr %i.a, align 8, !alias.scope !226941, !noalias !226940, !noundef !416
  br label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i25.i.i, %bb.g
  %.sink4.i.i.i = phi i64 [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i25.i.i ], [ %i.ao, %bb.g ] ; 3 uses
  %i.bc = icmp sgt i64 %.sink4.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load ptr, ptr %i.g, align 8, !alias.scope !226941, !noalias !226940, !nonnull !416, !noundef !416
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink4.i.i.i ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.be, align 1, !noalias !226942
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 %i.av, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !226942
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 %i.ax, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !226942
  %i.bf = add nuw i64 %.sink4.i.i.i, 6
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226946)
  %i.bg = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !226947, !noalias !226948, !noundef !416
  %i.bh = sub i64 %i.bg, %i.ao
  %i.bi = icmp ult i64 %i.bh, 2
  br i1 %i.bi, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !226948
  %i.bj = load i64, ptr %i.a, align 8, !alias.scope !226949, !noalias !226948, !noundef !416
  br label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i

_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, %bb.h
  %.sink5.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ], [ %i.ao, %bb.h ] ; 3 uses
  %i.bk = icmp sgt i64 %.sink5.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !226949, !noalias !226948, !nonnull !416, !noundef !416
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink5.i.i.i ; 2 uses
  store i8 92, ptr %i.bm, align 1, !noalias !226950
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.z, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !noalias !226950
  %i.bn = add nuw i64 %.sink5.i.i.i, 2
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i, %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %storemerge.i.i = phi i64 [ %i.bn, %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i.i ], [ %i.bf, %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  store i64 %storemerge.i.i, ptr %i.a, align 8, !noalias !226927
  %exitcond.not.i.i4 = icmp eq i64 %i.ae, 0
  br i1 %exitcond.not.i.i4, label %.outer.i.i._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.lr.ph

_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %.outer.i.i._crit_edge
  %i.bo = phi i64 [ %.lcssa3, %.outer.i.i._crit_edge ], [ %i.u, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226954)
  %i.bp = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !226955, !noalias !226956, !noundef !416
  %i.bq = icmp eq i64 %i.bp, %i.bo
  br i1 %i.bq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i8.i, label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i8.i: ; preds = %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.bo, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !226956
  %i.br = load i64, ptr %i.a, align 8, !alias.scope !226957, !noalias !226956, !noundef !416
  br label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCs5QD3CVEMyfH_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i8.i
  %.sink1.i7.i = phi i64 [ %i.br, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i8.i ], [ %i.bo, %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.bs = icmp sgt i64 %.sink1.i7.i, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %i.g, align 8, !alias.scope !226957, !noalias !226956, !nonnull !416, !noundef !416
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sink1.i7.i
  store i8 34, ptr %i.bu, align 1, !noalias !226958
  %i.bv = add nuw i64 %.sink1.i7.i, 1
  store i64 %i.bv, ptr %i.a, align 8, !alias.scope !226957, !noalias !226956
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan10properties(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @3970, i64 11 }
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan6schema(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs1_NtCscI6d9CVNmLh_4core7convertINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EINtB5_4IntoINtNtBD_4sync3ArcB17_EE4intoCsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226964)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !419, !invariant.load !416, !alias.scope !226965 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !420, !invariant.load !416, !alias.scope !226965 ; 4 uses
  %i.e = invoke { i64, i64 } @_RNvNtCs40k4W9msRzi_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 536870913) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.b)
          to label %.noexc.i.i unwind label %bb.g, !noalias !226965 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc.i.i
  %i.i = inttoptr i64 %i.f to ptr
  br label %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.c:                                             ; preds = %.noexc.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !226965
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.f) #68, !noalias !226965
  br label %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.k = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.k, label %bb.d, label %bb.e, !prof !426

bb.d:                                             ; preds = %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.f, i64 noundef %i.g) #72
          to label %.noexc11.i.i unwind label %bb.g, !noalias !226965

.noexc11.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !226965
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.l, align 8, !noalias !226965
  %i.m = add nsw i64 %i.d, -1                     ; 3 uses
  %i.n = and i64 %i.m, -16
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %0, i64 %i.b, i1 false), !noalias !226965
  %i.q = add nuw i64 %i.m, %i.b
  %i.r = sub nsw i64 0, %i.d                      ; 2 uses
  %i.s = and i64 %i.q, %i.r
  %i.t = add nuw i64 %i.s, %i.m
  %i.u = and i64 %i.t, %i.r                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs1a_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB8_5boxed3BoxBH_EE4fromCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs0_NtCscI6d9CVNmLh_4core5allocRNtNtCs40k4W9msRzi_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXs0_NtCscI6d9CVNmLh_4core5allocRNtNtCs40k4W9msRzi_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.d) #68, !noalias !226965
  br label %_RNvXs1a_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB8_5boxed3BoxBH_EE4fromCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %0, ptr nonnull readonly align 8 dereferenceable(112) %1) #73
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !226965
  unreachable

_RNvXs1a_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB8_5boxed3BoxBH_EE4fromCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.e, %_RNvXs0_NtCscI6d9CVNmLh_4core5allocRNtNtCs40k4W9msRzi_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.y = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.i.i.i.i.i, 0
  %i.z = insertvalue { ptr, ptr } %i.y, ptr %1, 1
  ret { ptr, ptr } %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1Z_4SendEL_EE4intoCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226976)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !226976 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !226976 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !226976
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !226977
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !226977 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtB7_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i unwind label %bb.c, !noalias !226976

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !226978
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtB7_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from.exit: ; preds = %bb.a
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !226976
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !226976
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !226976
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1G_4SendEL_EE4intoCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 16, 161) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !226994
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) %1, i64 noundef range(i64 1, 17) 1) #68, !noalias !226994 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 16, 161) %1) #72, !noalias !226995
  unreachable

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 16, 161) %1, i1 false), !noalias !226996
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !226997
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !226997 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNvXsh_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtB7_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromReE4from.exit, !prof !448

bb.c:                                             ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i unwind label %bb.d, !noalias !226998

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 16, 161) %1, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !226999
  resume { ptr, i32 } %i.e

_RNvXsh_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtB7_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromReE4from.exit: ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  store i64 %1, ptr %i.c, align 8, !noalias !226998
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !226998
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !226998
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a

bb.ap:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.bq, label %bb.bp

bb.at:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.bs, label %bb.br

bb.au:                                            ; preds = %bb.bt, %bb.bp, %bb.bn, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.av:                                            ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !416
  %i.bi = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.o
  %.sroa.5.0 = phi i64 [ undef, %bb.o ], [ %i.bh, %bb.av ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %i.bm, align 8
  store i8 13, ptr %0, align 8
  br label %bb.au

bb.ax:                                            ; preds = %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.bn, align 8
  store i8 27, ptr %0, align 8
  br label %bb.au

bb.az:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.bo, align 8
  store i8 28, ptr %0, align 8
  br label %bb.au

bb.bb:                                            ; preds = %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !416
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bq, ptr %i.bs, align 4
  store i8 29, ptr %0, align 8
  br label %bb.au

bb.bd:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.af
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.bt, align 8
  store i8 30, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.ag
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bu, align 8
  store i8 31, ptr %0, align 8
  br label %bb.au

bb.bh:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.ah
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.bw, align 8
  store i8 32, ptr %0, align 8
  br label %bb.au

bb.bj:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %bb.ai
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !428, !noundef !416
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.by, ptr %i.cb, align 1
  store i8 33, ptr %0, align 8
  br label %bb.au

bb.bl:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.bm ], [ %i.ax, %bb.an ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #73
          to label %common.resume unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !235740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235740
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.ce, align 8
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.bo:                                            ; preds = %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.bp:                                            ; preds = %bb.as
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !428, !noundef !416
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ch, ptr %i.cj, align 1
  store i8 39, ptr %0, align 8
  br label %bb.au

bb.bq:                                            ; preds = %bb.as
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.at
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cl, ptr %i.cp, align 8
  store i8 40, ptr %0, align 8
  br label %bb.au

bb.bu:                                            ; preds = %bb.br
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs2_NtCs8l9P2lL5xvY_16lance_index_core6scalarNtB5_17ScalarIndexParamsNtB7_11IndexParams10index_name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4224, i64 20 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs8l9P2lL5xvY_16lance_index_core6scalarNtB5_17ScalarIndexParamsNtB7_11IndexParams6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @4225, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespaceNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !235753
  store ptr %i.d, ptr %i.a, align 8, !noalias !235753
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsr_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !235753
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @7431, ptr noundef nonnull %i.a), !noalias !235754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !416, !noundef !416
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !align !417, !noundef !416
  %i.h = invoke noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @127, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !235755)
  call void @llvm.experimental.noalias.scope.decl(metadata !235756)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !419, !alias.scope !235757, !noundef !416 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !235757, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !235757
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !235758)
  call void @llvm.experimental.noalias.scope.decl(metadata !235759)
  %.val.i.i17 = load i64, ptr %i.c, align 8, !range !419, !alias.scope !235760, !noundef !416 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i17, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i18 = load ptr, ptr %i.m, align 8, !alias.scope !235760, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18, i64 noundef %.val.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !235760
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit19

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit19: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode11expressionsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 0, ptr %0, align 8, !alias.scope !235763
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !alias.scope !235763
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !235763
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode15fmt_for_explainCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs3_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNodeNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore15fmt_for_explain(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode16check_invariantsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias readonly align 16 captures(none) %1, i1 zeroext %2) unnamed_addr #33 {
bb.a:
  store i64 -1, ptr %0, align 8, !alias.scope !235766
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode21with_exprs_and_inputsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [736 x i8], align 16              ; 8 uses
  %i.b = alloca [720 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs3_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNodeNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs(ptr noalias noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
  %i.c = load i64, ptr %i.b, align 16, !range !774, !noundef !416 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(672) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(672) %.sroa.5.0..sroa_idx, i64 672, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 1, ptr %i.a, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.c, ptr %i.g, align 16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !235769
  %i.h = tail call noundef align 16 dereferenceable_or_null(736) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 736, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !235769 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 736) #72
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(720) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.j

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %i.h, ptr noundef nonnull align 16 dereferenceable(736) %i.a, i64 736, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1959, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode23supports_limit_pushdownCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode24necessary_children_exprsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs3_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNodeNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore24necessary_children_exprs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode35prevent_predicate_push_down_columnsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(720) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.val = load ptr, ptr %i.a, align 16, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RNvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extension27get_all_columns_from_schema(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode4nameCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4519, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode6as_anyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @4229, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode6dyn_eqCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !416, !nonnull !416
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 3 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !416, !nonnull !416
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.e)
  %i.i = load i128, ptr %i.a, align 16, !noundef !416
  %i.j = icmp eq i128 %i.i, 91379466873452808744540226221981619695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.k = call noundef zeroext i1 @_RNvXNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB2_20MergeInsertWriteNodeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode6inputsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs3_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNodeNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore6inputs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode6schemaCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(ret: address, read_provenance) dereferenceable(720) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef range(i8 -2, 2) i8 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode7dyn_ordCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !416, !nonnull !416
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 3 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !416, !nonnull !416
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.e)
  %i.i = load i128, ptr %i.a, align 16, !noundef !416
  %i.j = icmp eq i128 %i.i, 91379466873452808744540226221981619695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.k = call noundef i8 @_RNvXs1_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNodeNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ -2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9extensionNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeNtB5_22UserDefinedLogicalNode8dyn_hashCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 25 uses
  store ptr %2, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235877)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235879)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !235880, !noalias !235881, !nonnull !416, !noundef !416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.g = load i64, ptr %i.f, align 16, !alias.scope !235880, !noalias !235881, !noundef !416 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !416, !noalias !235882, !nonnull !416
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !235882, !inline_history !235778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235883)
  %.idx.i.i.i = mul nuw nsw i64 %i.g, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !416, !noalias !235884, !nonnull !416
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.n, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 8
  %.sroa.0.0.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !235883, !noalias !235885, !nonnull !416, !noundef !416
  %i.p = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 16
  %.sroa.0.0.val3.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !235883, !noalias !235885, !noundef !416
  tail call void %i.m(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i.i.i, i64 noundef %.sroa.0.0.val3.i.i.i), !noalias !235886, !inline_history !235784
  %i.q = icmp eq ptr %i.n, %i.j
  br i1 %i.q, label %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.b

_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235887)
  %i.s = load i64, ptr %i.r, align 16, !range !569, !alias.scope !235888, !noalias !235889, !noundef !416 ; 3 uses
  %i.t = icmp ne i64 %i.s, 43
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nsw i64 %i.s, -40
  %i.v = icmp sgt i64 %i.s, 39
  %i.w = select i1 %i.v, i64 %i.u, i64 3          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !416, !noalias !235890, !nonnull !416
  tail call void %i.y(ptr noundef nonnull %1, i64 noundef %i.w), !noalias !235890, !inline_history !235790
  switch i64 %i.w, label %_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i [
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.c:                                             ; preds = %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aa = load ptr, ptr %i.z, align 16, !alias.scope !235888, !noalias !235889, !nonnull !416, !noundef !416
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !235888, !noalias !235889, !noundef !416
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !416, !noalias !235891, !nonnull !416
  tail call void %i.ae(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac), !noalias !235892, !inline_history !235794
  br label %_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.d:                                             ; preds = %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBV_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !alias.scope !235893, !noalias !235880
  %.pre3.i = load ptr, ptr %i.b, align 8, !alias.scope !235893, !noalias !235880
  br label %_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.d, %bb.c, %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.af = phi ptr [ %.pre3.i, %bb.d ], [ %2, %bb.c ], [ %2, %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.ag = phi ptr [ %.pre.i, %bb.d ], [ %1, %bb.c ], [ %1, %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.ai = load i8, ptr %i.ah, align 4, !range !428, !alias.scope !235880, !noalias !235881, !noundef !416
  call void @llvm.experimental.noalias.scope.decl(metadata !235894)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !416, !noalias !235894, !nonnull !416
  call void %i.ak(ptr noundef nonnull %i.ag, i8 noundef %i.ai), !noalias !235894, !inline_history !235797
  call void @llvm.experimental.noalias.scope.decl(metadata !235895)
  call void @llvm.experimental.noalias.scope.decl(metadata !235896)
  %i.al = load i64, ptr %i.c, align 16, !range !562, !alias.scope !235897, !noalias !235898, !noundef !416 ; 2 uses
  %i.am = add nsw i64 %i.al, -40
  %i.an = icmp sgt i64 %i.al, 39
  %i.ao = select i1 %i.an, i64 %i.am, i64 2       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235899)
  %i.ap = load ptr, ptr %i.a, align 8, !alias.scope !235900, !noalias !235897, !nonnull !416, !noundef !416
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !235900, !noalias !235897, !nonnull !416, !align !417, !noundef !416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !416, !noalias !235901, !nonnull !416
  call void %i.as(ptr noundef nonnull %i.ap, i64 noundef %i.ao), !noalias !235901, !inline_history !235803
  %i.at = icmp eq i64 %i.ao, 2
  br i1 %i.at, label %bb.e, label %_RINvXsr_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_22WhenNotMatchedBySourceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1t_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBV_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(368) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvXsr_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_22WhenNotMatchedBySourceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1t_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsr_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_22WhenNotMatchedBySourceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1t_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %_RINvXsy_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6_11WhenMatchedNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1i_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !235880, !noalias !235881, !noundef !416
  call void @llvm.experimental.noalias.scope.decl(metadata !235902)
  %i.aw = load ptr, ptr %i.a, align 8, !alias.scope !235903, !noalias !235880, !nonnull !416, !noundef !416
  %i.ax = load ptr, ptr %i.b, align 8, !alias.scope !235903, !noalias !235880, !nonnull !416, !align !417, !noundef !416
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !416, !noalias !235902, !nonnull !416
  call void %i.az(ptr noundef nonnull %i.aw, i32 noundef %i.av), !noalias !235902, !inline_history !235806
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 669
  %i.bb = load i8, ptr %i.ba, align 1, !range !428, !alias.scope !235880, !noalias !235881, !noundef !416
  call void @llvm.experimental.noalias.scope.decl(metadata !235904)
  %i.bc = load ptr, ptr %i.a, align 8, !alias.scope !235905, !noalias !235880, !nonnull !416, !noundef !416
  %i.bd = load ptr, ptr %i.b, align 8, !alias.scope !235905, !noalias !235880, !nonnull !416, !align !417, !noundef !416
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
end_hunk_3
begin_hunk_4_@_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepNcNtINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE2Ok0EINtNtB7_10try_future6MapErrINtNtB1p_7timeout7TimeoutB1l_ENCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB1l_E0EENtNtNtB2b_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.g = load i8, ptr %i.f, align 8, !range !429, !noalias !236042, !noundef !416
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ], !prof !767

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsfR8GmIBoxTX_21lance_namespace_impls), !noalias !236042
  store i8 1, ptr %i.f, align 8, !noalias !236042
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr i8, ptr %i.e, i64 68
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.h, align 4, !range !428, !noalias !236042, !noundef !416
  %i.i = getelementptr i8, ptr %i.e, i64 69
  %.val6.i.i.i.i.i.i.i = load i8, ptr %i.i, align 1, !noalias !236042
  %i.j = trunc nuw i8 %.val.i.i.i.i.i.i.i to i1
  %i.k = tail call noundef zeroext i1 @_RNvMNtNtCseXbohGRa9jr_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.j, i8 %.val6.i.i.i.i.i.i.i), !noalias !236042
  br label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi i1 [ %i.k, %bb.f ], [ true, %bb.d ]
  %i.l = tail call noundef zeroext i1 @_RNvXs_NtNtCseXbohGRa9jr_5tokio4time5sleepNtB4_5SleepNtNtNtCscI6d9CVNmLh_4core6future6future6Future4poll(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !236043 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCseXbohGRa9jr_5tokio4time7timeout10poll_delay(i1 noundef zeroext %.sroa.0.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !236043
  br i1 %i.m, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future11into_futureINtB5_10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1w_5sleep5SleepEENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.h

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future11into_futureINtB5_10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1w_5sleep5SleepEENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.g
  store i8 -2, ptr %0, align 8, !alias.scope !236043, !noalias !236044
  br label %_RNvXsX_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_6MapErrINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1c_5sleep5SleepENCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB1T_E0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.h:                                             ; preds = %bb.g, %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.n = load i64, ptr %1, align 8, !range !437, !noalias !236045, !noundef !416
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.p, align 8, !noalias !236045
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.417.0.copyload.i.i.i = load i32, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !236045 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.6.0.copyload.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !236045
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1Z_5sleep5SleepEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %1)
          to label %_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.j, !noalias !236046

common.resume:                                    ; preds = %bb.z, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.j ], [ %eh.lpad-body.i.i.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8, !noalias !236047
  br label %common.resume

_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.i
  store i64 -1, ptr %1, align 8, !noalias !236047
  %i.r = icmp eq i32 %.sroa.417.0.copyload.i.i.i, -1
  br i1 %i.r, label %_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.k, !prof !542

_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3712) #72, !noalias !236043
  unreachable

bb.k:                                             ; preds = %_RNvMNvNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future3map1__INtB4_3MapINtNtNtB8_10try_future11into_future10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1X_5sleep5SleepEEINtNtBa_3fns8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB2E_E0EE15project_replaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236041
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = add i32 %.sroa.6.0.copyload.i.i.i, 1
  call void @_RNvNtNtCshkPeWWG1flk_5lance2io6commit13timeout_error(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, i64 noundef %.sroa.016.0.copyload.i.i.i, i32 noundef %.sroa.417.0.copyload.i.i.i, i32 noundef %i.s), !noalias !236048
  br label %_RNvXsd_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepE0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB1P_5error7ElapsedEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  store i8 -1, ptr %i.a, align 8, !alias.scope !236049, !noalias !236050
  br label %_RNvXsd_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepE0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB1P_5error7ElapsedEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvXsd_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepE0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB1P_5error7ElapsedEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !236044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !236041
  br label %_RNvXsX_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_6MapErrINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1c_5sleep5SleepENCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB1T_E0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236052)
  %i.u = load i64, ptr %i.t, align 8, !range !437, !noalias !236053, !noundef !416
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.o, label %bb.p, !prof !426

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3713, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3714) #72, !noalias !236053
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.w = tail call noundef zeroext i1 @_RNvXs_NtNtCseXbohGRa9jr_5tokio4time5sleepNtB4_5SleepNtNtNtCscI6d9CVNmLh_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !236054
  br i1 %i.w, label %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepNcNtINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE2Ok0ENtNtNtB1P_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load i64, ptr %i.t, align 8, !range !437, !noalias !236055, !noundef !416 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236056)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236058)
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !236059, !noalias !236055, !nonnull !416, !noundef !416
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !236060
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.w, !noalias !236061

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236063)
  %i.ae = load ptr, ptr %i.z, align 8, !alias.scope !236064, !noalias !236055, !nonnull !416, !noundef !416
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !236065
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.w, !noalias !236061

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseXbohGRa9jr_5tokio7runtime5TimerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ai) #73
          to label %bb.z unwind label %bb.x, !noalias !236061

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !236061
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseXbohGRa9jr_5tokio7runtime5TimerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ak)
          to label %bb.ab unwind label %bb.y, !noalias !236061

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.y ], [ %i.ah, %bb.w ]
  store i64 -1, ptr %i.t, align 8, !noalias !236053
  br label %common.resume

bb.aa:                                            ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3712) #72, !noalias !236054
  unreachable

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9VQXu8FuIrQ_16pin_project_lite9___private22UnsafeDropInPlaceGuardNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  store i64 -1, ptr %i.t, align 8, !noalias !236053
  br label %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepNcNtINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE2Ok0ENtNtNtB1P_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepNcNtINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE2Ok0ENtNtNtB1P_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.ab
  %storemerge.i.i = phi i8 [ -1, %bb.ab ], [ -2, %bb.p ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !236054, !noalias !236066
  br label %_RNvXsX_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_6MapErrINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1c_5sleep5SleepENCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB1T_E0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXsX_NtNtCs9p5Dg9WVwvP_12futures_util6future10try_futureINtB5_6MapErrINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1c_5sleep5SleepENCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuB1T_E0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXsd_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvNtNtCshkPeWWG1flk_5lance2io6commit13maybe_timeoutuNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepE0EINtB5_7FnOnce1INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB1P_5error7ElapsedEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6future10try_future11into_futureINtB5_10IntoFutureINtNtNtCseXbohGRa9jr_5tokio4time7timeout7TimeoutNtNtB1w_5sleep5SleepEENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvXsd_NtNtCs9p5Dg9WVwvP_12futures_util6future6futureINtB5_3MapNtNtNtCseXbohGRa9jr_5tokio4time5sleep5SleepNcNtINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE2Ok0ENtNtNtB1P_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs9vBodVtS8mO_24datafusion_physical_expr11expressions6columnNtB5_6ColumnNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3776, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @972, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3566, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4234, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @306)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs2_NtNtCshkPeWWG1flk_5lance5index6vectorNtB5_17VectorIndexParamsNtCs8l9P2lL5xvY_16lance_index_core11IndexParams10index_name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4235, i64 20 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCshkPeWWG1flk_5lance5index6vectorNtB5_17VectorIndexParamsNtCs8l9P2lL5xvY_16lance_index_core11IndexParams6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @4236, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtB9_6traits6Reader10block_size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtB9_6traits6Reader4path(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4240, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4241, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3863, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4242, i64 noundef 10, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4238, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4243, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3863, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4244, i64 noundef 19, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3863, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4245, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4239)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_13InlineContentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.019.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236111
  %i.c = shl nuw nsw i64 %.16.val, 5              ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !236111
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !236111
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !236112
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #68, !noalias !236112 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #72, !noalias !236111
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !236111
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !236111
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %.16.val
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.012.061.i.i = phi ptr [ %.8.val, %.lr.ph.i.i ], [ %i.q, %.loopexit.i.i ] ; 5 uses
  %.sroa.7.059.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.r, %.loopexit.i.i ] ; 3 uses
  %.sroa.10.058.i.i = phi i64 [ %.16.val, %.lr.ph.i.i ], [ %i.n, %.loopexit.i.i ]
  %i.n = add nsw i64 %.sroa.10.058.i.i, -1        ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.061.i.i, %i.k
  br i1 %i.o, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.e:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.061.i.i, i64 32
  %i.r = add nuw nsw i64 %.sroa.7.059.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236113)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.061.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !236114, !noalias !236115, !noundef !416
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.061.i.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !236114, !noalias !236115, !nonnull !416, !noundef !416 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.061.i.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !236114, !noalias !236115, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236117
  %i.w = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.w, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i, label %bb.g

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i: ; preds = %bb.f
  store i64 0, ptr %i.a, align 8, !noalias !236117
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !236117
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = mul nuw nsw i64 %.val1.i.i.i, 72         ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !236118
  %i.y = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, 17) 8) #68, !noalias !236118 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %.lr.ph.preheader.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #72
          to label %.noexc.i.i unwind label %bb.e, !noalias !236111

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  store i64 %.val1.i.i.i, ptr %i.a, align 8, !noalias !236117
  store ptr %i.y, ptr %i.l, align 8, !noalias !236117
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %.val1.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsi_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.012.071.i.i.i.i.i = phi ptr [ %i.ae, %_RNvXsi_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.val.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.sroa.7.070.i.i.i.i.i = phi i64 [ %i.af, %_RNvXsi_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.10.069.i.i.i.i.i = phi i64 [ %i.ab, %_RNvXsi_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.val1.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.ab = add nsw i64 %.sroa.10.069.i.i.i.i.i, -1 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.012.071.i.i.i.i.i, %i.aa
  br i1 %i.ac, label %.loopexit.i.i, label %bb.j

bb.i:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.071.i.i.i.i.i, i64 72
  %i.af = add nuw nsw i64 %.sroa.7.070.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236119)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.071.i.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !236120, !noalias !236121, !nonnull !416, !noundef !416
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.071.i.i.i.i.i, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !236120, !noalias !236121, !noundef !416 ; 7 uses
  %i.ai = icmp eq i64 %.val4.i.i.i.i.i.i, 0       ; 2 uses
  br i1 %i.ai, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !236122
  %i.aj = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val4.i.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #68, !noalias !236122 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val4.i.i.i.i.i.i) #72
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !236117

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val4.i.i.i.i.i.i, i1 false), !noalias !236123
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.j
  %.sroa.6.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.m ], [ inttoptr (i64 1 to ptr), %bb.j ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.071.i.i.i.i.i, i64 32
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !236120, !noalias !236121, !nonnull !416, !noundef !416
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.071.i.i.i.i.i, i64 40
  %.val8.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !236120, !noalias !236121, !noundef !416 ; 4 uses
  %i.an = mul nuw i64 %.val8.i.i.i.i.i.i, 24      ; 4 uses
  %i.ao = icmp eq i64 %.val8.i.i.i.i.i.i, 0       ; 2 uses
  br i1 %i.ao, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !236124
  %i.ap = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, 17) 8) #68, !noalias !236124 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !noalias !236125

.noexc.i.i.i.i.i.i:                               ; preds = %bb.o
  unreachable

end_hunk_4
begin_hunk_5_@_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !416
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noundef !416
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %bb.ak, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !416
  %i.di = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !416
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !416
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !416
  %i.dp = icmp eq i8 %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !428, !noundef !416
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !428, !noundef !416
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ap

bb.aa:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !416 ; 3 uses
  %.not = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !416 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  %brmerge186 = or i1 %.not, %i.ee
  %.mux = and i1 %.not, %i.ee
  br i1 %brmerge186, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !noundef !416 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !noundef !416
  %i.ej = icmp eq ptr %i.eb, %i.ed                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, %i.ei                ; 2 uses
  %i.el = and i1 %i.ej, %i.ek
  %.not20 = xor i1 %i.ek, true
  %brmerge = or i1 %i.ej, %.not20
  br i1 %brmerge, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.em, i64 %i.eh)
  %i.eo = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.er = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eq)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eu = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.et)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ff = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fi = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fh)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.loopexit:                                        ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread9.i.i.i.i, %bb.p, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !range !428, !noundef !416
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !428, !noundef !416
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.fs = load i8, ptr %i.fp, align 8, !range !622, !noundef !416 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 8, !range !622, !noundef !416
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !noundef !416
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !noundef !416
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !noundef !416
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gd = load i8, ptr %i.gc, align 2, !noundef !416
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gg = load i8, ptr %i.gf, align 2, !noundef !416
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gi = load i8, ptr %i.gh, align 2, !noundef !416
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gl = load i8, ptr %i.gk, align 2, !noundef !416
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !noundef !416
  %i.go = icmp eq i8 %i.gl, %i.gn
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.gt = icmp eq ptr %i.gq, %i.gs
  br i1 %i.gt, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gv)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.gz = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gy)
  br i1 %i.gz, label %bb.aq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.z, %bb.ap
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.he = icmp eq ptr %i.hb, %i.hd
  br i1 %i.he, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hh = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.hf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.hg)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_10TracedExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(64) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_10TracedExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4696, i64 10 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader10block_size(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 65536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader14io_parallelism(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 1024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader4path(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCsl5zbFZW529v_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen6Schema3IntENtB5_10Verifiable12run_verifierCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 19 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.21.i = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.16108.i = alloca [48 x i8], align 8      ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 7 uses
  %i.j = alloca [32 x i8], align 16               ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.619.i = alloca [32 x i8], align 8        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239768)
  %i.l = and i64 %2, 3
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 4) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !239769, !noalias !239770, !noundef !416 ; 9 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !239769, !noalias !239770, !noundef !416
  %i.t = add i64 %i.s, 4                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !alias.scope !239769, !noalias !239770
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !239769, !noalias !239770, !nonnull !416, !align !417, !noundef !416
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !239771, !noundef !416
  %i.y = icmp ugt i64 %i.t, %i.x
  br i1 %i.y, label %bb.k, label %_RINvMs3_NtCsl5zbFZW529v_11flatbuffers8verifierNtB6_8Verifier9in_buffermECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvMs3_NtCsl5zbFZW529v_11flatbuffers8verifierNtB6_8Verifier9in_buffermECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c
  %i.z = icmp ult i64 %2, %i.p
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMs3_NtCsl5zbFZW529v_11flatbuffers8verifierNtB6_8Verifier9in_buffermECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !239767, !noalias !239772, !nonnull !416, !noundef !416 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !239773, !noundef !416
  %i.ad = or disjoint i64 %2, 1                   ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.p
  br i1 %i.ae, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvMs3_NtCsl5zbFZW529v_11flatbuffers8verifierNtB6_8Verifier9in_buffermECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3329) #72, !noalias !239773
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !noalias !239773, !noundef !416
  %i.ah = or disjoint i64 %2, 2                   ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.p
  br i1 %i.ai, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3330) #72, !noalias !239773
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = or disjoint i64 %2, 3                   ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %i.p
  br i1 %i.ak, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3331) #72, !noalias !239773
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3332) #72, !noalias !239773
  unreachable

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.15.0.ph = phi i64 [ undef, %bb.c ], [ ptrtoint (ptr @117 to i64), %bb.a ], [ %i.n, %bb.b ]
  %.sroa.14.0.ph = phi i64 [ undef, %bb.c ], [ -1, %bb.a ], [ %2, %bb.b ]
  %.sroa.0.0.ph = phi i64 [ -9223372036854775800, %bb.c ], [ -9223372036854775804, %bb.a ], [ -9223372036854775803, %bb.b ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %.sroa.514.0..sroa_idx, align 4
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.14.0.ph, ptr %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.7.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.15.0.ph, ptr %.sroa.514.sroa.7.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.8.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 3, ptr %.sroa.514.sroa.8.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.9.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %.sroa.514.sroa.9.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  br label %bb.an

bb.l:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  %i.am = load i8, ptr %i.al, align 1, !noalias !239773, !noundef !416
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !noalias !239773, !noundef !416
  %.sroa.6.0.insert.ext.i = zext i8 %i.ao to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.am to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.ag to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.ac to i64
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i, i64 %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239774)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16108.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.16108.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !239775
  call fastcc void @_RNvMs3_NtCsl5zbFZW529v_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ap), !noalias !239774
  %i.ar = load i64, ptr %i.k, align 8, !range !463, !noalias !239775, !noundef !416 ; 2 uses
  %.not.i = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !239775
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.540.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.537.0..sroa_idx.i, i64 32, i1 false), !noalias !239776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !239775
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.439.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i, i64 32, i1 false), !noalias !239776
  store i64 %i.ar, ptr %0, align 8, !alias.scope !239774, !noalias !239776
  br label %bb.am

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !239775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i, i64 32, i1 false), !noalias !239775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !239779
  call void @_RNvMs4_NtCsl5zbFZW529v_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i16 noundef 4), !noalias !239780
  %i.at = load i64, ptr %i.h, align 8, !range !463, !noalias !239779, !noundef !416 ; 2 uses
  %.not.i.i = icmp eq i64 %i.at, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !239779 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !239779 ; 6 uses
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16108.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.619.0..sroa_idx.i.i, i64 48, i1 false), !noalias !239775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !239779
  br label %_RINvMs4_NtCsl5zbFZW529v_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldlReECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !239779
  %i.ay = trunc nuw i64 %i.av to i1
  br i1 %i.ay, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !239779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !239779
  %i.az = load ptr, ptr %i.j, align 16, !alias.scope !239778, !noalias !239781, !nonnull !416, !align !417, !noundef !416 ; 3 uses
end_hunk_5
begin_hunk_6_@_RNvXs5_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_22UpsertManifestMutationNtB5_22ManifestStreamMutation20process_existing_row:bb.a

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.l
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest16ManifestRowValueEBH_(ptr noalias noundef align 8 dereferenceable(104) %2)
  ret void

bb.n:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringjNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXss_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB5_11WhenMatchedNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @4716, ptr noundef nonnull %i.b)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.e

bb.o:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringjNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ci = load i64, ptr %i.ch, align 16, !noundef !416 ; 2 uses
  %i.cj = icmp ult i64 %i.ax, %i.ci
  br i1 %i.cj, label %bb.q, label %.invoke

bb.p:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringjNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getBO_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %2, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @735, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit30 unwind label %bb.e

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !416, !noundef !416
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ax
  store i8 1, ptr %i.cm, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240028)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.co = load i64, ptr %i.cn, align 16, !alias.scope !240028, !noalias !240027, !noundef !416 ; 2 uses
  %i.cp = icmp ult i64 %i.ax, %i.co
  br i1 %i.cp, label %bb.r, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !240028, !noalias !240027, !nonnull !416, !noundef !416
  %i.cs = getelementptr inbounds nuw [80 x i8], ptr %i.cr, i64 %i.ax ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !240029, !nonnull !416, !noundef !416
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !240029, !noundef !416
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cy = load i8, ptr %i.cx, align 8, !range !428, !noalias !240029, !noundef !416
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !range !421, !noalias !240029, !noundef !416
  %.not.i31 = icmp eq i64 %i.da, -1
  br i1 %.not.i31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !240029, !nonnull !416, !noundef !416
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noalias !240029, !noundef !416
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.5.0.i = phi i64 [ %i.de, %bb.s ], [ undef, %bb.r ]
  %.sroa.0.0.i32 = phi ptr [ %i.dc, %bb.s ], [ null, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !range !421, !noalias !240029, !noundef !416
  %.not7.i = icmp eq i64 %i.dg, -1
  br i1 %.not7.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !240029, !nonnull !416, !noundef !416
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !240029, !noundef !416
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.52.0.i = phi i64 [ %i.dk, %bb.u ], [ undef, %bb.t ]
  %.sroa.01.0.i = phi ptr [ %i.di, %bb.u ], [ null, %bb.t ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !240028, !noalias !240027, !noundef !416 ; 2 uses
  %i.dn = icmp ult i64 %i.ax, %i.dm
  br i1 %i.dn, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dp = load ptr, ptr %i.do, align 16, !alias.scope !240028, !noalias !240027, !nonnull !416, !noundef !416
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.ax ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !421, !noalias !240029, !noundef !416
  %.not8.i = icmp eq i64 %i.dr, -1
  br i1 %.not8.i, label %bb.y, label %bb.x

.invoke:                                          ; preds = %bb.o, %bb.v, %bb.q
  %i.ds = phi i64 [ %i.co, %bb.q ], [ %i.dm, %bb.v ], [ %i.ci, %bb.o ]
  %i.dt = phi ptr [ @3345, %bb.q ], [ @3346, %bb.v ], [ @4714, %bb.o ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #72
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !240029, !nonnull !416, !noundef !416
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !240029, !noundef !416
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.54.0.i = phi i64 [ %i.dx, %bb.x ], [ undef, %bb.w ]
  %.sroa.03.0.i = phi ptr [ %i.dv, %bb.x ], [ null, %bb.w ]
  store ptr %i.cu, ptr %i.f, align 8, !alias.scope !240027, !noalias !240028
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.cw, ptr %i.dy, align 8, !alias.scope !240027, !noalias !240028
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 %i.cy, ptr %i.dz, align 8, !alias.scope !240027, !noalias !240028
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.0.0.i32, ptr %i.ea, align 8, !alias.scope !240027, !noalias !240028
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.5.0.i, ptr %i.eb, align 8, !alias.scope !240027, !noalias !240028
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.01.0.i, ptr %i.ec, align 8, !alias.scope !240027, !noalias !240028
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.52.0.i, ptr %i.ed, align 8, !alias.scope !240027, !noalias !240028
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sroa.03.0.i, ptr %i.ee, align 8, !alias.scope !240027, !noalias !240028
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.54.0.i, ptr %i.ef, align 8, !alias.scope !240027, !noalias !240028
  invoke fastcc void @_RNvMs2_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_20ManifestBatchBuilder6append(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef align 8 dereferenceable(120) %3, ptr noalias noundef align 8 dereferenceable(104) %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.z unwind label %bb.e

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.eg = load i8, ptr %i.g, align 8, !range !423, !noundef !416
  %.not26 = icmp eq i8 %i.eg, -1
  br i1 %.not26, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 -1, ptr %0, align 8
  br label %bb.m

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit30: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 14, ptr %i.j, align 8
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4715)
          to label %bb.ac unwind label %bb.e

bb.ac:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 18, ptr %i.d, align 8
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4717)
          to label %bb.ad unwind label %bb.e

bb.ad:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtNtNtCs5E8EBwPtAkp_24datafusion_physical_plan5joins9hash_join4execNtB5_12HashJoinExecNtNtBb_14execution_plan13ExecutionPlan10properties(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtNtCs5E8EBwPtAkp_24datafusion_physical_plan5joins9hash_join4execNtB5_12HashJoinExecNtNtBb_14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5_NtNtNtCs5E8EBwPtAkp_24datafusion_physical_plan5joins9hash_join4execNtB5_12HashJoinExecNtNtBb_14execution_plan13ExecutionPlan4name(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4721, i64 12 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXs5_NtNtNtCs5E8EBwPtAkp_24datafusion_physical_plan5joins9hash_join4execNtB5_12HashJoinExecNtNtBb_14execution_plan13ExecutionPlan5fetch(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #26 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !442, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXs5_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_13InlineContentNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240056)
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.eg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %.sroa.04.0.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240059)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !240060, !noundef !416 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.f = or i64 %i.d, 1
  %i.g = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 73
  %i.k = lshr i64 %i.j, 6
  %i.l = add nuw nsw i64 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 0, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !240060, !nonnull !416, !noundef !416
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !240060, !noundef !416 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.c, %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240061)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !240061, !noalias !240060, !noundef !416 ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.v = or i64 %i.t, 1
  %i.w = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = xor i64 %i.w, 63
  %i.y = mul nuw nsw i64 %i.x, 9
  %i.z = add nuw nsw i64 %i.y, 73
  %i.aa = lshr i64 %i.z, 6
  %i.ab = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.ab), !noalias !240062
  %i.ac = add nuw i64 %i.t, 1
  %i.ad = add nuw i64 %i.ac, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !240061, !noalias !240060, !nonnull !416, !noundef !416
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !240061, !noalias !240060, !noundef !416 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.sroa.04.0.i.i.i.i.i.i.i ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !240063, !noalias !240064, !noundef !416 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.am = or i64 %i.ak, 1
  %i.an = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = add nuw nsw i64 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.f ], [ 0, %.preheader.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !240063, !noalias !240064, !noundef !416 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = or i64 %i.au, 1
  %i.ax = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = xor i64 %i.ax, 63
  %i.az = mul nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = add nuw nsw i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !240063, !noalias !240064, !noundef !416 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = or i64 %i.be, 1
  %i.bh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = xor i64 %i.bh, 63
  %i.bj = mul nuw nsw i64 %i.bi, 9
  %i.bk = add nuw nsw i64 %i.bj, 73
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = add nuw nsw i64 %i.bl, 1
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.j ], [ 0, %bb.i ]
  %i.bn = add i64 %.sroa.02.0.i.i.i.i.i.i.i, 1
  %i.bo = add i64 %i.bn, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  %i.bp = add i64 %i.bo, %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %i.bq = add i64 %i.bp, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.ah
  br i1 %i.bs, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !240061, !noalias !240060, !nonnull !416, !noundef !416
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !240061, !noalias !240060, !noundef !416 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, label %.preheader.i2.i.i.i.i

.preheader.i2.i.i.i.i:                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i
  %.sroa.04.0.i.i.i3.i.i.i.i = phi i64 [ %i.dg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i4.i.i.i.i = phi i64 [ %i.df, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.04.0.i.i.i3.i.i.i.i ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !240065, !noalias !240064, !noundef !416 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i2.i.i.i.i
  %i.cb = or i64 %i.bz, 1
  %i.cc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = xor i64 %i.cc, 63
  %i.ce = mul nuw nsw i64 %i.cd, 9
  %i.cf = add nuw nsw i64 %i.ce, 73
  %i.cg = lshr i64 %i.cf, 6
  %i.ch = add nuw nsw i64 %i.cg, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.i2.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i5.i.i.i.i = phi i64 [ %i.ch, %bb.k ], [ 0, %.preheader.i2.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !240065, !noalias !240064, !noundef !416 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = or i64 %i.cj, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = xor i64 %i.cm, 63
  %i.co = mul nuw nsw i64 %i.cn, 9
  %i.cp = add nuw nsw i64 %i.co, 73
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = add nuw nsw i64 %i.cq, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.01.0.i.i.i.i.i.i6.i.i.i.i = phi i64 [ %i.cr, %bb.m ], [ 0, %bb.l ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !240065, !noalias !240064, !noundef !416 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = or i64 %i.ct, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = xor i64 %i.cw, 63
  %i.cy = mul nuw nsw i64 %i.cx, 9
  %i.cz = add nuw nsw i64 %i.cy, 73
  %i.da = lshr i64 %i.cz, 6
  %i.db = add nuw nsw i64 %i.da, 1
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i.i.i.i.i8.i.i.i.i = phi i64 [ %i.db, %bb.o ], [ 0, %bb.n ]
  %i.dc = add i64 %.sroa.02.0.i.i.i4.i.i.i.i, 1
  %i.dd = add i64 %i.dc, %.sroa.0.0.i.i.i.i.i.i5.i.i.i.i
  %i.de = add i64 %i.dd, %.sroa.01.0.i.i.i.i.i.i6.i.i.i.i
  %i.df = add i64 %i.de, %.sroa.02.0.i.i.i.i.i.i8.i.i.i.i ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.04.0.i.i.i3.i.i.i.i, 1 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.bw
  br i1 %i.dh, label %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, label %.preheader.i2.i.i.i.i

_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.0.0.i.i.i9.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.df, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2A_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4A_3Sum3sumINtB4_3MapIB5a_INtNtNtBa_5slice4iter4IterBV_EB2q_EB3w_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i7.i.i.i.i ]
  %i.di = add i64 %i.ah, %.sroa.0.0.i.i.i.i
  %i.dj = add i64 %i.di, %.sroa.0.0.i.i.i.i.i.i.i
  %i.dk = add i64 %i.dj, %i.bw
  %i.dl = add i64 %i.dk, %.sroa.0.0.i.i.i9.i.i.i.i ; 2 uses
  %i.dm = or i64 %i.dl, 1
  %i.dn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = xor i64 %i.dn, 63
  %i.dp = mul nuw nsw i64 %i.do, 9
  %i.dq = add nuw nsw i64 %i.dp, 73
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = add i64 %i.dl, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.dt = add i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dv = icmp eq i64 %i.du, %i.p
  br i1 %i.dv, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.dt, %_RNvXsl_NtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_detailsNtB5_5GroupNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i ]
  %i.dw = add i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  %i.dx = add i64 %i.dw, %.sroa.0.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dy = or i64 %i.dx, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = xor i64 %i.dz, 63
  %i.eb = mul nuw nsw i64 %i.ea, 9
  %i.ec = add nuw nsw i64 %i.eb, 73
  %i.ed = lshr i64 %i.ec, 6
  %i.ee = add i64 %i.dx, %.sroa.02.0.i.i.i
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.04.0.i.i.i, 1    ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %.16.val
  br i1 %i.eh, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.preheader.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionjjNvYBV_NtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2s_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4s_3Sum3sumINtB4_3MapIB52_INtNtNtBa_5slice4iter4IterBV_EB2i_EB3o_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.ei = add i64 %.sroa.0.0.i.i.i, %.16.val
  ret i64 %i.ei
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_indexNtB5_12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(64) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_indexNtB5_12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5_NtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_indexNtB5_12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @4722, i64 12 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_9WriteSinkNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 14, i64 11
  %.1 = select i1 %i.b, ptr @4724, ptr @4723
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5t_NtCs40MM8ukkVQd_9sqlparser3astNtB6_8IntervalNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240070)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !240070
  %i.f = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !240070 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72, !noalias !240070
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !240070, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240071
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.i)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.c, !inline_history !387

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 328, i64 noundef 8) #68, !noalias !240070
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.f, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !240071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240071
  store ptr %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !516, !noundef !416
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvXsS_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.k)
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit
  store i64 -1, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.m = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !516, !noundef !416
  %.not4 = icmp eq i64 %i.o, -1
  br i1 %.not4, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.p, %bb.h ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #73
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsS_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.n)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.m
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.m ], [ -1, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.f, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  store <2 x i64> %i.m, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.0.0, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.v, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value13DateTimeFieldEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #73
  br label %bb.g

bb.m:                                             ; preds = %bb.j
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx2, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.n:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6E_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !429, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6E_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6E_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_18TableIndexHintTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10033, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6Q_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_14TableIndexTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 3, i64 5
  %.1 = select i1 %i.b, ptr @4594, ptr @1001
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6U_NtCs40MM8ukkVQd_9sqlparser3astNtB6_8CastKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !481, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6U_NtCs40MM8ukkVQd_9sqlparser3astNtB6_8CastKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6U_NtCs40MM8ukkVQd_9sqlparser3astNtB6_8CastKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10034, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCs40MM8ukkVQd_9sqlparser6parserNtB5_11ParserErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !483, !noundef !416
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4779, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217)
end_hunk_6
begin_hunk_7_@_RNvXs7p_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  %i.anl = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.anl, i64 32, i1 false), !alias.scope !241464, !noalias !241451
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i32 %i.ank, ptr %i.ann, align 8, !alias.scope !241461, !noalias !241465
  %.sroa.0.0.copyload1.i309 = load i64, ptr %i.ak, align 8, !noalias !241452
  %.sroa.5.0..sroa_idx2.i310 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i306, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx2.i310, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !241452
  br label %bb.oe

bb.oa:                                            ; preds = %bb.ny
  %i.ano = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !241451, !inline_history !240646
  unreachable

bb.ob:                                            ; preds = %bb.np, %bb.oe
  %.sroa.545.sroa.6.0 = phi i8 [ undef, %bb.np ], [ %i.amw, %bb.oe ]
  %.sroa.545.sroa.4.0 = phi i64 [ undef, %bb.np ], [ %.sroa.0.0.i311, %bb.oe ]
  %.sroa.043.0 = phi i64 [ -1, %bb.np ], [ %.sroa.0498.0.copyload, %bb.oe ]
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anp, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anq, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anr, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ans, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ant, ptr noundef nonnull align 8 dereferenceable(328) %i.ck, i64 328, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sroa.043.0, ptr %i.anu, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4499, i64 80, i1 false)
  %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 %.sroa.545.sroa.4.0, ptr %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.545.sroa.5.0..sroa.545.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i306, i64 56, i1 false)
  %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 %.sroa.545.sroa.6.0, ptr %.sroa.545.sroa.6.0..sroa.545.0..sroa_idx.sroa_idx, align 8
  store i64 13, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.dc

bb.oc:                                            ; preds = %bb.ns
  %i.anv = landingpad { ptr, i32 }
          cleanup
  br label %.body314

.body314:                                         ; preds = %bb.nt, %bb.nu, %bb.oc
  %eh.lpad-body315 = phi { ptr, i32 } [ %i.anv, %bb.oc ], [ %.pn.i307, %bb.nu ], [ %.pn.i307, %bb.nt ] ; 2 uses
  %i.anw = load i64, ptr %i.ck, align 8, !range !487, !alias.scope !241466, !noundef !416
  %i.anx = icmp eq i64 %i.anw, -4
  br i1 %i.anx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit318, label %bb.od

bb.od:                                            ; preds = %.body314
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ck)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls.exit318 unwind label %bb.dd, !inline_history !593

bb.oe:                                            ; preds = %bb.nz, %bb.nw
  %.sroa.0.0.i311 = phi i64 [ %.sroa.0.0.copyload1.i309, %bb.nz ], [ -1, %bb.nw ]
  %.sroa.0498.0.copyload = load i64, ptr %i.am, align 8, !noalias !241450
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4499, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4499.0..sroa_idx, i64 56, i1 false)
  %.sroa.4499.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4499, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4499.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !241452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !241452
  br label %bb.ob
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7r_NtCs40MM8ukkVQd_9sqlparser3astNtB6_13CeilFloorKindNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !512, !noundef !416
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsS_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8A_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_23TableSampleSeedModifierNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 4, i64 10
  %.1 = select i1 %i.b, ptr @5096, ptr @5095
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8K_NtCs40MM8ukkVQd_9sqlparser3astINtB6_19OneOrManyWithParensNtB6_23LambdaFunctionParameterENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !421, !noundef !416
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5099, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5098)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5097, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #45 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !583, !noundef !416 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.f
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ @5111, %bb.c ], [ @380, %bb.d ], [ undef, %bb.a ], [ @5113, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs8_NtCs5E8EBwPtAkp_24datafusion_physical_plan11repartitionNtB5_15RepartitionExecNtNtB7_14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvXs8_NtCs5E8EBwPtAkp_24datafusion_physical_plan11repartitionNtB5_15RepartitionExecNtNtB7_14execution_plan13ExecutionPlan18cardinality_effect(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs8_NtCs5E8EBwPtAkp_24datafusion_physical_plan11repartitionNtB5_15RepartitionExecNtNtB7_14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @5114, i64 15 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB5_14DeletionVectorNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !483, !noundef !416 ; 2 uses
  switch i64 %i.a, label %default.unreachable17 [
    i64 0, label %bb.k
    i64 1, label %bb.b
    i64 2, label %bb.j
  ]

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241480)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load <2 x i64>, ptr %i.c, align 8, !alias.scope !241480, !noalias !241481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241482)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !241483, !noalias !241484, !noundef !416 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = icmp ugt i64 %i.h, 4611686018427387900
  br i1 %i.i, label %bb.e, label %bb.d, !prof !462

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.h, 2
  %i.k = add nuw i64 %i.j, 12
  %i.l = and i64 %i.k, -16                        ; 3 uses
  %i.m = add nsw i64 %i.f, 17                     ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, !prof !441

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !241485
  %i.r = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !241485 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !241485
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !241485
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ]
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.0.0.i.i9.i.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i.i, i64 %i.l
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.m, %bb.h ], [ %.pre.i.i, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %i.f, %bb.h ], [ %.sroa.7.0.ph.i.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241486)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !241487, !noalias !241488, !nonnull !416, !noundef !416 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull align 1 %i.w, i64 %.pre-phi.i.i, i1 false), !noalias !241489
  %i.x = xor i64 %i.f, -1
  %i.y = getelementptr [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = xor i64 %.sroa.5.0.i.i, -1
  %i.aa = getelementptr [4 x i8], ptr %.sroa.0.0.i.i, i64 %i.z ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = shl i64 %.sroa.5.0.i.i, 2
  %i.ac = add i64 %i.ab, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr nonnull align 4 %i.y, i64 %i.ac, i1 false), !noalias !241489
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !241487, !noalias !241488
  br label %_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %bb.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.i.i, %bb.i ], [ 0, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.i, %bb.i ], [ @98, %bb.b ]
  %i.af = phi <2 x i64> [ %i.ae, %bb.i ], [ zeroinitializer, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.af, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB7_13RoaringBitmapNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sink = phi i64 [ 2, %bb.j ], [ 1, %_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.a, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_9UpdateMapNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.023.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.525.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !241505
  %i.f = mul nuw nsw i64 %.val1, 48               ; 2 uses
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !241505
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !241505
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !241506
  %i.j = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 17) 8) #68, !noalias !241506 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #72, !noalias !241505
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.b
  store i64 %.val1, ptr %i.c, align 8, !noalias !241505
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !241505
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.val1
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.013.038.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.q, %bb.j ] ; 4 uses
  %.sroa.7.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.r, %bb.j ] ; 3 uses
  %.sroa.10.036.i.i = phi i64 [ %.val1, %.lr.ph.i.i ], [ %i.o, %bb.j ]
  %i.o = add nsw i64 %.sroa.10.036.i.i, -1        ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.038.i.i, %i.n
  br i1 %i.p, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

.loopexit.i.i:                                    ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.038.i.i, i64 48
  %i.r = add nuw nsw i64 %.sroa.7.037.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !241508
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.038.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !241509

.noexc.i.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.038.i.i, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !421, !alias.scope !241510, !noalias !241511, !noundef !416
  %.not.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !241508
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.i unwind label %bb.g, !noalias !241511

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_RNvXsb_NtCshkPeWWG1flk_5lance7datasetNtB5_7DatasetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.body21, %bb.al
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(80) %i.p) #73
  %.pre = load ptr, ptr %i.q, align 8, !alias.scope !245533
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.body, %bb.r
  %i.eu = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.eu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !245562
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !245563)
  call void @llvm.experimental.noalias.scope.decl(metadata !245564)
  %i.ev = load ptr, ptr %i.t, align 8, !alias.scope !245565, !nonnull !416, !noundef !416
  %i.ew = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !245565
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.be

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.bi
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8DataFileNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @3566, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @7173, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @7173, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @5817, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @5817, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @7174, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @7175, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @862, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @7176, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session10session_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(1904) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !noundef !416
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session11runtime_env(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1800
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session13table_options(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session15execution_props(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session16scalar_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session16window_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1424
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session17table_options_mut(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session19aggregate_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1376
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session22higher_order_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1328
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session23extension_type_registry(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @7177, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsb_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session6config(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1904) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1552
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_17ManifestNamespaceNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7178, i64 noundef 17)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3262, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3566)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3668, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3667)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3264, i64 noundef 19, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3265, i64 noundef 27, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3593)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7179, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3999, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3997, ptr noalias noundef nonnull readonly captures(address, read_provenance) @528, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3975, ptr noalias noundef nonnull readonly captures(address, read_provenance) @874, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3975, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3978, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3976)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsb_NtNtNtCshkPeWWG1flk_5lance2io4exec5utilsNtB5_10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @7181, i64 10 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsbe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7188, i64 noundef 25, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4667, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3880, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4126, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3752, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7189, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7187, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7190, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5665)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsbf_NtCs40MM8ukkVQd_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(704) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3400 x i8], align 8              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [3400 x i8], align 8              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [192 x i8], align 8           ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [328 x i8], align 8               ; 4 uses
  %i.l = alloca [88 x i8], align 8                ; 7 uses
  %i.m = alloca [328 x i8], align 8               ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 528
  call fastcc void @_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = load i64, ptr %1, align 8, !range !487, !noundef !416
  %.not = icmp eq i64 %i.q, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -4, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !518, !noundef !416
  %.not1 = icmp eq i8 %i.s, -1
  br i1 %.not1, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.m, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !245601
  invoke fastcc void @_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.r)
          to label %bb.ac unwind label %bb.ab

bb.h:                                             ; preds = %bb.d
  store i8 -1, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.ac, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.v = load i64, ptr %i.u, align 8, !range !421, !alias.scope !245602, !noalias !245603, !noundef !416
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !245605
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !245606
  invoke fastcc void @_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.w)
          to label %.noexc7 unwind label %bb.ad, !inline_history !406

.noexc7:                                          ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !245607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !245608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !245606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245605
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !245609, !noalias !245610, !nonnull !416, !noundef !416 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !alias.scope !245609, !noalias !245610, !noundef !416 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !245611
  %i.ad = mul nuw nsw i64 %i.ac, 3400             ; 2 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.k

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %.noexc7
  store i64 0, ptr %i.d, align 8, !noalias !245611
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !245611
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.k:                                             ; preds = %.noexc7
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !245612, !inline_history !407
  %i.ah = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, 17) 8) #68, !noalias !245612, !inline_history !407 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %.lr.ph.preheader.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ad) #72
          to label %.noexc12 unwind label %bb.q, !inline_history !407

.noexc12:                                         ; preds = %bb.l
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.k
  store i64 %i.ac, ptr %i.d, align 8, !noalias !245611
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !noalias !245611
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw [3400 x i8], ptr %i.ab, i64 %i.ac
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.ap, %bb.n ], [ %i.ab, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ao, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.am, %bb.n ], [ %i.ac, %.lr.ph.preheader.i ]
  %i.am = add nsw i64 %.sroa.10.021.i, -1         ; 2 uses
  %i.an = icmp eq ptr %.sroa.012.023.i, %i.al
  br i1 %i.an, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245611
  invoke fastcc void @_RNvXsdw_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9StatementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %.sroa.012.023.i)
          to label %bb.n unwind label %bb.p, !noalias !245613, !inline_history !407

bb.n:                                             ; preds = %bb.m
  %i.ao = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 3400
  %i.aq = getelementptr inbounds nuw [3400 x i8], ptr %i.ah, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3400) %i.aq, ptr noundef nonnull align 8 dereferenceable(3400) %i.c, i64 3400, i1 false), !noalias !245613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !245611
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i

bb.o:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !245613, !inline_history !407
  unreachable

bb.p:                                             ; preds = %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ak, align 8, !noalias !245611
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #73
          to label %.body13 unwind label %bb.o, !noalias !245613, !inline_history !407

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.n, %.lr.ph.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.at = phi ptr [ %i.ag, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.ak, %.lr.ph.i ], [ %i.ak, %bb.n ]
  store i64 %i.ac, ptr %i.at, align 8, !noalias !245611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !245614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !245611
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !245615
  invoke fastcc void @_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.au)
          to label %.noexc unwind label %bb.r, !noalias !245616, !inline_history !406

.body13:                                          ; preds = %bb.q, %bb.p, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.av, %bb.q ], [ %lpad.loopexit.i, %bb.p ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.h), !noalias !245616, !inline_history !406
  br label %.body

bb.q:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body13

bb.r:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #73
          to label %.body13 unwind label %bb.s, !noalias !245616, !inline_history !406

bb.s:                                             ; preds = %bb.r
end_hunk_8
begin_hunk_9_@_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
bb.bn:                                            ; preds = %bb.a
  store i8 64, ptr %0, align 8
  br label %bb.dc

bb.bo:                                            ; preds = %bb.a
  store i8 65, ptr %0, align 8
  br label %bb.dc

bb.bp:                                            ; preds = %bb.a
  store i8 66, ptr %0, align 8
  br label %bb.dc

bb.bq:                                            ; preds = %bb.a
  store i8 67, ptr %0, align 8
  br label %bb.dc

bb.br:                                            ; preds = %bb.a
  store i8 68, ptr %0, align 8
  br label %bb.dc

bb.bs:                                            ; preds = %bb.a
  store i8 69, ptr %0, align 8
  br label %bb.dc

bb.bt:                                            ; preds = %bb.a
  store i8 70, ptr %0, align 8
  br label %bb.dc

bb.bu:                                            ; preds = %bb.a
  store i8 71, ptr %0, align 8
  br label %bb.dc

bb.bv:                                            ; preds = %bb.a
  store i8 72, ptr %0, align 8
  br label %bb.dc

bb.bw:                                            ; preds = %bb.a
  store i8 73, ptr %0, align 8
  br label %bb.dc

bb.bx:                                            ; preds = %bb.a
  store i8 74, ptr %0, align 8
  br label %bb.dc

bb.by:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 75, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dc

bb.bz:                                            ; preds = %bb.a
  store i8 76, ptr %0, align 8
  br label %bb.dc

bb.ca:                                            ; preds = %bb.a
  store i8 77, ptr %0, align 8
  br label %bb.dc

bb.cb:                                            ; preds = %bb.a
  store i8 78, ptr %0, align 8
  br label %bb.dc

bb.cc:                                            ; preds = %bb.a
  store i8 79, ptr %0, align 8
  br label %bb.dc

bb.cd:                                            ; preds = %bb.a
  store i8 80, ptr %0, align 8
  br label %bb.dc

bb.ce:                                            ; preds = %bb.a
  store i8 81, ptr %0, align 8
  br label %bb.dc

bb.cf:                                            ; preds = %bb.a
  store i8 82, ptr %0, align 8
  br label %bb.dc

bb.cg:                                            ; preds = %bb.a
  store i8 83, ptr %0, align 8
  br label %bb.dc

bb.ch:                                            ; preds = %bb.a
  store i8 84, ptr %0, align 8
  br label %bb.dc

bb.ci:                                            ; preds = %bb.a
  store i8 85, ptr %0, align 8
  br label %bb.dc

bb.cj:                                            ; preds = %bb.a
  store i8 86, ptr %0, align 8
  br label %bb.dc

bb.ck:                                            ; preds = %bb.a
  store i8 87, ptr %0, align 8
  br label %bb.dc

bb.cl:                                            ; preds = %bb.a
  store i8 88, ptr %0, align 8
  br label %bb.dc

bb.cm:                                            ; preds = %bb.a
  store i8 89, ptr %0, align 8
  br label %bb.dc

bb.cn:                                            ; preds = %bb.a
  store i8 90, ptr %0, align 8
  br label %bb.dc

bb.co:                                            ; preds = %bb.a
  store i8 91, ptr %0, align 8
  br label %bb.dc

bb.cp:                                            ; preds = %bb.a
  store i8 92, ptr %0, align 8
  br label %bb.dc

bb.cq:                                            ; preds = %bb.a
  store i8 93, ptr %0, align 8
  br label %bb.dc

bb.cr:                                            ; preds = %bb.a
  store i8 94, ptr %0, align 8
  br label %bb.dc

bb.cs:                                            ; preds = %bb.a
  store i8 95, ptr %0, align 8
  br label %bb.dc

bb.ct:                                            ; preds = %bb.a
  store i8 96, ptr %0, align 8
  br label %bb.dc

bb.cu:                                            ; preds = %bb.a
  store i8 97, ptr %0, align 8
  br label %bb.dc

bb.cv:                                            ; preds = %bb.a
  store i8 98, ptr %0, align 8
  br label %bb.dc

bb.cw:                                            ; preds = %bb.a
  store i8 99, ptr %0, align 8
  br label %bb.dc

bb.cx:                                            ; preds = %bb.a
  store i8 100, ptr %0, align 8
  br label %bb.dc

bb.cy:                                            ; preds = %bb.a
  store i8 101, ptr %0, align 8
  br label %bb.dc

bb.cz:                                            ; preds = %bb.a
  store i8 102, ptr %0, align 8
  br label %bb.dc

bb.da:                                            ; preds = %bb.a
  store i8 103, ptr %0, align 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i8 104, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs6LHU0WyJj3k_15futures_channel7oneshotNtB5_8CanceledNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8407, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvXsj_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_20HardCapBatchSizeExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan18cardinality_effect(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_20HardCapBatchSizeExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsj_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_20HardCapBatchSizeExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @5271, i64 20 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_21TransactionAccessModeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 9, i64 8
  %.1 = select i1 %i.b, ptr @8411, ptr @8410
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast17table_constraintsNtB5_15TableConstraintNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !629, !noundef !416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  switch i64 %i.i, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4674, i64 noundef 6, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4932)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4673, i64 noundef 10, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4931)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4934, i64 noundef 10, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4936, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1001, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8412)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8414, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8413)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8416, i64 noundef 20, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8417, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB5_19UnsafeCommitHandlerNtB5_13CommitHandler31is_version_not_found_definitive(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB5_19UnsafeCommitHandlerNtB5_13CommitHandler36propagate_commit_error_after_success(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtNtCshkPeWWG1flk_5lance2io4exec5utilsNtB5_10ReplayExecNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7181, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8420, i64 noundef 8, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8418, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3746, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3741, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8421, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8419)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsjd_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_11AlterPolicyNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(768) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(768) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.d = alloca [328 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca [256 x i8], align 8           ; 4 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249685)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.l = load i32, ptr %i.k, align 8, !range !705, !alias.scope !249685, !noalias !249684, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !alias.scope !249686
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %i.l, ptr %i.o, align 8, !alias.scope !249684, !noalias !249685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !249688
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !249689, !noalias !249690, !nonnull !416, !noundef !416
  %i.s = load i64, ptr %i.p, align 8, !alias.scope !249689, !noalias !249690, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.r, i64 noundef %i.s)
          to label %bb.e unwind label %bb.d, !inline_history !367

bb.b:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !249691)
  call void @llvm.experimental.noalias.scope.decl(metadata !249692)
  call void @llvm.experimental.noalias.scope.decl(metadata !249693)
  %.val.i.i.i = load i64, ptr %i.i, align 8, !range !419, !alias.scope !249694, !noundef !416 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !249694, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !249694
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !249687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !249688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249695)
  %i.w = load i64, ptr %1, align 8, !range !485, !alias.scope !249695, !noalias !249696, !noundef !416 ; 2 uses
  %.not.i = icmp eq i64 %i.w, -5
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !249697
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 656
end_hunk_9
begin_hunk_10_@_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTyINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEEEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_NtNtNtB15_4hash6random11RandomStateE0Es_0INtNtNtB1X_3ops8function6FnOnceTOhEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252117)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !252118, !noundef !416 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !252118, !nonnull !416, !noundef !416 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !252119
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !252120
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !range !419, !alias.scope !252121, !noalias !252118, !noundef !416 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr i8, ptr %i.v, i64 -16
  %.val5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !252118, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !252122
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTINtNtB4_6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.ab = shl i64 %i.c, 5                         ; 2 uses
  %i.ac = add i64 %i.ab, 32                       ; 2 uses
  %i.ad = add i64 %i.c, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEEEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtB12_4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !252116, !nonnull !416, !noundef !416
  %i.aj = sub nuw nsw i64 -32, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !252116
  br label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEEEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtB12_4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEEEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtB12_4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTINtNtCscI6d9CVNmLh_4core6option6OptionmENtNtCs40k4W9msRzi_5alloc6string6StringEuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTyNtNtCs3PfUT229lOd_12object_store4path4PathEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !range !419, !alias.scope !252135, !noundef !416 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtCs3PfUT229lOd_12object_store4path4PathEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !252136
  br label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtCs3PfUT229lOd_12object_store4path4PathEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtCs3PfUT229lOd_12object_store4path4PathEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0CsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvYNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtBa_17ManifestNamespace20delete_from_manifest0NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future9FutureExt5boxedBe_(ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(10640) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252139
  %i.a = tail call noundef align 16 dereferenceable_or_null(10640) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10640, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !252139 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtBM_17ManifestNamespace20delete_from_manifest0E3newBQ_.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 10640) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtBJ_17ManifestNamespace20delete_from_manifest0EBN_(ptr noundef nonnull align 16 dereferenceable(10640) %0) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtBM_17ManifestNamespace20delete_from_manifest0E3newBQ_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10640) %i.a, ptr noundef nonnull align 16 dereferenceable(10640) %0, i64 10640, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24BASE_OBJECTS_VALUE_FIELD0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !252144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !252144
  store i8 24, ptr %i.b, align 8, !noalias !252144
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252144
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2504, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i1 noundef zeroext true), !noalias !252144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !252144
  store i64 1, ptr %i.a, align 8, !noalias !252144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !252144
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252145
  %i.f = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !252145 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNCNvNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24BASE_OBJECTS_VALUE_FIELD0B7_.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #72
          to label %.noexc.i unwind label %bb.c, !noalias !252144

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #73
          to label %bb.e unwind label %bb.d, !noalias !252144

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !252144
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNCNvNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24BASE_OBJECTS_VALUE_FIELD0B7_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !252144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252144
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.j, align 8, !noalias !252144
  store i8 27, ptr %i.c, align 8, !noalias !252144
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @904, i64 noundef 5, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !252144
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #45 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !575, !alias.scope !252148, !noundef !416 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  %i.f = insertelement <2 x ptr> <ptr poison, ptr @4037>, ptr %0, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = insertelement <2 x ptr> <ptr poison, ptr @4039>, ptr %i.k, i64 0
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a, %bb.a
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !252148
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.y = phi <2 x ptr> [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.f, %bb.a ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ <ptr null, ptr undef>, %bb.j ], [ %i.v, %bb.k ], [ %i.x, %bb.l ] ; 2 uses
  %i.z = extractelement <2 x ptr> %i.y, i64 0
  %i.aa = insertvalue { ptr, ptr } poison, ptr %i.z, 0
  %i.ab = extractelement <2 x ptr> %i.y, i64 1
  %i.ac = insertvalue { ptr, ptr } %i.aa, ptr %i.ab, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3385, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8890, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #26 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !580, !alias.scope !252151, !noundef !416
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 5, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 6, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 7, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 8, label %bb.f
    i64 9, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 10, label %bb.g
    i64 11, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 12, label %bb.h
    i64 13, label %bb.i
    i64 14, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 15, label %bb.j
    i64 16, label %bb.k
    i64 17, label %bb.l
    i64 18, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !252151, !nonnull !416, !align !417, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !252151, !noundef !416
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !252151, !nonnull !416
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.x
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !252151, !nonnull !416, !noundef !416
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.21.0.i = phi ptr [ @378, %bb.b ], [ @1240, %bb.c ], [ @380, %bb.d ], [ @7021, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @7023, %bb.f ], [ undef, %bb.a ], [ @4039, %bb.g ], [ undef, %bb.a ], [ %i.p, %bb.h ], [ @53, %bb.i ], [ undef, %bb.a ], [ @53, %bb.j ], [ @53, %bb.k ], [ @53, %bb.l ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.j, %bb.f ], [ null, %bb.a ], [ %i.l, %bb.g ], [ null, %bb.a ], [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ null, %bb.a ], [ %i.t, %bb.j ], [ %.sroa.0.1.i, %bb.k ], [ %i.aa, %bb.l ], [ null, %bb.a ]
  %i.ab = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ac = insertvalue { ptr, ptr } %i.ab, ptr %.sroa.21.0.i, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8891, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema22data_type_and_nullableCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 17)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !470, !noundef !416 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.h = load i8, ptr %i.g, align 8, !range !428, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.410.0.copyload.sink = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.410.0.copyload.sink, ptr %i.j, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8metadataCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !470, !noundef !416 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.410.0.copyload.sink = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.410.0.copyload.sink, ptr %i.g, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8nullableCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !470, !noundef !416 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load i8, ptr %i.g, align 8, !range !428, !noundef !416
  store i8 %i.h, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema9data_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !470, !noundef !416 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.410.0.copyload.sink = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.410.0.copyload.sink, ptr %i.g, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #45 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !583, !alias.scope !252154, !noundef !416 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 4, label %bb.e
    i64 5, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.7.0.i = phi ptr [ undef, %bb.a ], [ @5111, %bb.c ], [ @380, %bb.d ], [ undef, %bb.a ], [ @5113, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8892, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8893, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtQNtNtCs40k4W9msRzi_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsfR8GmIBoxTX_21lance_namespace_impls.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !252155
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan10with_fetchCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan11reset_stateCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !419, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !416 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB13_EEE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan17with_new_children(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.m = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !252160
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan13repartitionedCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, i64 %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan14with_new_stateCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !252165
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %bb.b
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs5E8EBwPtAkp_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan16check_invariantsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [48 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !252208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !252208
  call void @_RNvXs0_NtCs5E8EBwPtAkp_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !252207
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !252208, !noundef !416 ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8, !noalias !252208
  %i.as = icmp ult i64 %i.ar, 1152921504606846976
  tail call void @llvm.assume(i1 %i.as)
  %.val160.i = load i64, ptr %i.ao, align 8, !noalias !252208 ; 2 uses
  %i.at = icmp eq i64 %.val160.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val161.i = load ptr, ptr %i.au, align 8, !noalias !252208, !nonnull !416, !noundef !416
  %i.av = shl nuw i64 %.val160.i, 3
end_hunk_10
begin_hunk_11_@_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider11insert_intoCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBK_5table13TableProvider11insert_into0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBK_5table13TableProvider11insert_into0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider11insert_into0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @8902, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider14scan_with_argsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252614
  %i.f = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !252614 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider14scan_with_args0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBK_5table13TableProvider14scan_with_args0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider14scan_with_args0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @8903, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider16get_logical_planCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 -2, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 16 ptr @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider18get_column_defaultCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #10 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider20get_table_definitionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider25supports_filters_pushdownCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252621
  %i.b = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef range(i64 1, 17) 1) #68, !noalias !252621 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 1152921504606846976) %3) #72, !noalias !252622
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.b
  %.not.i = icmp eq i64 %3, 1
  br i1 %.not.i, label %._crit_edge.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.d = add nsw i64 %3, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.d, i1 false), !noalias !252623
  %i.e = getelementptr i8, ptr %i.b, i64 %3
  %scevgep.i.i = getelementptr i8, ptr %i.e, i64 -1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.0.0.lcssa29.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa29.i.i, align 1, !noalias !252623
  br label %_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs1Jc0oVeks7E_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %._crit_edge.i.i
  %.sroa.10.0.i8.i = phi ptr [ %i.b, %._crit_edge.i.i ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i8.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider6updateCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252626
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !252626 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider6update0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBK_5table13TableProvider6update0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider6update0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @8904, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB6_5table13TableProvider8truncateCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !252629
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !252629 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider8truncate0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBN_5table13TableProvider8truncate0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @8905, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1C_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3474, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #45 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !621, !alias.scope !252632, !noundef !416 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit [
    i64 1, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !252632, !nonnull !416, !noundef !416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !252632, !nonnull !416, !align !417, !noundef !416
  br label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ @380, %bb.c ], [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8906, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector16record_part_loadCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector17record_index_loadCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector22record_and_full_scoresCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector22record_freqs_collectedCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector22record_index_cache_hitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector23record_index_cache_hitsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector23record_index_cache_missCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector25record_index_cache_missesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector26record_and_candidates_seenCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector34record_compound_addresses_resolvedCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector35record_cross_column_staged_attemptsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector36record_cross_column_staged_fallbacksCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector36record_cross_column_staged_successesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector37record_compound_score_floor_overflowsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector37record_cross_column_staged_candidatesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector38record_compound_should_skipped_windowsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector40record_compound_peak_buffered_candidatesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector40record_wand_exactness_certificate_strictCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector42record_and_candidates_pruned_before_returnCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector42record_compound_address_resolution_batchesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector42record_wand_exactness_certificate_attemptsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector43record_compound_should_bound_recomputationsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector43record_wand_exactness_certificate_fallbacksCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector44record_compound_should_essential_evaluationsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8l9P2lL5xvY_16lance_index_core7metrics20NoOpMetricsCollectorNtB4_16MetricsCollector44record_wand_exactness_certificate_candidatesCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  ret void
}

end_hunk_11
begin_hunk_12_@_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_reader11SmallReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.k = add nsw i64 %.val2, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -16, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val, i64 %i.p
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.d
  %i.r = add i64 %i.b, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.r
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !416 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite17is_write_vectoredCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoredCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !252996, !noundef !416 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !252997, !noundef !416
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.h = tail call { i64, ptr } @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io13object_writerNtB5_11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i)
  ret { i64, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite17is_write_vectoredCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoredCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !253002, !noundef !416 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !253003, !noundef !416
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.h = tail call { i64, ptr } @_RNvXs4_NtCsjjbR6Jfsbqw_8lance_io13object_writerNtB5_12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io5local17LocalObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !416 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 104
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = tail call { i32, i32 } @_RNvXs4_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_8IntoIterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %.preheader.i
  %i.d = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.preheader.i

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.preheader.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %.preheader.i ], [ 0, %bb.b ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8911, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array10null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253006, !noundef !416
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not.i, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array11is_nullableCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253009, !noundef !416
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !253009
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array13logical_nullsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253012, !noundef !416 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !noundef !416
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.b, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.02.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.i, ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.j, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253015, !noundef !416
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !noundef !416
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !439

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3125) #72
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !noundef !416
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !416
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array8is_validCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253020)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253021, !noundef !416
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !253020, !noundef !416
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c, !prof !439

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3125) #72, !noalias !253020
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !253020, !noundef !416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !253020, !noundef !416
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !253020, !noundef !416
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  br label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.s, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_array12BooleanArrayNtB6_5Array10null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253024, !noundef !416
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not.i, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_array12BooleanArrayNtB6_5Array11is_nullableCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253027, !noundef !416
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !253027
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

end_hunk_12
begin_hunk_13_@_RNvYNtNtNtCs9vBodVtS8mO_24datafusion_physical_expr11expressions6column6ColumnNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticsCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br i1 %i.du, label %.body.i.i, label %.lr.ph287

bb.bj:                                            ; preds = %.lr.ph
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = icmp eq i64 %i.ds, %.sroa.9.0.i
  br i1 %i.dw, label %.body.i.i, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.bj, %bb.bi
  %.sroa.0.1.i.i.i.i286 = phi i64 [ %i.dt, %bb.bi ], [ %i.ds, %bb.bj ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [320 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.1.i.i.i.i286
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCscTsYlPPaaMf_22datafusion_expr_common10statistics12DistributionECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(320) %i.dx) #73
          to label %bb.bi unwind label %bb.bk, !noalias !253538

bb.bk:                                            ; preds = %.lr.ph287
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !253538
  unreachable

.body.i.i:                                        ; preds = %bb.bi, %bb.bj
  %i.dz = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.dz, label %.body, label %bb.bl

bb.bl:                                            ; preds = %.body.i.i
  %i.ea = mul nuw i64 %.sroa.0.0.i, 320
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !253538
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCscTsYlPPaaMf_22datafusion_expr_common10statistics12DistributionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bh, %bb.bg
  %i.eb = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.eb, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCscTsYlPPaaMf_22datafusion_expr_common10statistics12DistributionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ec = mul nuw i64 %.sroa.0.0.i, 320
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !253538
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bo
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !253520
  unreachable

bb.bo:                                            ; preds = %.body.i83
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.body unwind label %bb.bn, !noalias !253520

bb.bp:                                            ; preds = %bb.bm, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCscTsYlPPaaMf_22datafusion_expr_common10statistics12DistributionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !253520
  store i64 %i.dm, ptr %0, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6115.0.copyload117, ptr %.sroa.4182.0..sroa_idx, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8118.0.copyload120, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.do, ptr %.sroa.6184.0..sroa_idx, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %.thread193, %bb.bp
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.q)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ef) #73
          to label %.body97 unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.eg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ag

bb.bt:                                            ; preds = %bb.br
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ei = icmp eq i64 %i.bm, 0
  br i1 %i.ei, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit99, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ej = shl nuw nsw i64 %i.bm, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit99

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit99: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.bu, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.bv:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.68, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ek = icmp eq i64 %i.bm, 0
  br i1 %i.ek, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit105, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.el = shl nuw nsw i64 %i.bm, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit105

bb.bx:                                            ; preds = %bb.by, %.body
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit105: ; preds = %bb.bw, %bb.bv
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls.exit99

bb.by:                                            ; preds = %.thread, %bb.ae
  %.pn73192 = phi { ptr, i32 } [ %i.cf, %.thread ], [ %.pn, %bb.ae ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCscTsYlPPaaMf_22datafusion_expr_common19interval_arithmetic8IntervalEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.r) #73
          to label %common.resume unwind label %bb.bx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs9vBodVtS8mO_24datafusion_physical_expr11expressions6column6ColumnNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExpr21propagate_constraintsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 32)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 16 captures(none) %2, ptr noalias nonnull readonly align 8 captures(none) %3, i64 range(i64 0, 1152921504606846976) %4) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs9vBodVtS8mO_24datafusion_physical_expr11expressions6column6ColumnNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExpr8snapshotCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCsa7501wwoJJ1_11lance_index6scalar12lance_format15LanceIndexStoreNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %i.b = invoke noundef i64 @_RNvXNtNtCsa7501wwoJJ1_11lance_index6scalar12lance_formatNtB2_15LanceIndexStoreNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val3 = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load i64, ptr %i.d, align 8, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val3, i64 %.val4) #73
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.e, align 8, !noundef !416 ; 4 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.g = shl i64 %.val2, 3
  %i.h = icmp slt i64 %.val2, 2305843009213693950
  call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %i.g, -16                        ; 2 uses
  %i.j = add i64 %i.i, 16                         ; 2 uses
  %i.k = add nsw i64 %.val2, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.p = sub nuw nsw i64 -16, %i.i
  %i.q = getelementptr inbounds i8, ptr %.val, i64 %i.p
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.d
  %i.r = add i64 %i.b, 112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8938, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session14config_optionsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(1904) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateNtNtCsl1Ad6evFtMI_18datafusion_session7session7Session21default_table_optionsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1904) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !253541, !nonnull !416, !noundef !416
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMsj_NtCs2bHstFFhpHt_17datafusion_common6configNtB5_12TableOptions27combine_with_session_config(ptr noalias noundef nonnull sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(992) %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8939, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider10statisticsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11constraintsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11delete_fromCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253544
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253544 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11delete_from0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11delete_from0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11delete_from0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11delete_from0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @8940, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_intoCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 0, ptr %i.e, align 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253551
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253551 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_into0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !253552
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_into0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_into0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_into0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider11insert_into0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @8941, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_argsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253555
  %i.f = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253555 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @8942, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider16get_logical_planCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 -2, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 16 ptr @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider18get_column_defaultCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #10 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider20get_table_definitionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider6updateCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_13
begin_hunk_14_@_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler23list_manifest_locationsCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 -3, ptr %i.x, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253703
  %i.y = tail call noundef align 8 dereferenceable_or_null(472) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 472, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253703 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.m, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler23list_manifest_locations0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 472) #72
          to label %.noexc50 unwind label %bb.n

.noexc50:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBI_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2l_13CommitHandler23list_manifest_locations0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(472) %i.c) #73
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler23list_manifest_locations0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.y, ptr noundef nonnull align 8 dereferenceable(472) %i.c, i64 472, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler29list_manifest_locations_sinceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1080 x i8], align 8              ; 10 uses
  %i.b = alloca [168 x i8], align 8               ; 10 uses
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit17uses_version_hint(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %2)
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { ptr, ptr } @_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler23list_manifest_locationsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %2, i1 noundef zeroext true) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 -3, ptr %i.j, align 8
  store i64 -1, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 0, ptr %i.k, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253708
  %i.l = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253708 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB27_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEINtNtNtBN_6future5ready5ReadyIB3u_bB4P_EENCNvYNtNtB3S_17external_manifest29ExternalManifestCommitHandlerNtB3S_13CommitHandler29list_manifest_locations_since0EE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #72
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBK_6future5ready5ReadyIB3G_bB50_EENCNvYNtNtB43_17external_manifest29ExternalManifestCommitHandlerNtB43_13CommitHandler29list_manifest_locations_since0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b) #73
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB27_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEINtNtNtBN_6future5ready5ReadyIB3u_bB4P_EENCNvYNtNtB3S_17external_manifest29ExternalManifestCommitHandlerNtB3S_13CommitHandler29list_manifest_locations_since0EE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.413.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  store i64 1, ptr %i.a, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %.sroa.817.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store ptr null, ptr %i.p, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !253709
  %i.q = tail call noundef align 8 dereferenceable_or_null(1080) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1080, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !253709 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler29list_manifest_locations_sinces_0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1080) #72
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBI_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2l_13CommitHandler29list_manifest_locations_sinces_0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(1080) %i.a) #73
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler29list_manifest_locations_sinces_0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.q, ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i64 1080, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler29list_manifest_locations_sinces_0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB27_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEINtNtNtBN_6future5ready5ReadyIB3u_bB4P_EENCNvYNtNtB3S_17external_manifest29ExternalManifestCommitHandlerNtB3S_13CommitHandler29list_manifest_locations_since0EE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0 = phi ptr [ @8951, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler29list_manifest_locations_sinces_0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ @8950, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB27_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEINtNtNtBN_6future5ready5ReadyIB3u_bB4P_EENCNvYNtNtB3S_17external_manifest29ExternalManifestCommitHandlerNtB3S_13CommitHandler29list_manifest_locations_since0EE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.0.0 = phi ptr [ %i.q, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11try_flatten10TryFlattenINtNtBL_4once4OnceNCNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB2o_13CommitHandler29list_manifest_locations_sinces_0EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.l, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_take_while12TryTakeWhileINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB27_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB27_6marker4SendEL_EEINtNtNtBN_6future5ready5ReadyIB3u_bB4P_EENCNvYNtNtB3S_17external_manifest29ExternalManifestCommitHandlerNtB3S_13CommitHandler29list_manifest_locations_since0EE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.u = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, ptr } %i.u, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler31is_version_not_found_definitiveCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler32list_detached_manifest_locationsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = tail call { ptr, ptr } @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit23list_detached_manifests(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) @714) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !noalias !253712
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !253712
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.g = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBJ_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBJ_6marker4SendEL_EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCscI6d9CVNmLh_4core3pin3PinIBv_DNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBJ_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBJ_6marker4SendEL_EEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @8913, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest29ExternalManifestCommitHandlerNtB6_13CommitHandler36propagate_commit_error_after_successCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8952, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.117, %bb.j ] ; 3 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.115, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.6.041) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.f
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.f ], [ null, %bb.a ], [ null, %bb.j ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !692

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.041, %i.h
  br i1 %i.k, label %bb.g, label %bb.h, !prof !426

bb.f:                                             ; preds = %bb.i, %.split, %.split36, %.split37, %bb.d
  %.sroa.07.1 = phi ptr [ @8954, %bb.d ], [ %i.f, %.split37 ], [ %i.f, %.split36 ], [ %i.f, %.split ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8955) #72
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.6.041, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.h
  br label %bb.j

.split:                                           ; preds = %bb.c
  %.mask = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

.split37:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !786, !noundef !416
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

.split36:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !786, !noundef !416
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.i:                                             ; preds = %bb.c
  %i.u = lshr i64 %i.h, 32
  %i.v = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.u to i8
  %spec.select.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.i, %.split, %.split36, %.split37
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread
  %.sroa.0.117 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.m, %bb.h ]
  %.sroa.6.115 = phi i64 [ %.sroa.6.041, %.thread ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = icmp eq i64 %.sroa.6.115, 0
  br i1 %i.y, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3582, i64 noundef 61)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan10with_fetchCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan11reset_stateCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs5_NtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_indexNtB5_12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !419, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !416 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB13_EEE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_indexNtB5_12MapIndexExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan17with_new_children(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.m = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !253717
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index12MapIndexExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.f

end_hunk_14
begin_hunk_15_@_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec5utils10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan27required_input_distributionCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val5 = load ptr, ptr %i.h, align 8, !nonnull !416, !noundef !416
  %i.i = shl nuw i64 %.val4, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.j = icmp eq i64 %.val, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3 = load ptr, ptr %i.k, align 8, !nonnull !416, !noundef !416
  %i.l = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtBG_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit6: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec5utils10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan28handle_child_pushdown_resultCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias readonly align 8 captures(none) %1, i1 zeroext %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvMs2_NtCs5E8EBwPtAkp_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(48) %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec5utils10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan28try_swapping_with_projectionCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec5utils10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan5fetchCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io4exec5utils10ReplayExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan7metricsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore21get_manifest_locationCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !254016
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !254016 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore21get_manifest_location0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore21get_manifest_location0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore21get_manifest_location0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @8956, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore28get_latest_manifest_locationCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !254019
  %i.e = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !254019 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore28get_latest_manifest_location0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore28get_latest_manifest_location0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore28get_latest_manifest_location0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @8957, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore6deleteCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !254022
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !254022 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore6delete0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStore6delete0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @8958, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan18MergeInsertPlannerNtNtCseMy6uzTzNin_10datafusion16physical_planner16ExtensionPlanner15plan_table_scanCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias readonly align 8 captures(none) %2, ptr noalias readonly align 8 captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !254025
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !254025 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan18MergeInsertPlannerNtNtCseMy6uzTzNin_10datafusion16physical_planner16ExtensionPlanner15plan_table_scan0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan18MergeInsertPlannerNtNtCseMy6uzTzNin_10datafusion16physical_planner16ExtensionPlanner15plan_table_scan0E3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @8959, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @8889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8960, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBC_13shrink_to_fitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #51

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs7_NtNtCshkPeWWG1flk_5lance7dataset5indexNtNtNtCsa7501wwoJJ1_11lance_index6scalar12lance_format15LanceIndexStoreNtB5_18LanceIndexStoreExt25from_dataset_for_existing(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #51

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #52

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #52

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #51

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs5_NtNtCsa7501wwoJJ1_11lance_index6scalar12lance_formatNtB5_15LanceIndexStoreNtNtCs8l9P2lL5xvY_16lance_index_core6scalar10IndexStore15open_index_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #53

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizerNtNtBb_5pbold20InvertedIndexDetailsINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_19InvertedIndexParamsE8try_from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs4Jn2LUi8st0_4rand4rngs6thread3rng() unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #52

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #54

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #52

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #55

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #52

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #57

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_25FragmentReuseIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs1nbc6HIrAcO_11prost_types8type_urlNtB2_7TypeUrl3new(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #58

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCsa7501wwoJJ1_11lance_index2pbNtB5_18VectorIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsa7501wwoJJ1_11lance_index5pboldNtB2_17BTreeIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsa7501wwoJJ1_11lance_index5pboldNtB4_18BitmapIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCsa7501wwoJJ1_11lance_index5pboldNtB5_20InvertedIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsa7501wwoJJ1_11lance_index5pboldNtB5_21LabelListIndexDetailsNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_Cs8mqnodLgMxo_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #56

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsc85D0lJ81Z_16lance_datafusion10projectionNtB2_17ProjectionBuilder10add_column(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(3152), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsc85D0lJ81Z_16lance_datafusion10projectionNtB2_17ProjectionBuilder22check_duplicate_column(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3152), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs17_NtCs9ipI1vyGjpZ_12tracing_core5fieldjNtB6_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCshTahG2RyGLb_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container3len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #59

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #60

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef range(i8 0, 42), i64 noundef, i64 noundef) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef range(i8 0, 42), i64 noundef, i1 noundef zeroext) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef range(i8 0, 42), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8d5NHFTTVL0_4uuid3fmtNtB6_4UuidNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXCsjjbR6Jfsbqw_8lance_ioNtB2_15ReadBatchParamsNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

end_hunk_15
