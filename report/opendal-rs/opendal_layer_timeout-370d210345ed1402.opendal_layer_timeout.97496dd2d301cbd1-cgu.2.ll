Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_timeout-370d210345ed1402.opendal_layer_timeout.97496dd2d301cbd1-cgu.2?download=true
inline.NumInlined: 241
inline.NumDeleted: 153
begin_hunk_0_@_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout:bb.a
bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.ay = load i64, ptr %i.at, align 8, !range !15, !alias.scope !541, !noundef !8
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ba = load ptr, ptr %i.aw, align 8, !alias.scope !544, !noundef !8 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !547, !noundef !8
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !547, !nonnull !8, !align !16, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !548, !nonnull !8, !noundef !8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !547, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !547, !noundef !8
  invoke void %i.bh(ptr noundef %i.be, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.u, !noalias !548, !inline_history !2

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !549
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.t, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw) #24
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.u, !noalias !539

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 0, ptr %i.at, align 8, !alias.scope !538
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload32 = load ptr, ptr %.sroa.7.0..sroa_idx31, align 8, !noalias !538
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload34 = load i64, ptr %.sroa.8.0..sroa_idx33, align 8, !noalias !538
  %.sroa.10.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload36 = load ptr, ptr %.sroa.10.0..sroa_idx35, align 8, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.at, align 8, !alias.scope !538
  br label %common.resume.i.i

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.o
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !538
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !538
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread
  %.sroa.0.120 = phi ptr [ %.lcssa.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %i.ax, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.7.118 = phi ptr [ %.sroa.8.0.copyload12.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.7.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.8.116 = phi i64 [ %.sroa.9.0.copyload14.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.8.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ] ; 2 uses
  %.sroa.10.114 = phi ptr [ %.sroa.10.0.copyload16.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.10.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.val22.in = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val22 = load ptr, ptr %.val22.in, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bp = load i64, ptr %.val22, align 8, !noalias !552, !noundef !8
  %i.bq = add i64 %i.bp, %.sroa.8.116
  store i64 %i.bq, ptr %.val22, align 8, !noalias !552
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23, %bb.v
  %.sroa.0.121 = phi ptr [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.0.120, %bb.v ], [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.7.119 = phi ptr [ %.sroa.7.0.copyload32, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.7.118, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.8.117 = phi i64 [ %.sroa.8.0.copyload34, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.8.116, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.10.115 = phi ptr [ %.sroa.10.0.copyload36, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.10.114, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  store ptr %.sroa.0.121, ptr %0, align 8, !alias.scope !552
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.119, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !552
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.117, ptr %.sroa.8.0..sroa_idx4, align 8, !alias.scope !552
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.115, ptr %.sroa.10.0..sroa_idx6, align 8, !alias.scope !552
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !553 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !16, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsgxBkk5gSRhY_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !629 {
bb.a:
  %.sroa.512.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.713.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %i.b = alloca [136 x i8], align 8               ; 17 uses
  %.sroa.516.i.i.i.i = alloca i64, align 8        ; 3 uses
  %.sroa.717.i.i.i.i = alloca i64, align 8        ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [136 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !alias.scope !631, !noalias !632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !635
  invoke fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !636

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 16, !noalias !635, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load <2 x ptr>, ptr %i.c, align 16, !noalias !635 ; 2 uses
  %.sroa.6.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx9.i.i.i.i, align 16, !noalias !635 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !635 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.i = load i64, ptr %i.e, align 8, !range !15, !alias.scope !640, !noalias !641, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !640, !noalias !642, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !640, !noalias !642, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !640, !noalias !642, !noundef !8
  %i.q = call i64 @llvm.usub.sat.i64(i64 %i.n, i64 %i.p)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !640, !noalias !642, !noundef !8
  %i.t = icmp ne i64 %i.s, 0
  %spec.select.i.i.i.i.i.i.i = zext i1 %i.t to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.g ], [ %i.q, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.v = load i64, ptr %i.u, align 8, !range !15, !alias.scope !640, !noalias !641, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !640, !noalias !643, !noundef !8
  %.not.i.i.i60.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i60.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !640, !noalias !643, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !640, !noalias !643, !noundef !8
  %i.ad = call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %i.ac)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !640, !noalias !643, !noundef !8
  %i.ag = icmp ne i64 %i.af, 0
  %spec.select75.i.i.i.i.i.i.i = zext i1 %i.ag to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i
  %.sroa.12.0.i.i.i.i.i.i.i = phi i64 [ %spec.select75.i.i.i.i.i.i.i, %bb.j ], [ %i.ad, %bb.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %.sroa.11.0.i.i.i.i.i.i.i, i64 %.sroa.12.0.i.i.i.i.i.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !640, !noalias !641, !noundef !8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !640, !noalias !641, !nonnull !8, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.val58.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !640, !noalias !641, !nonnull !8, !noundef !8
  %i.am = icmp eq ptr %.val58.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i
  %i.an = add i64 %.sroa.12.0.i.i.i.i.i.i.i, %.sroa.11.0.i.i.i.i.i.i.i
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !635
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !636
  br label %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit

bb.n:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !644, !nonnull !8, !noundef !8
  %i.ar = extractelement <2 x ptr> %i.h, i64 1
  invoke void %i.aq(ptr noundef %.sroa.7.0.copyload.i.i.i.i, ptr noundef %i.ar, i64 noundef %.sroa.6.0.copyload.i.i.i.i)
          to label %bb.ak unwind label %bb.ai, !noalias !644, !inline_history !1

bb.o:                                             ; preds = %bb.l, %bb.k
  %.sink78.i.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.717.i.i.i.i, %bb.l ], [ %.sroa.516.i.i.i.i, %bb.k ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.an, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink78.i.i.i.sroa.phi.i.i.i.i, align 8, !alias.scope !645, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i.i.i)
  %i.as = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 4) ; 2 uses
  %i.at = shl i64 %.sroa.0.0.i.i.i.i.i, 5         ; 3 uses
  %i.au = icmp ugt i64 %i.as, 576460752303423487
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.at, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.au, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !10

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !646
  %i.av = call noundef align 8 ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 9) 8) #19, !noalias !646 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.o ]
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.at) #20
          to label %.noexc.i.i.i.i unwind label %bb.n, !noalias !636

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store <2 x ptr> %i.h, ptr %i.av, align 8, !noalias !636
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 8, !noalias !636
  %.sroa.621.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.621.0..sroa_idx.i.i.i.i, align 8, !noalias !636
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !635
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !635
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !636
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i, %bb.q
  %i.bh = phi ptr [ %i.ci, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ], [ %i.av, %bb.q ]
  %.sroa.7.0.copyload = phi i64 [ %i.ck, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ], [ 1, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !651
  invoke fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !652

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.s
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %i.cl, %bb.ae ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #22
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !652

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.a, align 16, !noalias !651, !noundef !8 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i4.i.i.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load <2 x ptr>, ptr %i.a, align 16, !noalias !651 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !651 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !651 ; 2 uses
  %i.bl = icmp samesign ult i64 %.sroa.7.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.d, align 8, !range !9, !alias.scope !653, !noalias !635, !noundef !8
  %i.bn = icmp eq i64 %.sroa.7.0.copyload, %i.bm
  br i1 %i.bn, label %bb.v, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.713.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.bo = load i64, ptr %i.b, align 8, !range !15, !alias.scope !657, !noalias !658, !noundef !8
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.ax, align 8, !alias.scope !657, !noalias !659, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load i64, ptr %i.ay, align 8, !alias.scope !657, !noalias !659, !noundef !8
  %i.bs = load i64, ptr %i.az, align 8, !alias.scope !657, !noalias !659, !noundef !8
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.br, i64 %i.bs)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bu = load i64, ptr %i.az, align 8, !alias.scope !657, !noalias !659, !noundef !8
  %i.bv = icmp ne i64 %i.bu, 0
  %spec.select.i.i.i.i.i.i.i.i.i = zext i1 %i.bv to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.v
  %.sroa.11.0.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.bt, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bw = load i64, ptr %i.ba, align 8, !range !15, !alias.scope !657, !noalias !658, !noundef !8
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.bb, align 8, !alias.scope !657, !noalias !660, !noundef !8
  %.not.i.i.i60.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i60.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load i64, ptr %i.bc, align 8, !alias.scope !657, !noalias !660, !noundef !8
  %i.ca = load i64, ptr %i.bd, align 8, !alias.scope !657, !noalias !660, !noundef !8
  %i.cb = call i64 @llvm.usub.sat.i64(i64 %i.bz, i64 %i.ca)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cc = load i64, ptr %i.bd, align 8, !alias.scope !657, !noalias !660, !noundef !8
  %i.cd = icmp ne i64 %i.cc, 0
  %spec.select75.i.i.i.i.i.i.i.i.i = zext i1 %i.cd to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i
  %.sroa.12.0.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select75.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %i.cb, %bb.aa ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ce = call i64 @llvm.uadd.sat.i64(i64 %.sroa.11.0.i.i.i.i.i.i.i.i.i, i64 %.sroa.12.0.i.i.i.i.i.i.i.i.i)
  %i.cf = load ptr, ptr %i.be, align 8, !alias.scope !657, !noalias !658, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !657, !noalias !658, !nonnull !8, !noundef !8
  %.val58.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !657, !noalias !658, !nonnull !8, !noundef !8
  %i.cg = icmp eq ptr %.val58.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.cg, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i
  %i.ch = add i64 %.sroa.12.0.i.i.i.i.i.i.i.i.i, %.sroa.11.0.i.i.i.i.i.i.i.i.i
  br label %bb.af

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i, %bb.u
  %i.ci = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i ], [ %i.bh, %bb.u ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %.sroa.7.0.copyload ; 3 uses
  store <2 x ptr> %i.bk, ptr %i.cj, align 8, !noalias !652
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !652
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %.sroa.7.0.copyload.i.i.i.i.i.i, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !652
  %i.ck = add nuw nsw i64 %.sroa.7.0.copyload, 1  ; 2 uses
  store i64 %i.ck, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !653, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !651
  br label %bb.r

bb.ae:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !661, !nonnull !8, !noundef !8
  %i.co = extractelement <2 x ptr> %i.bk, i64 1
  invoke void %i.cn(ptr noundef %.sroa.7.0.copyload.i.i.i.i.i.i, ptr noundef %i.co, i64 noundef %.sroa.6.0.copyload.i.i.i.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i unwind label %bb.ag, !noalias !661, !inline_history !1

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.sink78.i.i.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.713.i.i.i.i.i.i, %bb.ad ], [ %.sroa.512.i.i.i.i.i.i, %bb.ac ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %.sink78.i.i.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !662, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i.i.i.i.i)
  %i.cp = call i64 @llvm.uadd.sat.i64(i64 %i.ce, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.7.0.copyload, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !636

._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !653, !noalias !635
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !652
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !651
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i unwind label %bb.ah, !noalias !652

bb.ah:                                            ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %bb.aj unwind label %bb.ai, !noalias !636

_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i: ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !635
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !663
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !635
  br label %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit

bb.ai:                                            ; preds = %bb.ak, %.body.i.i.i.i, %bb.n
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !636
  unreachable

bb.aj:                                            ; preds = %bb.ak, %.body.i.i.i.i
  %.pn24.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i, %bb.ak ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %.pn24.i.i.i.i

bb.ak:                                            ; preds = %bb.n, %bb.b
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.ao, %bb.n ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #22
          to label %bb.aj unwind label %bb.ai, !noalias !636

_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.m, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i
  %.sroa.7.0 = phi i64 [ 0, %bb.m ], [ %.sroa.7.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 3 uses
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %.sroa.5.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.m ], [ %.sroa.0.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !630
  %i.ct = icmp samesign ult i64 %.sroa.7.0, 288230376151711744
  call void @llvm.assume(i1 %i.ct)
  %i.cu = shl nuw nsw i64 %.sroa.7.0, 5           ; 2 uses
  %i.cv = call { i64, i64 } @_RNvNtCs6i54tJFfzR_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775777) %i.cu), !noalias !664 ; 2 uses
  %i.cw = extractvalue { i64, i64 } %i.cv, 0      ; 3 uses
  %i.cx = extractvalue { i64, i64 } %i.cv, 1      ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit
  %i.cz = inttoptr i64 %i.cw to ptr
  br label %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

bb.am:                                            ; preds = %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !664
  %i.da = call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) %i.cw) #19, !noalias !664
  br label %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i: ; preds = %bb.am, %bb.al
end_hunk_0
