inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00Cs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.aan, label %.body276, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274: ; preds = %bb.kr
  %i.aao = getelementptr inbounds nuw i8, ptr %.val126, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !range !2323, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef %i.aam, i64 noundef range(i64 1, -9223372036854775807) %i.aap) #33
  br label %.body276

.body276:                                         ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274, %bb.kr, %bb.li, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit172
  %.sroa.21.31 = phi ptr [ %.sroa.21.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit172 ], [ %.sroa.21.6, %bb.li ], [ %.sroa.21.3, %bb.kr ], [ %.sroa.21.3, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274 ]
  %.sroa.0352.31 = phi ptr [ %.sroa.0352.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit172 ], [ %.sroa.0352.6, %bb.li ], [ %.sroa.0352.3, %bb.kr ], [ %.sroa.0352.3, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274 ]
  %.pn92 = phi { ptr, i32 } [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit172 ], [ %.pn90, %bb.li ], [ %i.aak, %bb.kr ], [ %i.aak, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i274 ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 1003
  store i8 0, ptr %i.aaq, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.aar) #37
          to label %bb.dn unwind label %bb.bu

bb.ks:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aas)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i279 unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aat = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aas)
          to label %.body280 unwind label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.aau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i279: ; preds = %bb.ks
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aas)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit unwind label %bb.kv

bb.kv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i279
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %.body280

bb.kw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9834)
  call void @llvm.experimental.noalias.scope.decl(metadata !9837)
  call void @llvm.experimental.noalias.scope.decl(metadata !9840)
  %i.aax = load ptr, ptr %i.aaw, align 8, !alias.scope !9843, !nonnull !4, !noundef !4
  %i.aay = atomicrmw sub ptr %i.aax, i64 1 release, align 8, !noalias !9843
  %i.aaz = icmp eq i64 %i.aay, 1
  br i1 %i.aaz, label %bb.kx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit

bb.kx:                                            ; preds = %bb.kw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aaw) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit288

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.kz, %bb.la, %bb.bt
  store i8 0, ptr %i.gb, align 2
  br label %bb.kk

bb.kz:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !9844)
  call void @llvm.experimental.noalias.scope.decl(metadata !9847)
  %i.abb = load ptr, ptr %1, align 8, !alias.scope !9850, !nonnull !4, !noundef !4
  %i.abc = atomicrmw sub ptr %i.abb, i64 1 release, align 8, !noalias !9850
  %i.abd = icmp eq i64 %i.abc, 1
  br i1 %i.abd, label %bb.la, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit

bb.la:                                            ; preds = %bb.kz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit291

bb.lc:                                            ; preds = %bb.lg, %bb.lf, %bb.le, %bb.gl
  store i8 0, ptr %i.px, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 1007
  store i8 0, ptr %i.abf, align 1
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  call void @llvm.experimental.noalias.scope.decl(metadata !9854)
  %i.abh = load ptr, ptr %i.abg, align 8, !alias.scope !9857, !nonnull !4, !noundef !4
  %i.abi = atomicrmw sub ptr %i.abh, i64 1 release, align 8, !noalias !9857
  %i.abj = icmp eq i64 %i.abi, 1
  br i1 %i.abj, label %bb.ld, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit286

bb.ld:                                            ; preds = %bb.lc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abg) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit286 unwind label %bb.bu

bb.le:                                            ; preds = %bb.gl
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  %i.abl = load i64, ptr %i.abk, align 8, !range !2051, !noundef !4
  %.not82 = icmp eq i64 %i.abl, -9223372036854775808
  br i1 %.not82, label %bb.lc, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 1007
  %i.abn = load i8, ptr %i.abm, align 1, !range !2042, !noundef !4
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %bb.lg, label %bb.lc

bb.lg:                                            ; preds = %bb.lf
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.abk) #37
          to label %bb.lc unwind label %bb.bu

bb.lh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit286
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %i.abp) #37
          to label %bb.dh unwind label %bb.bu

bb.li:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit172
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val123 = load ptr, ptr %i.abq, align 8
  %i.abr = getelementptr i8, ptr %1, i64 232
  %.val124 = load ptr, ptr %i.abr, align 8, !nonnull !4, !align !1680, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake(ptr %.val123, ptr nonnull %.val124) #37
          to label %.body276 unwind label %bb.bu

bb.lj:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.7) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake(ptr %.sroa.0352.7, ptr nonnull %.sroa.21.7) #37
          to label %bb.bn unwind label %bb.bu

bb.lk:                                            ; preds = %.body145
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.abs) #37
          to label %.body280 unwind label %bb.bu

bb.ll:                                            ; preds = %.body280
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  call void @llvm.experimental.noalias.scope.decl(metadata !9861)
  call void @llvm.experimental.noalias.scope.decl(metadata !9864)
  %i.abu = load ptr, ptr %i.abt, align 8, !alias.scope !9867, !nonnull !4, !noundef !4
  %i.abv = atomicrmw sub ptr %i.abu, i64 1 release, align 8, !noalias !9867
  %i.abw = icmp eq i64 %i.abv, 1
  br i1 %i.abw, label %bb.lm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit288

bb.lm:                                            ; preds = %bb.ll
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.abt) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit288 unwind label %bb.bu

bb.ln:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs7p2uQeJxui2_9deltalake.exit288
  call void @llvm.experimental.noalias.scope.decl(metadata !9868)
  call void @llvm.experimental.noalias.scope.decl(metadata !9871)
  %i.abx = load ptr, ptr %i.av, align 8, !alias.scope !9874, !nonnull !4, !noundef !4
  %i.aby = atomicrmw sub ptr %i.abx, i64 1 release, align 8, !noalias !9874
  %i.abz = icmp eq i64 %i.aby, 1
  br i1 %i.abz, label %bb.lo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit

bb.lo:                                            ; preds = %bb.ln
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bu

bb.lp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9875)
  call void @llvm.experimental.noalias.scope.decl(metadata !9878)
  %i.aca = load ptr, ptr %1, align 8, !alias.scope !9881, !nonnull !4, !noundef !4
  %i.acb = atomicrmw sub ptr %i.aca, i64 1 release, align 8, !noalias !9881
  %i.acc = icmp eq i64 %i.acb, 1
  br i1 %i.acc, label %bb.lq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit291

bb.lq:                                            ; preds = %bb.lp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit291 unwind label %bb.bu

bb.lr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit291
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.az) #37
          to label %bb.t unwind label %bb.bu
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b, !prof !1705

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #40
  %i.k = load i64, ptr %i.d, align 8, !range !15, !noundef !4
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9882)
  call void @llvm.experimental.noalias.scope.decl(metadata !9885)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !range !9888, !alias.scope !9889, !noalias !9890, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !9889, !noalias !9890
  %i.p = trunc nuw i32 %i.m to i1
  br i1 %i.p, label %bb.d, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9889, !noalias !9890, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noalias !9893, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %i.o to i64                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !9893, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !9893, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i32, ptr %i.aa, align 4, !noalias !9893, !noundef !4
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.038.0.i.i = phi i64 [ %i.af, %bb.g ], [ 2, %bb.d ] ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.an, %bb.g ], [ 3, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9889, !noalias !9890, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !9889, !noalias !9890, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %.sroa.038.0.i.i, %i.al
  br i1 %i.am, label %bb.h, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.g:                                             ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i
  %i.an = add nuw nsw i64 %i.af, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.038.0.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !9893, !noundef !4 ; 5 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %.sroa.040.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.040.0.i.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !9893, !noundef !4 ; 3 uses
  %.not44.i.i = icmp eq i64 %i.as, 0
  br i1 %.not44.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread, label %bb.j

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, %bb.e, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.at), !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = add i64 %i.ap, -1                       ; 7 uses
  %i.av = add i64 %i.as, -1                       ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9882, !noalias !9894, !noundef !4 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !9882, !noalias !9894, !nonnull !4, !noundef !4 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ba), !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i2 = icmp ugt i64 %i.au, %i.av
  br i1 %.not.i.i2, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i = icmp ult i64 %i.au, %i.ax
  br i1 %.not5.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i64 %i.au, %i.ax
  br i1 %i.bd, label %bb.m, label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !9895, !noalias !9898, !noundef !4
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.m, label %bb.ag

bb.p:                                             ; preds = %bb.m
  %.not6.i.i = icmp ult i64 %i.av, %i.ax
  br i1 %.not6.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %i.av, %i.ax
  br i1 %i.bh, label %bb.s, label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !9895, !noalias !9898, !noundef !4
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %i.bl = sub i64 %i.as, %i.ap                    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 3 uses
  switch i64 %i.bl, label %thread-pre-split.i.i [
    i64 0, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !9901, !noalias !9904, !noundef !4 ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 43, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i8 45, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bm, align 1, !alias.scope !9901, !noalias !9904
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.bo = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bn, %bb.t ]
  switch i8 %i.bo, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap
  %i.bq = add nsw i64 %i.bl, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap ; 2 uses
  %i.bs = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bt = icmp samesign ult i64 %i.bl, 17
  br i1 %i.bt, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.w
  %.not103137.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not103137.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i.i = phi ptr [ %i.bu, %bb.z ], [ %i.br, %bb.w ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bs, %bb.w ]
  %.sroa.084.0134.i.i = phi i64 [ %i.cg, %bb.z ], [ 0, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.bv = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.bw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.by, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.x, !prof !1649

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !9901, !noalias !9904, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.y, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.z, !prof !1649

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2E_13RawDeltaTable16cleanup_metadata0s_0E00ENtNtB7_6future6Future4pollB2E_:bb.a
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.oh, ptr noundef nonnull %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.om, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %bb.eh unwind label %bb.eg, !noalias !12323

bb.eg:                                            ; preds = %bb.ef
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !12322
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12322
  br label %bb.eu

bb.ei:                                            ; preds = %bb.eg, %bb.ed
  %.pn32.pn.i.i.i.i = phi { ptr, i32 } [ %i.pa, %bb.eg ], [ %.pn30.i.i.i.i, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12322
  br label %bb.iw

bb.ej:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !12322
  %i.pb = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !12322, !nonnull !4, !align !1680, !noundef !4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !12322
  %i.pd = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.pe = load i64, ptr %i.pd, align 8, !noalias !12318, !noundef !4
  invoke void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone20timestamp_millis_optCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef %i.pe)
          to label %bb.el unwind label %bb.ek, !noalias !12323

bb.ek:                                            ; preds = %bb.ej
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  invoke void @_RNvMs0_NtCshmPyUV8PP35_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.br, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171)
          to label %bb.eo unwind label %bb.en, !noalias !12323

bb.em:                                            ; preds = %bb.en, %bb.ek
  %.pn37.i.i.i.i = phi { ptr, i32 } [ %i.pg, %bb.en ], [ %i.pf, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12322
  br label %bb.ix

bb.en:                                            ; preds = %bb.el
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !12322
  store ptr %i.br, ptr %i.bp, align 8, !noalias !12322
  %.sroa.5319.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.5319.0..sroa_idx.i.i.i.i, align 8, !noalias !12322
  store ptr @172, ptr %i.bs, align 8, !noalias !12322
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bp, ptr %i.ph, align 8, !noalias !12322
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !12322
  %i.pi = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @168, ptr %i.pi, align 8, !noalias !12322
  store i64 1, ptr %i.bu, align 8, !noalias !12322
  %.sroa.7316.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bt, ptr %.sroa.7316.0..sroa_idx.i.i.i.i, align 8, !noalias !12322
  %.sroa.8317.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 1, ptr %.sroa.8317.0..sroa_idx.i.i.i.i, align 8, !noalias !12322
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.pc, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12322
  %i.pj = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !12374, !nonnull !4, !align !1680, !noundef !4
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc220.i.i.i.i unwind label %bb.es, !noalias !12323

.noexc220.i.i.i.i:                                ; preds = %bb.eo
  %i.pk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12374
  %i.pl = icmp eq i8 %i.pk, 0
  br i1 %i.pl, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %.noexc220.i.i.i.i
  %i.pm = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12374 ; 2 uses
  %i.pn = icmp ult i64 %i.pm, 6
  call void @llvm.assume(i1 %i.pn)
  %i.po = icmp samesign ugt i64 %i.pm, 3
  br i1 %i.po, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.pp = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !12374, !nonnull !4, !align !1680, !noundef !4 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !12323, !nonnull !4, !noundef !4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 40
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !12323, !noundef !4
  store i64 4, ptr %i.p, align 8, !noalias !12374
  %.sroa.3.0..sroa_idx.i218.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.pr, ptr %.sroa.3.0..sroa_idx.i218.i.i.i.i, align 8, !noalias !12374
  %.sroa.5.0..sroa_idx.i219.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.pt, ptr %.sroa.5.0..sroa_idx.i219.i.i.i.i, align 8, !noalias !12374
  %i.pu = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc221.i.i.i.i unwind label %bb.es, !noalias !12323 ; 2 uses

.noexc221.i.i.i.i:                                ; preds = %bb.eq
  %i.pv = extractvalue { ptr, ptr } %i.pu, 0      ; 2 uses
  %i.pw = extractvalue { ptr, ptr } %i.pu, 1      ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !invariant.load !4, !noalias !12323, !nonnull !4
  %i.pz = invoke noundef zeroext i1 %i.py(ptr noundef %i.pv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #40
          to label %.noexc222.i.i.i.i unwind label %bb.es, !noalias !12323, !inline_history !12377

.noexc222.i.i.i.i:                                ; preds = %.noexc221.i.i.i.i
  br i1 %i.pz, label %bb.er, label %bb.et

bb.er:                                            ; preds = %.noexc222.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pp, ptr noundef nonnull %i.pv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.et unwind label %bb.es, !noalias !12323

bb.es:                                            ; preds = %bb.er, %.noexc221.i.i.i.i, %bb.eq, %bb.eo
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12322
  br label %bb.ix

bb.et:                                            ; preds = %bb.er, %.noexc222.i.i.i.i, %bb.ep, %.noexc220.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12322
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eh, %bb.dz, %bb.du, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !12322
  %i.qb = getelementptr i8, ptr %i.df, i64 136    ; 3 uses
  %.val167.i.i.i.i = load ptr, ptr %i.qb, align 8, !noalias !12318, !nonnull !4, !noundef !4 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.df, i64 144    ; 3 uses
  %.val168.i.i.i.i = load i64, ptr %i.qc, align 8, !noalias !12318, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val168.i.i.i.i, 96
  %i.qd = getelementptr inbounds nuw i8, ptr %.val167.i.i.i.i, i64 %.idx.i.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.df, i64 120 ; 2 uses
  %.sroa.5329.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.qd, ptr %.sroa.5329.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12378, !noalias !12322
  %.sroa.6330.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 4 uses
  store ptr %i.qe, ptr %.sroa.6330.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12378, !noalias !12322
  call void @llvm.experimental.noalias.scope.decl(metadata !12382)
  call void @llvm.experimental.noalias.scope.decl(metadata !12385)
  call void @llvm.experimental.noalias.scope.decl(metadata !12388)
  call void @llvm.experimental.noalias.scope.decl(metadata !12391)
  call void @llvm.experimental.noalias.scope.decl(metadata !12394)
  call void @llvm.experimental.noalias.scope.decl(metadata !12397)
  call void @llvm.experimental.noalias.scope.decl(metadata !12400)
  call void @llvm.experimental.noalias.scope.decl(metadata !12403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12406
  store ptr %.sroa.6330.0..sroa_idx.i.i.i.i, ptr %i.n, align 8, !noalias !12406
  %i.qf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6330.0..sroa_idx.i.i.i.i, ptr %i.qf, align 8, !noalias !12406
  %i.qg = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %.sroa.6330.0..sroa_idx.i.i.i.i, ptr %i.qg, align 8, !noalias !12406
  call void @llvm.experimental.noalias.scope.decl(metadata !12415)
  %i.qh = icmp eq i64 %.val168.i.i.i.i, 0
  br i1 %i.qh, label %.loopexit487.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eu
  %i.qi = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.qk = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ql = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.qm = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.ev

bb.ev:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qr = phi ptr [ %.val167.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qs, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 96 ; 3 uses
  store ptr %i.qs, ptr %i.bh, align 8, !alias.scope !12418, !noalias !12421
  call void @llvm.experimental.noalias.scope.decl(metadata !12424)
  %i.qt = load i64, ptr %i.qr, align 8, !range !2051, !alias.scope !12427, !noalias !12430, !noundef !4
  %i.qu = icmp eq i64 %i.qt, -9223372036854775808
  br i1 %i.qu, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !12433)
  call void @llvm.experimental.noalias.scope.decl(metadata !12436)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !12439, !noalias !12440, !nonnull !4, !noundef !4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !12439, !noalias !12440, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12444
  %i.qz = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !12444
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ex, !prof !1705

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12444
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.k, align 8, !noalias !12444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12444
  store ptr %i.k, ptr %i.j, align 8, !noalias !12444
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc224.i.i.i.i unwind label %.loopexit413.i.i.i.i, !noalias !12323

.noexc224.i.i.i.i:                                ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12444
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc224.i.i.i.i, %bb.ew
  invoke fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qw, i64 noundef %i.qy) #40
          to label %.noexc225.i.i.i.i unwind label %.loopexit413.i.i.i.i

.noexc225.i.i.i.i:                                ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rb = load i64, ptr %i.m, align 8, !range !15, !noalias !12444, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rb, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %.noexc225.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !12444
  call void @llvm.experimental.noalias.scope.decl(metadata !12445)
  call void @llvm.experimental.noalias.scope.decl(metadata !12448)
  %i.rc = load i32, ptr %i.qi, align 8, !range !9888, !alias.scope !12451, !noalias !12452, !noundef !4
  %i.rd = load i32, ptr %i.qj, align 4, !alias.scope !12451, !noalias !12452
  %i.re = trunc nuw i32 %i.rc to i1
  br i1 %i.re, label %bb.ez, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.rf = load ptr, ptr %i.qk, align 8, !alias.scope !12451, !noalias !12452, !nonnull !4, !noundef !4 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !noalias !12455, !noundef !4 ; 3 uses
  %i.ri = icmp ult i64 %i.rh, 1152921504606846976
  call void @llvm.assume(i1 %i.ri)
  %i.rj = icmp eq i64 %i.rh, 1
  br i1 %i.rj, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rk = zext i32 %i.rd to i64                   ; 2 uses
  %i.rl = icmp samesign ugt i64 %i.rh, %i.rk
  br i1 %i.rl, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fa
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !noalias !12455, !nonnull !4, !noundef !4
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rk ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rq = load i32, ptr %i.rp, align 4, !noalias !12455, !noundef !4
  %i.rr = zext i32 %i.rq to i64
  %i.rs = load i32, ptr %i.ro, align 4, !noalias !12455, !noundef !4
  %i.rt = zext i32 %i.rs to i64                   ; 3 uses
  %i.ru = sub nsw i64 %i.rr, %i.rt
  %i.rv = icmp ugt i64 %i.ru, 1
  br i1 %i.rv, label %bb.fc, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fc, %bb.ez
  %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rt, %bb.fc ], [ 2, %bb.ez ] ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rz, %bb.fc ], [ 3, %bb.ez ] ; 2 uses
  %i.rw = load ptr, ptr %i.ql, align 8, !alias.scope !12451, !noalias !12452, !nonnull !4, !noundef !4 ; 2 uses
  %i.rx = load i64, ptr %i.qm, align 8, !alias.scope !12451, !noalias !12452, !noundef !4 ; 2 uses
  %i.ry = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.rx
  br i1 %i.ry, label %bb.fd, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fc:                                            ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rz = add nuw nsw i64 %i.rt, 1
  br label %bb.fb

bb.fd:                                            ; preds = %bb.fb
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sb = load i64, ptr %i.sa, align 8, !noalias !12455, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.sb, 0
  %i.sc = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.rx
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.sc, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fe, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.se = load i64, ptr %i.sd, align 8, !noalias !12455, !noundef !4 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.se, 0
  br i1 %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ff

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fe, %bb.fd, %bb.fb, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fa, %bb.ey
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.qp)
          to label %.noexc226.i.i.i.i unwind label %.loopexit413.i.i.i.i, !noalias !12323

.noexc226.i.i.i.i:                                ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12444
  br label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ff:                                            ; preds = %bb.fe
  %i.sf = add i64 %i.sb, -1                       ; 7 uses
  %i.sg = add i64 %i.se, -1                       ; 6 uses
  %i.sh = load i64, ptr %i.qn, align 8, !alias.scope !12445, !noalias !12456, !noundef !4 ; 5 uses
  %i.si = load ptr, ptr %i.qo, align 8, !alias.scope !12445, !noalias !12456, !nonnull !4, !noundef !4 ; 6 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.qp)
          to label %.noexc227.i.i.i.i unwind label %.loopexit413.i.i.i.i, !noalias !12323

.noexc227.i.i.i.i:                                ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12444
  %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.sf, %i.sg
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gc, label %bb.fg

bb.fg:                                            ; preds = %.noexc227.i.i.i.i
  %i.sj = icmp eq i64 %i.sf, 0
  br i1 %i.sj, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.sf, %i.sh
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.fk, %bb.fj, %bb.fg
  %i.sk = icmp eq i64 %i.sg, 0
  br i1 %i.sk, label %bb.fo, label %bb.fl

bb.fj:                                            ; preds = %bb.fh
  %i.sl = icmp eq i64 %i.sf, %i.sh
  br i1 %i.sl, label %bb.fi, label %bb.gc

bb.fk:                                            ; preds = %bb.fh
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sf
  %i.sn = load i8, ptr %i.sm, align 1, !alias.scope !12457, !noalias !12460, !noundef !4
  %i.so = icmp sgt i8 %i.sn, -65
  br i1 %i.so, label %bb.fi, label %bb.gc

bb.fl:                                            ; preds = %bb.fi
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.sg, %i.sh
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.sp = icmp eq i64 %i.sg, %i.sh
  br i1 %i.sp, label %bb.fo, label %bb.gc

bb.fn:                                            ; preds = %bb.fl
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sg
  %i.sr = load i8, ptr %i.sq, align 1, !alias.scope !12457, !noalias !12460, !noundef !4
  %i.ss = icmp sgt i8 %i.sr, -65
  br i1 %i.ss, label %bb.fo, label %bb.gc

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fi
  %i.st = sub i64 %i.se, %i.sb                    ; 5 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sf ; 3 uses
  switch i64 %i.st, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fp
  ]

bb.fp:                                            ; preds = %bb.fo
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !12463, !noalias !12466, !noundef !4 ; 2 uses
  switch i8 %i.sv, label %bb.fq [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fo
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.su, align 1, !alias.scope !12463, !noalias !12466
  br label %bb.fq

bb.fq:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp
  %i.sw = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sv, %bb.fp ]
  switch i8 %i.sw, label %bb.fx [
    i8 43, label %bb.fr
    i8 45, label %bb.fs
  ]

bb.fr:                                            ; preds = %bb.fq
  %i.sx = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sb
  %i.sy = add nsw i64 %i.st, -1
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fq
  %i.sz = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sb ; 2 uses
  %i.ta = add nsw i64 %i.st, -1                   ; 3 uses
  %i.tb = icmp samesign ult i64 %i.st, 17
  br i1 %i.tb, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ta, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.fs, %bb.fv
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tc, %bb.fv ], [ %i.sz, %bb.fs ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.td, %bb.fv ], [ %i.ta, %bb.fs ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.to, %bb.fv ], [ 0, %bb.fs ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.td = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.te = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.tf = extractvalue { i64, i1 } %i.te, 0
  %i.tg = extractvalue { i64, i1 } %i.te, 1
  br i1 %i.tg, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ft, !prof !1649

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.th = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !12463, !noalias !12466, !noundef !4
  %i.ti = zext i8 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -48                  ; 2 uses
  %i.tk = icmp ult i32 %i.tj, 10
  br i1 %i.tk, label %bb.fu, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.tl = zext nneg i32 %i.tj to i64
  %i.tm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.tf, i64 %i.tl) ; 2 uses
  %i.tn = extractvalue { i64, i1 } %i.tm, 1
end_hunk_1
