inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer12trace_future:bb.a
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtBA_3num7nonzero7NonZeroyEENtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !3
  ret i64 %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32842
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !32840, !noalias !32837, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !32842
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !noalias !32842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32842
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.g unwind label %bb.f, !noalias !32837

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  %i.h = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !32843
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i, !noalias !32837

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32842
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.h, !noalias !32837

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.d unwind label %bb.i, !noalias !32837

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32837
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn.i

_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !32840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32842
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.o, align 8, !alias.scope !32837, !noalias !32840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !32840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32842
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0INtB2_7FnOnce1INtNtB2w_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32854
  store ptr %1, ptr %i.c, align 8, !noalias !32856
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !32856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32856
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !alias.scope !32858, !noalias !32859, !nonnull !3
  invoke void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %1)
          to label %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b, !noalias !32859

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #50
          to label %common.resume.i unwind label %bb.c, !noalias !32859

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32859
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.i = load i128, ptr %i.b, align 16, !noalias !32856, !noundef !3
  %i.j = icmp eq i128 %i.i, -37062676355244807409671512867870684984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32854
  br i1 %i.j, label %_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32854
  store ptr %1, ptr %i.a, align 8, !noalias !32854
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.k, align 8, !noalias !32854
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 48, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #53
          to label %bb.f unwind label %bb.e, !noalias !32860

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %common.resume.i unwind label %bb.g, !noalias !32860

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32860
  unreachable

_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !32848
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #45, !noalias !32860
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayNtB2_3Any7type_idBx_(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1197, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1198, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataNtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1199, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtB2_3Any7type_idBB_(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1200, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonNtB2_3Any7type_idBB_(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1201, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @27, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator4nextB5G_(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 16              ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.63.i.sroa.7.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.63.i.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !noundef !3
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32861)
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !32861, !noalias !32864, !nonnull !3, !noundef !3
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !32861, !noalias !32864, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store ptr %i.u, ptr %i.g, align 8, !alias.scope !32861, !noalias !32864
  %.sroa.0.0.copyload21 = load i64, ptr %i.s, align 16, !noalias !32861 ; 2 uses
  %.not10 = icmp eq i64 %.sroa.0.0.copyload21, 37
  br i1 %.not10, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.u

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32866)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !32869, !noalias !32876, !nonnull !3, !noundef !3 ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8, !alias.scope !32869, !noalias !32876, !nonnull !3, !noundef !3
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %1, align 8, !alias.scope !32869, !noalias !32876
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !32878, !noalias !32876, !nonnull !3, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !32878, !noalias !32876, !nonnull !3, !noundef !3
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  store ptr %i.ac, ptr %i.i, align 8, !alias.scope !32878, !noalias !32876
  %.val.i = load ptr, ptr %i.v, align 8, !noalias !32881 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32882)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32885
  %i.ad = call noundef align 16 dereferenceable_or_null(224) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 224, i64 noundef range(i64 1, 17) 16) #45, !noalias !32885 ; 12 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, !prof !4

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 224) #53, !noalias !32885
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32885
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !32882, !noalias !32887, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !32882, !noalias !32887, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32885
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit, !noalias !32885

.loopexit:                                        ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i
  %i.aj = load i64, ptr %i.a, align 8, !range !5, !noalias !32885, !noundef !3
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = load i64, ptr %2, align 8, !range !140, !noalias !32885, !noundef !3 ; 3 uses
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %3, align 8, !noalias !32885
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.am) #53
          to label %bb.t unwind label %.loopexit.split-lp, !noalias !32885

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %3, align 8, !noalias !32885, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = icmp ule i64 %i.ai, %i.al
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32885
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  store i64 %i.al, ptr %i.c, align 8, !noalias !32885
  store ptr %i.an, ptr %i.k, align 8, !noalias !32885
  store i64 %i.ai, ptr %i.l, align 8, !noalias !32885
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.m unwind label %.loopexit, !noalias !32885

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ag, i64 %i.ai, i1 false), !noalias !32885
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32885
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq)
          to label %bb.o unwind label %bb.n, !noalias !32887

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #50
          to label %bb.s unwind label %bb.r, !noalias !32887

bb.o:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 16, !range !885, !noalias !32885, !noundef !3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 37
  %.sroa.63.i.sroa.0.0.copyload9.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.6.0.copyload12.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 16, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.7.0.copyload15.i = load ptr, ptr %i.m, align 8, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.8.0.copyload18.i = load i64, ptr %.sroa.63.i.sroa.7.0..sroa_idx14.i, align 16, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.9.0.copyload21.i = load i64, ptr %.sroa.63.i.sroa.8.0..sroa_idx17.i, align 8, !noalias !32885 ; 2 uses
  br i1 %i.at, label %bb.p, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32885
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit unwind label %bb.q, !noalias !32887

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71: ; preds = %bb.o
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.611.0..sroa_idx.i.i, i64 64, i1 false), !noalias !32887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32885
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store i64 %.sroa.63.i.sroa.0.0.copyload9.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !32887
  %.sroa.63.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 %.sroa.63.i.sroa.6.0.copyload12.i, ptr %.sroa.63.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !32887
  %.sroa.63.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr %.sroa.63.i.sroa.7.0.copyload15.i, ptr %.sroa.63.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !32887
  %.sroa.63.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store i64 %.sroa.63.i.sroa.8.0.copyload18.i, ptr %.sroa.63.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !32887
  %.sroa.63.i.sroa.9.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store i64 %.sroa.63.i.sroa.9.0.copyload21.i, ptr %.sroa.63.i.sroa.9.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !32887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ad, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !32887
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 %i.as, ptr %i.au, align 16, !noalias !32887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32885
  br label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32887
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.aa, %bb.ae, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.s ], [ %i.bi, %bb.ae ], [ %i.bd, %bb.aa ], [ %i.ax, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.n
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.ar, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 16) #45, !noalias !32887
  br label %common.resume

bb.t:                                             ; preds = %bb.i
  unreachable

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32885
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 16) #45, !noalias !32887
  switch i64 %.sroa.63.i.sroa.0.0.copyload9.i, label %bb.ab [
    i64 21, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
    i64 20, label %bb.ac
  ]

bb.u:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.7.0..sroa_idx22.le = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx22.le, i64 104, i1 false)
  store i64 %.sroa.0.0.copyload21, ptr %0, align 16
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.c, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.z, %bb.ab, %bb.u
  ret void

bb.w:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  store ptr null, ptr %i.e, align 8
  br label %bb.d

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread: ; preds = %bb.d, %bb.e, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  %i.ay = load ptr, ptr %i.n, align 8, !noundef !3
  %.not12 = icmp eq ptr %i.ay, null
  br i1 %.not12, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !32888)
  %i.az = load ptr, ptr %i.o, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3
  %i.ba = load ptr, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16: ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.bc, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891
  %.sroa.048.0.copyload49 = load i64, ptr %i.ba, align 16, !noalias !32888 ; 2 uses
  %.not13 = icmp eq i64 %.sroa.048.0.copyload49, 37
  br i1 %.not13, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %bb.z

bb.y:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  store i64 38, ptr %0, align 16
  br label %bb.v

bb.z:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  %.sroa.750.0..sroa_idx51.le = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.750.0..sroa_idx51.le, i64 104, i1 false)
  store i64 %.sroa.048.0.copyload49, ptr %0, align 16
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread: ; preds = %bb.x, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18 unwind label %bb.aa

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  store ptr null, ptr %i.n, align 8
  br label %.backedge

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  store i64 37, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.63.i.sroa.0.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.63.i.sroa.6.0.copyload12.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.63.i.sroa.7.0.copyload15.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.63.i.sroa.8.0.copyload18.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.63.i.sroa.9.0.copyload21.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  %.sroa.727.179 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.6.0.copyload12.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  %.sroa.9.178 = phi ptr [ %i.ad, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.7.0.copyload15.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 6 uses
  %.sroa.10.177 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.8.0.copyload18.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.178) ]
  %i.be = icmp ult i64 %.sroa.10.177, 82351536043346213
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %.sroa.9.178, i64 %.sroa.10.177 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !alias.scope !32893, !noundef !3
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ac, %bb.ad
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator9size_hintB5G_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val24 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val25 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = ptrtoint ptr %.val25 to i64
  %i.g = ptrtoint ptr %.val24 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !noundef !3
  %.not20 = icmp eq ptr %i.k, null
  br i1 %.not20, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val23 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = ptrtoint ptr %.val23 to i64
  %i.o = ptrtoint ptr %.val to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 112                 ; 2 uses
  %i.r = add nuw nsw i64 %i.q, %.sroa.3.0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.sroa.311.0 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %.sroa.09.0 = phi i64 [ %i.r, %bb.d ], [ %.sroa.3.0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32902)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !32905, !noalias !32906, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !32905, !noalias !32906, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32910
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXsS_NtNtCsbpG6u9KFjWn_8indexmap3map4iterINtB5_6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t), !noalias !32906
  %i.u = load i64, ptr %i.a, align 8, !noalias !32910, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !5, !noalias !32910, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !32910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32910
  %i.z = ptrtoint ptr %.val14.i.i.i to i64
  %i.aa = ptrtoint ptr %.val.i.i.i to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.w to i1
  %.sroa.0.0.i15.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ac)
  %.sroa.7.0.i.i.i = select i1 %i.ae, i64 %.sroa.0.0.i15.i.i.i, i64 %i.ac
  %i.af = icmp eq i64 %.sroa.7.0.i.i.i, 0
  %.sroa.015.0 = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = add nuw nsw i64 %.sroa.311.0, %.sroa.3.0
  %spec.select22 = zext i1 %.sroa.015.0 to i64
  store i64 %.sroa.09.0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select22, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 16 dereferenceable(496) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 16               ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.12.i = alloca [72 x i8], align 8         ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.548.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.651.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.1062.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.1165.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.1371.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.af = load i64, ptr %i.h, align 16, !range !724, !noundef !3
  %.not = icmp eq i64 %i.af, 3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 16 dereferenceable(160) %1)
  %i.ag = load i64, ptr %i.g, align 16, !range !21579, !noundef !3
  %.not17 = icmp eq i64 %i.ag, -9223372036854775742
  br i1 %.not17, label %bb.ag, label %bb.af

bb.d:                                             ; preds = %bb.aj, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i), !noalias !32914
  %i.ah = load i64, ptr %i.e, align 16, !range !21579, !noalias !32916, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.ah, -9223372036854775742
  br i1 %.not.i, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !32916 ; 8 uses
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 16, !noalias !32916 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32917)
  %.not.i.i = icmp eq i64 %i.ah, -9223372036854775743
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.66.0..sroa_idx.i, i64 72, i1 false), !noalias !32916
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i) ]
  %i.ai = load i8, ptr %i.j, align 16, !range !136, !alias.scope !32920, !noalias !32921, !noundef !3
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.as

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.k, align 16, !alias.scope !32920, !noalias !32921, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 88686269585142076
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %bb.i, label %bb.as
end_hunk_0
