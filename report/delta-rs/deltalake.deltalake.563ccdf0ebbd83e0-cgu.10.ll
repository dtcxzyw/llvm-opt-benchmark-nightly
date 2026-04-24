inline.NumInlined: 6556
inline.NumDeleted: 2964
begin_hunk_0_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bo = load i64, ptr %i.bc, align 8, !range !10, !noundef !4
  %i.bp = trunc nuw i64 %i.bo to i1               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.p

end_hunk_0
begin_hunk_1_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  br label %bb.er

bb.er:                                            ; preds = %_RNCNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB4_14PyMergeBuilder3new0B6_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219
  %.sroa.041.9 = phi i8 [ 1, %_RNCNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB4_14PyMergeBuilder3new0B6_.exit ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219 ] ; 17 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.be)
          to label %bb.fe unwind label %bb.c

end_hunk_1
begin_hunk_2_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.jm = load i64, ptr %16, align 8, !range !128, !noundef !4
  %i.jn = icmp ne i64 %i.jm, 2
  %22 = trunc nuw i8 %.sroa.041.9 to i1
  %or.cond = select i1 %i.jn, i1 %22, i1 false
  br i1 %or.cond, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fo, %bb.fj
end_hunk_2
begin_hunk_3_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit230 unwind label %bb.fu

.body227:                                         ; preds = %bb.fu, %bb.fs, %bb.fp, %bb.gl
  %.sroa.045.9 = phi i8 [ %.sroa.045.6, %bb.fp ], [ %.sroa.045.8.ph, %bb.gl ], [ %.sroa.041.9, %bb.fs ], [ %.sroa.041.9, %bb.fu ]
  %.sroa.043.12 = phi i8 [ %.sroa.043.9, %bb.fp ], [ %.sroa.043.11.ph, %bb.gl ], [ %.sroa.041.9, %bb.fs ], [ %.sroa.041.9, %bb.fu ]
  %.sroa.059.6 = phi i1 [ %.sroa.059.3, %bb.fp ], [ %.sroa.059.5.ph, %bb.gl ], [ false, %bb.fs ], [ false, %bb.fu ] ; 2 uses
  %.pn135 = phi { ptr, i32 } [ %.pn129, %bb.fp ], [ %.pn133.ph, %bb.gl ], [ %i.jx, %bb.fs ], [ %i.ka, %bb.fu ] ; 3 uses
  %i.jz = trunc nuw i8 %.sroa.043.12 to i1        ; 4 uses
  br i1 %i.jz, label %bb.gm, label %bb.fy

bb.fu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i226
end_hunk_3
begin_hunk_4_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %.thread324 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.kc = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ga unwind label %bb.fz

bb.fy:                                            ; preds = %bb.gm, %.body227
  %i.kd = trunc nuw i8 %.sroa.045.9 to i1
  br i1 %i.kd, label %.thread324, label %bb.gc

bb.fz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.thread324

bb.ga:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9558)
end_hunk_5
begin_hunk_6_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
          to label %.noexc234 unwind label %.thread346

bb.gc:                                            ; preds = %bb.fy
  br i1 %.sroa.059.6, label %bb.gp, label %bb.go

.thread346:                                       ; preds = %bb.gb
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.noexc234:                                        ; preds = %bb.gb, %bb.ga
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %3)
end_hunk_6
begin_hunk_7_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
bb.gk:                                            ; preds = %.thread302, %bb.fp
  %.pn131312 = phi { ptr, i32 } [ %i.jt, %.thread302 ], [ %.pn129, %bb.fp ]
  %.sroa.059.4311 = phi i1 [ false, %.thread302 ], [ %.sroa.059.3, %bb.fp ]
  %.sroa.043.10309 = phi i8 [ 1, %.thread302 ], [ %.sroa.043.9, %bb.fp ]
  %.sroa.045.7308 = phi i8 [ 1, %.thread302 ], [ %.sroa.045.6, %bb.fp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %8) #54
          to label %bb.gl unwind label %bb.bc

end_hunk_7
begin_hunk_8_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %6) #54
          to label %bb.fy unwind label %bb.bc

.thread324:                                       ; preds = %bb.fw, %bb.fz, %bb.fy
  %.pn137331 = phi { ptr, i32 } [ %.pn135, %bb.fy ], [ %i.ke, %bb.fz ], [ %i.kb, %bb.fw ] ; 2 uses
  %.sroa.059.7330 = phi i1 [ %.sroa.059.6, %bb.fy ], [ false, %bb.fz ], [ false, %bb.fw ]
  %.sroa.047.13329 = phi i1 [ %i.jz, %bb.fy ], [ true, %bb.fz ], [ true, %bb.fw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9580)
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  call void @llvm.experimental.noalias.scope.decl(metadata !9586)
end_hunk_8
begin_hunk_9_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237 unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237: ; preds = %bb.gn, %.thread324
  br i1 %.sroa.059.7330, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237, %bb.gp, %bb.gc
  %.pn139337 = phi { ptr, i32 } [ %.pn137331, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237 ], [ %.pn139339, %bb.gp ], [ %.pn135, %bb.gc ] ; 2 uses
  %.sroa.047.14336 = phi i1 [ %.sroa.047.13329, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237 ], [ %.sroa.047.14338, %bb.gp ], [ %i.jz, %bb.gc ]
  br i1 %.sroa.047.14336, label %bb.gq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit239

bb.gp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237, %bb.gc
  %.pn139339 = phi { ptr, i32 } [ %.pn137331, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237 ], [ %.pn135, %bb.gc ]
  %.sroa.047.14338 = phi i1 [ %.sroa.047.13329, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow6schema8PySchemaECs7p2uQeJxui2_9deltalake.exit237 ], [ %i.jz, %bb.gc ]
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val168 = load ptr, ptr %i.ks, align 8, !noundef !4
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_9
begin_hunk_10_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3gECBqE52CY_10pyo3_arrow19record_batch_reader19PyRecordBatchReaderECs7p2uQeJxui2_9deltalake(ptr %.val168, ptr %.val169) #54
          to label %bb.go unwind label %bb.bc

bb.gq:                                            ; preds = %.thread346, %bb.go
  %.pn139337349 = phi { ptr, i32 } [ %i.ki, %.thread346 ], [ %.pn139337, %bb.go ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %3) #54
          to label %bb.gr unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit239: ; preds = %bb.gr, %bb.gs, %bb.go
  %.pn141344 = phi { ptr, i32 } [ %.pn139337, %bb.go ], [ %.pn141.ph, %bb.gs ], [ %.pn141.ph, %bb.gr ]
  resume { ptr, i32 } %.pn141344

bb.gr:                                            ; preds = %bb.gd, %bb.gq
  %.pn141.ph = phi { ptr, i32 } [ %.pn139337349, %bb.gq ], [ %i.kj, %bb.gd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9590)
  call void @llvm.experimental.noalias.scope.decl(metadata !9593)
  %i.ku = load ptr, ptr %i.bh, align 8, !alias.scope !9596, !nonnull !4, !noundef !4
end_hunk_10
begin_hunk_11_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #55, !noalias !9917
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bd = extractvalue { i64, i64 } %i.ba, 0
  %i.be = extractvalue { i64, i64 } %i.ba, 1
end_hunk_11
begin_hunk_12_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !9923

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.v, %bb.s
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.bh, %bb.v ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i1 [ %6, %bb.s ], [ true, %bb.v ]
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.1.i.i.i, %bb.s ], [ %.sroa.0.3.i.i.i, %bb.v ]
  %5 = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %5, label %bb.ae, label %bb.ad

bb.s:                                             ; preds = %bb.z, %bb.y, %bb.r
  %.sroa.0.1.i.i.i = phi i8 [ 0, %bb.z ], [ 1, %bb.y ], [ 1, %bb.r ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %6 = trunc nuw i8 %.sroa.0.1.i.i.i to i1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9923
end_hunk_12
begin_hunk_13_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
          to label %bb.w unwind label %bb.v, !noalias !9923

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.0.3.i.i.i = phi i8 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac, !noalias !9923

end_hunk_13
begin_hunk_14_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !9926
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.aa unwind label %bb.s, !noalias !9927

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9923
end_hunk_14
begin_hunk_15_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %7 = load i64, ptr %i.p, align 8, !range !11, !alias.scope !9920, !noalias !9927, !noundef !4
  %8 = icmp ne i64 %7, -9223372036854775808
  %or.cond.i.i.i = select i1 %8, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.af, label %.body8.i.i

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.o) #54
          to label %bb.ad unwind label %bb.ac, !noalias !9926

end_hunk_15
begin_hunk_16_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #55, !noalias !9934
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.ai, %bb.af, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.bq, %bb.ai ], [ %i.bb, %.body.i.i ], [ %.pn.i.i.i, %bb.af ], [ %.pn.i.i.i, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.t) #54
          to label %bb.am unwind label %bb.ak, !noalias !9934

end_hunk_16
begin_hunk_17_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.t unwind label %bb.s, !noalias !9997

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.body.i.i.i, %.body8.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i.i, %.body8.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i1 [ %6, %.body8.i.i.i ], [ true, %.body.i.i.i ]
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.1.lpad-body.i.i.i, %.body8.i.i.i ], [ %.sroa.0.3.lpad-body.i.i.i, %.body.i.i.i ]
  %5 = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %5, label %bb.as, label %bb.ar

bb.s:                                             ; preds = %bb.ag, %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i.i

.body8.i.i.i:                                     ; preds = %.body.i.i.i.i, %bb.s
  %.sroa.0.1.lpad-body.i.i.i = phi i8 [ 1, %bb.s ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %eh.lpad-body9.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %6 = trunc nuw i8 %.sroa.0.1.lpad-body.i.i.i to i1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9997
end_hunk_17
begin_hunk_18_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.thread8.i.i.i.i, %bb.v
  %.sroa.0.3.lpad-body.i.i.i = phi i8 [ 1, %bb.v ], [ 0, %.thread8.i.i.i.i ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %.pn7.i.i.i.i, %.thread8.i.i.i.i ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.aq, !noalias !9997

end_hunk_18
begin_hunk_19_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 24, i1 false), !noalias !9994
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13InsertBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.h) #54
          to label %.body8.i.i.i unwind label %bb.an, !noalias !10025

bb.an:                                            ; preds = %.body.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
end_hunk_19
begin_hunk_20_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  unreachable

bb.ar:                                            ; preds = %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %7 = load i64, ptr %i.r, align 8, !range !11, !alias.scope !9991, !noalias !9994, !noundef !4
  %8 = icmp ne i64 %7, -9223372036854775808
  %or.cond.i.i.i = select i1 %8, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.at, label %.body8.i.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13InsertBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.q) #54
          to label %bb.ar unwind label %bb.aq, !noalias !9998

end_hunk_20
begin_hunk_21_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #55, !noalias !10035
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.aw, %bb.at, %bb.ar
  %.pn.i.i = phi { ptr, i32 } [ %i.ch, %bb.aw ], [ %i.bd, %.body.i.i ], [ %.pn.i.i.i, %bb.at ], [ %.pn.i.i.i, %bb.ar ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.v) #54
          to label %bb.ba unwind label %bb.ay, !noalias !10035

end_hunk_21
begin_hunk_22_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #55, !noalias !10110
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bd = extractvalue { i64, i64 } %i.ba, 0
  %i.be = extractvalue { i64, i64 } %i.ba, 1
end_hunk_22
begin_hunk_23_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !10116

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.v, %bb.s
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.bh, %bb.v ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i1 [ %6, %bb.s ], [ true, %bb.v ]
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.1.i.i.i, %bb.s ], [ %.sroa.0.3.i.i.i, %bb.v ]
  %5 = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %5, label %bb.ae, label %bb.ad

bb.s:                                             ; preds = %bb.z, %bb.y, %bb.r
  %.sroa.0.1.i.i.i = phi i8 [ 0, %bb.z ], [ 1, %bb.y ], [ 1, %bb.r ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %6 = trunc nuw i8 %.sroa.0.1.i.i.i to i1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10116
end_hunk_23
begin_hunk_24_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
          to label %bb.w unwind label %bb.v, !noalias !10116

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.0.3.i.i.i = phi i8 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac, !noalias !10116

end_hunk_24
begin_hunk_25_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !10119
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.aa unwind label %bb.s, !noalias !10120

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10116
end_hunk_25
begin_hunk_26_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %7 = load i64, ptr %i.p, align 8, !range !11, !alias.scope !10113, !noalias !10120, !noundef !4
  %8 = icmp ne i64 %7, -9223372036854775808
  %or.cond.i.i.i = select i1 %8, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.af, label %.body8.i.i

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.o) #54
          to label %bb.ad unwind label %bb.ac, !noalias !10119

end_hunk_26
begin_hunk_27_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #55, !noalias !10127
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.ai, %bb.af, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.bq, %bb.ai ], [ %i.bb, %.body.i.i ], [ %.pn.i.i.i, %bb.af ], [ %.pn.i.i.i, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.t) #54
          to label %bb.am unwind label %bb.ak, !noalias !10127

end_hunk_27
