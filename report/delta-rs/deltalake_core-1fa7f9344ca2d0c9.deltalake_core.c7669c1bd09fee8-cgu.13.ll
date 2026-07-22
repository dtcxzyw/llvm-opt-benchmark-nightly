inline.NumInlined: 13441
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
bb.avi:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit
  %i.czz = getelementptr inbounds nuw i8, ptr %1, i64 4288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.czz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit unwind label %bb.as

bb.avj:                                           ; preds = %bb.aog
  %i.daa = getelementptr inbounds nuw i8, ptr %1, i64 4152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.daa) #46
          to label %.body835 unwind label %bb.as

bb.avk:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit761
  %i.dab = getelementptr inbounds nuw i8, ptr %1, i64 3696
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.dab) #46
          to label %.body848 unwind label %bb.as

bb.avl:                                           ; preds = %bb.avm, %.body707
  store i8 0, ptr %i.cqq, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.sz

bb.avm:                                           ; preds = %.body707
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.gm) #46
          to label %bb.avl unwind label %bb.as

bb.avn:                                           ; preds = %bb.sz
  %i.dac = getelementptr inbounds nuw i8, ptr %1, i64 3616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dac) #46
          to label %.body852 unwind label %bb.as

bb.avo:                                           ; preds = %bb.ra
  %i.dad = getelementptr inbounds nuw i8, ptr %1, i64 3040
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.dad) #46
          to label %bb.tf unwind label %bb.as

bb.avp:                                           ; preds = %bb.tl
  %i.dae = getelementptr inbounds nuw i8, ptr %1, i64 1040
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.dae) #46
          to label %bb.asz unwind label %bb.as

bb.avq:                                           ; preds = %bb.to
  %i.daf = getelementptr inbounds nuw i8, ptr %1, i64 3568
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.daf) #46
          to label %.body804 unwind label %bb.as

bb.avr:                                           ; preds = %.body804
  %i.dag = getelementptr inbounds nuw i8, ptr %1, i64 3544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.dag) #46
          to label %.body863 unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit: ; preds = %bb.i, %bb.j
  %i.dah = getelementptr inbounds nuw i8, ptr %1, i64 4255
  %i.dai = load i8, ptr %i.dah, align 1, !range !178, !noundef !4
  %i.daj = trunc nuw i8 %i.dai to i1
  br i1 %i.daj, label %bb.avt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924: ; preds = %bb.avt, %bb.avu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  %i.dak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dal = load i64, ptr %i.dak, align 16, !range !5941, !alias.scope !24442, !noundef !4
  %i.dam = icmp eq i64 %i.dal, 36
  br i1 %i.dam, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit922, label %bb.avs

bb.avs:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.dak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit922 unwind label %bb.as

bb.avt:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  %i.dan = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24445)
  call void @llvm.experimental.noalias.scope.decl(metadata !24448)
  %i.dao = load ptr, ptr %i.dan, align 16, !alias.scope !24451, !nonnull !4, !noundef !4
  %i.dap = atomicrmw sub ptr %i.dao, i64 1 release, align 8, !noalias !24451
  %i.daq = icmp eq i64 %i.dap, 1
  br i1 %i.daq, label %bb.avu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924

bb.avu:                                           ; preds = %bb.avt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dan) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924 unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit922: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit924, %bb.avs
  %i.dar = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24452)
  %i.das = load ptr, ptr %i.dar, align 16, !alias.scope !24452, !noundef !4 ; 2 uses
  %i.dat = icmp eq ptr %i.das, null
  br i1 %i.dat, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit926, label %bb.avv

bb.avv:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit922
  %i.dau = atomicrmw sub ptr %i.das, i64 1 release, align 8, !noalias !24455
  %i.dav = icmp eq i64 %i.dau, 1
  br i1 %i.dav, label %bb.avw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit926

bb.avw:                                           ; preds = %bb.avv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_E9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dar) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit926 unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit926: ; preds = %bb.avv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit922, %bb.avw
  %i.daw = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.daw) #46
          to label %bb.avx unwind label %bb.as

bb.avx:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit926
  %i.dax = getelementptr inbounds nuw i8, ptr %1, i64 4252
  %i.day = load i8, ptr %i.dax, align 4, !range !178, !noundef !4
  %i.daz = trunc nuw i8 %i.day to i1
  br i1 %i.daz, label %bb.avz, label %bb.avy

bb.avy:                                           ; preds = %bb.avz, %bb.avx
  %i.dba = getelementptr inbounds nuw i8, ptr %1, i64 4250
  %i.dbb = load i8, ptr %i.dba, align 2, !range !178, !noundef !4
  %i.dbc = trunc nuw i8 %i.dbb to i1
  br i1 %i.dbc, label %bb.awa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit928

bb.avz:                                           ; preds = %bb.avx
  %i.dbd = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEEB18_(ptr noalias noundef align 16 dereferenceable(112) %i.dbd) #46
          to label %bb.avy unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit928: ; preds = %bb.awa, %bb.awb, %bb.avy
  %i.dbe = getelementptr inbounds nuw i8, ptr %1, i64 840
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.dbe) #46
          to label %bb.awc unwind label %bb.as

bb.awa:                                           ; preds = %bb.avy
  %i.dbf = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.dbg = load i64, ptr %i.dbf, align 16, !range !1069, !alias.scope !24460, !noundef !4
  %i.dbh = icmp eq i64 %i.dbg, 2
  br i1 %i.dbh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit928, label %bb.awb

bb.awb:                                           ; preds = %bb.awa
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.dbf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit928 unwind label %bb.as

bb.awc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit928
  %i.dbi = getelementptr inbounds nuw i8, ptr %1, i64 952
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dbi) #46
          to label %bb.awd unwind label %bb.as

bb.awd:                                           ; preds = %bb.awc
  %i.dbj = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dbj) #46
          to label %bb.awe unwind label %bb.as

bb.awe:                                           ; preds = %bb.awd
  %i.dbk = getelementptr inbounds nuw i8, ptr %1, i64 4251
  %i.dbl = load i8, ptr %i.dbk, align 1, !range !178, !noundef !4
  %i.dbm = trunc nuw i8 %i.dbl to i1
  br i1 %i.dbm, label %bb.awf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit930

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit930: ; preds = %bb.awf, %bb.awe
  %i.dbn = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.dbo = load ptr, ptr %i.dbn, align 16, !noundef !4 ; 2 uses
  %.not367 = icmp eq ptr %i.dbo, null
  br i1 %.not367, label %.body824, label %bb.awg

bb.awf:                                           ; preds = %bb.awe
  %i.dbp = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dbp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit930 unwind label %bb.as

bb.awg:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit930
  %i.dbq = getelementptr inbounds nuw i8, ptr %1, i64 4249
  %i.dbr = load i8, ptr %i.dbq, align 1, !range !178, !noundef !4
  %i.dbs = trunc nuw i8 %i.dbr to i1
  br i1 %i.dbs, label %bb.awh, label %.body824

bb.awh:                                           ; preds = %bb.awg
  %i.dbt = atomicrmw sub ptr %i.dbo, i64 1 release, align 8, !noalias !24463
  %i.dbu = icmp eq i64 %i.dbt, 1
  br i1 %i.dbu, label %bb.awi, label %.body824

bb.awi:                                           ; preds = %bb.awh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dbn) #45
          to label %.body824 unwind label %bb.as
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB7_13CreateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1808 x i8], align 16             ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [504 x i8], align 8               ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [272 x i8], align 8               ; 6 uses
  %i.i = alloca [272 x i8], align 16              ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [72 x i8], align 8          ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.38 = alloca [80 x i8], align 16          ; 17 uses
  %.sroa.41 = alloca [16 x i8], align 16          ; 3 uses
  %.sroa.3369.sroa.2 = alloca [80 x i8], align 8  ; 2 uses
  %i.ab = alloca [96 x i8], align 16              ; 8 uses
  %i.ac = alloca [16 x i8], align 1               ; 5 uses
  %.sroa.3361.sroa.2 = alloca [80 x i8], align 8  ; 2 uses
  %i.ad = alloca [96 x i8], align 16              ; 10 uses
  %.sroa.3341.sroa.3 = alloca [56 x i8], align 8  ; 3 uses
  %.sroa.5342 = alloca [24 x i8], align 8         ; 2 uses
  %i.ae = alloca [96 x i8], align 16              ; 9 uses
  %i.af = alloca [408 x i8], align 8              ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [88 x i8], align 8               ; 9 uses
  %i.ai = alloca [144 x i8], align 8              ; 11 uses
  %i.aj = alloca [144 x i8], align 8              ; 6 uses
  %i.ak = alloca [144 x i8], align 8              ; 9 uses
  %i.al = alloca [144 x i8], align 8              ; 13 uses
  %i.am = alloca [64 x i8], align 8               ; 10 uses
  %i.an = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.3304.sroa.3 = alloca [16 x i8], align 8  ; 3 uses
  %.sroa.6305 = alloca [64 x i8], align 16        ; 2 uses
  %.sroa.9298.sroa.7 = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.10300 = alloca [64 x i8], align 16       ; 6 uses
  %i.ao = alloca [96 x i8], align 16              ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.3277.sroa.2 = alloca [80 x i8], align 8  ; 2 uses
  %i.aq = alloca [96 x i8], align 16              ; 10 uses
  %.sroa.3261.sroa.2 = alloca [80 x i8], align 8  ; 2 uses
  %i.ar = alloca [96 x i8], align 16              ; 10 uses
  %i.as = alloca [96 x i8], align 16              ; 7 uses
  %i.at = alloca [96 x i8], align 16              ; 7 uses
  %.sroa.5244.sroa.2 = alloca [80 x i8], align 1  ; 2 uses
  %i.au = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.2.sroa.6 = alloca [80 x i8], align 8     ; 3 uses
  %.sroa.2.sroa.8 = alloca [464 x i8], align 8    ; 5 uses
  %i.av = alloca [576 x i8], align 16             ; 11 uses
  %.sroa.0232 = alloca [120 x i8], align 8        ; 7 uses
  %.sroa.10 = alloca [30 x i8], align 2           ; 5 uses
  %.sroa.0230.sroa.0 = alloca [120 x i8], align 8 ; 8 uses
  %.sroa.0230.sroa.11 = alloca [30 x i8], align 2 ; 8 uses
  %.sroa.0230.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.0230.sroa.13 = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.0230.sroa.14 = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.0230.sroa.15 = alloca [48 x i8], align 8 ; 8 uses
  %.sroa.0230.sroa.16 = alloca [48 x i8], align 8 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 16, !range !3242, !noundef !4
  switch i8 %i.ax, label %default.unreachable532 [
    i8 0, label %bb.b
    i8 1, label %bb.bh
    i8 2, label %bb.bi
    i8 3, label %bb.e
    i8 4, label %bb.by
    i8 5, label %bb.ct
    i8 6, label %bb.dl
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.hc
    i8 10, label %bb.ie
  ]

default.unreachable532:                           ; preds = %bb.hc, %bb.dl, %bb.ct, %bb.ci, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 961
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 964
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i32 0, ptr %i.ay, align 1
  %.val100 = load ptr, ptr %i.ba, align 8, !noundef !4 ; 3 uses
  %i.bb = getelementptr i8, ptr %1, i64 352       ; 2 uses
  %.val101 = load ptr, ptr %i.bb, align 16        ; 2 uses
  %.not.i = icmp eq ptr %.val100, null
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = atomicrmw add ptr %.val100, i64 1 monotonic, align 8
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val101) ]
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.16)
  br label %bb.bk

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  br label %bb.el

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  br label %bb.go

bb.h:                                             ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i, %bb.b
  %.sroa.3.0.i = phi ptr [ %.val101, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i ], [ undef, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.val100, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %.sroa.3.0.i, ptr %i.bf, align 8
  store i8 1, ptr %i.az, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 361 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0232)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !24471
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !17, !alias.scope !24468, !noalias !24473, !noundef !4
  %.not.i107 = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %.not.i107, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %.noexc unwind label %bb.be

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.aa, align 8, !noalias !24471
  br label %.noexc

.noexc:                                           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !24471
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 16, !range !17, !alias.scope !24468, !noalias !24473, !noundef !4
  %.not4.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24471
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.p unwind label %bb.o, !noalias !24473

bb.l:                                             ; preds = %.noexc
  store i64 -9223372036854775808, ptr %i.z, align 8, !noalias !24471
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %i.bm = load i8, ptr %i.bh, align 1, !range !1165, !alias.scope !24468, !noalias !24473, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !24471
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !17, !alias.scope !24468, !noalias !24473, !noundef !4
  %.not5.i = icmp eq i64 %i.bo, -9223372036854775808
  br i1 %.not5.i, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.t, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %bb.t ], [ %i.bp, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #46
          to label %.body unwind label %bb.bd, !noalias !24473

bb.o:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24471
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24471
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.v unwind label %bb.u, !noalias !24473

bb.r:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.y, align 8, !noalias !24471
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !24471
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(368) %1)
          to label %bb.y unwind label %bb.x, !noalias !24473

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.w ], [ %i.bq, %bb.u ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #46
          to label %bb.n unwind label %bb.bd, !noalias !24473

bb.u:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24471
  br label %bb.s

bb.w:                                             ; preds = %bb.ac, %bb.x
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.ac ], [ %i.br, %bb.x ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #46
          to label %bb.t unwind label %bb.bd, !noalias !24473

bb.x:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !24471
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 16, !range !17, !alias.scope !24468, !noalias !24473, !noundef !4
  %.not6.i = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not6.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24471
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.ae unwind label %bb.ad, !noalias !24473

bb.aa:                                            ; preds = %bb.y
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !24471
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !24471
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !24468, !noalias !24473, !noundef !4
  %.not7.i = icmp eq ptr %i.bv, null
  br i1 %.not7.i, label %bb.ag, label %bb.af

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ad
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.bw, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.x) #46
          to label %bb.w unwind label %bb.bd, !noalias !24473

bb.ad:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24471
  br label %bb.ab

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24471
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu)
          to label %bb.aj unwind label %bb.ai, !noalias !24473

bb.ag:                                            ; preds = %bb.ab
  store ptr null, ptr %i.v, align 8, !noalias !24471
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !24471
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.an unwind label %bb.am, !noalias !24473

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.al, %bb.ak, %bb.ai
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %.pn.pn.i, %bb.al ], [ %.pn.pn.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w) #46
          to label %bb.ac unwind label %bb.bd, !noalias !24473

bb.ai:                                            ; preds = %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24471
  br label %bb.ah

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, %bb.am
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i ], [ %i.cb, %bb.am ] ; 2 uses
  %i.bz = load ptr, ptr %i.v, align 8, !alias.scope !24474, !noalias !24471, !noundef !4
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bd, !noalias !24473

bb.am:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24471
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !24468, !noalias !24473, !noundef !4 ; 5 uses
  %.not8.i = icmp eq ptr %i.cd, null              ; 2 uses
  br i1 %.not8.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cf = load ptr, ptr %i.ce, align 16, !alias.scope !24468, !noalias !24473, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.cg = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !24473
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  store ptr null, ptr %i.t, align 8, !noalias !24471
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %3 = phi ptr [ %i.cf, %bb.ar ], [ undef, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24471
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci)
          to label %bb.aw unwind label %bb.av, !noalias !24473

bb.ar:                                            ; preds = %bb.ao
  store ptr %i.cd, ptr %i.t, align 8, !noalias !24471
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.cf, ptr %i.cj, align 8, !noalias !24471
  br label %bb.aq

bb.as:                                            ; preds = %bb.ao
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.body.i, %bb.av
  %.pn.i = phi { ptr, i32 } [ %i.cm, %bb.av ], [ %eh.lpad-body.i, %.body.i ]
  br i1 %.not8.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ck = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !24477
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i unwind label %bb.bd, !noalias !24473

bb.av:                                            ; preds = %bb.aq
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24471
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !24484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24487
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cn)
          to label %.noexc18.i unwind label %bb.az, !noalias !24473

.noexc18.i:                                       ; preds = %bb.aw
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24487
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBN_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.co)
          to label %bb.ba unwind label %bb.ax, !noalias !24489

bb.ax:                                            ; preds = %.noexc18.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.body.i unwind label %bb.ay, !noalias !24489

bb.ay:                                            ; preds = %bb.ax
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !24489
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %bb.az ], [ %i.cp, %bb.ax ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bd, !noalias !24473

bb.ba:                                            ; preds = %.noexc18.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !24490, !noalias !24489, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cv = load i8, ptr %i.cu, align 16, !range !178, !alias.scope !24490, !noalias !24489, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.cx = load i8, ptr %i.cw, align 1, !range !102, !alias.scope !24490, !noalias !24489, !noundef !4
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !24491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !24491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24487
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.cz = load i8, ptr %i.cy, align 8, !range !178, !alias.scope !24468, !noalias !24473, !noundef !4
  %i.da = load ptr, ptr %i.ba, align 8, !alias.scope !24468, !noalias !24473, !noundef !4 ; 3 uses
  %.not16.i = icmp eq ptr %i.da, null
  br i1 %.not16.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.db = load ptr, ptr %i.bb, align 16, !alias.scope !24468, !noalias !24473, !nonnull !4, !align !18, !noundef !4
  %i.dc = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !24473
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, %.body.i, %bb.au, %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ac, %bb.w, %bb.t, %bb.n
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !24473
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i: ; preds = %bb.au, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.u) #46
          to label %bb.ak unwind label %bb.bd, !noalias !24473

bb.be:                                            ; preds = %bb.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.be, %bb.n
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i, %bb.n ], [ %i.df, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0232)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.5.0.i = phi ptr [ undef, %bb.ba ], [ %i.db, %bb.bb ]
  %.sroa.10.136..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.10.136..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !24468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0232, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !24468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0230.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %.sroa.0232.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0232.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !24468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0230.sroa.15, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %.sroa.0232.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0232.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false), !noalias !24468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !24471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0230.sroa.0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0232, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0230.sroa.11, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.10, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0232)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dg, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0230.sroa.0, i64 120, i1 false)
  %.sroa.0230.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store i64 %i.ct, ptr %.sroa.0230.sroa.8.0..sroa_idx, align 16
  %.sroa.0230.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store i8 %i.cv, ptr %.sroa.0230.sroa.9.0..sroa_idx, align 8
  %.sroa.0230.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1097
  store i8 %i.cx, ptr %.sroa.0230.sroa.10.0..sroa_idx, align 1
  %.sroa.0230.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0230.sroa.11.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0230.sroa.11, i64 30, i1 false)
  %.sroa.0230.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.12, i64 24, i1 false)
  %.sroa.0230.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0230.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.13, i64 24, i1 false)
  %.sroa.0230.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0230.sroa.14, i64 24, i1 false)
  %.sroa.0230.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0230.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0230.sroa.15, i64 48, i1 false)
  %.sroa.0230.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0230.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0230.sroa.16, i64 48, i1 false)
  %.sroa.0230.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store ptr %i.cd, ptr %.sroa.0230.sroa.17.0..sroa_idx, align 16
  %.sroa.0230.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store ptr %3, ptr %.sroa.0230.sroa.18.0..sroa_idx, align 8
  %.sroa.0230.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1312
  store ptr %i.da, ptr %.sroa.0230.sroa.19.0..sroa_idx, align 16
  %.sroa.0230.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %.sroa.5.0.i, ptr %.sroa.0230.sroa.20.0..sroa_idx, align 8
  %.sroa.0230.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store i8 %i.cz, ptr %.sroa.0230.sroa.21.0..sroa_idx, align 16
  %.sroa.0230.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1329
  store i8 %i.bm, ptr %.sroa.0230.sroa.22.0..sroa_idx, align 1
  %.sroa.8231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2008
  store i8 0, ptr %.sroa.8231.0..sroa_idx, align 8
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bo, %bb.bj, %.body
  %.pn72 = phi { ptr, i32 } [ %i.dn, %bb.bo ], [ %i.di, %bb.bj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.16)
  br label %bb.bw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit227: ; preds = %bb.jt, %bb.ju, %bb.js, %bb.jo, %bb.bw
  %.pn77 = phi { ptr, i32 } [ %i.st, %bb.jo ], [ %.pn72.pn, %bb.jt ], [ %.pn72.pn, %bb.js ], [ %.pn72.pn, %bb.bw ], [ %.pn72.pn, %bb.ju ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 964
  store i8 0, ptr %i.dh, align 4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create13CreateBuilderEBM_(ptr noalias noundef align 8 dereferenceable(368) %1) #46
          to label %bb.is unwind label %bb.bv

bb.bh:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #50
  unreachable

bb.bi:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #50
  unreachable

bb.bj:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtBO_13CreateBuilder22into_table_and_actions0EBS_(ptr noundef nonnull align 8 %i.dj) #46
          to label %bb.bg unwind label %bb.bv

bb.bk:                                            ; preds = %bb.e, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 4 uses
  invoke fastcc void @_RNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB7_13CreateBuilder22into_table_and_actions0Bb_(ptr noalias noundef align 16 captures(none) dereferenceable(576) %i.av, ptr noundef nonnull align 8 %i.dj, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bl unwind label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.dk = load i64, ptr %i.av, align 16, !range !1069, !noundef !4 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 2
  br i1 %i.dl, label %bb.bm, label %bb.bn

common.ret:                                       ; preds = %bb.iu, %bb.ig, %bb.hs, %bb.gq, %bb.ep, %bb.dx, %bb.df, %bb.ca, %bb.bm
  %.sink = phi i8 [ 1, %bb.iu ], [ 10, %bb.ig ], [ 9, %bb.hs ], [ 8, %bb.gq ], [ 7, %bb.ep ], [ 6, %bb.dx ], [ 5, %bb.df ], [ 4, %bb.ca ], [ 3, %bb.bm ]
  store i8 %.sink, ptr %i.aw, align 16
  ret void

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.16)
  br label %common.ret

bb.bn:                                            ; preds = %bb.bl
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.2.sroa.2.0.copyload = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 16
  %i.dm = load <2 x i64>, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.2.sroa.4.0.copyload = load ptr, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.sroa.6, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx, i64 80, i1 false)
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.2.sroa.8, ptr noundef nonnull align 16 dereferenceable(464) %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, i64 464, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtBO_13CreateBuilder22into_table_and_actions0EBS_(ptr noundef nonnull align 8 %i.dj)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bp:                                            ; preds = %bb.bn
  %i.do = trunc nuw i64 %i.dk to i1
  br i1 %i.do, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 963
  store i8 1, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 392
  store <2 x i64> %i.dm, ptr %i.dq, align 8
  %.sroa.3420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %.sroa.2.sroa.4.0.copyload, ptr %.sroa.3420.0..sroa_idx, align 8
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.4421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.sroa.6, i64 80, i1 false)
  %.sroa.5422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.8, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 962
  store i8 1, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.2.sroa.8, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 961
  store i8 1, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.2.sroa.8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.dv, ptr noundef nonnull align 8 dereferenceable(408) %i.dw, i64 408, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.2.sroa.8, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.16)
  %.val = load ptr, ptr %.sroa.5422.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.dz = getelementptr i8, ptr %1, i64 504
  %.val81 = load ptr, ptr %i.dz, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val81, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !3, !invariant.load !4
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = and i64 %i.ec, -16
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.val81, i64 168
  %i.eh = load ptr, ptr %i.eg, align 8, !invariant.load !4, !nonnull !4
  %i.ei = invoke { ptr, ptr } %i.eh(ptr noundef nonnull %i.ef)
          to label %bb.bs unwind label %bb.br     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit

bb.bs:                                            ; preds = %bb.bq
  %i.ek = extractvalue { ptr, ptr } %i.ei, 0
  %i.el = extractvalue { ptr, ptr } %i.ei, 1
  store ptr %i.ek, ptr %i.dj, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.el, ptr %i.em, align 16
  br label %bb.by

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230.sroa.16)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.jh, %bb.bt
  %.sroa.0372.0 = phi i64 [ 1, %bb.bt ], [ %.sroa.0372.1, %bb.jh ]
  %.sroa.15373.0 = phi i64 [ undef, %bb.bt ], [ %.sroa.15373.1, %bb.jh ]
  %.sroa.17375.0 = phi i64 [ %.sroa.2.sroa.2.0.copyload, %bb.bt ], [ %.sroa.17375.1, %bb.jh ]
  %.sroa.29.0 = phi ptr [ %.sroa.2.sroa.4.0.copyload, %bb.bt ], [ %.sroa.29.1, %bb.jh ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 16, !noundef !4 ; 2 uses
  %.not76 = icmp eq ptr %i.eo, null
  br i1 %.not76, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit225, label %bb.jl

bb.bv:                                            ; preds = %bb.ju, %bb.ib, %bb.ia, %bb.hb, %bb.eh, %bb.dk, %bb.cs, %bb.bx, %bb.gn, %bb.id, %bb.jr, %bb.jq, %bb.jp, %bb.gj, %bb.ek, %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit227
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bw:                                            ; preds = %bb.jj, %bb.bg
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %bb.bg ], [ %.pn70, %bb.jj ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 16, !noundef !4 ; 2 uses
  %.not75 = icmp eq ptr %i.er, null
  br i1 %.not75, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit227, label %bb.js

bb.bx:                                            ; preds = %bb.by
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.val105 = load ptr, ptr %i.eu, align 8
  %i.et = getelementptr i8, ptr %1, i64 976
  %.val106 = load ptr, ptr %i.et, align 16, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val105, ptr nonnull %.val106) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit unwind label %bb.bv

bb.by:                                            ; preds = %bb.a, %bb.bs
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.i, align 8
  %i.dl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1429, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.au

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %i.h, align 8
  %i.dn = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1430, i64 noundef 17, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.g, align 8
  %i.dp = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1431, i64 noundef 11, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.au

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dq, ptr %i.f, align 8
  %i.dr = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1433, i64 noundef 18, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1432)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.e, align 8
  %i.dt = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1434, i64 noundef 25, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1341)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dv, ptr %i.d, align 8
  %i.dw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1435, i64 noundef 32, ptr noundef nonnull %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1066, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.c, align 8
  %i.dy = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1436, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.dz = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1438, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1437)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.a, align 8
  %i.eb = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1188, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.av, %bb.c ], [ %i.ax, %bb.d ], [ %i.az, %bb.e ], [ %i.bb, %bb.f ], [ %i.be, %bb.g ], [ %i.bg, %bb.h ], [ %i.bi, %bb.i ], [ %i.bk, %bb.j ], [ %i.bm, %bb.k ], [ %i.bo, %bb.l ], [ %i.bq, %bb.m ], [ %i.bs, %bb.n ], [ %i.bu, %bb.o ], [ %i.bw, %bb.p ], [ %i.by, %bb.q ], [ %i.ca, %bb.r ], [ %i.cc, %bb.s ], [ %i.cd, %bb.t ], [ %i.cf, %bb.u ], [ %i.ch, %bb.v ], [ %i.cj, %bb.w ], [ %i.cl, %bb.x ], [ %i.cm, %bb.y ], [ %i.cn, %bb.z ], [ %i.cp, %bb.aa ], [ %i.cq, %bb.ab ], [ %i.ct, %bb.ac ], [ %i.cv, %bb.ad ], [ %i.cx, %bb.ae ], [ %i.cz, %bb.af ], [ %i.db, %bb.ag ], [ %i.dd, %bb.ah ], [ %i.df, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dj, %bb.ak ], [ %i.dl, %bb.al ], [ %i.dn, %bb.am ], [ %i.dp, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dt, %bb.ap ], [ %i.dw, %bb.aq ], [ %i.dy, %bb.ar ], [ %i.dz, %bb.as ], [ %i.eb, %bb.at ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan7display9DisplayAs6fmt_as(ptr noalias readonly align 8 captures(none) %0, i8 range(i8 0, 3) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1439, i64 noundef 9) #49
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(616) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1720 x i8], align 8              ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load i8, ptr %i.h, align 8, !range !102, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 609
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.p = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %i.p, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, ptr noundef nonnull align 8 dereferenceable(504) %0, i64 504, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.r = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store i64 %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 %i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 721
  store i8 %i.k, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.w = load <2 x ptr>, ptr %i.l, align 8
  store <2 x ptr> %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 722
  store i8 0, ptr %i.x, align 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !34011
  %i.y = tail call noundef align 8 dereferenceable_or_null(1720) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 1720, i64 noundef range(i64 8, 17) 8) #40, !noalias !34011 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBM_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0E3newBQ_.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1720) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBO_14PreparedCommitNtNtNtB4_6future11into_future10IntoFuture11into_future0EBS_(ptr noundef nonnull align 8 dereferenceable(1720) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.aa

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBM_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0E3newBQ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1720) %i.y, ptr noundef nonnull align 8 dereferenceable(1720) %i.a, i64 1720, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = insertvalue { ptr, ptr } poison, ptr %i.y, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr @1440, 1
  ret { ptr, ptr } %i.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1680) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 8 uses
  %i.r = alloca [16 x i8], align 16               ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [72 x i8], align 8                ; 9 uses
  %i.v = alloca [960 x i8], align 8               ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 6 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 960
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34014
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB24_4SendEL_EENtNtB26_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34014
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1008
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB20_4SendEL_EENtNtB22_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.e unwind label %bb.b, !noalias !34018

bb.b:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtB4_6marker4SyncNtB2C_4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #46
          to label %.body unwind label %bb.c, !noalias !34018

bb.c:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !34018
  unreachable

.body:                                            ; preds = %bb.d, %bb.b, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.f ], [ %i.ar, %bb.d ], [ %i.ap, %bb.b ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #46
          to label %bb.cj unwind label %bb.ce

bb.d:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !34019
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !34019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.i ], [ %i.au, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer8AnalyzerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #46
          to label %.body unwind label %bb.ce

bb.g:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1056
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner15RelationPlannerEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.aw, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #46
          to label %bb.f unwind label %bb.ce

bb.j:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.bb = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.k
  store ptr null, ptr %i.ah, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %2 = phi ptr [ %i.ba, %bb.o ], [ undef, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1080
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB22_4SendEL_EENtNtB24_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.u unwind label %bb.t

bb.o:                                             ; preds = %bb.l
  store ptr %i.ay, ptr %i.ah, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ba, ptr %i.be, align 8
  br label %bb.n

bb.p:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %._crit_edge, %bb.t
  %i.bf = phi ptr [ %.pre42, %._crit_edge ], [ %i.ay, %bb.t ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %._crit_edge ], [ %i.bj, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34020)
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !34023
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_E9drop_slowCs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

bb.t:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.u:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1104
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3cXYlxPhm1f_29datafusion_physical_optimizer9optimizer21PhysicalOptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2j_4SendEL_EENtNtB2l_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.w
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.bl, %bb.w ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer9OptimizerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #46
          to label %._crit_edge unwind label %bb.ce

._crit_edge:                                      ; preds = %bb.v
  %.pre42 = load ptr, ptr %i.ah, align 8, !alias.scope !34020
  br label %bb.q

bb.w:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.bq = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.bn, ptr %i.ae, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.bp, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.bx = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  store ptr %i.bu, ptr %i.ad, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bw, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 1160
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca)
          to label %bb.ae unwind label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge, %bb.ad
  %i.cb = phi ptr [ %i.bu, %bb.ad ], [ %.pre41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34028)
  call void @llvm.experimental.noalias.scope.decl(metadata !34031)
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !34034
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

bb.ad:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1208
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf)
          to label %bb.ag unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit
  %.pre41 = load ptr, ptr %i.ad, align 8, !alias.scope !34034
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1256
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch)
          to label %bb.ai unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1304
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj)
          to label %bb.ak unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr8registry18SerializerRegistryEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.aj
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.aj ], [ %.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr8registry18SerializerRegistryEL_EECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

bb.aj:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.cp = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.cm, ptr %i.y, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.co, ptr %i.cr, align 8
end_hunk_1
begin_hunk_2_@_RNvXsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  store ptr %i.dn, ptr %i.b, align 8, !noalias !34058
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1472 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !34056, !noalias !34053, !noundef !4
  %.not6.i = icmp eq ptr %i.dr, null
  br i1 %.not6.i, label %bb.bl, label %bb.be

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34058
  invoke void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dq)
          to label %bb.bi unwind label %bb.bf, !noalias !34053

bb.bf:                                            ; preds = %bb.be
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !34059
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bj, !noalias !34053

bb.bi:                                            ; preds = %bb.be
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.a, align 8, !noalias !34058
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx2.i, i64 32, i1 false), !noalias !34058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34058
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !34053
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !34066)
  call void @llvm.experimental.noalias.scope.decl(metadata !34069)
  %i.dw = load ptr, ptr %i.c, align 8, !alias.scope !34072, !noalias !34058, !nonnull !4, !noundef !4
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !34073
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bk, label %.body33

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %.body33 unwind label %bb.bj, !noalias !34053

.body33:                                          ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ds, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config12TableOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(960) %i.v) #46
          to label %bb.aw unwind label %bb.ce

bb.bl:                                            ; preds = %bb.bi, %bb.bc
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.bi ], [ null, %bb.bc ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ea, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.dz, i64 12, i1 false), !alias.scope !34058
  store ptr %i.dj, ptr %i.u, align 8, !alias.scope !34053, !noalias !34056
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.dn, ptr %i.eb, align 8, !alias.scope !34053, !noalias !34056
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.0.0.i, ptr %i.ec, align 8, !alias.scope !34053, !noalias !34056
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !34056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1528
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ed)
          to label %bb.bn unwind label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.bm ], [ %i.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr15execution_props14ExecutionPropsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.u) #46
          to label %.body33 unwind label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.eg, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %i.ek = load ptr, ptr %i.ej, align 8, !noundef !4 ; 3 uses
  %.not8 = icmp eq ptr %i.ek, null
  br i1 %.not8, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !4, !align !18, !noundef !4
  %i.en = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.bu, label %bb.bt

bb.br:                                            ; preds = %bb.bo
  store ptr null, ptr %i.r, align 16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.eq = load ptr, ptr %i.ep, align 8, !noundef !4 ; 3 uses
  %.not9 = icmp eq ptr %i.eq, null
  br i1 %.not9, label %bb.bw, label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  store ptr %i.ek, ptr %i.r, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.em, ptr %i.er, align 8
  br label %bb.bs

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.bs
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !align !18, !noundef !4
  %i.eu = atomicrmw add ptr %i.eq, i64 1 monotonic, align 8
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.bz, label %bb.by

bb.bw:                                            ; preds = %bb.bs
  store ptr null, ptr %i.q, align 16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 1584
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ew)
          to label %bb.cd unwind label %bb.ca

bb.by:                                            ; preds = %bb.bv
  store ptr %i.eq, ptr %i.q, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.et, ptr %i.ex, align 8
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bv
  call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !34074)
  %i.ez = load ptr, ptr %i.q, align 16, !alias.scope !34074, !noundef !4 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fb = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !34077
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

bb.cd:                                            ; preds = %bb.bx
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.ay, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1640
  store ptr %2, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %i.bn, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store ptr %i.bp, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %i.bu, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr %i.bw, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fq, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fr, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ft, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr %i.cm, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store ptr %i.co, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(960) %i.v, i64 960, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store ptr %i.eg, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.gc = load <2 x ptr>, ptr %i.r, align 16
  store <2 x ptr> %i.gc, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ge = load <2 x ptr>, ptr %i.q, align 16
  store <2 x ptr> %i.ge, ptr %i.gd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.ce:                                            ; preds = %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr8registry18SerializerRegistryEL_EECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ch, %bb.cg, %bb.cc, %.body30, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ac, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %.body33, %bb.aw, %bb.v, %bb.i, %bb.f, %.body
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cb, %bb.ca, %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !34082)
  %i.gg = load ptr, ptr %i.r, align 16, !alias.scope !34082, !noundef !4 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.gi = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !34085
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12CacheFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !34090)
  call void @llvm.experimental.noalias.scope.decl(metadata !34093)
  %i.gk = load ptr, ptr %i.s, align 8, !alias.scope !34096, !nonnull !4, !noundef !4
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !noalias !34096
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution11runtime_env10RuntimeEnvEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context15FunctionFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ch
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr8registry18SerializerRegistryEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.an
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !34097)
  call void @llvm.experimental.noalias.scope.decl(metadata !34100)
  %i.gn = load ptr, ptr %i.ae, align 8, !alias.scope !34103, !nonnull !4, !noundef !4
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !34103
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_EECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1L_4SendEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context12QueryPlannerNtNtB4_6marker4SyncNtB2j_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.ci
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3cXYlxPhm1f_29datafusion_physical_optimizer9optimizer17PhysicalOptimizerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.af) #46
          to label %bb.v unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11TypePlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %bb.q, %bb.s
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner15RelationPlannerEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #46
          to label %bb.i unwind label %bb.ce

bb.cj:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !102, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsc_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsc_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.1129, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  %i.h = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !34104
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #46
          to label %bb.d unwind label %bb.j

bb.i:                                             ; preds = %bb.g
end_hunk_2
