Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.05?download=true
inline.NumInlined: 3543
inline.NumDeleted: 1533
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.b, %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtNtBG_7catalog8versions2v36schema5table15TableDefinitionEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtNtNtBG_7catalog8versions2v36schema7trigger17TriggerDefinitionEEBG_(ptr noalias noundef align 8 dereferenceable(192) %i.h) #47
          to label %.body unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtNtNtBG_7catalog8versions2v36schema7trigger17TriggerDefinitionEEBG_(ptr noalias noundef align 8 dereferenceable(192) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEBN_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.i, %bb.d ]
  %i.m = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEBN_.exit: ; preds = %bb.f
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEBN_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit2

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEBN_.exit, %bb.k, %bb.l
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaRNtNtBG_5alloc6GlobalEEB1l_.exit: ; preds = %bb.j, %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsp_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE11from_box_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull captures(address) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef %1)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsp_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceE19allocate_for_ptr_in0Cs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.c:                                             ; preds = %.noexc
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39
  %i.f = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #39
  br label %_RNCNvMsp_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceE19allocate_for_ptr_in0Cs844E4pPEVZX_17influxdb3_catalog.exit.i

_RNCNvMsp_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceE19allocate_for_ptr_in0Cs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %_RNCNvMsp_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceE19allocate_for_ptr_in0Cs844E4pPEVZX_17influxdb3_catalog.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #45
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNCNvMsp_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceE19allocate_for_ptr_in0Cs844E4pPEVZX_17influxdb3_catalog.exit.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 1 %0, i64 %1, i1 false)
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropeERNtNtBG_5alloc6GlobalEECs844E4pPEVZX_17influxdb3_catalog.exit, label %_RNvXs0_NtCs4NRVxsYgnAr_4core5allocRNtNtCscdodAO9FK5_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs844E4pPEVZX_17influxdb3_catalog.exit.i.i

_RNvXs0_NtCs4NRVxsYgnAr_4core5allocRNtNtCscdodAO9FK5_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #39
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropeERNtNtBG_5alloc6GlobalEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropeERNtNtBG_5alloc6GlobalEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvXs0_NtCs4NRVxsYgnAr_4core5allocRNtNtCscdodAO9FK5_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs844E4pPEVZX_17influxdb3_catalog.exit.i.i, %bb.e
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %1, 1
  ret { ptr, i64 } %i.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %bb.f
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs844E4pPEVZX_17influxdb3_catalog.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %1, i64 noundef 1) #39
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs844E4pPEVZX_17influxdb3_catalog.exit
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs844E4pPEVZX_17influxdb3_catalog.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39
  %i.f = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #39
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs844E4pPEVZX_17influxdb3_catalog.exit.i.i

_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCs844E4pPEVZX_17influxdb3_catalog.exit, !prof !12

bb.d:                                             ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #45
  unreachable

_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef range(i64 16, 1697) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39
  %i.a = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #39 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([808 x i8]) align 8 captures(none) dereferenceable(808) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.13.i.i = alloca [12 x i8], align 4       ; 4 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 20 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [152 x i8], align 16              ; 19 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [144 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [136 x i8], align 8               ; 15 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [104 x i8], align 8              ; 4 uses
  %i.ae = alloca [128 x i8], align 8              ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 13 uses
  %i.ag = alloca [1232 x i8], align 8             ; 4 uses
  %i.ah = alloca [1304 x i8], align 8             ; 4 uses
  %i.ai = alloca [88 x i8], align 8               ; 6 uses
  %i.aj = alloca [1232 x i8], align 8             ; 6 uses
  %.sroa.67.i = alloca [1216 x i8], align 8       ; 4 uses
  %i.ak = alloca [1232 x i8], align 8             ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [1232 x i8], align 8             ; 7 uses
  %.sroa.6.i = alloca [80 x i8], align 8          ; 6 uses
  %i.ap = alloca [1232 x i8], align 8             ; 10 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [1232 x i8], align 8             ; 4 uses
  %i.as = alloca [1304 x i8], align 8             ; 16 uses
  %i.at = alloca [48 x i8], align 8               ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 4 uses
  %i.av = alloca [144 x i8], align 8              ; 16 uses
  %i.aw = alloca [48 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [128 x i8], align 8              ; 4 uses
  %i.bb = alloca [56 x i8], align 8               ; 5 uses
  %i.bc = alloca [128 x i8], align 8              ; 4 uses
  %i.bd = alloca [192 x i8], align 8              ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [296 x i8], align 8              ; 4 uses
  %i.bj = alloca [808 x i8], align 8              ; 4 uses
  %i.bk = alloca [48 x i8], align 8               ; 5 uses
  %i.bl = alloca [1232 x i8], align 8             ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [1232 x i8], align 8             ; 5 uses
  %.sroa.7 = alloca [80 x i8], align 8            ; 7 uses
  %.sroa.10 = alloca [1144 x i8], align 8         ; 5 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 7 uses
  %i.bp = alloca [1232 x i8], align 8             ; 17 uses
  %i.bq = alloca [24 x i8], align 8               ; 13 uses
  %i.br = alloca [8 x i8], align 8                ; 6 uses
  %i.bs = alloca [48 x i8], align 8               ; 5 uses
  %i.bt = alloca [192 x i8], align 8              ; 4 uses
  %i.bu = alloca [192 x i8], align 8              ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [440 x i8], align 8              ; 14 uses
  %i.bx = alloca [32 x i8], align 8               ; 5 uses
  %i.by = alloca [320 x i8], align 8              ; 6 uses
  %i.bz = alloca [808 x i8], align 8              ; 17 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 8 uses
  %i.ch = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ci = icmp ult i64 %i.ch, 3
  br i1 %i.ci, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.cj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cj, label %bb.c [
    i8 0, label %bb.k
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !41

bb.c:                                             ; preds = %bb.b
  %i.ck = tail call noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE) ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.ck, %bb.c ], [ %i.cj, %bb.b ], [ %i.cj, %bb.b ]
  %i.cm = load ptr, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, align 8, !nonnull !11, !align !13, !noundef !11
  %i.cn = tail call noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cm, i8 noundef %.sroa.06.0)
  br i1 %i.cn, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.co = load ptr, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store ptr @142, ptr %i.ce, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr inttoptr (i64 65 to ptr), ptr %i.cq, align 8
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @40, ptr %i.cr, align 8
  store i64 1, ptr %i.cg, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cf, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.cp, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg)
  %i.cs = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5181
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.f, label %_RNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate0B9_.exit

bb.f:                                             ; preds = %bb.e
  %i.cu = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5181 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 6
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp samesign ugt i64 %i.cu, 2
  br i1 %i.cw, label %bb.g, label %_RNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate0B9_.exit

bb.g:                                             ; preds = %bb.f
  %i.cx = load ptr, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, align 8, !noalias !5181, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5181
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !11, !noundef !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load i64, ptr %i.da, align 8, !noundef !11
  store i64 3, ptr %i.be, align 8, !noalias !5181
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.cz, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5181
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.db, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5181
  %i.dc = call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.dd = extractvalue { ptr, ptr } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dc, 1      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !11, !nonnull !11
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be), !inline_history !5035
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cx, ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.de, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5181
  br label %_RNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate0B9_.exit

_RNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate0B9_.exit: ; preds = %bb.e, %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.l, %bb.k, %_RNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate0B9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !11
  %i.dm = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %bb.p

bb.k:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %i.do = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.dq = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 6
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp samesign ugt i64 %i.dq, 2
  br i1 %i.ds, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.dt = load ptr, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !11, !noundef !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !11
  store i64 3, ptr %i.cd, align 8
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.dv, ptr %.sroa.337.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.dx, ptr %.sroa.538.0..sroa_idx, align 8
  %i.dy = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !11, !nonnull !11
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.ee = load ptr, ptr @_RNvNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate10___CALLSITE, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr @142, ptr %i.ca, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr inttoptr (i64 65 to ptr), ptr %i.eg, align 8
  store ptr %i.ca, ptr %i.cb, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr @40, ptr %i.eh, align 8
  store i64 1, ptr %i.cc, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cb, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 1, ptr %.sroa.541.0..sroa_idx, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ef, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dt, ptr noundef nonnull %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.j

bb.p:                                             ; preds = %bb.j
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog3new(ptr noalias noundef nonnull sret([808 x i8]) align 8 captures(none) dereferenceable(808) %i.bz, ptr noundef nonnull %i.dj, i64 noundef %i.dl, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.experimental.noalias.scope.decl(metadata !5182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5183
  call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  call void @llvm.experimental.noalias.scope.decl(metadata !5185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5186
  invoke void @_RNvXNtCs96Uix8yqi9Q_8indexmap3mapINtB2_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEENtNtB2G_5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.ek)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5186
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXs1_NtCsaaj5M71uUq9_5bimap4hashINtB5_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1X_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.el)
          to label %_RNvXs5_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_.exit.i unwind label %bb.q, !noalias !5187

bb.q:                                             ; preds = %.noexc
  %i.em = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate:bb.a

_RNvXs5_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_.exit.i: ; preds = %.noexc
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.val.i.i = load i64, ptr %i.eo, align 8, !alias.scope !5188, !noalias !5187, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i64 56, i1 false), !noalias !5189
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ep, ptr noundef nonnull align 8 dereferenceable(128) %i.ba, i64 128, i1 false), !noalias !5189
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bd, i64 184
  store i64 %.val.i.i, ptr %i.eq, align 8, !alias.scope !5184, !noalias !5189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5183
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 576
  invoke void @_RNvXs1_NtCsaaj5M71uUq9_5bimap4hashINtB5_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1W_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.er)
          to label %bb.v unwind label %bb.s, !noalias !5190

bb.s:                                             ; preds = %_RNvXs5_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEBG_(ptr noalias noundef align 8 dereferenceable(192) %i.bd) #47
          to label %.body unwind label %bb.t, !noalias !5190

bb.t:                                             ; preds = %bb.s
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5190
  unreachable

bb.u:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit209, %.loopexit.split-lp210, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.gq, %bb.gn, %.body150, %.thread163, %bb.gy, %bb.bk, %bb.bc, %bb.bd, %bb.ap, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.aw, %bb.s, %bb.q, %.thread173, %bb.ad, %.body67
  %.pn55.pn = phi { ptr, i32 } [ %i.mb, %bb.bk ], [ %.pn53172, %.thread173 ], [ %eh.lpad-body68, %.body67 ], [ %i.kn, %bb.aw ], [ %i.fi, %bb.ad ], [ %i.es, %bb.s ], [ %i.em, %bb.q ], [ %.pn, %bb.bc ], [ %lpad.loopexit.split-lp220, %.loopexit.split-lp.loopexit.split-lp ], [ %i.kz, %bb.as ], [ %i.kw, %bb.ap ], [ %i.kn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ %.pn, %bb.bd ], [ %.pn55166, %bb.gy ], [ %.pn55166, %.thread163 ], [ %i.acw, %bb.gq ], [ %i.act, %bb.gn ], [ %eh.lpad-body151, %.body150 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit219, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v212InnerCatalogEBJ_(ptr noalias noundef align 8 dereferenceable(808) %i.bz) #47
          to label %bb.gz unwind label %bb.gb

.loopexit:                                        ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEE3newB17_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE6expectBN_.exit, %bb.bh
  %lpad.loopexit219 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.gc, %bb.p, %bb.bo, %bb.ax, %.loopexit201, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog15TokenRepositoryEBF_.exit
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_RNvXs5_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.by, ptr noundef nonnull align 8 dereferenceable(192) %i.bd, i64 192, i1 false), !noalias !5182
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.eu, ptr noundef nonnull align 8 dereferenceable(128) %i.bc, i64 128, i1 false), !noalias !5182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5183
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bz, i64 384 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ev)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bz, i64 576
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(128) %i.ex) #47
          to label %.body67 unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 576
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEIBQ_INtNtCscdodAO9FK5_5alloc3vec3VechEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ey)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bz, i64 640
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc3vec3VechEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fa)
          to label %.body67 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bz, i64 640
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc3vec3VechEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog15TokenRepositoryEBF_.exit unwind label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.w, %bb.y, %bb.ab
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.fe, %bb.ab ], [ %i.ez, %bb.y ], [ %i.ew, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ev, ptr noundef nonnull align 8 dereferenceable(320) %i.by, i64 320, i1 false)
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog15TokenRepositoryEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtCscdodAO9FK5_5alloc3vec3VechENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2p_EECs844E4pPEVZX_17influxdb3_catalog.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ev, ptr noundef nonnull align 8 dereferenceable(320) %i.by, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke void @_RNvXNtCsc96bKABWO34_9hashbrown3mapINtB2_7HashMapNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdIBx_NtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB1s_20PermissionAttributesEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ff)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog15TokenRepositoryEBF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bz, i64 720 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bz, i64 752 ; 2 uses
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdINtNtBa_3map7HashMapNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions13PermissionKeyNtB2j_20PermissionAttributesEENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fh, i64 noundef 40, i64 noundef 16)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val = load ptr, ptr %i.fj, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val58 = load i64, ptr %i.fk, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %.val58, 24
  %i.fl = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.fm = icmp eq i64 %.val58, 0
  br i1 %i.fm, label %._crit_edge365, label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bw, i64 416
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bw, i64 400
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bw, i64 408
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bw, i64 384
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bw, i64 392
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bw, i64 432
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 420
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bw, i64 433
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bz, i64 192 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 121 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.as, i64 1280
  %i.gn = getelementptr inbounds nuw i8, ptr %i.as, i64 1232
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1240
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1248
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1264
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1272
  %i.go = getelementptr inbounds nuw i8, ptr %i.as, i64 1288
  %i.gp = getelementptr inbounds nuw i8, ptr %i.as, i64 1296
  %i.gq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ap, i64 1222
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1208
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.67.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bp, i64 1204 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bp, i64 1152 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bp, i64 1160 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.hd = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.he = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.hi = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bp, i64 752
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bp, i64 936
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 140
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 142
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.id = getelementptr inbounds nuw i8, ptr %i.bp, i64 944
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bp, i64 1128
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.bl, i64 1204
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.819.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 149
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.iq = getelementptr inbounds nuw i8, ptr %i.e, i64 150
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.7.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.9.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.10.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.11.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.13.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.15.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 165
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  %2 = insertelement <4 x ptr> poison, ptr %i.bp, i64 2
  %3 = insertelement <4 x ptr> poison, ptr %i.bp, i64 2
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph364, %.loopexit214
  %.sroa.0.0362 = phi ptr [ %.val, %.lr.ph364 ], [ %i.it, %.loopexit214 ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0362, i64 24 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0362, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.iv = load ptr, ptr %.sroa.0.0362, align 8, !nonnull !11, !noundef !11 ; 11 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 432
  %i.ix = load i32, ptr %i.iw, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 416 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !nonnull !11, !noundef !11
  %i.ja = atomicrmw add ptr %i.iz, i64 1 monotonic, align 8
  %i.jb = icmp slt i64 %i.ja, 0
  br i1 %i.jb, label %bb.bb, label %bb.ba

._crit_edge365:                                   ; preds = %.loopexit214, %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.jd = load i32, ptr %i.jc, align 8, !noundef !11
  %i.je = getelementptr inbounds nuw i8, ptr %i.bz, i64 376
  store i32 %i.jd, ptr %i.je, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5191)
  call void @llvm.experimental.noalias.scope.decl(metadata !5192)
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !5191, !noalias !5192, !nonnull !11, !noundef !11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !5191, !noalias !5192, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ji, 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.idx.i
  %i.jk = icmp eq i64 %i.ji, 0
  br i1 %i.jk, label %.loopexit201, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge365
  %i.jl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEE6expectBN_.exit.i, %.lr.ph.i
  %.sroa.0.017.i = phi ptr [ %i.jg, %.lr.ph.i ], [ %i.jp, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEE6expectBN_.exit.i ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5193
  %i.jq = load ptr, ptr %.sroa.0.017.i, align 8, !noalias !5191, !nonnull !11, !noundef !11 ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 56 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !5191, !nonnull !11, !noundef !11
  %i.ju = atomicrmw add ptr %i.jt, i64 1 monotonic, align 8, !noalias !5191
  %i.jv = icmp slt i64 %i.ju, 0
  br i1 %i.jv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.jx = load ptr, ptr %i.js, align 8, !noalias !5191, !nonnull !11, !noundef !11 ; 2 uses
  %i.jy = load i64, ptr %i.jw, align 8, !noalias !5191, !noundef !11 ; 2 uses
  store ptr %i.jx, ptr %i.az, align 8, !noalias !5193
  store i64 %i.jy, ptr %i.jl, align 8, !noalias !5193
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 96 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !noalias !5191, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5193
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 72 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !5191, !nonnull !11, !noundef !11
  %i.kd = atomicrmw add ptr %i.kc, i64 1 monotonic, align 8, !noalias !5191
  %i.ke = icmp slt i64 %i.kd, 0
  br i1 %i.ke, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  %i.kg = load ptr, ptr %i.kb, align 8, !noalias !5191, !nonnull !11, !noundef !11 ; 3 uses
  %i.kh = load i64, ptr %i.kf, align 8, !noalias !5191, !noundef !11 ; 2 uses
  store ptr %i.kg, ptr %i.ay, align 8, !noalias !5193
  store i64 %i.kh, ptr %i.jm, align 8, !noalias !5193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5193
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !5191, !nonnull !11, !noundef !11 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !5191, !noundef !11
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kl
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2G_6cloned6ClonedINtNtNtB2K_5slice4iter4IterNtNtB16_2v38NodeModeEENvYB12_INtNtB2K_7convert4FromB4d_E4fromEE9from_iterB1a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.km)
          to label %bb.an unwind label %bb.al, !noalias !5191

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = atomicrmw sub ptr %i.kg, i64 1 release, align 8, !noalias !5194
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.av, !noalias !5191

bb.an:                                            ; preds = %bb.aj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !5191, !noundef !11
  %i.ks = load <2 x i64>, ptr %i.jr, align 8, !noalias !5191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i71, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5193
  %i.kt = load i32, ptr %i.jz, align 8, !noalias !5191, !noundef !11
  store i64 1, ptr %i.av, align 8, !noalias !5193
  store i64 1, ptr %i.jn, align 8, !noalias !5193
  store <2 x i64> %i.ks, ptr %i.jo, align 8, !noalias !5193
  store ptr %i.jx, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !5193
  store i64 %i.jy, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !5193
  store ptr %i.kg, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !5193
  store i64 %i.kh, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5193
  store i64 %i.kr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !5193
  store ptr null, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !5193
  store ptr null, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !5193
  store i64 0, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !5193
  store i32 %i.ka, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !5193
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5195
  %i.ku = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #39, !noalias !5195 ; 3 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ao, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEE3newB17_.exit.i, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #45
          to label %.noexc12.i unwind label %bb.ap, !noalias !5191

.noexc12.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(128) %i.jo)
          to label %.body unwind label %bb.aq, !noalias !5191

bb.aq:                                            ; preds = %bb.ap
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5191
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEE3newB17_.exit.i: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ku, ptr noundef nonnull align 8 dereferenceable(144) %i.av, i64 144, i1 false), !noalias !5191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5193
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNtNtNtNtB8_7catalog8versions2v214NodeDefinitionE6insertINtNtCscdodAO9FK5_5alloc4sync3ArcB1K_EEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(808) %i.bz, i32 noundef %i.kt, ptr noundef nonnull %i.ku)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214NodeDefinitionEE3newB17_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5196)
  %i.ky = load i32, ptr %i.aw, align 8, !range !51, !alias.scope !5196, !noalias !5193, !noundef !11
  %.not.i.i = icmp eq i32 %i.ky, -1
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEE6expectBN_.exit.i, label %bb.ar, !prof !10

bb.ar:                                            ; preds = %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !noalias !5193
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 37, ptr noundef nonnull %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %bb.at unwind label %bb.as, !noalias !5198

bb.as:                                            ; preds = %bb.ar
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.au) #47
          to label %.body unwind label %bb.au, !noalias !5198

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5198
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEE6expectBN_.exit.i: ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5193
  %i.lb = icmp eq ptr %i.jp, %i.jj
  br i1 %i.lb, label %.loopexit201, label %bb.ag

bb.av:                                            ; preds = %bb.aw, %bb.am
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(808) %i.bj, i64 808, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit122, %bb.ay
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v212InnerCatalogEBJ_(ptr noalias noundef align 8 dereferenceable(808) %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  ret void

bb.ba:                                            ; preds = %bb.af
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iv, i64 424
  %i.lm = load ptr, ptr %i.iy, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.ln = load i64, ptr %i.ll, align 8, !noundef !11 ; 2 uses
  store ptr %i.lm, ptr %i.bv, align 8
  store i64 %i.ln, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtB7_7catalog8versions2v215TableDefinitionE3newB7_(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.bu)
          to label %bb.bg unwind label %bb.be

bb.bb:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.bf, %bb.be
  %.pn = phi { ptr, i32 } [ %i.lr, %bb.bf ], [ %i.lq, %bb.be ] ; 2 uses
  %i.lo = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !5203
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.bd, label %.body

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %.body unwind label %bb.gb

bb.be:                                            ; preds = %bb.ba
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bf:                                            ; preds = %bb.bg
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtBG_7catalog8versions2v215TableDefinitionEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bu) #47
          to label %bb.bc unwind label %bb.gb

bb.bg:                                            ; preds = %bb.ba
  %i.ls = getelementptr inbounds nuw i8, ptr %i.iv, i64 400
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.iv, i64 408
  %i.lv = load i32, ptr %i.lu, align 8, !range !38, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke void @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtB7_3log8versions2v417TriggerDefinitionE3newB7_(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.bt)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  %.not.i = icmp eq i32 %i.lv, -1
  %..i = select i1 %.not.i, i64 undef, i64 %i.lt
  %i.lw = getelementptr inbounds nuw i8, ptr %i.iv, i64 448
  %i.lx = load i8, ptr %i.lw, align 8, !range !26, !noundef !11
  %i.ly = getelementptr inbounds nuw i8, ptr %i.iv, i64 436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fv, ptr noundef nonnull align 4 dereferenceable(12) %i.ly, i64 12, i1 false)
  store i32 %i.ix, ptr %i.fo, align 8
  store ptr %i.lm, ptr %i.fp, align 8
  store i64 %i.ln, ptr %i.fq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bw, ptr noundef nonnull align 8 dereferenceable(192) %i.bu, i64 192, i1 false)
  store i64 %..i, ptr %i.fr, align 8
  store i32 %i.lv, ptr %i.fs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ft, ptr noundef nonnull align 8 dereferenceable(192) %i.bt, i64 192, i1 false)
  store i8 %i.lx, ptr %i.fu, align 8
  store i8 -1, ptr %i.fw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.lz = load i32, ptr %i.iu, align 8, !noundef !11
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtB8_7catalog8versions2v214DatabaseSchemaE6insertB1I_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bs, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.fx, i32 noundef %i.lz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %i.bw)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !5204)
  %i.ma = load i32, ptr %i.bs, align 8, !range !51, !alias.scope !5204, !noundef !11
  %.not.i78 = icmp eq i32 %i.ma, -1
  br i1 %.not.i78, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE6expectBN_.exit, label %bb.bj, !prof !10

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bs, i64 48, i1 false)
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 37, ptr noundef nonnull %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
          to label %bb.bl unwind label %bb.bk, !noalias !5204

bb.bk:                                            ; preds = %bb.bj
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at) #47
          to label %.body unwind label %bb.bm, !noalias !5204

bb.bl:                                            ; preds = %bb.bj
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5204
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE6expectBN_.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.md = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtB7_7catalog8versions2v214DatabaseSchemaE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.fx, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.iu)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit ; 8 uses

bb.bn:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE6expectBN_.exit
  %.not50 = icmp eq ptr %i.md, null
  br i1 %.not50, label %bb.bo, label %bb.bq, !prof !12

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #45
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  unreachable

.thread173:                                       ; preds = %.thread177
  br i1 %.sroa.031.1171, label %.thread163, label %.body

.loopexit222:                                     ; preds = %bb.bq
  %lpad.loopexit224 = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

.loopexit.split-lp223:                            ; preds = %bb.bs, %bb.ed
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

bb.bq:                                            ; preds = %bb.bn
  store ptr %i.md, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.me = getelementptr i8, ptr %i.iv, i64 64
  %.val59 = load i64, ptr %i.me, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, i64 noundef %.val59, i1 noundef zeroext false, i64 noundef 8, i64 noundef 1232)
          to label %bb.br unwind label %.loopexit222

bb.br:                                            ; preds = %bb.bq
  %i.mf = load i64, ptr %i.bg, align 8, !range !14, !noundef !11
  %i.mg = trunc nuw i64 %i.mf to i1
  %i.mh = load i64, ptr %i.fy, align 8, !range !15, !noundef !11 ; 3 uses
  br i1 %i.mg, label %bb.bs, label %bb.bt, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.mi = load i64, ptr %i.fz, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mh, i64 %i.mi) #45
          to label %bb.bp unwind label %.loopexit.split-lp223

.thread186.loopexit:                              ; preds = %bb.cz, %_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v227determine_field_family_mode.exit.i, %bb.dw
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

.thread186.loopexit.split-lp.loopexit:            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit, %bb.ea
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

.thread186.loopexit.split-lp.loopexit.split-lp:   ; preds = %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9is_uniqueBN_.exit.thread.invoke, %bb.dk
  %i.mj = phi i1 [ false, %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9is_uniqueBN_.exit.thread.invoke ], [ true, %bb.dk ]
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

.loopexit209:                                     ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417TriggerDefinitionEE3newB17_.exit.i, %bb.gi
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp210:                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %bb.br
  %i.mk = load ptr, ptr %i.fz, align 8, !nonnull !11, !noundef !11
  %i.ml = icmp ule i64 %.val59, %i.mh
  call void @llvm.assume(i1 %i.ml)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store i64 %i.mh, ptr %i.bq, align 8
  store ptr %i.mk, ptr %i.ga, align 8
  store i64 0, ptr %i.gb, align 8
  %i.mm = getelementptr i8, ptr %i.iv, i64 24
  %.val60 = load ptr, ptr %i.mm, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.mn = getelementptr i8, ptr %i.iv, i64 32
  %.val61 = load i64, ptr %i.mn, align 8, !noundef !11 ; 2 uses
  %.idx366 = mul nuw nsw i64 %.val61, 24
  %i.mo = getelementptr inbounds nuw i8, ptr %.val60, i64 %.idx366
  %.not = icmp eq i64 %.val61, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bt, %bb.fz
  %.sroa.014.0361 = phi ptr [ %i.mp, %bb.fz ], [ %.val60, %bb.bt ] ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.014.0361, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.sroa.014.0.val = load ptr, ptr %.sroa.014.0361, align 8, !nonnull !11, !noundef !11 ; 9 uses
  %i.mq = getelementptr i8, ptr %.sroa.014.0.val, i64 24 ; 2 uses
  %.val.i = load ptr, ptr %i.mq, align 8, !noalias !5205, !nonnull !11, !noundef !11 ; 2 uses
  %i.mr = getelementptr i8, ptr %.sroa.014.0.val, i64 32 ; 2 uses
  %.val22.i = load i64, ptr %i.mr, align 8, !noalias !5205, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false), !noalias !5205
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val22.i
  br label %bb.bu

bb.bu:                                            ; preds = %.backedge, %.lr.ph
  %i.mt = phi ptr [ %.val.i, %.lr.ph ], [ %i.mu, %.backedge ] ; 3 uses
  %.not.not.not.i.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.mt, %i.ms ; 3 uses
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.not.not, label %bb.bv, label %_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v227determine_field_family_mode.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  %i.mv = load ptr, ptr %i.mt, align 8, !alias.scope !5206, !noalias !5207, !nonnull !11, !noundef !11 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 34
  %i.mx = load i8, ptr %i.mw, align 2, !range !54, !noalias !5208, !noundef !11 ; 2 uses
  %i.my = icmp ne i8 %i.mx, 6
  call void @llvm.assume(i1 %i.my)
  %i.mz = icmp samesign ugt i8 %i.mx, 4
  br i1 %i.mz, label %.backedge, label %bb.bx

.backedge:                                        ; preds = %bb.bv, %bb.cx
  br label %bb.bu

.loopexit.i.i:                                    ; preds = %bb.cm
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i.i:                           ; preds = %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTRejEE7reserveNCINvNtBa_3map11make_hasherBY_jINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.ce, %bb.by, %bb.bx
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTRejENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef 24, i64 noundef 16)
          to label %.thread177 unwind label %bb.cy, !noalias !5205

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5205
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !noalias !5205, !nonnull !11, !noundef !11
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.nd = load i64, ptr %i.nc, align 8, !noalias !5205, !noundef !11 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5205
  invoke void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ne, i64 noundef %i.nd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 2)
          to label %bb.by unwind label %.loopexit.split-lp.i.i, !noalias !5205

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 104, i1 false), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5205
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5205
  store i64 %i.nd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5205
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5205
  store i8 0, ptr %.sroa.78.0..sroa_idx.i.i, align 1, !noalias !5205
  call void @llvm.experimental.noalias.scope.decl(metadata !5209)
  %.val.i.i.i = load ptr, ptr %i.gc, align 8, !alias.scope !5209, !noalias !5205, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5210
  invoke fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ae)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5205

.noexc.i.i:                                       ; preds = %bb.by
  %i.nf = load i64, ptr %i.ac, align 8, !range !14, !noalias !5210, !noundef !11
  %i.ng = trunc nuw i64 %i.nf to i1
  br i1 %i.ng, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.noexc.i.i
  %i.nh = load i64, ptr %i.gd, align 8, !noalias !5210, !noundef !11
  %i.ni = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5209, !noalias !5205, !noundef !11 ; 2 uses
  %i.nj = sub nuw i64 %i.nh, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ni
  br label %bb.ce

bb.ca:                                            ; preds = %.noexc.i.i
  %i.nl = load i8, ptr %.sroa.78.0..sroa_idx.i.i, align 1, !range !26, !alias.scope !5211, !noalias !5205, !noundef !11
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.cp, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nn = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !range !26, !alias.scope !5211, !noalias !5205, !noundef !11
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %._crit_edge.i.i.i.i, label %bb.cc

._crit_edge.i.i.i.i:                              ; preds = %bb.cb
  %.pre.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5211, !noalias !5205
  %.pre3.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5211, !noalias !5205
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.np = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5211, !noalias !5205, !noundef !11 ; 2 uses
  %i.nq = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5211, !noalias !5205, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.np, %i.nq
  br i1 %.not.i.i.i.i, label %bb.cp, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i.i.i.i
  %i.nr = phi i64 [ %.pre3.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.np, %bb.cc ]
  %i.ns = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.nq, %bb.cc ] ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.gc, align 8, !alias.scope !5211, !noalias !5205, !nonnull !11, !noundef !11
  %i.nt = sub nuw i64 %i.nr, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ns
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz
  %.sroa.4.0.i.i.i = phi i64 [ %i.nj, %bb.bz ], [ %i.nt, %bb.cd ] ; 12 uses
  %.sroa.0.0.i13.i.i = phi ptr [ %i.nk, %bb.bz ], [ %i.nu, %bb.cd ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5210
  call void @llvm.experimental.noalias.scope.decl(metadata !5212)
  call void @llvm.experimental.noalias.scope.decl(metadata !5213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5205
  store ptr %.sroa.0.0.i13.i.i, ptr %i.ab, align 8, !noalias !5214
  store i64 %.sroa.4.0.i.i.i, ptr %i.ge, align 8, !noalias !5214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5215
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gf)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5205

.noexc14.i.i:                                     ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !5216)
  call void @llvm.experimental.noalias.scope.decl(metadata !5217)
  %i.nv = load i64, ptr %i.gg, align 8, !alias.scope !5218, !noalias !5219, !noundef !11
  %i.nw = add i64 %i.nv, %.sroa.4.0.i.i.i
  %i.nx = mul i64 %i.nw, 6364136223846793005      ; 3 uses
  %i.ny = icmp samesign ugt i64 %.sroa.4.0.i.i.i, 8
  br i1 %i.ny, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %.noexc14.i.i
  %i.nz = icmp samesign ugt i64 %.sroa.4.0.i.i.i, 1
  br i1 %i.nz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oa = icmp eq i64 %.sroa.4.0.i.i.i, 1
  br i1 %i.oa, label %bb.ci, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.ob = icmp samesign ugt i64 %.sroa.4.0.i.i.i, 3
  %i.oc = getelementptr i8, ptr %.sroa.0.0.i13.i.i, i64 %.sroa.4.0.i.i.i ; 2 uses
  br i1 %i.ob, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.od = load i8, ptr %.sroa.0.0.i13.i.i, align 1, !alias.scope !5220, !noalias !5221, !noundef !11
  %i.oe = zext i8 %i.od to i64                    ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i: ; preds = %bb.ch
  %.sroa.0.0.copyload.i29.i.i.i.i.i = load i16, ptr %.sroa.0.0.i13.i.i, align 1, !alias.scope !5222, !noalias !5223
  %i.of = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i.i to i64
  %i.og = getelementptr i8, ptr %i.oc, i64 -1
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !5220, !noalias !5221, !noundef !11
  %i.oi = zext i8 %i.oh to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i: ; preds = %bb.ch
  %.sroa.0.0.copyload.i31.i.i.i.i.i = load i32, ptr %.sroa.0.0.i13.i.i, align 1, !alias.scope !5222, !noalias !5224
  %i.oj = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i.i to i64
  %i.ok = getelementptr i8, ptr %i.oc, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ok, align 1, !alias.scope !5222, !noalias !5221
  %i.ol = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i, %bb.ci, %bb.cg
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ol, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.oi, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.oe, %bb.ci ], [ 0, %bb.cg ]
  %.sroa.068.0.i.i.i.i.i = phi i64 [ %i.oj, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.of, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.oe, %bb.ci ], [ 0, %bb.cg ]
  %i.om = load i64, ptr %i.aa, align 8, !alias.scope !5218, !noalias !5219, !noundef !11
  %i.on = xor i64 %i.om, %.sroa.068.0.i.i.i.i.i
  %i.oo = load i64, ptr %i.gh, align 8, !alias.scope !5218, !noalias !5219, !noundef !11
  %i.op = xor i64 %i.oo, %.sroa.7.0.i.i.i.i.i
  %i.oq = zext i64 %i.on to i128
  %i.or = zext i64 %i.op to i128
  %i.os = mul nuw i128 %i.or, %i.oq               ; 2 uses
  %i.ot = lshr i128 %i.os, 64
  %i.ou = xor i128 %i.ot, %i.os
  %i.ov = trunc i128 %i.ou to i64
  %i.ow = load i64, ptr %i.gi, align 8, !alias.scope !5218, !noalias !5219, !noundef !11 ; 2 uses
  %i.ox = add i64 %i.ow, %i.nx
  %i.oy = xor i64 %i.ox, %i.ov                    ; 2 uses
  %i.oz = call noundef i64 @llvm.fshl.i64(i64 %i.oy, i64 %i.oy, i64 23)
  br label %_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashReINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.cj:                                            ; preds = %.noexc14.i.i
  %i.pa = icmp samesign ugt i64 %.sroa.4.0.i.i.i, 16
  br i1 %i.pa, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i: ; preds = %bb.cj
  %.sroa.0.0.copyload.i33.i.i.i.i.i = load i64, ptr %.sroa.0.0.i13.i.i, align 1, !alias.scope !5222, !noalias !5225
  %i.pb = getelementptr i8, ptr %.sroa.0.0.i13.i.i, i64 %.sroa.4.0.i.i.i
  %i.pc = getelementptr i8, ptr %i.pb, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load i64, ptr %i.pc, align 1, !alias.scope !5222, !noalias !5226
  %i.pd = load i64, ptr %i.aa, align 8, !alias.scope !5218, !noalias !5219, !noundef !11
  %i.pe = xor i64 %i.pd, %.sroa.0.0.copyload.i33.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v27migrate:bb.a
bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5205
  %i.vx = load i64, ptr %i.ao, align 8, !range !17, !noalias !5205, !noundef !11 ; 2 uses
  %i.vy = icmp eq i64 %i.vx, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.412.0..sroa_idx.i, i64 80, i1 false), !noalias !5205
  br i1 %i.vy, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5205
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEBL_(ptr noalias noundef align 8 dereferenceable(1304) %i.as)
          to label %.thread190 unwind label %.thread186.loopexit.split-lp.loopexit.split-lp

.thread190:                                       ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5205
  br label %.loopexit218

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.5.0..sroa_idx.i84, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.513.0..sroa_idx.i, i64 1144, i1 false), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i85, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.i, i64 80, i1 false), !noalias !5205
  store i64 %i.vx, ptr %i.ap, align 8, !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.014.0.val, i64 736
  %i.wa = load i8, ptr %i.vz, align 8, !range !26, !noalias !5205, !noundef !11
  store i8 %i.wa, ptr %i.gw, align 2, !noalias !5205
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.014.0.val, i64 724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gx, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.wb, i64 12, i1 false), !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1304) %i.ah, ptr noundef nonnull align 8 dereferenceable(1304) %i.as, i64 1304, i1 false), !noalias !5205
  invoke void @_RNvXs6_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtNtNtNtBd_3log8versions2v413AddColumnsLogINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_16TableTransactionE4from(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1304) %i.ah)
          to label %bb.dm unwind label %bb.dy, !noalias !5205

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.ag, ptr noundef nonnull align 8 dereferenceable(1232) %i.ap, i64 1232, i1 false), !noalias !5205
  invoke void @_RNvXsB_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtNtNtNtBb_3log8versions2v413AddColumnsLogNtB5_11TableUpdate12update_table(ptr noalias noundef nonnull sret([1232 x i8]) align 8 captures(address) dereferenceable(1232) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1232) %i.ag)
          to label %bb.do unwind label %bb.dn, !noalias !5205

bb.dn:                                            ; preds = %bb.dv, %bb.dm
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dq, %bb.dn
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.wc, %bb.dn ], [ %i.wf, %bb.dq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413AddColumnsLogEBJ_(ptr noalias noundef align 8 dereferenceable(88) %i.ai) #47
          to label %.thread177 unwind label %bb.dx, !noalias !5205

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5205
  call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  call void @llvm.experimental.noalias.scope.decl(metadata !5252)
  %i.wd = load i64, ptr %i.aj, align 8, !range !43, !alias.scope !5252, !noalias !5253, !noundef !11 ; 4 uses
  %i.we = icmp eq i64 %i.wd, -2
  br i1 %i.we, label %bb.dp, label %bb.dt, !prof !12

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.54.0..sroa_idx5.i, i64 80, i1 false), !noalias !5253
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 34, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #45
          to label %bb.dr unwind label %bb.dq, !noalias !5254

bb.dq:                                            ; preds = %bb.dp
  %i.wf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.z) #47
          to label %.body.i unwind label %bb.ds, !noalias !5254

bb.dr:                                            ; preds = %bb.dp
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.wg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5254
  unreachable

bb.dt:                                            ; preds = %bb.do
  %.sroa.54.0.copyload6.i = load ptr, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !5255, !noalias !5205 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(1216) %.sroa.67.0..sroa_idx8.i, i64 1216, i1 false), !alias.scope !5255, !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5205
  %.not.i86 = icmp eq i64 %i.wd, -1
  br i1 %.not.i86, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i64 %i.wd, ptr %i.ak, align 8, !noalias !5205
  store ptr %.sroa.54.0.copyload6.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !5205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %.sroa.67.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1216) %.sroa.67.i, i64 1216, i1 false), !noalias !5205
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload6.i) ]
  invoke fastcc void @_RNvXs2H_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB6_15TableDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1232) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %.sroa.54.0.copyload6.i)
          to label %thread-pre-split unwind label %bb.dn, !noalias !5205

thread-pre-split:                                 ; preds = %bb.dv
  %.sroa.0155.0.copyload.pr = load i64, ptr %i.ak, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %thread-pre-split, %bb.du
  %.sroa.0155.0.copyload = phi i64 [ %.sroa.0155.0.copyload.pr, %thread-pre-split ], [ %i.wd, %bb.du ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.54.0..sroa_idx.i, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.10.0..sroa_idx, i64 1144, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413AddColumnsLogEBJ_(ptr noalias noundef align 8 dereferenceable(88) %i.ai)
          to label %bb.eb unwind label %.thread186.loopexit

bb.dx:                                            ; preds = %bb.dz, %bb.dy, %.body.i
  %i.wh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5205
  unreachable

bb.dy:                                            ; preds = %bb.dl
  %i.wi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(1232) %i.ap) #47
          to label %.thread177 unwind label %bb.dx, !noalias !5205

bb.dz:                                            ; preds = %bb.dh, %bb.dc
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.vq, %bb.dh ], [ %i.vk, %bb.dc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26update16TableTransactionEBL_(ptr noalias noundef align 8 dereferenceable(1304) %i.as) #47
          to label %.thread177 unwind label %bb.dx, !noalias !5205

._crit_edge:                                      ; preds = %bb.fz, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.md, ptr %i.bn, align 8
  %i.wj = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !5256
  %i.wk = icmp eq i64 %i.wj, 1
  br i1 %i.wk, label %bb.ea, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit

bb.ea:                                            ; preds = %._crit_edge
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit unwind label %.thread186.loopexit.split-lp.loopexit

bb.eb:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5205
  %i.wl = icmp eq i64 %.sroa.0155.0.copyload, -1
  br i1 %i.wl, label %.loopexit218, label %bb.ef

.loopexit218:                                     ; preds = %bb.eb, %.thread190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.wm, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.ed unwind label %bb.ec

bb.ec:                                            ; preds = %.loopexit218
  %i.wn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.thread163 unwind label %bb.ee

bb.ed:                                            ; preds = %.loopexit218
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEEB1f_.exit unwind label %.loopexit.split-lp223

bb.ee:                                            ; preds = %bb.ec
  %i.wo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ef:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.10, i64 1144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %.sroa.0155.0.copyload, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !5257)
  call void @llvm.experimental.noalias.scope.decl(metadata !5258)
  %i.wp = load ptr, ptr %.sroa.014.0361, align 8, !alias.scope !5257, !noalias !5258, !nonnull !11, !noundef !11 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 264
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !5259, !nonnull !11, !noundef !11 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 272
  %i.wt = load i64, ptr %i.ws, align 8, !noalias !5259, !noundef !11 ; 2 uses
  %.idx.i97 = mul nuw nsw i64 %i.wt, 24
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 %.idx.i97
  %i.wv = icmp eq i64 %i.wt, 0
  br i1 %i.wv, label %.loopexit208, label %.lr.ph.i98.preheader

.lr.ph.i98.preheader:                             ; preds = %bb.ef
  %4 = insertelement <4 x ptr> %2, ptr %.sroa.014.0361, i64 3 ; 2 uses
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.preheader, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEE6expectBN_.exit.i
  %.sroa.0.022.i = phi ptr [ %i.ww, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEE6expectBN_.exit.i ], [ %i.wr, %.lr.ph.i98.preheader ] ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5259
  %i.wx = load ptr, ptr %.sroa.0.022.i, align 8, !nonnull !11, !noundef !11 ; 11 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  %i.xb = load i64, ptr %i.xa, align 8, !noundef !11
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %i.xb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5259
  %5 = insertelement <4 x ptr> %4, ptr %i.wz, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %i.xc, i64 1
  store <4 x ptr> %6, ptr %i.s, align 8, !noalias !5259
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtB14_8ColumnIdENCINvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v24conv15from_column_idsB37_E0EE9from_iterB41_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.s)
          to label %.noexc103 unwind label %.loopexit.split-lp203

.noexc103:                                        ; preds = %.lr.ph.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5259
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wx, i64 64
  %i.xe = load i64, ptr %i.xd, align 8, !range !17, !noundef !11
  %i.xf = icmp eq i64 %i.xe, -1
  br i1 %i.xf, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.noexc103
  store i64 -1, ptr %i.x, align 8, !noalias !5259
  br label %bb.ek

bb.eh:                                            ; preds = %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5259
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wx, i64 72
  %i.xh = load ptr, ptr %i.xg, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wx, i64 80
  %i.xj = load i64, ptr %i.xi, align 8, !noundef !11
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %i.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5259
  %7 = insertelement <4 x ptr> %4, ptr %i.xh, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %i.xk, i64 1
  store <4 x ptr> %8, ptr %i.r, align 8, !noalias !5259
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtB14_8ColumnIdENCINvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v24conv15from_column_idsB37_E0EE9from_iterB41_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5259
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5259
  %i.xm = load i32, ptr %i.gy, align 4, !alias.scope !5258, !noalias !5257, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5259
  %i.xn = load ptr, ptr %i.gz, align 8, !alias.scope !5258, !noalias !5257, !nonnull !11, !noundef !11
  %i.xo = atomicrmw add ptr %i.xn, i64 1 monotonic, align 8
  %i.xp = icmp slt i64 %i.xo, 0
  br i1 %i.xp, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xq = load ptr, ptr %i.gz, align 8, !alias.scope !5258, !noalias !5257, !nonnull !11, !noundef !11 ; 3 uses
  %i.xr = load i64, ptr %i.ha, align 8, !alias.scope !5258, !noalias !5257, !noundef !11 ; 2 uses
  store ptr %i.xq, ptr %i.u, align 8, !noalias !5259
  store i64 %i.xr, ptr %i.hb, align 8, !noalias !5259
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wx, i64 148
  %i.xt = load i16, ptr %i.xs, align 4, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wx, i64 40 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !range !17, !noundef !11
  %.not.i101 = icmp eq i64 %i.xv, -1
  br i1 %.not.i101, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ek
  call void @llvm.trap()
  unreachable

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5259
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xu)
          to label %bb.er unwind label %bb.ep

bb.eo:                                            ; preds = %bb.er, %bb.el
  %.sroa.02.0.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.er ], [ -1, %bb.el ]
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wx, i64 120 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !nonnull !11, !noundef !11
  %i.xy = atomicrmw add ptr %i.xx, i64 1 monotonic, align 8
  %i.xz = icmp slt i64 %i.xy, 0
  br i1 %i.xz, label %bb.et, label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.ya = landingpad { ptr, i32 }
          cleanup
  %i.yb = atomicrmw sub ptr %i.xq, i64 1 release, align 8, !noalias !5260
  %i.yc = icmp eq i64 %i.yb, 1
  br i1 %i.yc, label %bb.eq, label %bb.ez

bb.eq:                                            ; preds = %bb.ep
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.ez unwind label %bb.ey

bb.er:                                            ; preds = %bb.en
  %.sroa.08.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !5259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i, i64 16, i1 false), !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5259
  br label %bb.eo

bb.es:                                            ; preds = %bb.eo
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wx, i64 128
  %i.ye = load ptr, ptr %i.xw, align 8, !nonnull !11, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !5259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !5259
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wx, i64 88
  %i.yg = load i64, ptr %i.yf, align 8, !noundef !11
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wx, i64 96
  %i.yi = load i32, ptr %i.yh, align 8, !range !44, !noundef !11
  store i32 %i.xm, ptr %i.hc, align 8, !noalias !5259
  store ptr %i.xq, ptr %i.hd, align 8, !noalias !5259
  store i64 %i.xr, ptr %i.he, align 8, !noalias !5259
  store i16 %i.xt, ptr %i.hf, align 4, !noalias !5259
  store i64 %.sroa.02.0.i, ptr %i.hg, align 8, !noalias !5259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !5259
  store ptr %i.ye, ptr %i.hh, align 8, !noalias !5259
  %i.yj = load <2 x i64>, ptr %i.yd, align 8
  store <2 x i64> %i.yj, ptr %i.hi, align 8, !noalias !5259
  store i64 %i.yg, ptr %i.hk, align 8, !noalias !5259
  store i32 %i.yi, ptr %i.hl, align 8, !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5259
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtNtNtNtB8_3log8versions2v419LastCacheDefinitionE6insertB1Q_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.hm, i16 noundef %i.xt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.v)
          to label %.noexc104 unwind label %.loopexit.split-lp203

.noexc104:                                        ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  %i.yk = load i16, ptr %i.t, align 8, !range !50, !alias.scope !5261, !noalias !5259, !noundef !11
  %.not.i.i102 = icmp eq i16 %i.yk, -1
  br i1 %.not.i.i102, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEE6expectBN_.exit.i, label %bb.eu, !prof !10

bb.et:                                            ; preds = %bb.eo
  call void @llvm.trap()
  unreachable

bb.eu:                                            ; preds = %.noexc104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !5259
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 51, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.ew unwind label %bb.ev, !noalias !5261

bb.ev:                                            ; preds = %bb.eu
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p) #47
          to label %bb.ga unwind label %bb.ex, !noalias !5261

bb.ew:                                            ; preds = %bb.eu
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.ym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5261
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEE6expectBN_.exit.i: ; preds = %.noexc104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5259
  %i.yn = icmp eq ptr %i.ww, %i.wu
  br i1 %i.yn, label %.loopexit208, label %.lr.ph.i98

bb.ey:                                            ; preds = %bb.fa, %bb.ez, %bb.eq
  %i.yo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ez:                                            ; preds = %bb.eq, %bb.ep
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v424LastCacheValueColumnsDefEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #47
          to label %bb.fa unwind label %bb.ey

bb.fa:                                            ; preds = %bb.ez, %bb.ei
  %.pn.pn.ph.i99 = phi { ptr, i32 } [ %i.xl, %bb.ei ], [ %i.ya, %bb.ez ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #47
          to label %bb.ga unwind label %bb.ey

.loopexit202:                                     ; preds = %.lr.ph.i108, %bb.fn
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit.split-lp203:                            ; preds = %.lr.ph.i98, %bb.es
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit208:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdEE6expectBN_.exit.i, %bb.ef
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wp, i64 440
  %i.yq = load i16, ptr %i.yp, align 8, !noundef !11
  store i16 %i.yq, ptr %i.hn, align 8, !alias.scope !5258, !noalias !5257
  call void @llvm.experimental.noalias.scope.decl(metadata !5263)
  call void @llvm.experimental.noalias.scope.decl(metadata !5264)
  %i.yr = load ptr, ptr %.sroa.014.0361, align 8, !alias.scope !5263, !noalias !5264, !nonnull !11, !noundef !11 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 456
  %i.yt = load ptr, ptr %i.ys, align 8, !noalias !5265, !nonnull !11, !noundef !11 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 464
  %i.yv = load i64, ptr %i.yu, align 8, !noalias !5265, !noundef !11 ; 2 uses
  %.idx.i107 = mul nuw nsw i64 %i.yv, 24
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %.idx.i107
  %i.yx = icmp eq i64 %i.yv, 0
  br i1 %i.yx, label %.loopexit207, label %.lr.ph.i108.preheader

.lr.ph.i108.preheader:                            ; preds = %.loopexit208
  %9 = insertelement <4 x ptr> %3, ptr %.sroa.014.0361, i64 3
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.preheader, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEE6expectBN_.exit.i
  %.sroa.0.014.i = phi ptr [ %i.yy, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEE6expectBN_.exit.i ], [ %i.yt, %.lr.ph.i108.preheader ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5265
  %i.yz = load ptr, ptr %.sroa.0.014.i, align 8, !nonnull !11, !noundef !11 ; 8 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zd = load i64, ptr %i.zc, align 8, !noundef !11
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.zb, i64 %i.zd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5265
  %10 = insertelement <4 x ptr> %9, ptr %i.zb, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %i.ze, i64 1
  store <4 x ptr> %11, ptr %i.h, align 8, !noalias !5265
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtB14_8ColumnIdENCINvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v24conv15from_column_idsB37_E0EE9from_iterB41_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc113 unwind label %.loopexit202

.noexc113:                                        ; preds = %.lr.ph.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5265
  %i.zf = load i32, ptr %i.gy, align 4, !alias.scope !5264, !noalias !5263, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5265
  %i.zg = load ptr, ptr %i.gz, align 8, !alias.scope !5264, !noalias !5263, !nonnull !11, !noundef !11
  %i.zh = atomicrmw add ptr %i.zg, i64 1 monotonic, align 8
  %i.zi = icmp slt i64 %i.zh, 0
  br i1 %i.zi, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.noexc113
  %i.zj = load ptr, ptr %i.gz, align 8, !alias.scope !5264, !noalias !5263, !nonnull !11, !noundef !11 ; 3 uses
  %i.zk = load i64, ptr %i.ha, align 8, !alias.scope !5264, !noalias !5263, !noundef !11 ; 2 uses
  store ptr %i.zj, ptr %i.m, align 8, !noalias !5265
  store i64 %i.zk, ptr %i.ho, align 8, !noalias !5265
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yz, i64 124
  %i.zm = load i16, ptr %i.zl, align 4, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5265
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yz, i64 40 ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !range !17, !noundef !11
  %.not.i109 = icmp eq i64 %i.zo, -1
  br i1 %.not.i109, label %bb.fe, label %bb.fd

bb.fc:                                            ; preds = %.noexc113
  call void @llvm.trap()
  unreachable

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5265
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zn)
          to label %bb.fj unwind label %bb.fi

bb.fe:                                            ; preds = %bb.fb
  store i64 -1, ptr %i.l, align 8, !noalias !5265
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fj, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5265
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yz, i64 96 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !nonnull !11, !noundef !11
  %i.zr = atomicrmw add ptr %i.zq, i64 1 monotonic, align 8
  %i.zs = icmp slt i64 %i.zr, 0
  br i1 %i.zs, label %bb.fl, label %bb.fk

bb.fg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i, %bb.fi
  %i.zt = phi ptr [ %.pre.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i ], [ %i.zj, %bb.fi ]
  %.pn.i = phi { ptr, i32 } [ %i.aad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i ], [ %i.zw, %bb.fi ] ; 2 uses
  %.sroa.02.0.i110 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i ], [ true, %bb.fi ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5266)
  call void @llvm.experimental.noalias.scope.decl(metadata !5267)
  %i.zu = atomicrmw sub ptr %i.zt, i64 1 release, align 8, !noalias !5268
  %i.zv = icmp eq i64 %i.zu, 1
  br i1 %i.zv, label %bb.fh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i111

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i111 unwind label %bb.fs

bb.fi:                                            ; preds = %bb.fd
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fj:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5265
  br label %bb.ff

bb.fk:                                            ; preds = %bb.ff
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yz, i64 104
  %i.zy = load ptr, ptr %i.zp, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.zz = load i64, ptr %i.zx, align 8, !noundef !11 ; 2 uses
  store ptr %i.zy, ptr %i.k, align 8, !noalias !5265
  store i64 %i.zz, ptr %i.hp, align 8, !noalias !5265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !5265
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yz, i64 112
  %i.aab = load i64, ptr %i.aaa, align 8, !range !46, !noundef !11
  %i.aac = invoke noundef i64 @_RNvXs3_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v310conversionNtNtB9_2v414MaxCardinalityINtNtCs4NRVxsYgnAr_4core7convert4FromNtB7_14MaxCardinalityE4from(i64 noundef %i.aab)
          to label %bb.fn unwind label %bb.fm

bb.fl:                                            ; preds = %bb.ff
  call void @llvm.trap()
  unreachable

bb.fm:                                            ; preds = %bb.fk
  %i.aad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #47
          to label %bb.ft unwind label %bb.fs

bb.fn:                                            ; preds = %bb.fk
  %i.aae = getelementptr inbounds nuw i8, ptr %i.yz, i64 64
  %i.aaf = load i64, ptr %i.aae, align 8, !noundef !11
  store i32 %i.zf, ptr %i.hq, align 8, !noalias !5265
  store ptr %i.zj, ptr %i.hr, align 8, !noalias !5265
  store i64 %i.zk, ptr %i.hs, align 8, !noalias !5265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !5265
  store i16 %i.zm, ptr %i.hu, align 4, !noalias !5265
  store ptr %i.zy, ptr %i.hv, align 8, !noalias !5265
  store i64 %i.zz, ptr %i.hw, align 8, !noalias !5265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !5265
  store i64 %i.aac, ptr %i.hy, align 8, !noalias !5265
  store i64 %i.aaf, ptr %i.hz, align 8, !noalias !5265
  store i32 0, ptr %i.ia, align 8, !noalias !5265
  store i8 0, ptr %i.ib, align 2, !noalias !5265
  store i64 0, ptr %i.n, align 8, !noalias !5265
  store i32 -1, ptr %i.ic, align 8, !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5265
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtB8_3log8versions2v423DistinctCacheDefinitionE6insertB1U_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.id, i16 noundef %i.zm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.n)
          to label %.noexc114 unwind label %.loopexit202

.noexc114:                                        ; preds = %bb.fn
  call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  %i.aag = load i16, ptr %i.i, align 8, !range !50, !alias.scope !5269, !noalias !5265, !noundef !11
  %.not.i.i112 = icmp eq i16 %i.aag, -1
  br i1 %.not.i.i112, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEE6expectBN_.exit.i, label %bb.fo, !prof !10

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i111: ; preds = %bb.fh, %bb.fg
  br i1 %.sroa.02.0.i110, label %bb.fv, label %bb.ga

bb.fo:                                            ; preds = %.noexc114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !5265
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 55, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
          to label %bb.fq unwind label %bb.fp, !noalias !5269

bb.fp:                                            ; preds = %bb.fo
  %i.aah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #47
          to label %bb.ga unwind label %bb.fr, !noalias !5269

bb.fq:                                            ; preds = %bb.fo
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !5269
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEE6expectBN_.exit.i: ; preds = %.noexc114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5265
  %i.aaj = icmp eq ptr %i.yy, %i.yw
  br i1 %i.aaj, label %.loopexit207, label %.lr.ph.i108

bb.fs:                                            ; preds = %bb.fv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10.i, %bb.fu, %bb.fm, %bb.fh
  %i.aak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ft:                                            ; preds = %bb.fm
  %i.aal = atomicrmw sub ptr %i.zy, i64 1 release, align 8, !noalias !5271
  %i.aam = icmp eq i64 %i.aal, 1
  br i1 %i.aam, label %bb.fu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10.i

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10.i unwind label %bb.fs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10.i: ; preds = %bb.fu, %bb.ft
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #47
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i unwind label %bb.fs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10._crit_edge.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit10.i
  %.pre.i = load ptr, ptr %i.m, align 8, !alias.scope !5268, !noalias !5265
  br label %bb.fg

bb.fv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i111
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #47
          to label %bb.ga unwind label %bb.fs

.loopexit207:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdEE6expectBN_.exit.i, %.loopexit208
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yr, i64 632
  %i.aao = load i16, ptr %i.aan, align 8, !noundef !11
  store i16 %i.aao, ptr %i.ie, align 8, !alias.scope !5264, !noalias !5263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.bo, ptr noundef nonnull align 8 dereferenceable(1232) %i.bp, i64 1232, i1 false)
  %i.aap = load i64, ptr %i.gb, align 8, !alias.scope !5272, !noalias !5273, !noundef !11 ; 3 uses
  %i.aaq = load i64, ptr %i.bq, align 8, !range !16, !alias.scope !5272, !noalias !5273, !noundef !11
  %i.aar = icmp eq i64 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %.loopexit207
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.fz unwind label %bb.fx, !noalias !5273

end_hunk_3
