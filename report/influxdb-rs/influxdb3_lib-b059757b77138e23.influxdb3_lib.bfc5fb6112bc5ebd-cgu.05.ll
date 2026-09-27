Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.05?download=true
inline.NumInlined: 7514
inline.NumDeleted: 2502
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXNtNtCsPDBpS1owJq_14http_body_util11combinators7collectINtB2_7CollectNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib:bb.a

bb.n:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_Csj7DbYNsdxOJ_3urlNtB5_3UrlNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8
  call void @_RNvMCsj7DbYNsdxOJ_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCseuJFo0eutjj_19influxdb3_telemetry5statsINtB5_12RollingStatsyENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @422, i64 noundef 3, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419, ptr noalias noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419, ptr noalias noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419, ptr noalias noundef nonnull readonly captures(address, read_provenance) @425, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @420)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !17715, !noundef !27
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.680, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs18_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_16GenerationConfigNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @476, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @477, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1G_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @484, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !27 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27, !align !36, !noundef !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB5_8AnyClone10as_any_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @566, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB5_8AnyClone6as_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @566, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB5_8AnyClone8into_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @566, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB5_8AnyClone9clone_boxCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [32 x i8], align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !17731
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !40, !noalias !17731, !noundef !27
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvXs1_NtCs21s4ZTvHFSd_5authz4httpNtB5_28AuthorizationHeaderExtensionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !noalias !17731, !nonnull !27, !align !36, !noundef !27
  %i.d = load ptr, ptr %i.c, align 8, !noalias !17731, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !17731, !noundef !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !17731, !noundef !27
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 %i.e, ptr noundef %i.g, i64 noundef %i.i), !noalias !17731, !inline_history !17718
  %i.j = load i8, ptr %i.a, align 8, !range !39, !noalias !17731, !noundef !27
  %.sroa.0.0.copyload2.pre = load ptr, ptr %.sroa.0.i, align 8
  br label %_RNvXs1_NtCs21s4ZTvHFSd_5authz4httpNtB5_28AuthorizationHeaderExtensionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs1_NtCs21s4ZTvHFSd_5authz4httpNtB5_28AuthorizationHeaderExtensionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.copyload2 = phi ptr [ %.sroa.0.0.copyload2.pre, %bb.b ], [ undef, %bb.a ] ; 3 uses
  %.sroa.4.0.i = phi i8 [ %i.j, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %.sroa.5.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.5.0..sroa.0.i.sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.6.0.copyload4 = load i64, ptr %.sroa.6.0..sroa.0.i.sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.7.0.copyload5 = load ptr, ptr %.sroa.7.0..sroa.0.i.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !17731
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !17732
  %i.k = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 20145) 40, i64 noundef range(i64 1, 17) 8) #43, !noalias !17732 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !32

bb.c:                                             ; preds = %_RNvXs1_NtCs21s4ZTvHFSd_5authz4httpNtB5_28AuthorizationHeaderExtensionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i8 %.sroa.4.0.i, 2
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload2) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !17733, !nonnull !27, !noundef !27
  invoke void %i.p(ptr noundef %.sroa.7.0.copyload5, ptr noundef %.sroa.5.0.copyload3, i64 noundef %.sroa.6.0.copyload4)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.f, !inline_history !17734

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXs1_NtCs21s4ZTvHFSd_5authz4httpNtB5_28AuthorizationHeaderExtensionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  store ptr %.sroa.0.0.copyload2, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.6.0.copyload4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %.sroa.7.0.copyload5, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 %.sroa.4.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.r = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr @567, 1
  ret { ptr, ptr } %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs21s4ZTvHFSd_5authz4http28AuthorizationHeaderExtensionNtB5_8AnyClone9type_nameCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @568, i64 41 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone10as_any_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @569, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone6as_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @569, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone8into_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @569, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone9clone_boxCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i.i = alloca [72 x i8], align 8    ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [30 x i8], align 2      ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 13 uses
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCsbYyEjVLvvus_5tonic6status11StatusInnerE13new_uninit_inCsgsNUVCRJO2f_13influxdb3_lib() ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.h = load i8, ptr %i.g, align 8, !range !17746, !noalias !17747, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17747
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 96
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17747
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !noalias !17747, !nonnull !27, !align !36, !noundef !27
  %i.l = load ptr, ptr %i.k, align 8, !noalias !17747, !nonnull !27, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17747, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.q = load i64, ptr %i.p, align 8, !noalias !17747, !noundef !27
  invoke void %i.l(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %bb.c unwind label %bb.b, !noalias !17747

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i: ; preds = %.body.i.i.i.i, %bb.b
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #41
          to label %bb.q unwind label %bb.o, !noalias !17747

bb.b:                                             ; preds = %.noexc.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i

bb.c:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17748)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !17748, !noalias !17749, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.v = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCs6P5GRezSnwZ_4http6header3map3PosENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %.noexc.i.i.i.i unwind label %bb.j, !noalias !17747 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17750
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBJ_5value11HeaderValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.f, !noalias !17749

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.body.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.x, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 2) #43, !noalias !17749
  br label %.body.i.i.i.i

bb.f:                                             ; preds = %.noexc.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17750
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 48
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.k unwind label %bb.h, !noalias !17749

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtB1c_5value11HeaderValueEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.d unwind label %bb.i, !noalias !17749

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !17749
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.e, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn.i.i.i.i.i, %bb.e ], [ %.pn.i.i.i.i.i, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17751)
  call void @llvm.experimental.noalias.scope.decl(metadata !17752)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !17753, !noalias !17747, !noundef !27
  %i.ai = load ptr, ptr %i.c, align 8, !alias.scope !17753, !noalias !17747, !nonnull !27, !align !36, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !17754, !nonnull !27, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !17753, !noalias !17747, !noundef !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !17753, !noalias !17747, !noundef !27
  invoke void %i.ak(ptr noundef %i.ah, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i unwind label %bb.o, !noalias !17747, !inline_history !2

bb.k:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %.sroa.0.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17747
  %.sroa.0.48..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !17747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 24, i1 false), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17750
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !17747, !noundef !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_RNvXsg_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8, !noalias !17747
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load <2 x ptr>, ptr %i.ap, align 8, !noalias !17747
  br label %_RNvXsg_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %.body.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !17747
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

common.resume:                                    ; preds = %bb.s, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.q ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.p ], [ %.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 176, i64 noundef 8) #43
  br label %common.resume

_RNvXsg_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.k, %bb.m
  %i.aw = phi <2 x ptr> [ %i.at, %bb.m ], [ <ptr null, ptr undef>, %bb.k ]
  %.sroa.7.96..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.7.96..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i16 %i.t, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.i.i.i, i64 30, i1 false)
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store <2 x ptr> %i.aw, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i8 %i.h, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8, !noalias !17755
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.ax = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 20145) 8, i64 noundef range(i64 1, 17) 8) #43 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.r, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCsbYyEjVLvvus_5tonic6status6StatusE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !32

bb.r:                                             ; preds = %_RNvXsg_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #42
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCsbYyEjVLvvus_5tonic6status6StatusE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXsg_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  store ptr %i.f, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bb = insertvalue { ptr, ptr } poison, ptr %i.ax, 0
  %i.bc = insertvalue { ptr, ptr } %i.bb, ptr @570, 1
  ret { ptr, ptr } %i.bc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone9type_nameCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @571, i64 21 }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Pdji9zeuGA_6backon5retryINtB5_5RetryNtNtNtB7_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9GetResultNtB1A_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1A_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NCB2s_s_0NtNtB7_5sleep12TokioSleeperFG_RL0_B2c_EbNCNCINvB3u_15retry_operationB1y_B5b_B2o_E00FG_RL0_B2c_INtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB6V_4time8DurationEEB6Q_ENtNtNtB6V_6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.k = load i64, ptr %i.d, align 8, !range !63, !noundef !27 ; 2 uses
  %i.l = add nsw i64 %i.k, -2
  %.inv = icmp samesign ult i64 %i.k, 2
  %i.m = select i1 %.inv, i64 2, i64 %i.l
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %.backedge
  unreachable

bb.c:                                             ; preds = %.backedge
  %i.n = load <2 x ptr>, ptr %i.j, align 8        ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Pdji9zeuGA_6backon5retry5StateNtCs1LivM9IBWqb_12object_store9GetResultNtB1f_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1f_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.d)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %.backedge
  call fastcc void @_RNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(192) %0, ptr noundef nonnull align 8 %i.e, ptr noalias noundef align 8 dereferenceable(32) %2)
  %i.o = load i64, ptr %0, align 8, !range !55, !noundef !27
  %cond = icmp eq i64 %i.o, -1
  br i1 %cond, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %.backedge
  %i.p = call noundef zeroext i1 @_RNvXs_NtNtCseCDlJsl44RV_5tokio4time5sleepNtB4_5SleepNtNtNtCs4NRVxsYgnAr_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.p, label %bb.u, label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.d, align 8
  %i.r = extractelement <2 x ptr> %i.n, i64 0
  store ptr %i.r, ptr %i.e, align 8
  %i.s = extractelement <2 x ptr> %i.n, i64 1
  store ptr %i.s, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store i64 3, ptr %i.d, align 8
  store <2 x ptr> %i.n, ptr %i.e, align 8
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.g, %bb.s, %bb.x
  br label %.backedge

bb.h:                                             ; preds = %bb.w, %bb.j, %bb.f
  %.pn35 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn, %bb.j ], [ %i.ad, %bb.w ]
  resume { ptr, i32 } %.pn35

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.val38 = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.t = invoke noundef zeroext i1 %.val38(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorEbINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB9_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k, !inline_history !19

bb.j:                                             ; preds = %bb.r, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %i.u, %bb.k ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #41
          to label %bb.h unwind label %bb.t

bb.k:                                             ; preds = %bb.n, %bb.i, %bb.p, %bb.o, %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorEbINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB9_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorEbINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB9_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.v = invoke { i64, i32 } @_RNvXs2_NtNtCs6Pdji9zeuGA_6backon7backoff11exponentialNtB5_18ExponentialBackoffNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.m:                                             ; preds = %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorEbINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB9_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit, %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBO_4time8DurationEEBJ_INtNtNtBO_3ops8function5FnMutTRB9_BJ_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.w = extractvalue { i64, i32 } %i.v, 0
  %i.x = extractvalue { i64, i32 } %i.v, 1
  %.val39 = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.y = invoke { i64, i32 } %.val39(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, i64 %i.w, i32 noundef range(i32 -1, 1000000000) %i.x)
          to label %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBO_4time8DurationEEBJ_INtNtNtBO_3ops8function5FnMutTRB9_BJ_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k, !inline_history !20 ; 2 uses

_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBO_4time8DurationEEBJ_INtNtNtBO_3ops8function5FnMutTRB9_BJ_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.n
  %i.z = extractvalue { i64, i32 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.y, 1       ; 3 uses
  %.not = icmp eq i32 %i.aa, -1
  br i1 %.not, label %bb.m, label %bb.o

bb.o:                                             ; preds = %_RNvYFG_RL0_NtCs1LivM9IBWqb_12object_store5ErrorINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBO_4time8DurationEEBJ_INtNtNtBO_3ops8function5FnMutTRB9_BJ_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke fastcc void @_RNCNCINvNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store15retry_operationNtCs1LivM9IBWqb_12object_store9GetResultNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1n_11ObjectStoreEL_ENtB6_20RetryableObjectStore16get_with_retries0s_0NCNCB21_s_00E00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, i64 noundef %i.z, i32 noundef %i.aa)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1_NtCs6Pdji9zeuGA_6backon5sleepNtB5_12TokioSleeperNtB5_7Sleeper5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.z, i32 noundef %i.aa)
          to label %bb.q unwind label %bb.k

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Pdji9zeuGA_6backon5retry5StateNtCs1LivM9IBWqb_12object_store9GetResultNtB1f_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1f_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.d)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  br label %bb.j

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

bb.t:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.m, %bb.u
  ret void

bb.u:                                             ; preds = %bb.e
  store i64 -2, ptr %0, align 8
  br label %.loopexit

bb.v:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Pdji9zeuGA_6backon5retry5StateNtCs1LivM9IBWqb_12object_store9GetResultNtB1f_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1f_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.d)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.d, align 8
  br label %bb.h

bb.x:                                             ; preds = %bb.v
  store i64 2, ptr %i.d, align 8
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Pdji9zeuGA_6backon5retryINtB5_5RetryNtNtNtB7_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9GetResultNtB1A_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1A_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NCB2s_s_0NtNtB7_5sleep12TokioSleeperNCNCINvB3u_15retry_operationB1y_B5b_B2o_E0s_0NCB5N_0FG_RL0_B2c_INtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB6R_4time8DurationEEB6M_ENtNtNtB6R_6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr i8, ptr %1, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.l = load i64, ptr %i.d, align 8, !range !63, !noundef !27 ; 2 uses
  %i.m = add nsw i64 %i.l, -2
  %.inv = icmp samesign ult i64 %i.l, 2
  %i.n = select i1 %.inv, i64 2, i64 %i.m
  switch i64 %i.n, label %bb.b [
    i64 0, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvXsz_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEENtNtNtB13_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib:bb.a
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #41
          to label %.body.i unwind label %bb.k, !noalias !24649

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !24649
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.j, align 8, !alias.scope !24649, !noalias !24650, !nonnull !27, !align !36, !noundef !27 ; 5 uses
  %i.z = load i8, ptr %i.k, align 8, !range !39, !alias.scope !24649, !noalias !24650, !noundef !27 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMse_NtCs7akArC4fqbf_15futures_channel4mpscNtB5_10SenderTask6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.y, i8 %i.z) #41
          to label %.body.i unwind label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.ac = trunc nuw i8 %i.z to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  br i1 %i.ac, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !47

bb.p:                                             ; preds = %bb.o
  %i.ah = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc8.i unwind label %bb.f

.noexc8.i:                                        ; preds = %bb.p
  br i1 %i.ah, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc8.i
  store atomic i8 1, ptr %i.ad monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %.noexc8.i, %bb.o, %bb.n
  %i.ai = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !30

bb.r:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.r, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24652)
  call void @llvm.experimental.noalias.scope.decl(metadata !24653)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !24654, !nonnull !27, !noundef !27
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !24654
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEEECsgsNUVCRJO2f_13influxdb3_lib.exit10.i

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEE9drop_slowCs2LSxCQSJWSD_5hyper(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEEECsgsNUVCRJO2f_13influxdb3_lib.exit10.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEEECsgsNUVCRJO2f_13influxdb3_lib.exit10.i: ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = call fastcc noundef ptr @_RNvMs1_NtNtCs7akArC4fqbf_15futures_channel4mpsc5queueINtB5_5QueueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE8pop_spinCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.h) ; 2 uses
  %.not3.i = icmp eq ptr %i.an, null
  br i1 %.not3.i, label %_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.d

bb.t:                                             ; preds = %bb.m, %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.ac, %bb.ad, %.body.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn.i, %bb.e ], [ %lpad.loopexit, %bb.ad ], [ %lpad.loopexit, %bb.ac ], [ %lpad.loopexit, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs7akArC4fqbf_15futures_channel4mpsc10SenderTaskEEECsgsNUVCRJO2f_13influxdb3_lib.exit10.i, %_RNvMsH_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_12BoundedInnerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE10set_closedCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.pr = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %.preheader

.preheader:                                       ; preds = %_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE12next_messageCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(8) %0)
  %i.ar = load i64, ptr %i.d, align 8, !range !28, !noundef !27
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = load ptr, ptr %0, align 8, !noundef !27 ; 2 uses
  %.not3 = icmp eq ptr %i.at, null
  br i1 %.not3, label %bb.aa, label %bb.ae, !prof !30

bb.w:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %i.ap, align 8, !noundef !27
  %.not2 = icmp eq ptr %i.au, null
  br i1 %.not2, label %split.thread, label %.thread

bb.x:                                             ; preds = %bb.af
  %.pre = load i64, ptr %i.d, align 8, !range !28, !alias.scope !24655
  %i.av = icmp eq i64 %.pre, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !24655)
  br i1 %i.av, label %.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

.thread:                                          ; preds = %bb.w, %bb.x
  %.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !24655, !noundef !27 ; 3 uses
  %.val1.i = load i64, ptr %i.aq, align 8, !alias.scope !24655 ; 2 uses
  %i.aw = icmp eq ptr %.val.i, null
  %i.ax = icmp eq i64 %.val1.i, 0
  %or.cond.i.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.y

bb.y:                                             ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #43, !noalias !24655
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.x, %.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

split:                                            ; preds = %bb.ae
  %.pre20 = load i64, ptr %i.d, align 8, !range !28, !alias.scope !24656
  %i.ay = icmp eq i64 %.pre20, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !24656)
  br i1 %i.ay, label %split.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

split.thread:                                     ; preds = %bb.w, %split
  %.val.i4 = load ptr, ptr %i.ap, align 8, !alias.scope !24656, !noundef !27 ; 3 uses
  %.val1.i5 = load i64, ptr %i.aq, align 8, !alias.scope !24656 ; 2 uses
  %i.az = icmp eq ptr %.val.i4, null
  %i.ba = icmp eq i64 %.val1.i5, 0
  %or.cond.i.i6 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i.i6, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7, label %bb.z

bb.z:                                             ; preds = %split.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i4) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4, i64 noundef range(i64 1, 0) %.val1.i5, i64 noundef 1) #43, !noalias !24656
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7: ; preds = %split, %split.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.aa:                                            ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1335) #42
  unreachable

bb.ab:                                            ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre21 = load i64, ptr %i.d, align 8, !range !28, !alias.scope !24657
  %i.bb = icmp eq i64 %.pre21, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !24657)
  br i1 %i.bb, label %bb.ac, label %common.resume

bb.ac:                                            ; preds = %bb.ab
  %.val.i8 = load ptr, ptr %i.ap, align 8, !alias.scope !24657, !noundef !27 ; 3 uses
  %.val1.i9 = load i64, ptr %i.aq, align 8, !alias.scope !24657 ; 2 uses
  %i.bc = icmp eq ptr %.val.i8, null
  %i.bd = icmp eq i64 %.val1.i9, 0
  %or.cond.i.i10 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i.i10, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i8) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8, i64 noundef range(i64 1, 0) %.val1.i9, i64 noundef 1) #43, !noalias !24657
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %or.cond = icmp eq i64 %i.bf, 0
  br i1 %or.cond, label %split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %bb.x unwind label %bb.ab

_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %bb.a, %_RNvMsr_NtCs7akArC4fqbf_15futures_channel4mpscINtB5_8ReceiverINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEE5closeCsgsNUVCRJO2f_13influxdb3_lib.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCscdodAO9FK5_5alloc5boxed3BoxShEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1337, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1338, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1339, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1340, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1341, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1342, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1343, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1344, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1345, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1346, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1347, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1348, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1349, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1350, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1351, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1352, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1353, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1354, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1355, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1356, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1357, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1358, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorEENtNtB19_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorEENtNtB19_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorEENtNtB19_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1359, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1360, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1361, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1362, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1363, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtCs6TAKc56pues_16influxdb3_client5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtCs6TAKc56pues_16influxdb3_client5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtCs6TAKc56pues_16influxdb3_client5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1364, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1365, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1366, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1367, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1368, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1369, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1370, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1371, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtBO_3buf8buf_impl3Buf13has_remainingCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !42, !noundef !27
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %_RNvXs1_NtNtCs2LSxCQSJWSD_5hyper5proto2h2INtB5_7SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.b, align 8, !noundef !27
  br label %_RNvXs1_NtNtCs2LSxCQSJWSD_5hyper5proto2h2INtB5_7SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !27
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f)
  br label %_RNvXs1_NtNtCs2LSxCQSJWSD_5hyper5proto2h2INtB5_7SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs1_NtNtCs2LSxCQSJWSD_5hyper5proto2h2INtB5_7SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf9remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.val.i, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  %i.h = icmp ne i64 %.sroa.0.0.i, 0
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrINtNtB7_8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsbYyEjVLvvus_5tonic6status6StatusENCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB2O_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call00ENtB9_7BodyExt12boxed_unsyncCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !24660
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !noalias !24660
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 20145) 16, i64 noundef range(i64 1, 17) 8) #43 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrINtNtBI_8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsbYyEjVLvvus_5tonic6status6StatusENCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB3p_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call00EE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrINtNtBG_8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsbYyEjVLvvus_5tonic6status6StatusENCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB3n_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #41
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrINtNtBI_8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsbYyEjVLvvus_5tonic6status6StatusENCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB3p_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call00EE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  store ptr %0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1372, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrNtNtCsbYyEjVLvvus_5tonic4body4BodyNCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB1L_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call0s_0ENtB9_7BodyExt12boxed_unsyncCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0, ptr %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 20145) 16, i64 noundef range(i64 1, 17) 8) #43 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrNtNtCsbYyEjVLvvus_5tonic4body4BodyNCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB2m_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call0s_0EE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrNtNtCsbYyEjVLvvus_5tonic4body4BodyNCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB2k_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call0s_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #41
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtCsPDBpS1owJq_14http_body_util11combinators7map_err6MapErrNtNtCsbYyEjVLvvus_5tonic4body4BodyNCNCNvXs_NtNtCsbakdBCgU4AF_16influxdb3_server15unified_service7serviceINtB2m_14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4call0s_0EE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  store ptr %0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1373, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !39, !noalias !24665, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @188, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !79, !alias.scope !24668, !noundef !27
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXsa_Cs6TAKc56pues_16influxdb3_clientNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.13.0.i = phi ptr [ @713, %bb.b ], [ @7, %bb.c ], [ @713, %bb.d ], [ @721, %bb.e ], [ @1195, %bb.f ], [ @1197, %bb.g ], [ @713, %bb.h ], [ @713, %bb.i ], [ @141, %bb.l ], [ @713, %bb.j ], [ @713, %bb.k ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.l, %bb.l ], [ %i.j, %bb.j ], [ %i.k, %bb.k ], [ null, %bb.a ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.13.0.i, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @182, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1374, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1375, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #20 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24671)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !24671, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noalias !24671, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !noalias !24671, !nonnull !27, !align !36, !noundef !27
  br label %_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @189, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @190, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @191, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @183, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @192, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13invalid_valueCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #21 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsgsNUVCRJO2f_13influxdb3_lib(i64 noundef %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #21 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15WriteBufferImplNtB6_8Bufferer13parquet_filesCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.d, align 8
  call void @_RNvXsf_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_15WriteBufferImplNtB7_8Bufferer22parquet_files_filtered(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs2_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @184, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @185, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #20 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24674)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !24674, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !noalias !24674, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs8_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !noalias !24674, !nonnull !27, !align !36, !noundef !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !48, !invariant.load !27, !noalias !24674
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNvXs8_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXs8_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @414, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1376, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @193, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1377, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1378, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @186, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @194, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1379, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @195, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf13has_remainingCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly captures(none) dereferenceable(20) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.val = load i8, ptr %i.a, align 1, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19
  %.val1 = load i8, ptr %i.b, align 1, !noundef !27
  %i.c = icmp ne i8 %.val1, %.val
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 2) i64 @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf15chunks_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(20) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.val.i = load i8, ptr %i.b, align 1, !alias.scope !24679, !noundef !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !24679, !noundef !27 ; 4 uses
  %.not = icmp eq i8 %.val1.i, %.val.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %_RNvXs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeNtB5_9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunk.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %_RNvXs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeNtB5_9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunk.exit ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.d = zext i8 %.val.i to i64                   ; 3 uses
  %i.e = zext i8 %.val1.i to i64                  ; 2 uses
  %i.f = icmp uge i8 %.val1.i, %.val.i
  %i.g = icmp ult i8 %.val1.i, 19
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %_RNvXs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeNtB5_9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunk.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.e, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @641) #42, !noalias !24680
  unreachable

_RNvXs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeNtB5_9ChunkSizeNtNtNtCsuxFxh2mtOX_5bytes3buf8buf_impl3Buf5chunk.exit: ; preds = %bb.d
  %i.h = sub nuw nsw i64 %i.e, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store ptr %i.i, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.j, align 8
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @187, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1336, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1380, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #22

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB43_7RawArgsINtNtB2u_7convert4FromB39_E4from0EE9from_iterCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs2lpxFwhfAIc_5trace4spanNtB2_4Span5event(ptr noalias noundef align 16 dereferenceable(208), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapINtNtCscdodAO9FK5_5alloc6borrow3CoweENtNtCs2lpxFwhfAIc_5trace4span9MetaValueNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE24with_capacity_and_hasherCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SBT_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2g_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1m_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SBT_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2g_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1m_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsj7DbYNsdxOJ_3urlNtB2_12ParseOptions5parse(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs_NtCsj7DbYNsdxOJ_3url7slicingNtB6_3UrlINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtBK_5range9RangeFromNtB4_8PositionEE5index(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i8 noundef range(i8 0, 16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Csj7DbYNsdxOJ_3urlNtB4_3Url8set_path(ptr noalias noundef align 8 dereferenceable(88), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtCs6TAKc56pues_16influxdb3_client5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtCs6TAKc56pues_16influxdb3_client5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtCs6TAKc56pues_16influxdb3_client5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorReEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorReEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restReNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

end_hunk_1
