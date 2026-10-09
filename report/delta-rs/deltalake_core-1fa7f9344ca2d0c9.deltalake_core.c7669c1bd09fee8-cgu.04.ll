Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.04?download=true
inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan22update_partition_stats:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35

bb.as:                                            ; preds = %bb.u, %bb.v
  %lpad.thr_comm83 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #59
          to label %.thread unwind label %bb.at

bb.at:                                            ; preds = %.sink.split.i56, %bb.as
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

.thread71:                                        ; preds = %.thread, %.sink.split.i56, %bb.ap, %bb.al
  %.pn69 = phi { ptr, i32 } [ %i.ig, %bb.ap ], [ %.pn70, %.thread ], [ %.pn70, %.sink.split.i56 ], [ %i.hp, %bb.al ]
  resume { ptr, i32 } %.pn69

.thread:                                          ; preds = %bb.as, %bb.q, %bb.s, %.thread75
  %.pn70 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread75 ], [ %lpad.thr_comm83, %bb.as ], [ %i.ea, %bb.q ], [ %i.ed, %bb.s ] ; 2 uses
  %i.ij = load i128, ptr %i.j, align 16, !range !72, !alias.scope !16179, !noundef !31
  %switch.i55 = icmp samesign ult i128 %i.ij, 2
  br i1 %switch.i55, label %.sink.split.i56, label %.thread71

.sink.split.i56:                                  ; preds = %.thread
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %.sroa.35.0..sroa_idx)
          to label %.thread71 unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan26finalize_transformed_batch(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(176) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(88) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 11 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.620 = alloca [32 x i8], align 8          ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [128 x i8], align 8              ; 16 uses
  %i.af = alloca [16 x i8], align 8               ; 9 uses
  %i.ag = alloca [8 x i8], align 8                ; 12 uses
  %i.ah = alloca [16 x i8], align 8               ; 13 uses
  %i.ai = alloca [40 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 13 uses
  %i.al = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.am = alloca [40 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ao = load i64, ptr %i.an, align 16, !range !33, !noundef !31
  %.not = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !31, !noundef !31
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.as = load i64, ptr %i.ar, align 16, !noundef !31
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7project(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aq, i64 noundef %i.as)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.027.0 = phi i8 [ 1, %bb.h ], [ 0, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !31, !noundef !31 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aw = load ptr, ptr %i.av, align 16, !nonnull !31, !noundef !31 ; 4 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.az, label %bb.i

.thread146:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74.i, %.thread150, %bb.dp, %bb.e
  %.sroa.031.0 = phi i1 [ false, %bb.e ], [ false, %bb.dp ], [ %i.bs, %.thread150 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74.i ]
  %.sroa.027.1 = phi i8 [ 1, %bb.e ], [ %.sroa.027.0, %bb.dp ], [ %.sroa.027.0, %.thread150 ], [ %.sroa.027.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74.i ] ; 3 uses
  %.pn79 = phi { ptr, i32 } [ %i.az, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.dp ], [ %lpad.thr_comm, %.thread150 ], [ %.pn48.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74.i ] ; 3 uses
  %i.ay = load ptr, ptr %3, align 8, !noundef !31 ; 2 uses
  %.not81 = icmp eq ptr %i.ay, null
  %or.cond = or i1 %.sroa.031.0, %.not81
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit128, label %bb.dy

bb.e:                                             ; preds = %bb.g, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread146

bb.f:                                             ; preds = %bb.b
  %i.ba = load i64, ptr %i.al, align 8, !range !33, !noundef !31 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.dr unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.ba, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16299)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !16298, !noalias !16299, !noundef !31 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !16299, !noalias !16298, !noundef !31
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bk = load ptr, ptr %i.bi, align 8, !alias.scope !16299, !noalias !16298, !nonnull !31, !noundef !31
  %i.bl = load ptr, ptr %i.bj, align 8, !alias.scope !16298, !noalias !16299, !nonnull !31, !noundef !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.be)
          to label %.noexc unwind label %bb.dp

.noexc:                                           ; preds = %bb.j
  br i1 %i.bo, label %bb.k, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.br = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq)
          to label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit unwind label %bb.dp

.thread150:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit117, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bs = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit117 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread146

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k
  br i1 %i.br, label %bb.az, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.i, %.noexc, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16303
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !16302, !noalias !16304, !nonnull !31, !noundef !31 ; 6 uses
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8, !noalias !16303
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  store ptr %i.bu, ptr %i.q, align 8, !noalias !16303
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !16301, !noalias !16305, !noundef !31 ; 5 uses
  %.not.i = icmp eq ptr %i.by, null
  %5 = load i64, ptr %4, align 8, !range !33, !alias.scope !16301, !noalias !16305
  %.not.i.a = icmp eq i64 %5, -9223372036854775808
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not.i.a
  br i1 %or.cond.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i, label %bb.n

bb.m:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %.noexc.i, %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16303
  %i.bz = load ptr, ptr %i.q, align 8, !noalias !16303, !nonnull !31, !noundef !31
  %i.ca = atomicrmw add ptr %i.bz, i64 1 monotonic, align 8, !noalias !16305
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.cc = icmp eq ptr %i.by, %i.bu
  br i1 %i.cc, label %.thread80.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16307)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !16306, !noalias !16308, !noundef !31 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !16307, !noalias !16309, !noundef !31
  %i.ch = icmp eq i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ck = load ptr, ptr %i.ci, align 8, !alias.scope !16307, !noalias !16309, !nonnull !31, !noundef !31
  %i.cl = load ptr, ptr %i.cj, align 8, !alias.scope !16306, !noalias !16308, !nonnull !31, !noundef !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, i64 noundef %i.ce)
          to label %.noexc.i unwind label %bb.r, !noalias !16305

.noexc.i:                                         ; preds = %bb.p
  br i1 %i.co, label %bb.q, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i

bb.q:                                             ; preds = %.noexc.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cr = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cq)
          to label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i unwind label %bb.r, !noalias !16305

.body67.i:                                        ; preds = %bb.ao, %.body.i, %bb.af, %bb.ae, %bb.r
  %.sroa.011.0.i = phi i8 [ %.sroa.011.2.ph.i, %bb.ae ], [ %.sroa.011.2.ph.i, %.body.i ], [ %.sroa.011.1.i, %bb.r ], [ %.sroa.011.2.ph.i, %bb.af ], [ %.sroa.011.2.ph.i, %bb.ao ]
  %.pn46.i = phi { ptr, i32 } [ %i.dn, %bb.ae ], [ %.pn44.i, %.body.i ], [ %i.ct, %bb.r ], [ %i.dn, %bb.af ], [ %i.eg, %bb.ao ] ; 3 uses
  %i.cs = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.cs, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74.i

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i66.i, %bb.ag, %.thread80.i, %bb.t, %bb.q, %bb.p
  %.sroa.011.1.i = phi i8 [ %.sroa.011.284.i, %.thread80.i ], [ %.sroa.011.2.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i66.i ], [ %.sroa.011.2.ph.i, %bb.ag ], [ 1, %bb.t ], [ 1, %bb.q ], [ 1, %bb.p ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.q
  br i1 %i.cr, label %bb.s, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %.sroa.011.2.ph.i = phi i8 [ 1, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 8 uses
  %.pr.i = load i64, ptr %4, align 8, !alias.scope !16301, !noalias !16305
  %.not43.i = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %.not43.i, label %bb.ab, label %.thread80.i

bb.t:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cv = load ptr, ptr %i.q, align 8, !noalias !16303, !nonnull !31, !noundef !31
  invoke void @_RNvMs2_NtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriterNtB5_19BatchAdapterFactory12make_adapter(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu, ptr noundef nonnull %i.cv)
          to label %bb.v unwind label %bb.r, !noalias !16305

bb.u:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cw = load i64, ptr %i.o, align 8, !range !33, !noalias !16303, !noundef !31 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -9223372036854775808
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cy, i64 40, i1 false), !noalias !16303
  br i1 %i.cx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16303
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !16310
  store i64 1, ptr %i.aj, align 8, !alias.scope !16300, !noalias !16310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16312)
  %i.da = load ptr, ptr %i.q, align 8, !alias.scope !16313, !noalias !16303, !nonnull !31, !noundef !31
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !16314
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %.invoke.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.v
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.616.0.copyload.i = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16303
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !16303
  store i64 %i.cw, ptr %i.p, align 8, !noalias !16303
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.dd = load ptr, ptr %i.q, align 8, !noalias !16303, !nonnull !31, !noundef !31 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16315)
  %i.de = load ptr, ptr %i.bx, align 8, !alias.scope !16316, !noalias !16305, !noundef !31 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !16317
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aw, !noalias !16305

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  store ptr %i.dd, ptr %i.bx, align 8, !alias.scope !16301, !noalias !16305
  %i.di = load i64, ptr %4, align 8, !range !33, !alias.scope !16318, !noalias !16305, !noundef !31
  %i.dj = icmp eq i64 %i.di, -9223372036854775808
  br i1 %i.dj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.av, !noalias !16305

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriter12BatchAdapterEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !16305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16303
  br label %bb.s

.thread80.i:                                      ; preds = %bb.s, %bb.n
  %.sroa.011.284.i = phi i8 [ %.sroa.011.2.ph.i, %bb.s ], [ 1, %bb.n ] ; 2 uses
  invoke void @_RNvMs3_NtCsSmVVC4j5oB_32datafusion_physical_expr_adapter15schema_rewriterNtB5_12BatchAdapter11adapt_batch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai)
          to label %bb.aq unwind label %bb.r

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16303
  %i.dk = load ptr, ptr %i.bt, align 8, !alias.scope !16302, !noalias !16304, !nonnull !31, !noundef !31 ; 2 uses
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !16305
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.dk, ptr %i.k, align 8, !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16303
  store ptr %i.k, ptr %i.j, align 8, !noalias !16303
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !16303
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @151, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ae, !noalias !16305

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16319)
  call void @llvm.experimental.noalias.scope.decl(metadata !16320)
  %i.do = load ptr, ptr %i.k, align 8, !alias.scope !16321, !noalias !16303, !nonnull !31, !noundef !31
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !16322
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.af, label %.body67.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #57
          to label %.body67.i unwind label %bb.ar, !noalias !16305

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16303
  call void @llvm.experimental.noalias.scope.decl(metadata !16323)
  call void @llvm.experimental.noalias.scope.decl(metadata !16324)
  %i.dr = load ptr, ptr %i.k, align 8, !alias.scope !16325, !noalias !16303, !nonnull !31, !noundef !31
  %i.ds = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !16326
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61.i

bb.ag:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61.i unwind label %bb.r, !noalias !16305

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61.i: ; preds = %bb.ag, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16303
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.ah, !noalias !16305

.body.i:                                          ; preds = %bb.am, %bb.al, %bb.ah
  %.pn44.i = phi { ptr, i32 } [ %i.ed, %bb.al ], [ %i.du, %bb.ah ], [ %i.ee, %bb.am ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #59
          to label %.body67.i unwind label %bb.ar, !noalias !16305

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
