inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate16PruningPredicateECs14kWLkQVSKO_14deltalake_core:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate15RequiredColumnsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) #46
          to label %.body unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit8
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate15RequiredColumnsECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

.body:                                            ; preds = %bb.j, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.u, %bb.j ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6404)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !6407, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !6407
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11 unwind label %bb.o

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate15RequiredColumnsECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate14StatisticsTypeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6411)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !6414, !nonnull !4, !noundef !4
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !6414
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit13

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate15RequiredColumnsECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11: ; preds = %.body, %bb.i, %bb.l
  %.pn4 = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %.pn2, %bb.i ], [ %.pn2, %.body ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.z) #46
          to label %common.resume unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate15RequiredColumnsECs14kWLkQVSKO_14deltalake_core.exit, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit13
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %.pn4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit13
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr5utils9guarantee16LiteralGuaranteeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  ret void

bb.o:                                             ; preds = %bb.i, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6415)
  %i.c = load i64, ptr %0, align 8, !range !1069, !alias.scope !6415, !noundef !4
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %.noexc1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !6418, !alias.scope !6415, !noundef !4
  %i.f = invoke noundef zeroext i1 @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.e)
          to label %.noexc1 unwind label %bb.e    ; 0 uses

.noexc1:                                          ; preds = %bb.a, %bb.b
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.c:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !6415, !align !18, !noundef !4 ; 3 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6415
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  store ptr %i.l, ptr %i.b, align 8, !noalias !6415
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !6415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6415
  store ptr %i.b, ptr %i.a, align 8, !noalias !6415
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6415
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1222, i64 noundef 13, ptr noundef nonnull @1221, ptr noundef nonnull %i.a) #49
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6415
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) #46
          to label %bb.j unwind label %bb.i

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !6419)
  %i.q = load i64, ptr %0, align 8, !range !1069, !alias.scope !6419, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  call void @llvm.experimental.noalias.scope.decl(metadata !6425)
  call void @llvm.experimental.noalias.scope.decl(metadata !6428)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6431)
  call void @llvm.experimental.noalias.scope.decl(metadata !6434)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !6437, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !6437
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  %i.c = load i64, ptr %.0.val, align 8, !range !1069, !alias.scope !6438, !noalias !6441, !noundef !4
  %.not.i.i = icmp eq i64 %i.c, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !6441
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !6441
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6438, !noalias !6441, !align !18, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6444
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !6441, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noalias !6441, !noundef !4
  store ptr %i.j, ptr %i.b, align 8, !noalias !6444
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !6444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6444
  store ptr %i.b, ptr %i.a, align 8, !noalias !6444
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !6444
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @644, ptr noundef nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6444
  br label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer8AnalyzerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB24_4SendEL_EENtNtNtB26_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2b_4SendEL_EENtNtNtB2d_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2b_4SendEL_EENtNtNtB2d_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtB4_6marker4SyncNtB2C_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtB4_6marker4SyncNtB2y_4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtB4_6marker4SyncNtB2C_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB20_4SendEL_EENtNtNtB22_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtB4_6marker4SyncNtB2y_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtB4_6marker4SyncNtB2C_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB27_4SendEL_EENtNtNtB29_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtB4_6marker4SyncNtB2y_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtB4_6marker4SyncNtB2C_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB27_4SendEL_EENtNtNtB29_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer9OptimizerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB22_4SendEL_EENtNtNtB24_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2A_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_EENtNtNtB2b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2H_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2H_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2A_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_EENtNtNtB2b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader7DecoderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %.body4.i unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdFjMDJQAyx6_10arrow_json6reader4tape11TapeElementEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

.body4.i:                                         ; preds = %bb.i, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #46
          to label %.body6.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.f, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i:                                    ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi = phi ptr [ %.sink18.i.sroa.gep, %bb.n ], [ %.sink18.i.sroa.gep2, %bb.g ]
  %.sink16.i = phi ptr [ %i.s, %bb.n ], [ %i.g, %bb.g ]
  %.sink15.i.sroa.phi = phi ptr [ %.sink15.i.sroa.gep, %bb.n ], [ %.sink15.i.sroa.gep3, %bb.g ]
  %.sink13.i = phi i64 [ %i.u, %bb.n ], [ %i.i, %bb.g ]
  %.sink12.ph.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  store ptr %.sink16.i, ptr %.sink18.i.sroa.phi, align 8, !alias.scope !32239, !noalias !32242
  store i64 %.sink13.i, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !32239, !noalias !32242
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !32244
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !32244
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !32244
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.g, ptr %.sink18.i.sroa.gep2, align 8, !alias.scope !32239, !noalias !32242
  store i64 %i.i, ptr %.sink15.i.sroa.gep3, align 8, !alias.scope !32239, !noalias !32242
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.c, %.sink.split.i
  %.sink12.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i, %.sink.split.i ]
  %.sink10.i = phi ptr [ %i.g, %bb.c ], [ %.sink10.ph.i, %.sink.split.i ]
  %.sink9.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i, %.sink.split.i ]
  %.sink7.i = phi i64 [ %i.i, %bb.c ], [ %.sink7.ph.i, %.sink.split.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink12.i
  store ptr %.sink10.i, ptr %i.ad, align 8, !alias.scope !32239, !noalias !32242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink9.i
  store i64 %.sink7.i, ptr %i.ae, align 8, !alias.scope !32239, !noalias !32242
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !32239, !noalias !32242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 3, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.ai, %bb.t ]
  %i.ag = load i64, ptr %i.d, align 8, !range !1127, !alias.scope !32245, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 3
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %bb.r unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.x:                                             ; preds = %bb.s, %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32256)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !32258, !noalias !32259, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32259, !noalias !32258, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !32259, !noalias !32258, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !32258, !noalias !32259, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b), !noalias !32260
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.m = tail call noundef zeroext i1 @_RNvXse_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l)
  br i1 %i.m, label %bb.d, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 96
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  %i.q = xor i1 %i.p, true
  br label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i1 [ %i.q, %bb.d ], [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32264)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !178, !alias.scope !32261, !noalias !32264, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !178, !alias.scope !32264, !noalias !32261, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !32261, !noalias !32264, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !32264, !noalias !32261, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !32264, !noalias !32261, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32261, !noalias !32264, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g), !noalias !32266
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.d, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1F_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) #49
  br i1 %i.r, label %bb.e, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.u = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
  br label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr readonly captures(none) %.0.val, ptr readonly captures(none) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32275)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !32277, !noalias !32278, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !32277, !noalias !32278, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.0.val, align 8, !range !17, !alias.scope !32277, !noalias !32278, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, -9223372036854775808
  %i.l = load i64, ptr %.0.val1, align 8, !range !17, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !32277, !noalias !32278, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !32278, !noalias !32277, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32277, !noalias !32278, !nonnull !4, !noundef !4
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o), !noalias !32279
  br i1 %i.w, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !17, !alias.scope !32277, !noalias !32278, !noundef !4
  %.not4.i.i = icmp eq i64 %i.y, -9223372036854775808 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  %brmerge.i.i = or i1 %.not4.i.i, %i.ab
  %.mux.i.i = and i1 %.not4.i.i, %i.ab
  br i1 %brmerge.i.i, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !32277, !noalias !32278, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !32278, !noalias !32277, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !32277, !noalias !32278, !nonnull !4, !noundef !4
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !32279
  br label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.al, %bb.j ], [ %.mux.i.i, %bb.h ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ]
  %i.am = xor i1 %.sroa.0.0.shrunk.i.i, true
  ret i1 %i.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_11StorageTypeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  switch i8 %lhsc, label %.split [
    i8 117, label %bb.c
    i8 105, label %bb.d
    i8 112, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.e, align 8
  br label %bb.f

.split:                                           ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @1223, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775780, %.split ], [ -9223372036854775771, %bb.e ], [ -9223372036854775771, %bb.d ], [ -9223372036854775771, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1225, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(584) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1808 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %i.b, ptr noundef nonnull align 8 dereferenceable(584) %0, i64 584, i1 false)
end_hunk_1
begin_hunk_2_@_RNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB4_7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtBX_3buf8buf_impl3Buf13copy_to_bytesCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit:       ; preds = %.noexc110, %bb.ay, %.noexc43
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i, %bb.ah
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc68, %bb.ac, %bb.aa
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke288, %.invoke, %.noexc95, %.noexc91, %bb.n, %.noexc18, %.noexc81, %bb.x, %bb.z, %.noexc129, %.noexc126, %.noexc35, %.noexc36, %.noexc123, %bb.au, %bb.aw, %bb.ai, %bb.o, %.noexc17, %.noexc86, %bb.m, %bb.l, %bb.j, %bb.al, %bb.ak
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc23, %.noexc41, %bb.as, %.noexc34, %bb.v, %.noexc
  %.sroa.0.0.copyload = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.bi, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %i.bj, align 8
  %.sroa.8.0.copyload = load ptr, ptr %i.bk, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.iv = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %.not.i47 = icmp eq i64 %i.iw, 0
  br i1 %.not.i47, label %bb.be, label %.noexc48

.noexc48:                                         ; preds = %_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ix = lshr i64 %i.iv, 5                       ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.iy
  %i.ja = add i64 %i.ix, %.sroa.5.0.copyload
  %i.jb = add i64 %i.ix, %.sroa.7.0.copyload      ; 2 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  call void @llvm.assume(i1 %i.jc)
  store i64 %i.jb, ptr %i.t, align 8, !noalias !33375
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.iz, ptr %i.jd, align 8, !noalias !33375
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ja, ptr %i.je, align 8, !noalias !33375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !33375
  call void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !33377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !33375
  store i64 %i.ix, ptr %i.r, align 8, !noalias !33380
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !33377, !noalias !33375, !noundef !4 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ix, %i.jg
  br i1 %.not.i.i, label %bb.bd, label %bb.bg, !prof !52

bb.bd:                                            ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33380
  store i64 %i.jg, ptr %i.q, align 8, !noalias !33380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !33380
  store ptr %i.r, ptr %i.p, align 8, !noalias !33380
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !33380
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.jh, align 8, !noalias !33380
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !33380
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1042, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #50
          to label %.noexc.i unwind label %bb.bf, !noalias !33375

.noexc.i:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ji, align 8, !alias.scope !33372, !noalias !33381
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.jj, align 8, !alias.scope !33372, !noalias !33381
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.jk, align 8, !alias.scope !33372, !noalias !33381
  store ptr @_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !33372, !noalias !33381
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !33382)
  call void @llvm.experimental.noalias.scope.decl(metadata !33385)
  %i.jm = load ptr, ptr %i.s, align 8, !alias.scope !33388, !noalias !33375, !nonnull !4, !align !18, !noundef !4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !33389, !nonnull !4, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !33388, !noalias !33375, !noundef !4
  invoke void %i.jo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef %i.jr, i64 noundef %i.jg)
          to label %.body.thread156 unwind label %bb.bh, !noalias !33375, !inline_history !2164

bb.bg:                                            ; preds = %.noexc48
  %i.js = sub nuw i64 %i.jg, %i.ix
  store i64 %i.js, ptr %i.jf, align 8, !alias.scope !33377, !noalias !33375
  %i.jt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !33377, !noalias !33375, !noundef !4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ix
  store ptr %i.jv, ptr %i.jt, align 8, !alias.scope !33377, !noalias !33375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !33381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !33375
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33375
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bi, %bb.f
  ret void

.body.thread156:                                  ; preds = %bb.bl, %.body.thread, %bb.bf
  %.pn = phi { ptr, i32 } [ %eh.lpad-body155, %.body.thread ], [ %i.jl, %bb.bf ], [ %i.jy, %bb.bl ]
  resume { ptr, i32 } %.pn

.body.thread:                                     ; preds = %.body.thread160.loopexit, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread160.loopexit.split-lp.loopexit, %bb.at, %bb.ar, %bb.w, %bb.u
  %eh.lpad-body155 = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.gh, %bb.ar ], [ %i.gi, %bb.at ], [ %i.cp, %bb.u ], [ %lpad.loopexit, %.body.thread160.loopexit ], [ %lpad.loopexit165, %.body.thread160.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit170, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp171, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body.thread156 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.body.thread
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bl:                                            ; preds = %bb.bn, %bb.e
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !33390)
  call void @llvm.experimental.noalias.scope.decl(metadata !33393)
  %i.jz = load ptr, ptr %i.ag, align 8, !alias.scope !33396, !nonnull !4, !align !18, !noundef !4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !33396, !nonnull !4, !noundef !4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !33396, !noundef !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !33396, !noundef !4
  invoke void %i.kb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef %i.ke, i64 noundef %i.kg)
          to label %.body.thread156 unwind label %bb.bk, !inline_history !2164

bb.bm:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !33397)
  %i.kh = load ptr, ptr %i.af, align 8, !alias.scope !33397, !noundef !4 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !33400)
  call void @llvm.experimental.noalias.scope.decl(metadata !33403)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !33406, !nonnull !4, !noundef !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !33406, !noundef !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !33406, !noundef !4
  invoke void %i.kk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef %i.kn, i64 noundef %i.kp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bl, !inline_history !33407

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs4tdlwR1I4n2_7parquet6errorsNtB4_12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5769, !noundef !4
  %i.b = icmp eq i64 %i.a, 5                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !18
  %.sroa.3.0 = select i1 %i.b, ptr %i.f, ptr undef
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr null
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBQ_9MergePlan7execute0000INtB4_6FnMut1NtBQ_8MergeBinE8call_mutBU_(ptr dead_on_unwind noalias noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33408
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %_RNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute0000Bh_.exit unwind label %bb.b, !noalias !33413

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #46
          to label %bb.d unwind label %bb.c, !noalias !33414

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33414
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute0000Bh_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !33415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute000INtB4_6FnMut1TNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2l_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB2p_3vec3VecNtBO_8MergeBinEEEE8call_mutBS_(ptr dead_on_unwind noalias noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 104)) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33419)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !33419, !noalias !33416 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !33419, !noalias !33416, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !33419, !noalias !33416 ; 2 uses
  %i.d = icmp ult i64 %.sroa.3.0.copyload.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.2.0.copyload.i, i64 %.sroa.3.0.copyload.i
  %i.f = icmp sgt i64 %.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.2.0.copyload.i, ptr %i.g, align 8, !alias.scope !33416, !noalias !33419
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !33416, !noalias !33419
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !33416, !noalias !33419
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !33416, !noalias !33419
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.a)
          to label %_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute000Bf_.exit unwind label %bb.b, !noalias !33416

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.c, !noalias !33416

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33416
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.h

_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute000Bf_.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.a), !noalias !33416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute00s0_0INtB4_6FnMut1TNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2o_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtBO_8MergeBinEEE8call_mutBS_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [17 x i8], align 1                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [5472 x i8], align 16             ; 11 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [128 x i8], align 16              ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [1920 x i8], align 16             ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 4 uses
  %i.t = alloca [128 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !33426
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !33426
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33426
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBN_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.c unwind label %bb.b, !noalias !33426

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noalias !33426, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !33426
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.y, ptr %i.z, align 8, !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !33426
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !33428
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = load ptr, ptr %i.aa, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %3, ptr %i.o, align 8, !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !33426
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33429)
  call void @llvm.experimental.noalias.scope.decl(metadata !33432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33434
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !33432, !noalias !33435, !nonnull !4, !noundef !4 ; 4 uses
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !33436
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ah, ptr %i.c, align 8, !noalias !33434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33434
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.l unwind label %bb.g, !noalias !33435

bb.f:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !33437
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %.critedge.i unwind label %bb.i, !noalias !33435

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33435
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %.noexc19.i, %bb.w, %bb.s, %bb.h, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.df, %.noexc19.i ], [ %i.bs, %bb.w ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33442)
  call void @llvm.experimental.noalias.scope.decl(metadata !33445)
  %i.ao = load ptr, ptr %i.o, align 8, !alias.scope !33448, !noalias !33426, !nonnull !4, !noundef !4
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !33449
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i

bb.k:                                             ; preds = %.critedge.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i unwind label %bb.ai, !noalias !33428

bb.l:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ah, ptr %i.ar, align 8, !alias.scope !33429, !noalias !33450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !33450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !33426
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !33428
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %5 = load ptr, ptr %i.as, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = load ptr, ptr %4, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !noalias !33426
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !33426
  call void @llvm.experimental.noalias.scope.decl(metadata !33451)
  call void @llvm.experimental.noalias.scope.decl(metadata !33454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33426
  %i.ay = load i64, ptr %1, align 8, !range !17, !alias.scope !33456, !noalias !33457, !noundef !4
  %.not.i.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
          to label %.noexc17.i unwind label %bb.am, !noalias !33428

.noexc17.i:                                       ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !33458
  br label %bb.o

bb.o:                                             ; preds = %.noexc17.i, %bb.m
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.noexc17.i ], [ -9223372036854775808, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i8, ptr %i.az, align 8, !range !178, !alias.scope !33456, !noalias !33457, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !range !178, !alias.scope !33456, !noalias !33457, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.be = load i8, ptr %i.bd, align 2, !range !178, !alias.scope !33456, !noalias !33457, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !33456, !noalias !33457, !noundef !4 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8, !noalias !33457
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.k, align 8, !alias.scope !33451, !noalias !33459
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !noalias !33459
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 %i.ba, ptr %i.bl, align 8, !alias.scope !33451, !noalias !33459
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  store i8 %i.bc, ptr %i.bm, align 1, !alias.scope !33451, !noalias !33459
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  store i8 %i.be, ptr %i.bn, align 2, !alias.scope !33451, !noalias !33459
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bg, ptr %i.bo, align 8, !alias.scope !33451, !noalias !33459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33426
  invoke void @_RNvMs8_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_18DeltaTableProvider7try_new(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.u unwind label %bb.s, !noalias !33428

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !33426
  call void @llvm.experimental.noalias.scope.decl(metadata !33460)
  %i.bp = load i64, ptr %i.n, align 16, !range !58, !alias.scope !33460, !noalias !33463, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.v, label %bb.z, !prof !52

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33465
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.br, i64 96, i1 false), !noalias !33463
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @632, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @635, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #48
          to label %bb.x unwind label %bb.w, !noalias !33466

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #46
          to label %.critedge.i unwind label %bb.y, !noalias !33466

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33466
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.bu, i64 120, i1 false), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !33426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !33426
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 1896
  store ptr %3, ptr %i.bw, align 8, !noalias !33426
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 1912
  store i8 0, ptr %i.bx, align 8, !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33426
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4
  %i.ca = atomicrmw add ptr %i.bz, i64 1 monotonic, align 8, !noalias !33428
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %6 = load ptr, ptr %i.by, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %6, ptr %i.i, align 8, !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !33426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33426
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !noalias !33428
  store i8 1, ptr %i.f, align 1, !noalias !33426
  %7 = load ptr, ptr %i.as, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !noundef !4
  %8 = load ptr, ptr %4, align 8, !alias.scope !33424, !noalias !33428, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !3, !invariant.load !4, !noalias !33428
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !33428, !nonnull !4
  %i.cm = invoke { ptr, ptr } %i.cl(ptr noundef nonnull %i.cj, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.f)
          to label %bb.ad unwind label %bb.ac, !noalias !33428 ; 2 uses

bb.ab:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.g) #46
          to label %bb.aj unwind label %bb.ai, !noalias !33428

bb.ad:                                            ; preds = %bb.aa
  %i.co = extractvalue { ptr, ptr } %i.cm, 0
  %i.cp = extractvalue { ptr, ptr } %i.cm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33426
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.cq, ptr noundef nonnull align 16 dereferenceable(1920) %i.q, i64 1920, i1 false), !noalias !33426
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 2088
  store ptr %6, ptr %i.cr, align 8, !noalias !33426
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 2016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !33426
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.co, ptr %i.ct, align 16, !noalias !33426
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.cp, ptr %i.cu, align 8, !noalias !33426
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 3360
  store i8 0, ptr %i.cv, align 16, !noalias !33426
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 3361
  store i8 0, ptr %i.cw, align 1, !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33426
  %i.cx = invoke noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task5spawn5spawnNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBQ_9MergePlan13rewrite_filesNCNvBM_11read_zorder0E0EBU_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(5472) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194)
          to label %bb.af unwind label %bb.ae, !noalias !33428

bb.ae:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.critedge14.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33426
  store ptr %i.cx, ptr %0, align 8, !alias.scope !33421, !noalias !33467
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.cz, align 8, !alias.scope !33421, !noalias !33467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !33426
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t)
          to label %_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s0_0Bf_.exit unwind label %bb.ag, !noalias !33421

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t)
          to label %common.resume.i unwind label %bb.ah, !noalias !33421

bb.ah:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33421
  unreachable

common.resume.i:                                  ; preds = %.critedge14.i, %bb.ag
  %common.resume.op.i = phi { ptr, i32 } [ %i.da, %bb.ag ], [ %.pn10.pn22.i, %.critedge14.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ai:                                            ; preds = %bb.ap, %.critedge14.i, %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i, %.noexc19.i, %bb.an, %.thread28.i, %bb.al, %bb.aj, %bb.ac, %bb.k
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33421
  unreachable

bb.aj:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.h) #46
          to label %bb.ak unwind label %bb.ai, !noalias !33428

bb.ak:                                            ; preds = %bb.aj
  %i.dd = atomicrmw sub ptr %6, i64 1 release, align 8, !noalias !33468
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.al, label %.thread28.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #45
          to label %.thread28.i unwind label %bb.ai, !noalias !33428

.thread28.i:                                      ; preds = %bb.al, %bb.ak
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan11read_zorder0EBS_(ptr noundef nonnull align 16 %i.q) #46
          to label %.critedge14.i unwind label %bb.ai, !noalias !33428

bb.am:                                            ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = atomicrmw sub ptr %5, i64 1 release, align 8, !noalias !33473
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.an, label %.noexc19.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #45
          to label %.noexc19.i unwind label %bb.ai, !noalias !33428

.noexc19.i:                                       ; preds = %bb.an, %bb.am
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #46
          to label %.critedge.i unwind label %bb.ai, !noalias !33428

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i: ; preds = %bb.k, %.critedge.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.p) #46
          to label %bb.ao unwind label %bb.ai, !noalias !33428

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i, %bb.b
  %.pn10.pn.ph.i = phi { ptr, i32 } [ %i.w, %bb.b ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.r) #46
          to label %bb.ap unwind label %bb.ai, !noalias !33428

.critedge14.i:                                    ; preds = %bb.ap, %.thread28.i, %bb.ae
  %.pn10.pn22.i = phi { ptr, i32 } [ %i.cy, %bb.ae ], [ %.pn10.pn.ph.i, %bb.ap ], [ %i.cn, %.thread28.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t) #46
          to label %common.resume.i unwind label %bb.ai, !noalias !33421

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.s) #46
          to label %.critedge14.i unwind label %bb.ai, !noalias !33428

_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s0_0Bf_.exit: ; preds = %bb.af
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t), !noalias !33421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute00s_0INtB4_6FnMut1TINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtBO_8MergeBinEE8call_mutBS_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [3648 x i8], align 16             ; 12 uses
  %i.i = alloca [792 x i8], align 8               ; 12 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 10 uses
  %i.af = alloca [72 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !33483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(104) %2, i64 72, i1 false), !noalias !33485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !33483
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !33485
  %i.ah = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !33483
  %i.ai = icmp ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.b, label %bb.m

.thread.loopexit.i:                               ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ac, %.noexc108.i, %bb.ab, %bb.z, %bb.w, %bb.v
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.r, %bb.p, %bb.o, %bb.j, %.noexc102.i, %bb.i, %bb.g, %bb.d, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i

bb.b:                                             ; preds = %bb.a
  %i.aj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, i64 16) monotonic, align 8, !noalias !33483 ; 3 uses
  switch i8 %i.aj, label %bb.c [
    i8 0, label %bb.m
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !10371

bb.c:                                             ; preds = %bb.b
  %i.ak = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE)
          to label %bb.e unwind label %.thread.loopexit.split-lp.i, !noalias !33483 ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.b
  %.sroa.06.0.i = phi i8 [ %i.ak, %bb.e ], [ %i.aj, %bb.b ], [ %i.aj, %bb.b ]
  %i.al = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4
  %i.am = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.al, i8 noundef %.sroa.06.0.i)
          to label %bb.f unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.e:                                             ; preds = %bb.c
  %i.an = icmp eq i8 %i.ak, 0
  br i1 %i.an, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.am, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33483
  %i.ao = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !33483
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !33483, !noundef !4 ; 2 uses
  store i64 %i.ar, ptr %i.aa, align 8, !noalias !33483
  %i.as = icmp ult i64 %i.ar, 33909456017848441
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33483
  store ptr %i.aa, ptr %i.z, align 8, !noalias !33483
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !33483
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.af, ptr %i.at, align 8, !noalias !33483
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !33483
  store ptr @195, ptr %i.ab, align 8, !noalias !33483
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.z, ptr %i.au, align 8, !noalias !33483
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !33483
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @196, ptr %i.av, align 8, !noalias !33483
  store i64 1, ptr %i.ad, align 8, !noalias !33483
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33483
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483

.noexc.i:                                         ; preds = %bb.g
  %i.aw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !33486
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.noexc.i
  %i.ay = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !33486 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 6
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp samesign ugt i64 %i.ay, 3
  br i1 %i.ba, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33486, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !33483, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noalias !33483, !noundef !4
  store i64 4, ptr %i.b, align 8, !noalias !33486
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bd, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !33486
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !33486
  %i.bg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc102.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483 ; 2 uses

.noexc102.i:                                      ; preds = %bb.i
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !4, !noalias !33483, !nonnull !4
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #49
          to label %.noexc103.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483, !inline_history !33489

.noexc103.i:                                      ; preds = %.noexc102.i
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc103.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noundef nonnull %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.k unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.k:                                             ; preds = %bb.j, %.noexc103.i, %bb.h, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33483
end_hunk_2
begin_hunk_3_@_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute00s_0INtB4_6FnMut1TINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtBO_8MergeBinEE8call_mutBS_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s1_0INtB4_6FnMut1TINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtNtBO_6kernel8snapshot9iterators15LogicalFileViewNtNtBO_6errors15DeltaTableErrorETINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB45_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB49_6string6StringEEEEE8call_mutBO_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 72)) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33507)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 16, !alias.scope !33507, !noalias !33504 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !33507, !noalias !33504, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !33507, !noalias !33504, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33509
  store ptr %i.c, ptr %i.a, align 8, !noalias !33509
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !noalias !33509
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775711
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i, i64 48, i1 false), !alias.scope !33509
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.58.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !alias.scope !33509
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 16, !alias.scope !33504, !noalias !33507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33513)
  %i.g = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !33516
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.d, !noalias !33509

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !33521)
  call void @llvm.experimental.noalias.scope.decl(metadata !33524)
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !33527, !noalias !33509, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !33528
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB7_6string6StringEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.g, !noalias !33509

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !33529)
  call void @llvm.experimental.noalias.scope.decl(metadata !33532)
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !33535, !noalias !33509, !nonnull !4, !noundef !4
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !33536
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s1_0Bb_.exit

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB7_6string6StringEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #45, !noalias !33509
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s1_0Bb_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33509
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i, i64 48, i1 false), !alias.scope !33509
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.c, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !33504, !noalias !33507
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !33504, !noalias !33507
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !33504, !noalias !33507
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s1_0Bb_.exit

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s1_0Bb_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33509
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBM_16DeltaScanBuilder5build0s1_0INtB4_6FnMut1NtNtNtNtBQ_6kernel8snapshot9iterators15LogicalFileViewE8call_mutBQ_(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10add_action(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB9_16DeltaScanBuilder5build0s1_0Bd_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i unwind label %bb.c, !noalias !33537

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33537
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB9_16DeltaScanBuilder5build0s1_0Bd_.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !33537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBM_16DeltaScanBuilder5build0s2_0INtB4_6FnMut1NtNtNtNtBQ_6kernel8snapshot9iterators15LogicalFileViewE8call_mutBQ_(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10add_action(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB9_16DeltaScanBuilder5build0s2_0Bd_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i unwind label %bb.c, !noalias !33540

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33540
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB9_16DeltaScanBuilder5build0s2_0Bd_.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !33540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBM_9MergePlan11read_zorder0s_0INtB4_6FnMut1NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE8call_mutBQ_(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33546
  store ptr %i.c, ptr %i.a, align 8, !noalias !33546
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsf_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !33546
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @222, ptr noundef nonnull %i.a)
          to label %_RNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan11read_zorder0s_0Bd_.exit unwind label %bb.b, !noalias !33543

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #46
          to label %bb.d unwind label %bb.c, !noalias !33543

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33543
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan11read_zorder0s_0Bd_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33546
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !33548
  store i64 0, ptr %0, align 8, !alias.scope !33543, !noalias !33548
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !33543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem14list_from_impl00INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2Q_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [88 x i8], align 8                ; 11 uses
  %i.h = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33554
  %i.i = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs0_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjyY8HP3IvQ6_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !noalias !33556
  store i64 1, ptr %0, align 16, !alias.scope !33549, !noalias !33556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33554
  br label %_RNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem14list_from_impl00Cs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33554
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.f unwind label %bb.e, !noalias !33557

bb.d:                                             ; preds = %bb.o, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.o ], [ %i.k, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.h) #46
          to label %bb.p unwind label %bb.n, !noalias !33557

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, ptr noundef nonnull align 8 dereferenceable(17) %i.m, i64 17, i1 false), !noalias !33557
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !33552, !noalias !33557, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !33554
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.t = load <4 x i32>, ptr %i.l, align 4, !alias.scope !33552, !noalias !33557
  store <4 x i32> %i.t, ptr %i.s, align 4, !noalias !33554
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.v = load <2 x i16>, ptr %i.o, align 8, !alias.scope !33552, !noalias !33557
  store <2 x i16> %i.v, ptr %i.u, align 8, !noalias !33554
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.q, ptr %i.w, align 4, !noalias !33554
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.y = load <4 x i32>, ptr %i.r, align 8, !alias.scope !33552, !noalias !33557
  store <4 x i32> %i.y, ptr %i.x, align 8, !noalias !33554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33554
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !33554, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !33554, !noundef !4
  store ptr %i.z, ptr %i.d, align 8, !noalias !33554
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !33554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33554
  store ptr %i.d, ptr %i.c, align 8, !noalias !33554
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !33554
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @336, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !33557

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !33554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !33554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33554
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !33554, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !33554, !noundef !4
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8set_path(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah)
          to label %bb.i unwind label %bb.h, !noalias !33557

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #46
          to label %bb.o unwind label %bb.n, !noalias !33557

bb.i:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.j, !noalias !33557

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %bb.k, !noalias !33557

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33557
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !33557

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33554
  %i.al = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !10575, !noalias !33554, !noundef !4 ; 2 uses
  %i.am = ashr i32 %i.al, 13                      ; 3 uses
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  %i.ao = icmp slt i32 %i.am, 1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = sub nsw i32 1, %i.am
  %i.aq = udiv i32 %i.ap, 400
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = mul nuw nsw i32 %i.ar, 400
  %i.at = add nsw i32 %i.as, %i.an
  %.neg.i.i = mul nsw i32 %i.ar, -146097
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.05.0.i.i = phi i32 [ %.neg.i.i, %bb.l ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.0.0.i.i = phi i32 [ %i.at, %bb.l ], [ %i.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.au = sdiv i32 %.sroa.0.0.i.i, 100            ; 2 uses
  %i.av = mul nsw i32 %.sroa.0.0.i.i, 1461
  %i.aw = ashr i32 %i.av, 2
  %i.ax = ashr i32 %i.au, 2
  %i.ay = lshr i32 %i.al, 4
  %i.az = and i32 %i.ay, 511
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !33554, !noundef !4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i32 %i.az, -719163
  %i.be = add nsw i32 %i.bd, %.sroa.05.0.i.i
  %i.bf = sub nsw i32 %i.be, %i.au
  %i.bg = add nsw i32 %i.bf, %i.aw
  %narrow.i = add nsw i32 %i.bg, %i.ax
  %i.bh = sext i32 %narrow.i to i64
  %i.bi = mul nsw i64 %i.bh, 86400
  %i.bj = add nsw i64 %i.bi, %i.bc
  %i.bk = mul nsw i64 %i.bj, 1000
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bm = load i32, ptr %i.bl, align 8, !noalias !33554, !noundef !4
  %i.bn = udiv i32 %i.bm, 1000000
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add nsw i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !noalias !33554, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !33556
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.bp, ptr %.sroa.46.0..sroa_idx.i, align 16, !alias.scope !33549, !noalias !33556
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.br, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !33549, !noalias !33556
  store i64 0, ptr %0, align 16, !alias.scope !33549, !noalias !33556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33554
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.h), !noalias !33557
  br label %_RNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem14list_from_impl00Cs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.o, %bb.h, %bb.d
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33557
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.pn.ph.i = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.ad, %bb.g ], [ %i.aj, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g) #46
          to label %bb.d unwind label %bb.n, !noalias !33557

bb.p:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn.pn.i

_RNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem14list_from_impl00Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33554
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00INtB4_6FnMut1TNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2H_3ops5range5RangeyEEEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([824 x i8]) align 8 captures(none) dereferenceable(824) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #21 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33561)
  %i.b = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !33563
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00Cs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(112) %2, i64 88, i1 false), !alias.scope !33563
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !33563
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.val, ptr %i.f, align 8, !alias.scope !33558, !noalias !33561
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.val1, ptr %i.g, align 8, !alias.scope !33558, !noalias !33561
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.h, align 8, !alias.scope !33558, !noalias !33561
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtBM_13DeltaDataSinkNtNtCs2xb0BKvnu80_21datafusion_datasource4sink8DataSink9write_all00INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE8call_mutBS_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #22 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33567)
  %i.a = load i64, ptr %2, align 8, !range !58, !alias.scope !33567, !noalias !33564, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %_RNCNCNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB9_13DeltaDataSinkNtNtCs2xb0BKvnu80_21datafusion_datasource4sink8DataSink9write_all00Bf_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !33567, !noalias !33564, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = atomicrmw add ptr %i.e, i64 %i.d monotonic, align 8, !noalias !33569 ; 0 uses
  br label %_RNCNCNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB9_13DeltaDataSinkNtNtCs2xb0BKvnu80_21datafusion_datasource4sink8DataSink9write_all00Bf_.exit

end_hunk_3
begin_hunk_4_@_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtBM_13CreateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00INtB4_6FnMut1NtNtNtNtBQ_6kernel8snapshot9iterators15LogicalFileViewE8call_mutBQ_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33579
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView13remove_action(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext true)
          to label %_RNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB9_13CreateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00Bd_.exit unwind label %bb.b, !noalias !33576

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i unwind label %bb.c, !noalias !33576

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33576
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB9_13CreateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00Bd_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !33581)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.a, i64 240, i1 false), !alias.scope !33584, !noalias !33586
  store i64 5, ptr %0, align 8, !alias.scope !33587, !noalias !33588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33579
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b), !noalias !33576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2H_10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutBS_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = tail call { ptr, ptr } @_RNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB5_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB26_9get_rangeBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBN_11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = tail call { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB6_11ObjectStore9get_rangeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBN_11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = tail call { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB6_11ObjectStore9get_rangeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBN_11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = tail call { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB6_11ObjectStore9get_rangeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtBN_11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = tail call { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB6_11ObjectStore9get_rangeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtBH_13DeltaDataSink23create_converted_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE8call_mutBN_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33592)
  %i.d = load i64, ptr %2, align 8, !range !58, !alias.scope !33592, !noalias !33589, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !33594
  br label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB4_13DeltaDataSink23create_converted_stream0Ba_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !33589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33598
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !33598
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noundef nonnull %.val, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.f, !noalias !33600

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.m, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #46
          to label %bb.o unwind label %bb.n, !noalias !33600

bb.g:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.b, align 16, !range !1449, !noalias !33598, !noundef !4
  %.not.i.i = icmp eq i64 %i.j, -9223372036854775711
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !33598
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !33601
  %i.k = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 96, i64 noundef range(i64 8, 17) 16) #40, !noalias !33601 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.m, !prof !52

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #48
          to label %.noexc.i.i unwind label %bb.j, !noalias !33600

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #46
          to label %.body.i.i unwind label %bb.k, !noalias !33600

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33600
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !33604
  br label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB6_13DeltaDataSink23create_converted_stream00Bc_.exit.i

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !33600
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.q, align 8, !alias.scope !33605, !noalias !33604
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !33605, !noalias !33604
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @217, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !33605, !noalias !33604
  br label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB6_13DeltaDataSink23create_converted_stream00Bc_.exit.i

bb.n:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33600
  unreachable

bb.o:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB6_13DeltaDataSink23create_converted_stream00Bc_.exit.i: ; preds = %bb.m, %bb.l
  %storemerge.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.m ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !33605, !noalias !33604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33598
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !33600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33594
  br label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB4_13DeltaDataSink23create_converted_stream0Ba_.exit

_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB4_13DeltaDataSink23create_converted_stream0Ba_.exit: ; preds = %bb.b, %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB6_13DeltaDataSink23create_converted_stream00Bc_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBK_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB2d_16list_with_offset0INtB4_6FnMut1NtBM_10ObjectMetaE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RNvNtCsjyY8HP3IvQ6_12object_store6prefix10strip_meta(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBK_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB2d_4list0INtB4_6FnMut1NtBM_10ObjectMetaE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RNvNtCsjyY8HP3IvQ6_12object_store6prefix10strip_meta(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB27_13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBM_4path4PathNtBM_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33606)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33609
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33611, !noalias !33606
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33611, !noalias !33606
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2F_13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtB2H_4path4PathNtB2H_5ErrorEE8call_mutBQ_(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33612)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33615
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33617, !noalias !33612
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33617, !noalias !33612
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33618)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33621
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33623, !noalias !33618
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33623, !noalias !33618
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33624)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33627
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33629, !noalias !33624
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33629, !noalias !33624
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33630)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33633
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33635, !noalias !33630
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33635, !noalias !33630
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33636)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !33639
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !33641, !noalias !33636
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !33641, !noalias !33636
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNcNtINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB1m_5ErrorE2Ok0INtB4_6FnMut1B1i_E8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 32)) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33645)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !33648
  store i64 -9223372036854775790, ptr %0, align 8, !alias.scope !33651, !noalias !33652
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4_13CreateBuilderNtB6_9Operation9log_store(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(368) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1348, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1349) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB4_13MetricDetailsNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 16 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33653
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33653
  %i.f = load i64, ptr %i.c, align 8, !range !58, !noalias !33653, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noalias !33653, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !33653
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #48, !noalias !33653
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !33653, !nonnull !4, !noundef !4
  %i.m = icmp samesign ugt i64 %i.i, 127
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33653
  store i64 %i.i, ptr %i.d, align 8, !noalias !33653
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !noalias !33653
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !noalias !33653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33657
  store ptr %i.d, ptr %i.b, align 8, !noalias !33657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33661
  invoke void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j, !noalias !33653

.noexc.i:                                         ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !noalias !33661
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !33661
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !33661
  %i.p = invoke noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryedECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %.noexc3.i unwind label %bb.j, !noalias !33665 ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %.noexc3.i
  %i.q = load i8, ptr %i.a, align 8, !range !178, !alias.scope !33666, !noalias !33669, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.sink.split.i.i.i, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = invoke noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %.noexc4.i unwind label %bb.j, !noalias !33665 ; 2 uses

.noexc4.i:                                        ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.not30.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not30.i.i.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.noexc4.i
  %i.u = load i8, ptr %i.a, align 8, !range !178, !alias.scope !33672, !noalias !33675, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.sink.split.i.i.i, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit36.i.i.i

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit36.i.i.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = invoke noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %.noexc5.i unwind label %bb.j, !noalias !33665 ; 2 uses

.noexc5.i:                                        ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldxECs14kWLkQVSKO_14deltalake_core.exit36.i.i.i
  %.not31.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not31.i.i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.noexc5.i
  %i.y = load i8, ptr %i.a, align 8, !range !178, !alias.scope !33678, !noalias !33681, !noundef !4
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.sink.split.i.i.i, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldjECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

end_hunk_4
