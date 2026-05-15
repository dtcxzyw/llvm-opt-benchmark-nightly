inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00B9_:bb.a

bb.fm:                                            ; preds = %bb.fk
  br i1 %i.mt, label %bb.fn, label %bb.fp, !prof !52

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1255, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @642, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #50
          to label %.noexc.i.i.i203 unwind label %bb.fl, !noalias !16722

.noexc.i.i.i203:                                  ; preds = %bb.fn
  unreachable

bb.fo:                                            ; preds = %bb.fl
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16722
  unreachable

.body.i.i196:                                     ; preds = %bb.fl
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.mq) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit unwind label %bb.fw

bb.fp:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i191, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16717
  call void @llvm.experimental.noalias.scope.decl(metadata !16724)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i199 = load ptr, ptr %i.mw, align 8, !alias.scope !16727, !noalias !16728, !noundef !4 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i200 = load ptr, ptr %i.mx, align 8, !alias.scope !16727, !noalias !16728 ; 6 uses
  %i.my = icmp eq ptr %.val.i.i.i199, null
  br i1 %i.my, label %bb.fx, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i200) ]
  %i.mz = load ptr, ptr %.val1.i.i.i200, align 8, !invariant.load !4, !noalias !16729 ; 2 uses
  %.not.i.i.i.i.i.i201 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i.i.i201, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  invoke void %i.mz(ptr noundef nonnull %.val.i.i.i199)
          to label %bb.fs unwind label %bb.fu, !noalias !16729

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.na = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !range !16, !invariant.load !4, !noalias !16729 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !range !3, !invariant.load !4, !noalias !16729
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i199, i64 noundef range(i64 1, 0) %i.nb, i64 noundef range(i64 1, 536870913) %i.ne) #42, !noalias !16729
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fr
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !range !16, !invariant.load !4, !noalias !16729 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.nj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !range !3, !invariant.load !4, !noalias !16729
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i199, i64 noundef range(i64 1, 0) %i.nh, i64 noundef range(i64 1, 536870913) %i.nk) #42, !noalias !16729
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit

bb.fw:                                            ; preds = %.body.i.i196
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16728
  unreachable

bb.fx:                                            ; preds = %bb.ft, %bb.fs, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13466, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i191, i64 24, i1 false), !noalias !16730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i191)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8461.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13466, i64 24, i1 false), !alias.scope !16731
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13466)
  %.sroa.2474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2474.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8461.sroa.10, i64 24, i1 false)
  br label %bb.gs

bb.fy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit190
  %.sroa.14468.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.14468.sroa.9.0..sroa.14468.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.14468.sroa.9.0.copyload = load i64, ptr %.sroa.14468.sroa.9.0..sroa.14468.16..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13466)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3478, ptr noundef nonnull align 8 dereferenceable(24) %i.mq, i64 24, i1 false)
  %.sroa.3478.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3478, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3478.32..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.14468.16..sroa_idx, i64 56, i1 false)
  %.not.i207 = icmp eq i64 %i.mo, -9223372036854775711
  br i1 %.not.i207, label %bb.ga, label %bb.fz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit: ; preds = %bb.fe, %bb.fj, %bb.fv, %bb.fu, %.body.i.i196, %bb.fc
  %.sroa.21.16 = phi ptr [ %.sroa.21.8, %bb.fc ], [ %.sroa.21.11, %.body.i.i196 ], [ %.sroa.21.11, %bb.fu ], [ %.sroa.21.11, %bb.fv ], [ %.sroa.21.11, %bb.fj ], [ %.sroa.21.11, %bb.fe ]
  %.sroa.0335.16 = phi ptr [ %.sroa.0335.8, %bb.fc ], [ %.sroa.0335.11, %.body.i.i196 ], [ %.sroa.0335.11, %bb.fu ], [ %.sroa.0335.11, %bb.fv ], [ %.sroa.0335.11, %bb.fj ], [ %.sroa.0335.11, %bb.fe ]
  %.pn79 = phi { ptr, i32 } [ %i.mh, %bb.fc ], [ %i.mu, %.body.i.i196 ], [ %i.nf, %bb.fu ], [ %i.nf, %bb.fv ], [ %i.mn, %bb.fj ], [ %i.mj, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13466)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8461.sroa.10)
  br label %bb.gv

bb.fz:                                            ; preds = %bb.fy
  %.sroa.2485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2485.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3478, i64 80, i1 false)
  br label %bb.gs

bb.ga:                                            ; preds = %bb.fy
  %i.nm = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8461.sroa.10)
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store i8 1, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 1007 ; 2 uses
  store i8 1, ptr %i.no, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.np, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3478, i64 40, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 1003
  store i8 1, ptr %i.nq, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nr, ptr noundef nonnull align 16 dereferenceable(40) %i.nm, i64 40, i1 false)
  %i.ns = load i64, ptr %i.np, align 8, !range !17, !noundef !4
  %.not48 = icmp eq i64 %i.ns, -9223372036854775808
  br i1 %.not48, label %.thread, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  store i8 0, ptr %i.no, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 1001 ; 2 uses
  store i8 1, ptr %i.nt, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mk, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3478, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.nu = getelementptr i8, ptr %1, i64 1056
  %.val134 = load ptr, ptr %i.nu, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.nv = atomicrmw add ptr %.val134, i64 1 monotonic, align 8
  %i.nw = icmp slt i64 %i.nv, 0
  br i1 %i.nw, label %bb.gc, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208: ; preds = %bb.gb
  store ptr %.val134, ptr %i.w, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %.val138 = load ptr, ptr %i.nx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ny = icmp eq ptr %.val134, %.val138
  br i1 %i.ny, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread653, label %bb.gd

bb.gd:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208
  call void @llvm.experimental.noalias.scope.decl(metadata !16735)
  call void @llvm.experimental.noalias.scope.decl(metadata !16738)
  call void @llvm.experimental.noalias.scope.decl(metadata !16740)
  call void @llvm.experimental.noalias.scope.decl(metadata !16743)
  %i.nz = getelementptr inbounds nuw i8, ptr %.val134, i64 24
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !16745, !noalias !16746, !noundef !4 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val138, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !16746, !noalias !16745, !noundef !4
  %i.od = icmp eq i64 %i.oa, %i.oc
  br i1 %i.od, label %bb.ge, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ge:                                            ; preds = %bb.gd
  %i.oe = getelementptr inbounds nuw i8, ptr %.val138, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %.val134, i64 16
  %i.og = load ptr, ptr %i.oe, align 8, !alias.scope !16746, !noalias !16745, !nonnull !4, !noundef !4
  %i.oh = load ptr, ptr %i.of, align 8, !alias.scope !16745, !noalias !16746, !nonnull !4, !noundef !4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ok = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.oi, ptr noundef nonnull %i.oj, i64 noundef %i.oa)
          to label %.noexc209 unwind label %bb.gg

.noexc209:                                        ; preds = %bb.ge
  br i1 %i.ok, label %bb.gf, label %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge

.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge: ; preds = %.noexc209
  %.pre671 = load ptr, ptr %i.w, align 8, !alias.scope !16747
  br label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.gf:                                            ; preds = %.noexc209
  %i.ol = getelementptr inbounds nuw i8, ptr %.val134, i64 32
  %i.om = getelementptr inbounds nuw i8, ptr %.val138, i64 32
  %i.on = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.om)
          to label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16752)
  call void @llvm.experimental.noalias.scope.decl(metadata !16755)
  %i.op = load ptr, ptr %i.w, align 8, !alias.scope !16758, !nonnull !4, !noundef !4
  %i.oq = atomicrmw sub ptr %i.op, i64 1 release, align 8, !noalias !16758
  %i.or = icmp eq i64 %i.oq, 1
  br i1 %i.or, label %bb.gh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit212

bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit212 unwind label %bb.bw

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gf
  %.pre672 = load ptr, ptr %i.w, align 8, !alias.scope !16747 ; 2 uses
  br i1 %i.on, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread653, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread653: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208
  %i.os = phi ptr [ %.val134, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208 ], [ %.pre672, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ot = atomicrmw sub ptr %i.os, i64 1 release, align 8, !noalias !16759
  %i.ou = icmp eq i64 %i.ot, 1
  br i1 %i.ou, label %bb.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit214

bb.gi:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread653
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit214 unwind label %bb.gk

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge, %bb.gd, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.ov = phi ptr [ %.pre671, %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge ], [ %.val134, %bb.gd ], [ %.pre672, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16764)
  call void @llvm.experimental.noalias.scope.decl(metadata !16765)
  %i.ow = atomicrmw sub ptr %i.ov, i64 1 release, align 8, !noalias !16747
  %i.ox = icmp eq i64 %i.ow, 1
  br i1 %i.ox, label %bb.gj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit216

bb.gj:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit216 unwind label %bb.gk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit212: ; preds = %bb.gg, %bb.gh, %bb.gk
  %.pn64 = phi { ptr, i32 } [ %i.oy, %bb.gk ], [ %i.oo, %bb.gg ], [ %i.oo, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ev

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit212

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit214: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread653, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.nt, align 1
  br label %bb.gp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit216: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.val119 = load ptr, ptr %i.nx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.oz = atomicrmw add ptr %.val119, i64 1 monotonic, align 8
  %i.pa = icmp slt i64 %i.oz, 0
  br i1 %i.pa, label %bb.gl, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.gl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit216
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit216
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mk, ptr noundef nonnull %.val119, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.gn unwind label %bb.gm

bb.gm:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ev

bb.gn:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.pc = load i64, ptr %i.v, align 16, !range !1449, !alias.scope !16766, !noalias !16769, !noundef !4 ; 2 uses
  %.not.i217 = icmp eq i64 %i.pc, -9223372036854775711
  %i.pd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8489, ptr noundef nonnull align 8 dereferenceable(40) %i.pd, i64 40, i1 false)
  br i1 %.not.i217, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit214
  %.sroa.8489.sink = phi ptr [ %.sroa.8489, %bb.go ], [ %i.mk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit214 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pe, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8489.sink, i64 40, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store ptr %i.pf, ptr %i.ph, align 8
  %.sroa.8506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store ptr %i.pg, ptr %.sroa.8506.0..sroa_idx, align 8
  %.sroa.10508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store i8 0, ptr %.sroa.10508.0..sroa_idx, align 8
  br label %bb.ej

bb.gq:                                            ; preds = %bb.gn
  %.sroa.10491.0..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.3495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3495.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10491.0..sroa_idx492, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.2494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2494.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8489, i64 40, i1 false)
  store i64 %i.pc, ptr %i.o, align 16, !alias.scope !16771
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gw, %bb.gq
  %.sroa.21.17 = phi ptr [ %.sroa.21.12, %bb.gw ], [ %.sroa.21.11, %bb.gq ] ; 2 uses
  %.sroa.0335.17 = phi ptr [ %.sroa.0335.12, %bb.gw ], [ %.sroa.0335.11, %bb.gq ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 1001 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !range !178, !noundef !4
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.gy, label %bb.gx

.thread:                                          ; preds = %bb.ga
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 1002
  store i8 0, ptr %i.pl, align 2
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.mk, ptr noundef nonnull align 8 dereferenceable(520) %i.pm, i64 520, i1 false)
  %.sroa.8524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2296
  store i8 0, ptr %.sroa.8524.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 2296
  br label %bb.hc

bb.gs:                                            ; preds = %bb.fz, %bb.fx
  %.sink725 = phi i64 [ %i.mo, %bb.fz ], [ -9223372036854775722, %bb.fx ]
  %.sroa.14468.sroa.9.0.copyload.sink = phi i64 [ %.sroa.14468.sroa.9.0.copyload, %bb.fz ], [ %.sroa.14468.sroa.9.1, %bb.fx ]
  store i64 %.sink725, ptr %i.o, align 16
  %.sroa.3486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %.sroa.14468.sroa.9.0.copyload.sink, ptr %.sroa.3486.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8461.sroa.10)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.ik, %bb.ht, %bb.gx, %bb.gs
  %.sroa.21.19 = phi ptr [ %.sroa.21.11, %bb.gs ], [ %.sroa.21.18716, %bb.ht ], [ %.sroa.21.25, %bb.ik ], [ %.sroa.21.17, %bb.gx ] ; 3 uses
  %.sroa.0335.19 = phi ptr [ %.sroa.0335.11, %bb.gs ], [ %.sroa.0335.18720, %bb.ht ], [ %.sroa.0335.25, %bb.ik ], [ %.sroa.0335.17, %bb.gx ] ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store i8 0, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 1007
  store i8 0, ptr %i.pq, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16775)
  call void @llvm.experimental.noalias.scope.decl(metadata !16778)
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !16781, !nonnull !4, !noundef !4
  %i.pt = atomicrmw sub ptr %i.ps, i64 1 release, align 8, !noalias !16781
  %i.pu = icmp eq i64 %i.pt, 1
  br i1 %i.pu, label %bb.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit219

bb.gu:                                            ; preds = %bb.gt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pr) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit219 unwind label %bb.jn

bb.gv:                                            ; preds = %.body223, %bb.jk, %.body230, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit, %bb.fa
  %.sroa.21.20 = phi ptr [ %.sroa.21.16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit ], [ %.sroa.21.27, %bb.jk ], [ %.sroa.21.26, %.body230 ], [ %.sroa.21.14, %bb.fa ], [ %.sroa.21.18718, %.body223 ] ; 2 uses
  %.sroa.0335.20 = phi ptr [ %.sroa.0335.16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit ], [ %.sroa.0335.27, %bb.jk ], [ %.sroa.0335.26, %.body230 ], [ %.sroa.0335.14, %bb.fa ], [ %.sroa.0335.18722, %.body223 ] ; 2 uses
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB4Z_.exit ], [ %i.vd, %bb.jk ], [ %.pn59.pn, %.body230 ], [ %.pn77, %bb.fa ], [ %eh.lpad-body224, %.body223 ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 8, !range !178, !noundef !4
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.kq, label %bb.ko

bb.gw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit184
  %.sroa.2513.0..sroa.4.0..sroa_idx.i187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2513.0..sroa.4.0..sroa_idx.i187.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3511, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16782)
  store i64 -9223372036854775742, ptr %i.o, align 16, !alias.scope !16785, !noalias !16782
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.lb, ptr %.sroa.4.0..sroa_idx.i187, align 8, !alias.scope !16787
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 1072
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.py)
          to label %bb.gr unwind label %bb.ew

bb.gx:                                            ; preds = %bb.gy, %bb.gr
  store i8 0, ptr %i.pi, align 1
  br label %bb.gt

bb.gy:                                            ; preds = %bb.gr
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.pz)
          to label %bb.gx unwind label %bb.fb

bb.gz:                                            ; preds = %bb.ev
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.qa) #48
          to label %bb.fa unwind label %bb.bw

bb.ha:                                            ; preds = %bb.hf, %bb.he
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body223

.body223:                                         ; preds = %bb.hm, %bb.ha
  %i.qc = phi ptr [ %i.qd, %bb.ha ], [ %i.qm, %bb.hm ]
  %.sroa.0335.18722 = phi ptr [ undef, %bb.ha ], [ %.sroa.0335.18720, %bb.hm ]
  %.sroa.21.18718 = phi ptr [ undef, %bb.ha ], [ %.sroa.21.18716, %bb.hm ]
  %eh.lpad-body224 = phi { ptr, i32 } [ %i.qb, %bb.ha ], [ %.pn4.i, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5close0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.qc) #48
          to label %bb.gv unwind label %bb.bw

bb.hb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %.pre670 = load i8, ptr %.phi.trans.insert, align 8, !range !1165, !noalias !16788
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot7try_new0B8_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer4jsonNtB4_15DataArrowWriter12write_values0B8_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.562.i.sroa.8.sroa.8.sroa.9.sroa.9.sroa.9 = alloca [40 x i8], align 8 ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.338.i.sroa.5.sroa.5.sroa.8 = alloca [40 x i8], align 8 ; 6 uses
  %i.p = alloca [96 x i8], align 16               ; 13 uses
  %.sroa.323.i.sroa.6 = alloca [40 x i8], align 8 ; 6 uses
  %i.q = alloca [96 x i8], align 16               ; 13 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [96 x i8], align 16               ; 13 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.829.sroa.7.sroa.6.sroa.7 = alloca [40 x i8], align 8 ; 4 uses
  %.sroa.014 = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.022 = alloca [56 x i8], align 8          ; 7 uses
  %i.ac = alloca [96 x i8], align 16              ; 3 uses
  %i.ad = alloca [8 x i8], align 8                ; 11 uses
  %.sroa.3.sroa.2 = alloca [40 x i8], align 8     ; 2 uses
  %i.ae = alloca [96 x i8], align 16              ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 253 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !range !1779, !noundef !4
  switch i8 %i.ag, label %default.unreachable104 [
    i8 0, label %bb.b
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.aj
    i8 4, label %bb.as
  ]

default.unreachable104:                           ; preds = %bb.as, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 251 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 250 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, i8 0, i64 5, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load ptr, ptr %i.ao, align 16, !nonnull !4, !align !18, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  store ptr %i.ap, ptr %i.an, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8
  store i8 1, ptr %i.ah, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.am, align 16
  store <2 x ptr> %i.aw, ptr %i.al, align 16
  store i8 1, ptr %i.ai, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ax, ptr noundef nonnull align 16 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.az = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bb = getelementptr i8, ptr %1, i64 152
  %.val35 = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr i8, ptr %1, i64 160
  %.val36 = load i64, ptr %i.bc, align 16, !noundef !4
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils25record_batch_from_message(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ae, ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val35, i64 noundef %.val36)
          to label %bb.e unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.r

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17263)
  %i.be = load i64, ptr %i.ae, align 16, !range !1449, !alias.scope !17266, !noalias !17263, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.be, -9223372036854775711
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8.sroa.0.0.copyload43 = load ptr, ptr %i.bf, align 8, !alias.scope !17268 ; 2 uses
  %.sroa.8.sroa.8.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.sroa.8.0.copyload46 = load ptr, ptr %.sroa.8.sroa.8.0..sroa_idx45, align 16, !alias.scope !17268 ; 2 uses
  %.sroa.8.sroa.9.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.8.sroa.9.sroa.0.0.copyload89 = load i64, ptr %.sroa.8.sroa.9.0..sroa_idx47, align 8, !alias.scope !17268 ; 2 uses
  %.sroa.8.sroa.9.sroa.8.0..sroa.8.sroa.9.0..sroa_idx47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.8.sroa.9.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.sroa.9.sroa.8.0..sroa.8.sroa.9.0..sroa_idx47.sroa_idx, align 16 ; 3 uses
  %.sroa.8.sroa.9.sroa.8.sroa.3.0..sroa.8.sroa.9.sroa.8.0..sroa.8.sroa.9.0..sroa_idx47.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.8.sroa.9.sroa.8.sroa.3.0.copyload = load i64, ptr %.sroa.8.sroa.9.sroa.8.sroa.3.0..sroa.8.sroa.9.sroa.8.0..sroa.8.sroa.9.0..sroa_idx47.sroa_idx.sroa_idx, align 8 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i8 1, ptr %i.aj, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  store ptr %.sroa.8.sroa.0.0.copyload43, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.8.sroa.8.0.copyload46, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %.sroa.8.sroa.9.sroa.0.0.copyload89, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 %.sroa.8.sroa.9.sroa.8.sroa.0.0.copyload, ptr %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx, align 16
  %.sroa.8.sroa.9.sroa.8.sroa.3.0..sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 %.sroa.8.sroa.9.sroa.8.sroa.3.0.copyload, ptr %.sroa.8.sroa.9.sroa.8.sroa.3.0..sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bh = getelementptr i8, ptr %1, i64 192
  %.val32.cast = inttoptr i64 %.sroa.8.sroa.9.sroa.8.sroa.0.0.copyload to ptr ; 8 uses
  %i.bi = atomicrmw add ptr %.val32.cast, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit: ; preds = %bb.f
  store ptr %.val32.cast, ptr %i.ad, align 8
  %.val34 = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bk = icmp eq ptr %.val34, %.val32.cast
  br i1 %i.bk, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread75, label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17277)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val32.cast, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !17279, !noalias !17280, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !17280, !noalias !17279, !noundef !4
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.val32.cast, i64 16
  %i.bs = load ptr, ptr %i.bq, align 8, !alias.scope !17280, !noalias !17279, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.br, align 8, !alias.scope !17279, !noalias !17280, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, i64 noundef %i.bm)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  br i1 %i.bw, label %bb.j, label %.noexc._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge

.noexc._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge: ; preds = %.noexc
  %.pre94 = load ptr, ptr %i.ad, align 8, !alias.scope !17281
  br label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %.noexc
  %i.bx = getelementptr inbounds nuw i8, ptr %.val32.cast, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.val34, i64 32
  %i.bz = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by)
          to label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17289)
  %i.cb = load ptr, ptr %i.ad, align 8, !alias.scope !17292, !nonnull !4, !noundef !4
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !17292
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %.pre95 = load ptr, ptr %i.ad, align 8, !alias.scope !17281 ; 2 uses
  br i1 %i.bz, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread75, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread75: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  %i.ce = phi ptr [ %.val32.cast, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit ], [ %.pre95, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !17293
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread75
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %bb.p unwind label %bb.o

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.noexc._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge, %bb.h, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.ch = phi ptr [ %.pre94, %.noexc._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge ], [ %.val32.cast, %bb.h ], [ %.pre95, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17299)
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !17281
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit42

bb.n:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit42 unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l, %bb.o
  %.pn19 = phi { ptr, i32 } [ %i.ck, %bb.o ], [ %i.ca, %bb.k ], [ %i.ca, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.y

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread75, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.cl = load ptr, ptr %i.al, align 16, !nonnull !4, !align !18, !noundef !4
  %i.cm = load ptr, ptr %i.an, align 16, !nonnull !4, !align !18, !noundef !4
  %i.cn = load i64, ptr %i.as, align 8, !noundef !4
  store i8 0, ptr %i.aj, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.cl, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.cm, ptr %.sroa.811.0..sroa_idx, align 16
  %.sroa.912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %i.cn, ptr %.sroa.912.0..sroa_idx, align 8
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 0, ptr %.sroa.1013.0..sroa_idx, align 16
  br label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit42: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val31 = load ptr, ptr %i.bh, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.cp = atomicrmw add ptr %.val31, i64 1 monotonic, align 8
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit42
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit42
  store i8 0, ptr %i.ah, align 1
  %i.cr = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bg)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.ex, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48, %bb.y, %bb.s
  %.pn23.pn = phi { ptr, i32 } [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48 ], [ %i.cw, %bb.s ], [ %.pn21, %bb.ex ], [ %.pn21, %bb.y ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 252
  store i8 0, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 250
  %i.cu = load i8, ptr %i.ct, align 2, !range !178, !noundef !4
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ey, label %.body

bb.s:                                             ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.z, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43
  %.sroa.829.sroa.7.sroa.6.sroa.0.0 = phi i64 [ undef, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.8.sroa.9.sroa.8.sroa.0.0.copyload, %bb.z ]
  %.sroa.829.sroa.7.sroa.6.sroa.4.0 = phi i64 [ undef, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.8.sroa.9.sroa.8.sroa.3.0.copyload, %bb.z ]
  %.sroa.829.sroa.7.sroa.6.sroa.5.0 = phi i64 [ undef, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.3.sroa.0.0.copyload, %bb.z ]
  %.sroa.940.sroa.0.0 = phi i64 [ undef, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.8.sroa.9.sroa.0.0.copyload89, %bb.z ]
  %.sroa.030.0 = phi i64 [ -9223372036854775710, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %i.be, %bb.z ]
  %.sroa.532.0 = phi ptr [ %.val31, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.8.sroa.0.0.copyload43, %bb.z ]
  %.sroa.836.0 = phi ptr [ %i.cr, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit43 ], [ %.sroa.8.sroa.8.0.copyload46, %bb.z ]
  store i8 0, ptr %i.aj, align 4
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.x:                                             ; preds = %bb.fa, %bb.ai, %bb.l, %bb.ey, %bb.ex, %bb.ew, %.body56
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer4jsonNtBL_15DataArrowWriter18write_record_batch0EBP_.exit
  %.pn21 = phi { ptr, i32 } [ %.pn17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer4jsonNtBL_15DataArrowWriter18write_record_batch0EBP_.exit ], [ %.pn19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.db = load i8, ptr %i.da, align 4, !range !178, !noundef !4
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ex, label %bb.r

bb.z:                                             ; preds = %bb.e
  %.sroa.10.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx3, align 16
  %.sroa.3.sroa.2.0..sroa.10.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.2.0..sroa.10.0..sroa_idx3.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.829.sroa.7.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.2, i64 40, i1 false)
  br label %bb.t

.body:                                            ; preds = %bb.er, %bb.u, %bb.aa, %bb.ey, %bb.r
  %.pn26 = phi { ptr, i32 } [ %.pn23.pn, %bb.r ], [ %.pn23.pn, %bb.ey ], [ %i.cx, %bb.u ], [ %i.dh, %bb.aa ], [ %i.ns, %bb.er ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 250
  store i8 0, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.df = load i8, ptr %i.de, align 1, !range !178, !noundef !4
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit66

bb.aa:                                            ; preds = %bb.es, %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v
  store i8 0, ptr %i.ai, align 2
  %i.di = load i8, ptr %i.ah, align 1, !range !178, !noundef !4
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46: ; preds = %bb.ab, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit
  store i8 0, ptr %i.ah, align 1
  br label %bb.ae

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17300)
  call void @llvm.experimental.noalias.scope.decl(metadata !17303)
  %i.dk = load ptr, ptr %i.at, align 8, !alias.scope !17306, !nonnull !4, !noundef !4
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !17306
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit66: ; preds = %bb.ez, %bb.fa, %bb.ad, %.body
  %.pn28 = phi { ptr, i32 } [ %i.do, %bb.ad ], [ %.pn26, %.body ], [ %.pn26, %bb.fa ], [ %.pn26, %bb.ez ]
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 251
  store i8 0, ptr %i.dn, align 1
  store i8 2, ptr %i.af, align 1
  resume { ptr, i32 } %.pn28

bb.ad:                                            ; preds = %bb.ev, %bb.ac
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit66

common.ret:                                       ; preds = %bb.eh, %bb.al, %bb.ae
  %.sink = phi i8 [ 4, %bb.eh ], [ 3, %bb.al ], [ 1, %bb.ae ]
  store i8 %.sink, ptr %i.af, align 1
  ret void

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46
  %.sroa.829.sroa.7.sroa.6.sroa.0.1 = phi i64 [ %.sroa.829.sroa.7.sroa.6.sroa.0.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.829.sroa.7.sroa.6.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.829.sroa.7.sroa.6.sroa.4.1 = phi i64 [ %.sroa.829.sroa.7.sroa.6.sroa.4.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.829.sroa.7.sroa.6.sroa.4.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.829.sroa.7.sroa.6.sroa.5.1 = phi i64 [ %.sroa.829.sroa.7.sroa.6.sroa.5.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.829.sroa.7.sroa.6.sroa.5.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.940.sroa.0.1 = phi i64 [ %.sroa.940.sroa.0.2109, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.940.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.030.1 = phi i64 [ %.sroa.030.2110, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.030.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.532.1 = phi ptr [ %.sroa.532.2111, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.532.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  %.sroa.836.1 = phi ptr [ %.sroa.836.2112, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %.sroa.836.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit46 ]
  store i64 %.sroa.030.1, ptr %0, align 16
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.532.1, ptr %.sroa.532.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB7_13UpdateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB7_17RecordBatchWriterINtB9_11DeltaWriterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE15write_with_mode0Bb_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 6 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %i.d = alloca [96 x i8], align 16               ; 15 uses
  %i.e = alloca [624 x i8], align 8               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [624 x i8], align 8               ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [248 x i8], align 8               ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [624 x i8], align 8               ; 8 uses
  %.sroa.818.i = alloca [32 x i8], align 8        ; 7 uses
  %i.n = alloca [624 x i8], align 8               ; 11 uses
  %i.o = alloca [96 x i8], align 16               ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.8.i = alloca [40 x i8], align 8          ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  %i.u = alloca [96 x i8], align 16               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6139 = alloca [80 x i8], align 16        ; 2 uses
  %.sroa.7134.sroa.6 = alloca [80 x i8], align 8  ; 8 uses
  %i.y = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 3 uses
  %i.z = alloca [96 x i8], align 16               ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 11 uses
  %i.ab = alloca [8 x i8], align 8                ; 10 uses
  %i.ac = alloca [8 x i8], align 8                ; 11 uses
  %i.ad = alloca [8 x i8], align 8                ; 11 uses
  %i.ae = alloca [96 x i8], align 16              ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 555 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !range !1165, !noundef !4
  switch i8 %i.ag, label %default.unreachable185 [
    i8 0, label %bb.b
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.be
  ]

default.unreachable185:                           ; preds = %bb.be, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 553 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 554
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 16
  store i8 0, ptr %i.ai, align 2
  store i8 1, ptr %i.ah, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 16 dereferenceable(40) %i.an, i64 40, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 556
  %i.aq = load i8, ptr %i.ap, align 4, !range !178, !noundef !4 ; 3 uses
  store i8 %i.aq, ptr %i.ao, align 8
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %i.al, i64 280
  %.val = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %.val, 0
  br i1 %i.at, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21984
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef range(i64 0, -9223372036854775808) 71, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.au = load i64, ptr %i.x, align 8, !range !58, !noalias !21984, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !17, !noalias !21984, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %bb.g, !prof !52

bb.e:                                             ; preds = %.noexc
  %i.az = load i64, ptr %i.ay, align 8, !noalias !21984
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #50
          to label %.noexc43 unwind label %bb.f

.noexc43:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.g:                                             ; preds = %.noexc
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !21984, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = icmp ugt i64 %i.ax, 70
  tail call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21984
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.bb, ptr noundef nonnull readonly align 1 dereferenceable(71) @561, i64 range(i64 0, -9223372036854775808) 71, i1 false), !noalias !21991
  store i64 -9223372036854775722, ptr %i.ae, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bb, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 71, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit103, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 553 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !range !178, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.et, label %bb.es

bb.i:                                             ; preds = %bb.b, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i8 %i.aq, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bh = getelementptr i8, ptr %1, i64 448       ; 3 uses
  %.val34 = load ptr, ptr %i.bh, align 16, !nonnull !4, !noundef !4 ; 8 uses
  %i.bi = atomicrmw add ptr %.val34, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit: ; preds = %bb.i
  store ptr %.val34, ptr %i.ad, align 8
  %i.bk = load ptr, ptr %i.aj, align 16, !nonnull !4, !align !18, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 416
  %.val38 = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bm = icmp eq ptr %.val34, %.val38
  br i1 %i.bm, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread144, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22000)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !22002, !noalias !22003, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !22003, !noalias !22002, !noundef !4
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.val38, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bu = load ptr, ptr %i.bs, align 8, !alias.scope !22003, !noalias !22002, !nonnull !4, !noundef !4
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !22002, !noalias !22003, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i64 noundef %i.bo)
          to label %.noexc44 unwind label %bb.n

.noexc44:                                         ; preds = %bb.l
  br i1 %i.by, label %bb.m, label %.noexc44._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge

.noexc44._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge: ; preds = %.noexc44
  %.pre173 = load ptr, ptr %i.ad, align 8, !alias.scope !22004
  br label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.m:                                             ; preds = %.noexc44
  %i.bz = getelementptr inbounds nuw i8, ptr %.val34, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.val38, i64 32
  %i.cb = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca)
          to label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22012)
  %i.cd = load ptr, ptr %i.ad, align 8, !alias.scope !22015, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !22015
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ax

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m
  %.pre174 = load ptr, ptr %i.ad, align 8, !alias.scope !22004 ; 2 uses
  br i1 %i.cb, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread144, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread144: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit
  %i.cg = phi ptr [ %.val34, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit ], [ %.pre174, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !22016
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48

bb.p:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread144
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %bb.r

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.noexc44._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge, %bb.k, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.cj = phi ptr [ %.pre173, %.noexc44._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge ], [ %.val34, %bb.k ], [ %.pre174, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22022)
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !22004
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit50

bb.q:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit50 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n, %bb.o, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.r ], [ %i.cc, %bb.n ], [ %i.cc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ba

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread144, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i8 0, ptr %i.ah, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.co = load ptr, ptr %i.aj, align 16, !nonnull !4, !align !18, !noundef !4 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.experimental.noalias.scope.decl(metadata !22023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !22026
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !22023, !noalias !22029, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 280
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !22023, !noalias !22029, !noundef !4
  %i.cv = invoke noundef nonnull ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cs, i64 noundef %i.cu)
          to label %.noexc51 unwind label %bb.ar  ; 3 uses

.noexc51:                                         ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 264
  store ptr %i.cv, ptr %i.w, align 8, !noalias !22026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !22026
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw)
          to label %bb.t unwind label %bb.u, !noalias !22029

bb.t:                                             ; preds = %.noexc51
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_values(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.y, ptr noundef nonnull %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cp)
          to label %bb.as unwind label %bb.ar

bb.u:                                             ; preds = %.noexc51
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !22030
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #47
          to label %.body unwind label %bb.w, !noalias !22029

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !22029
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit50: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val33 = load ptr, ptr %i.bh, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.db = atomicrmw add ptr %.val33, i64 1 monotonic, align 8
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.x, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit53

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit50
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit53: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit50
  store ptr %.val33, ptr %i.ab, align 8
  %i.dd = invoke noundef nonnull ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit53
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22035)
  call void @llvm.experimental.noalias.scope.decl(metadata !22038)
  %i.df = load ptr, ptr %i.ab, align 8, !alias.scope !22041, !nonnull !4, !noundef !4
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !22041
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit55

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit55 unwind label %bb.ax

bb.aa:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit53
  store ptr %i.dd, ptr %i.ac, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !22042)
  call void @llvm.experimental.noalias.scope.decl(metadata !22045)
  %i.di = load ptr, ptr %i.ab, align 8, !alias.scope !22048, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !22048
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit57

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit57 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit57: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.val32 = load ptr, ptr %i.bh, align 16, !nonnull !4, !noundef !4 ; 8 uses
  %i.dm = atomicrmw add ptr %.val32, i64 1 monotonic, align 8
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.ad, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit58

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit57
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit58: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit57
  store ptr %.val32, ptr %i.aa, align 8
  %.val35 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.do = icmp eq ptr %.val35, %.val32
  br i1 %i.do, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread149, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit58
  call void @llvm.experimental.noalias.scope.decl(metadata !22049)
  call void @llvm.experimental.noalias.scope.decl(metadata !22052)
  call void @llvm.experimental.noalias.scope.decl(metadata !22054)
  call void @llvm.experimental.noalias.scope.decl(metadata !22057)
  %i.dp = getelementptr inbounds nuw i8, ptr %.val35, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !22059, !noalias !22060, !noundef !4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !22060, !noalias !22059, !noundef !4
  %i.dt = icmp eq i64 %i.dq, %i.ds
  br i1 %i.dt, label %bb.af, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.dw = load ptr, ptr %i.du, align 8, !alias.scope !22060, !noalias !22059, !nonnull !4, !noundef !4
  %i.dx = load ptr, ptr %i.dv, align 8, !alias.scope !22059, !noalias !22060, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, i64 noundef %i.dq)
          to label %.noexc60 unwind label %bb.ah

.noexc60:                                         ; preds = %bb.af
  br i1 %i.ea, label %bb.ag, label %.noexc60._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread_crit_edge

.noexc60._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread_crit_edge: ; preds = %.noexc60
  %.pre175 = load ptr, ptr %i.aa, align 8, !alias.scope !22061
  br label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread

bb.ag:                                            ; preds = %.noexc60
  %i.eb = getelementptr inbounds nuw i8, ptr %.val35, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.ed = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec)
          to label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22066)
  call void @llvm.experimental.noalias.scope.decl(metadata !22069)
  %i.ef = load ptr, ptr %i.aa, align 8, !alias.scope !22072, !nonnull !4, !noundef !4
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !22072
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64 unwind label %bb.ax

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62: ; preds = %bb.ag
  %.pre176 = load ptr, ptr %i.aa, align 8, !alias.scope !22061 ; 2 uses
  br i1 %i.ed, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread149, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread149: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit58
  %i.ei = phi ptr [ %.val32, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit58 ], [ %.pre176, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62 ]
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !22073
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread149
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #47
          to label %bb.ao unwind label %bb.al

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread: ; preds = %.noexc60._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread_crit_edge, %bb.ae, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62
  %i.el = phi ptr [ %.pre175, %.noexc60._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread_crit_edge ], [ %.val32, %bb.ae ], [ %.pre176, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22078)
  call void @llvm.experimental.noalias.scope.decl(metadata !22079)
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !noalias !22061
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68

bb.ak:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68 unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64: ; preds = %bb.ah, %bb.ai, %bb.al
  %.pn7 = phi { ptr, i32 } [ %i.eo, %bb.al ], [ %i.ee, %bb.ah ], [ %i.ee, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ay

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit64

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ep = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, ptr noundef nonnull %i.ep, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68
  %i.er = load i64, ptr %i.z, align 16, !range !1449, !alias.scope !22080, !noalias !22083, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.er, -9223372036854775711
  %i.es = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.es, i64 40, i1 false)
  br i1 %.not.i, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.et, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70: ; preds = %bb.ao, %bb.ap, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.s

bb.ao:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit62.thread149, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i8 0, ptr %i.ah, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !22085)
  call void @llvm.experimental.noalias.scope.decl(metadata !22088)
  %i.ev = load ptr, ptr %i.ac, align 8, !alias.scope !22091, !nonnull !4, !noundef !4
  %i.ew = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !22091
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70 unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74: ; preds = %bb.ay, %bb.az, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit55, %bb.aq
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit55 ], [ %i.eq, %bb.am ], [ %i.ey, %bb.aq ], [ %.pn23.pn.ph, %bb.az ], [ %.pn23.pn.ph, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.ar:                                            ; preds = %bb.t, %bb.s
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.v, %bb.ar
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.ar ], [ %i.cx, %bb.v ], [ %i.cx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit

bb.as:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !22026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22026
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22092)
  call void @llvm.experimental.noalias.scope.decl(metadata !22095)
  %i.fb = load i64, ptr %i.y, align 16, !range !3433, !alias.scope !22095, !noalias !22092, !noundef !4
  %.not.i71 = icmp eq i64 %i.fb, -9223372036854775700
  br i1 %.not.i71, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit.thread, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit.thread: ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fc, i64 24, i1 false), !alias.scope !22097
  store i64 -9223372036854775700, ptr %i.fa, align 16, !alias.scope !22092, !noalias !22095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.av

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit: ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.fa, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.y, i64 96, i1 false), !alias.scope !22097
  %.pr = load i64, ptr %i.fa, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not11 = icmp eq i64 %.pr, -9223372036854775700
  br i1 %.not11, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.u, ptr noundef nonnull align 16 dereferenceable(96) %i.fa, i64 96, i1 false)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6writerNtNtB4_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16DeltaWriterErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ae, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.u)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtBP_6writer16DeltaWriterErrorEE13from_residualBP_.exit unwind label %bb.au

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtBP_6writer16DeltaWriterErrorEE13from_residualBP_.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit103

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit: ; preds = %.body88, %bb.au, %.body
  %.pn21 = phi { ptr, i32 } [ %i.ff, %bb.au ], [ %eh.lpad-body, %.body ], [ %.pn19, %.body88 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 464
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.fe) #48
          to label %bb.ba unwind label %bb.ax

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit101, %bb.ef, %bb.at
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit

bb.av:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtB1l_16DeltaWriterErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_.exit.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0113.0.copyload = load i64, ptr %i.fg, align 8
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2114.0.copyload = load ptr, ptr %.sroa.2114.0..sroa_idx, align 16, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.3115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.3115.0.copyload = load i64, ptr %.sroa.3115.0..sroa_idx, align 8 ; 2 uses
  %i.fh = icmp ult i64 %.sroa.3115.0.copyload, 82351536043346213
  call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw [112 x i8], ptr %.sroa.2114.0.copyload, i64 %.sroa.3115.0.copyload ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %.sroa.2114.0.copyload, ptr %i.fj, align 16
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.2114.0.copyload, ptr %.sroa.8111.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %.sroa.0113.0.copyload, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.fi, ptr %.sroa.10112.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge, %bb.av
  %i.fk = phi ptr [ %.pre170, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge ], [ %.sroa.2114.0.copyload, %bb.av ] ; 4 uses
  %i.fl = phi ptr [ %.pre168, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge ], [ %i.fi, %bb.av ]
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22098)
  call void @llvm.experimental.noalias.scope.decl(metadata !22101)
  %i.fo = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fo, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  store i64 -9223372036854775808, ptr %i.fn, align 16, !alias.scope !22098, !noalias !22101
  br label %bb.ef

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit103: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit101, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtBP_6writer16DeltaWriterErrorEE13from_residualBP_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 464
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.fp)
          to label %bb.h unwind label %bb.eg

bb.aw:                                            ; preds = %bb.an
  %.sroa.10.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10.0..sroa_idx108, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %i.er, ptr %i.ae, align 16, !alias.scope !22103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.h

bb.ax:                                            ; preds = %.body88, %bb.bd, %bb.az, %bb.ai, %bb.z, %bb.o, %bb.ey, %bb.ex, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtBN_17RecordBatchWriter15write_partition0EBR_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionResultEEB1A_.exit
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter3new:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

.body:                                            ; preds = %bb.v, %bb.r, %bb.q, %bb.n
  %.pn20 = phi { ptr, i32 } [ %.pn18, %bb.n ], [ %i.aj, %bb.v ], [ %i.ad, %bb.r ], [ %i.ac, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26935)
  call void @llvm.experimental.noalias.scope.decl(metadata !26938)
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !26941, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !26941
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26942)
  call void @llvm.experimental.noalias.scope.decl(metadata !26945)
  %i.ak = load ptr, ptr %i.g, align 8, !alias.scope !26948, !nonnull !4, !noundef !4
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !26948
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #47
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24

bb.x:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !26949
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.y, label %.noexc25

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #47
          to label %.noexc25 unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y, %bb.u, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.critedge:                                        ; preds = %.noexc25, %bb.ab, %bb.h
  %i.ar = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.an, %bb.ab ], [ %i.an, %.noexc25 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26954)
  call void @llvm.experimental.noalias.scope.decl(metadata !26957)
  call void @llvm.experimental.noalias.scope.decl(metadata !26960)
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !26963, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !26963
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28

bb.aa:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28 unwind label %bb.z

.noexc25:                                         ; preds = %bb.y, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !26964)
  call void @llvm.experimental.noalias.scope.decl(metadata !26967)
  call void @llvm.experimental.noalias.scope.decl(metadata !26970)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !26973, !nonnull !4, !noundef !4
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !26973
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %.noexc25
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #47
          to label %.critedge unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.u
  resume { ptr, i32 } %.pn20
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter5write(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(624) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [280 x i8], align 8               ; 4 uses
  %.sroa.232 = alloca [32 x i8], align 8          ; 2 uses
  %.sroa.333 = alloca [240 x i8], align 8         ; 2 uses
  %i.d = alloca [248 x i8], align 8               ; 4 uses
  %i.e = alloca [248 x i8], align 8               ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [280 x i8], align 8               ; 7 uses
  %.sroa.627 = alloca [32 x i8], align 8          ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.617 = alloca [32 x i8], align 8          ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 10 uses
  %i.v = alloca [40 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 14 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.x, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 15 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ac = icmp eq ptr %i.x, %i.ab
  br i1 %i.ac, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit._crit_edge, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26977)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !26974, !noalias !26977, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !26977, !noalias !26974, !noundef !4
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !26977, !noalias !26974, !nonnull !4, !noundef !4
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !26974, !noalias !26977, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  br i1 %i.ao, label %bb.f, label %.noexc._RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread_crit_edge

.noexc._RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread_crit_edge: ; preds = %.noexc
  %.pre166 = load ptr, ptr %i.u, align 8, !alias.scope !26979
  br label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ar = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq)
          to label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26987)
  %i.at = load ptr, ptr %i.u, align 8, !alias.scope !26990, !nonnull !4, !noundef !4
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !26990
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bd

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.f
  %.pre167 = load ptr, ptr %i.u, align 8, !alias.scope !26979 ; 2 uses
  br i1 %i.ar, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit._crit_edge, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit._crit_edge: ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.b
  %i.aw = phi ptr [ %i.x, %bb.b ], [ %.pre167, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ]
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !26991
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110

bb.i:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit._crit_edge
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #47
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110: ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -9223372036854775808, ptr %i.v, align 8
  br label %bb.bb

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.noexc._RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread_crit_edge, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.az = phi ptr [ %.pre166, %.noexc._RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread_crit_edge ], [ %i.x, %bb.d ], [ %.pre167, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26997)
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !26979
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit111

bb.j:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #47
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit111: ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit111
  %i.bc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 6
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ugt i64 %i.bc, 3
  br i1 %i.be, label %bb.r, label %bb.q

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit111
  %i.bf = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  store i64 -9223372036854775710, ptr %0, align 16
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.272.0..sroa_idx, align 8
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bk, ptr %.sroa.373.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit137

bb.p:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bl = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @655, ptr %i.t, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 36, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @655, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 36, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @654, ptr %i.br, align 8
  call void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @653, ptr noundef nonnull inttoptr (i64 115 to ptr), i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bt = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.x, ptr %i.q, align 8
  %i.bv = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema18merge_arrow_schema(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.x, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26998)
  call void @llvm.experimental.noalias.scope.decl(metadata !27001)
  %i.by = load ptr, ptr %i.q, align 8, !alias.scope !27004, !nonnull !4, !noundef !4
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !27004
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bd

bb.aa:                                            ; preds = %bb.w
  %i.cb = load i64, ptr %i.r, align 8, !range !13023, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.cb, -9223372036854775788
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.653.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -9223372036854775703, ptr %0, align 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cb, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cd, ptr %.sroa.552.0..sroa_idx, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !27005)
  call void @llvm.experimental.noalias.scope.decl(metadata !27008)
  %i.ce = load ptr, ptr %i.q, align 8, !alias.scope !27011, !nonnull !4, !noundef !4
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !27011
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit115

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #47
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit115

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit115: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bc

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.cd, ptr %i.s, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27012)
  call void @llvm.experimental.noalias.scope.decl(metadata !27015)
  %i.ch = load ptr, ptr %i.q, align 8, !alias.scope !27018, !nonnull !4, !noundef !4
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !27018
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit117

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit117 unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit117: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ck = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27019)
  call void @llvm.experimental.noalias.scope.decl(metadata !27022)
  %i.cl = load ptr, ptr %i.aa, align 8, !alias.scope !27025, !nonnull !4, !noundef !4
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !27025
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit119

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit117
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit119 unwind label %bb.ag

end_hunk_3
