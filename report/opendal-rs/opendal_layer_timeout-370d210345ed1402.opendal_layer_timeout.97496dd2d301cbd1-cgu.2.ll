Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_timeout-370d210345ed1402.opendal_layer_timeout.97496dd2d301cbd1-cgu.2?download=true
inline.NumInlined: 241
inline.NumDeleted: 153
begin_hunk_0_@_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout:bb.a
  %i.ad = load ptr, ptr %i.b, align 8, !noalias !484, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.i, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.ae = load i64, ptr %1, align 8, !range !12, !alias.scope !486, !noundef !5
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ag = load ptr, ptr %i.c, align 8, !alias.scope !489, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !492, !noundef !5
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !492, !nonnull !5, !align !13, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !493, !nonnull !5, !noundef !5
  %i.am = load ptr, ptr %i.f, align 8, !alias.scope !492, !noundef !5
  %i.an = load i64, ptr %i.g, align 8, !alias.scope !492, !noundef !5
  invoke void %i.al(ptr noundef %i.ai, ptr noundef %i.am, i64 noundef %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !467, !inline_history !16

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !494
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !467

common.resume.i.i:                                ; preds = %bb.u, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bo, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k, %bb.g, %bb.f
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8, !alias.scope !464
  br label %common.resume.i.i

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, %bb.b
  %.lcssa.i = phi ptr [ %i.l, %bb.b ], [ %i.ad, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i ]
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload12.i.i = load ptr, ptr %.sroa.8.0..sroa_idx11.i.i, align 8, !noalias !495
  %.sroa.9.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9.0.copyload14.i.i = load i64, ptr %.sroa.9.0..sroa_idx13.i.i, align 8, !noalias !495
  %.sroa.10.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0.copyload16.i.i = load ptr, ptr %.sroa.10.0..sroa_idx15.i.i, align 8, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !484
  br label %bb.v

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  store i64 0, ptr %1, align 8, !alias.scope !464
  %.pre.i = load ptr, ptr %i.h, align 8, !alias.scope !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !484
  %.not.i4.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i4.i.i, label %.loopexit5.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  %i.aq = load ptr, ptr %i.i, align 8, !alias.scope !480, !nonnull !5, !noundef !5
  %i.ar = load ptr, ptr %i.j, align 8, !alias.scope !480, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aq
  br i1 %i.as, label %.loopexit5.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, !llvm.loop !441

.loopexit5.i:                                     ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, %bb.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !498
  %i.au = load i64, ptr %i.at, align 8, !range !12, !alias.scope !499, !noundef !5
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.o, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23: ; preds = %.loopexit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.o:                                             ; preds = %.loopexit5.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @_RNvXsc_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw), !noalias !500
  %i.ax = load ptr, ptr %i.a, align 8, !noalias !498, !noundef !5 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i6.i.i, label %bb.p, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ay = load i64, ptr %i.at, align 8, !range !12, !alias.scope !502, !noundef !5
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.ba = load ptr, ptr %i.aw, align 8, !alias.scope !505, !noundef !5 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !508, !noundef !5
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !508, !nonnull !5, !align !13, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !509, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !508, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !508, !noundef !5
  invoke void %i.bh(ptr noundef %i.be, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.u, !noalias !500, !inline_history !16

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !510
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.t, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw) #24
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.u, !noalias !500

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 0, ptr %i.at, align 8, !alias.scope !499
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload32 = load ptr, ptr %.sroa.7.0..sroa_idx31, align 8, !noalias !499
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload34 = load i64, ptr %.sroa.8.0..sroa_idx33, align 8, !noalias !499
  %.sroa.10.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload36 = load ptr, ptr %.sroa.10.0..sroa_idx35, align 8, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.at, align 8, !alias.scope !499
  br label %common.resume.i.i

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.o
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !499
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !499
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread
  %.sroa.0.120 = phi ptr [ %.lcssa.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %i.ax, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.7.118 = phi ptr [ %.sroa.8.0.copyload12.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.7.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.8.116 = phi i64 [ %.sroa.9.0.copyload14.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.8.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ] ; 2 uses
  %.sroa.10.114 = phi ptr [ %.sroa.10.0.copyload16.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.10.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.val22.in = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val22 = load ptr, ptr %.val22.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bp = load i64, ptr %.val22, align 8, !noalias !513, !noundef !5
  %i.bq = add i64 %i.bp, %.sroa.8.116
  store i64 %i.bq, ptr %.val22, align 8, !noalias !513
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23, %bb.v
  %.sroa.0.121 = phi ptr [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.0.120, %bb.v ], [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.7.119 = phi ptr [ %.sroa.7.0.copyload32, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.7.118, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.8.117 = phi i64 [ %.sroa.8.0.copyload34, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.8.116, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.10.115 = phi ptr [ %.sroa.10.0.copyload36, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.10.114, %bb.v ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  store ptr %.sroa.0.121, ptr %0, align 8, !alias.scope !513
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.119, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !513
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.117, ptr %.sroa.8.0..sroa_idx4, align 8, !alias.scope !513
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.115, ptr %.sroa.10.0..sroa_idx6, align 8, !alias.scope !513
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsgxBkk5gSRhY_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !alias.scope !590, !noalias !591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !594
  invoke fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !595

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 16, !noalias !594, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = load <2 x ptr>, ptr %i.c, align 16, !noalias !594 ; 2 uses
  %.sroa.6.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx9.i.i.i.i, align 16, !noalias !594 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !594 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.h = load i64, ptr %i.e, align 8, !range !12, !alias.scope !599, !noalias !600, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !599, !noalias !601, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !599, !noalias !601, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !599, !noalias !601, !noundef !5
  %i.p = call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.o)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !599, !noalias !601, !noundef !5
  %i.s = icmp ne i64 %i.r, 0
  %spec.select.i.i.i.i.i.i.i = zext i1 %i.s to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.g ], [ %i.p, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.u = load i64, ptr %i.t, align 8, !range !12, !alias.scope !599, !noalias !600, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !599, !noalias !602, !noundef !5
  %.not.i.i.i60.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i60.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !599, !noalias !602, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !599, !noalias !602, !noundef !5
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.ab)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !599, !noalias !602, !noundef !5
  %i.af = icmp ne i64 %i.ae, 0
  %spec.select75.i.i.i.i.i.i.i = zext i1 %i.af to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i
  %.sroa.12.0.i.i.i.i.i.i.i = phi i64 [ %spec.select75.i.i.i.i.i.i.i, %bb.j ], [ %i.ac, %bb.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ag = call i64 @llvm.uadd.sat.i64(i64 %.sroa.11.0.i.i.i.i.i.i.i, i64 %.sroa.12.0.i.i.i.i.i.i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !599, !noalias !600, !noundef !5
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !599, !noalias !600, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.val58.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !599, !noalias !600, !nonnull !5, !noundef !5
  %i.al = icmp eq ptr %.val58.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i
  %i.am = add i64 %.sroa.12.0.i.i.i.i.i.i.i, %.sroa.11.0.i.i.i.i.i.i.i
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !595
  br label %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit

bb.n:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !603, !nonnull !5, !noundef !5
  %2 = extractelement <2 x ptr> %1, i64 1
  invoke void %i.ap(ptr noundef %.sroa.7.0.copyload.i.i.i.i, ptr noundef %2, i64 noundef %.sroa.6.0.copyload.i.i.i.i)
          to label %bb.ak unwind label %bb.ai, !noalias !595, !inline_history !0

bb.o:                                             ; preds = %bb.l, %bb.k
  %.sink78.i.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.717.i.i.i.i, %bb.l ], [ %.sroa.516.i.i.i.i, %bb.k ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink78.i.i.i.sroa.phi.i.i.i.i, align 8, !alias.scope !604, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i.i.i)
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.ag, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aq, i64 4) ; 2 uses
  %i.ar = shl i64 %.sroa.0.0.i.i.i.i.i, 5         ; 3 uses
  %i.as = icmp ugt i64 %i.aq, 576460752303423487
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ar, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.as, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !7

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !605
  %i.at = call noundef align 8 ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, 9) 8) #19, !noalias !605 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.o ]
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ar) #20
          to label %.noexc.i.i.i.i unwind label %bb.n, !noalias !595

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store <2 x ptr> %1, ptr %i.at, align 8, !noalias !595
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 8, !noalias !595
  %.sroa.621.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.621.0..sroa_idx.i.i.i.i, align 8, !noalias !595
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !594
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !594
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !595
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i, %bb.q
  %i.bf = phi ptr [ %i.cf, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ], [ %i.at, %bb.q ]
  %.sroa.7.0.copyload = phi i64 [ %i.ch, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ], [ 1, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !610
  invoke fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !611

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.s
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.ci, %bb.ae ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #22
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !611

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.a, align 16, !noalias !610, !noundef !5 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i4.i.i.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %3 = load <2 x ptr>, ptr %i.a, align 16, !noalias !610 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !610 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !610 ; 2 uses
  %i.bi = icmp samesign ult i64 %.sroa.7.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.d, align 8, !range !6, !alias.scope !612, !noalias !594, !noundef !5
  %i.bk = icmp eq i64 %.sroa.7.0.copyload, %i.bj
  br i1 %i.bk, label %bb.v, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.713.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.bl = load i64, ptr %i.b, align 8, !range !12, !alias.scope !616, !noalias !617, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.w, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %i.av, align 8, !alias.scope !616, !noalias !618, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = load i64, ptr %i.aw, align 8, !alias.scope !616, !noalias !618, !noundef !5
  %i.bp = load i64, ptr %i.ax, align 8, !alias.scope !616, !noalias !618, !noundef !5
  %i.bq = call i64 @llvm.usub.sat.i64(i64 %i.bo, i64 %i.bp)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.br = load i64, ptr %i.ax, align 8, !alias.scope !616, !noalias !618, !noundef !5
  %i.bs = icmp ne i64 %i.br, 0
  %spec.select.i.i.i.i.i.i.i.i.i = zext i1 %i.bs to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.v
  %.sroa.11.0.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.bq, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bt = load i64, ptr %i.ay, align 8, !range !12, !alias.scope !616, !noalias !617, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.z, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i
  %i.bv = load ptr, ptr %i.az, align 8, !alias.scope !616, !noalias !619, !noundef !5
  %.not.i.i.i60.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i60.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i64, ptr %i.ba, align 8, !alias.scope !616, !noalias !619, !noundef !5
  %i.bx = load i64, ptr %i.bb, align 8, !alias.scope !616, !noalias !619, !noundef !5
  %i.by = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 %i.bx)
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bz = load i64, ptr %i.bb, align 8, !alias.scope !616, !noalias !619, !noundef !5
  %i.ca = icmp ne i64 %i.bz, 0
  %spec.select75.i.i.i.i.i.i.i.i.i = zext i1 %i.ca to i64
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i
  %.sroa.12.0.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select75.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %i.by, %bb.aa ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cb = call i64 @llvm.uadd.sat.i64(i64 %.sroa.11.0.i.i.i.i.i.i.i.i.i, i64 %.sroa.12.0.i.i.i.i.i.i.i.i.i)
  %i.cc = load ptr, ptr %i.bc, align 8, !alias.scope !616, !noalias !617, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !616, !noalias !617, !nonnull !5, !noundef !5
  %.val58.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !616, !noalias !617, !nonnull !5, !noundef !5
  %i.cd = icmp eq ptr %.val58.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.cd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit61.i.i.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.12.0.i.i.i.i.i.i.i.i.i, %.sroa.11.0.i.i.i.i.i.i.i.i.i
  br label %bb.af

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i, %bb.u
  %i.cf = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i ], [ %i.bf, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.7.0.copyload ; 3 uses
  store <2 x ptr> %3, ptr %i.cg, align 8, !noalias !611
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !611
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %.sroa.7.0.copyload.i.i.i.i.i.i, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !611
  %i.ch = add nuw nsw i64 %.sroa.7.0.copyload, 1  ; 2 uses
  store i64 %i.ch, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !612, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !610
  br label %bb.r

bb.ae:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !620, !nonnull !5, !noundef !5
  %4 = extractelement <2 x ptr> %3, i64 1
  invoke void %i.ck(ptr noundef %.sroa.7.0.copyload.i.i.i.i.i.i, ptr noundef %4, i64 noundef %.sroa.6.0.copyload.i.i.i.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i unwind label %bb.ag, !noalias !611, !inline_history !0

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.sink78.i.i.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.713.i.i.i.i.i.i, %bb.ad ], [ %.sroa.512.i.i.i.i.i.i, %bb.ac ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %.sink78.i.i.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !621, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i.i.i.i.i)
  %i.cl = call i64 @llvm.uadd.sat.i64(i64 %i.cb, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.7.0.copyload, i64 noundef range(i64 1, 0) %i.cl, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ae, !noalias !595

._RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !612, !noalias !594
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !611
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !610
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i unwind label %bb.ah, !noalias !595

bb.ah:                                            ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cn, %bb.ah ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %bb.aj unwind label %bb.ai, !noalias !595

_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i: ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1D_7flatten7FlattenINtNtB6_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3m_B3k_INtNtNtB1F_6traits7collect12FromIteratorBF_E9from_iterB2u_E0EECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !622
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  br label %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit

bb.ai:                                            ; preds = %bb.ak, %.body.i.i.i.i, %bb.n
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !595
  unreachable

bb.aj:                                            ; preds = %bb.ak, %.body.i.i.i.i
  %.pn24.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i, %bb.ak ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %.pn24.i.i.i.i

bb.ak:                                            ; preds = %bb.n, %bb.b
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.an, %bb.n ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7inspect7InspectINtNtBG_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2u_B2s_INtNtNtBI_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1h_E0EECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #22
          to label %bb.aj unwind label %bb.ai, !noalias !595

_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.m, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i
  %.sroa.7.0 = phi i64 [ 0, %bb.m ], [ %.sroa.7.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 3 uses
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %.sroa.5.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.m ], [ %.sroa.0.0.copyload, %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB1R_7flatten7FlattenINtNtB4_9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B3A_B3y_INtNtNtB1T_6traits7collect12FromIteratorBQ_E9from_iterB2I_E0EE11spec_extendCscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !589
  %i.cp = icmp samesign ult i64 %.sroa.7.0, 288230376151711744
  call void @llvm.assume(i1 %i.cp)
  %i.cq = shl nuw nsw i64 %.sroa.7.0, 5           ; 2 uses
  %i.cr = call { i64, i64 } @_RNvNtCs6i54tJFfzR_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775777) %i.cq), !noalias !623 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { i64, i64 } %i.cr, 1      ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit
  %i.cv = inttoptr i64 %i.cs to ptr
  br label %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

bb.am:                                            ; preds = %_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtB8_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2c_B2a_INtNtNtBa_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterBZ_E0ENtNtB3q_8iterator8Iterator7collectINtB1s_3VecB3Y_EECscZimOjL3zu7_21opendal_layer_timeout.exit
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !623
  %i.cw = call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) %i.cs) #19, !noalias !623
  br label %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i.i1 = phi ptr [ %i.cv, %bb.al ], [ %i.cw, %bb.am ] ; 5 uses
  %i.cx = icmp eq ptr %.sroa.0.0.i.i.i.i.i1, null
  br i1 %i.cx, label %bb.an, label %_RINvMso_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE19allocate_for_layoutNCNvMsr_B6_Bw_21allocate_for_slice_in0NCB1F_s_0ECscZimOjL3zu7_21opendal_layer_timeout.exit.i, !prof !9

bb.an:                                            ; preds = %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef %i.cs, i64 noundef %i.ct) #20, !noalias !623
  unreachable

_RINvMso_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE19allocate_for_layoutNCNvMsr_B6_Bw_21allocate_for_slice_in0NCB1F_s_0ECscZimOjL3zu7_21opendal_layer_timeout.exit.i: ; preds = %_RNCNvMsr_NtCs6i54tJFfzR_5alloc4syncINtB7_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE21allocate_for_slice_in0CscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i1, align 8, !noalias !623
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i1, i64 8
  store i64 1, ptr %i.cy, align 8, !noalias !623
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 %.sroa.5.0, i64 %i.cq, i1 false), !noalias !623
  %i.da = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.da, label %_RNvXs1c_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtB8_3vec3VecBH_EE4fromCscZimOjL3zu7_21opendal_layer_timeout.exit, label %bb.ao

bb.ao:                                            ; preds = %_RINvMso_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE19allocate_for_layoutNCNvMsr_B6_Bw_21allocate_for_slice_in0NCB1F_s_0ECscZimOjL3zu7_21opendal_layer_timeout.exit.i
  %i.db = shl nuw i64 %.sroa.0.0, 5
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !624
  br label %_RNvXs1c_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtB8_3vec3VecBH_EE4fromCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvXs1c_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtB8_3vec3VecBH_EE4fromCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %_RINvMso_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE19allocate_for_layoutNCNvMsr_B6_Bw_21allocate_for_slice_in0NCB1F_s_0ECscZimOjL3zu7_21opendal_layer_timeout.exit.i, %bb.ao
  %i.dc = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i1, 0
  %i.dd = insertvalue { ptr, i64 } %i.dc, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %i.dd
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsW_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_ENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !625, !invariant.load !5
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !630, !noundef !5 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !6, !alias.scope !631, !noundef !5
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !630, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !630
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !630
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !630
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

end_hunk_0
