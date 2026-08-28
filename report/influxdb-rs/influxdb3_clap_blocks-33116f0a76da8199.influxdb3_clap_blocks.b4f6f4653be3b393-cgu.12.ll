Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.12?download=true
inline.NumInlined: 699
inline.NumDeleted: 267
begin_hunk_0_@_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref19wake_by_ref_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2B_11ObjectStore13delete_stream00EEECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB27_11ObjectStore13delete_stream00EENtNtCsgAEwGHJqgHw_12futures_task8arc_wake7ArcWake11wake_by_refCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref19wake_by_ref_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEB2B_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEB2E_(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EENtNtCsgAEwGHJqgHw_12futures_task8arc_wake7ArcWake11wake_by_refB27_(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %.sroa.0.0.sroa.speculate.load.1 = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !noundef !9 ; 4 uses
  %i.f = getelementptr i8, ptr %.sroa.0.0.sroa.speculate.load.1, i64 32
  %.val8 = load ptr, ptr %i.f, align 8            ; 6 uses
  %i.g = icmp eq ptr %.val, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.h = load ptr, ptr %.val8, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !143, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !144, !invariant.load !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !143, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !144, !invariant.load !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #21
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit9

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.e, %bb.d, %bb.a
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.i, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  ret void

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !617, !nonnull !9, !noundef !9
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !617
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2y_6marker4SendEL_EEEEE9drop_slowB4T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit9: ; preds = %bb.j, %bb.k, %.body
  resume { ptr, i32 } %i.n

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !624, !nonnull !9, !noundef !9
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !624
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit9

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2y_6future6future6Futurep6OutputINtNtB2y_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2y_6marker4SendEL_EEEEE9drop_slowB4T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit9 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !625
  %i.e = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 88, i64 noundef 8) #21, !noalias !625 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2T_6future6future6Futurep6OutputINtNtB2T_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2T_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2T_6future6future6Futurep6OutputINtNtB2T_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2T_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !628
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !628 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB3k_6future6future6Futurep6OutputINtNtB3k_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB3k_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2T_6future6future6Futurep6OutputINtNtB2T_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2T_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB3k_6future6future6Futurep6OutputINtNtB3k_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB3k_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2T_6future6future6Futurep6OutputINtNtB2T_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2T_6marker4SendEL_EEEEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 13 uses
  %i.b = load <2 x ptr>, ptr %1, align 8          ; 3 uses
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx17, align 8
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB2Z_6marker4SendEL_EEEEE9downgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = extractelement <2 x ptr> %i.b, i64 0
  %i.i = extractelement <2 x ptr> %i.b, i64 1
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr %i.h, ptr %i.i) #19
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !631
  %i.m = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 88, i64 noundef 8) #21, !noalias !631 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = atomicrmw xchg ptr %i.s, ptr %i.r acq_rel, align 8 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8
  %.not.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !9
  %i.ad = add i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store atomic ptr %i.t, ptr %i.af release, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.r, ptr %i.ag, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store atomic ptr null, ptr %i.ai release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.aj = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store atomic ptr null, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.am = atomicrmw xchg ptr %i.al, ptr %i.r acq_rel, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store atomic ptr %i.r, ptr %i.an release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB2e_6memory8InMemoryENtB2e_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB2e_6memory8InMemoryENtB2e_11ObjectStore13delete_stream00EE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !634
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !634 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB30_6memory8InMemoryENtB30_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB3e_6memory8InMemoryENtB3e_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB30_6memory8InMemoryENtB30_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !637
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !637 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB3r_6memory8InMemoryENtB3r_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB30_6memory8InMemoryENtB30_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB3F_6memory8InMemoryENtB3F_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB3r_6memory8InMemoryENtB3r_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB30_6memory8InMemoryENtB30_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB2e_6memory8InMemoryENtB2e_11ObjectStore13delete_stream00EE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB36_6memory8InMemoryENtB36_11ObjectStore13delete_stream00EEE9downgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB2k_6memory8InMemoryENtB2k_11ObjectStore13delete_stream00EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !640
  %i.k = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !640 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB3e_6memory8InMemoryENtB3e_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !643
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !643 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !646
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !646 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3E_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB35_11ObjectStore13delete_stream00EEE9downgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB2j_11ObjectStore13delete_stream00EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !649
  %i.k = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !649 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !652
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !652 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !655
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !655 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB3E_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB35_11ObjectStore13delete_stream00EEE9downgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB2j_11ObjectStore13delete_stream00EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !658
  %i.k = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !658 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !661
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !661 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !664
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !664 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB3E_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB3q_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2Z_11ObjectStore13delete_stream00EEEE3newCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB35_11ObjectStore13delete_stream00EEE9downgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB2j_11ObjectStore13delete_stream00EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !667
  %i.k = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !667 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB3d_11ObjectStore13delete_stream00EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EE3newB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !670
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !670 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB2Z_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEEB3d_(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB2Z_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !673
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 64, i64 noundef 8) #21, !noalias !673 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB3q_.exit, !prof !31

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB2Z_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEEB3E_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB3q_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEE3newB2Z_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EE4pushB2d_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEE9downgradeB35_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEB2j_(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !676
  %i.k = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #21, !noalias !676 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore13delete_stream00EEEEB3d_(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_EE12insert_entryCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !9
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.h = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReINtNtBc_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_ENtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsfxgMthLVlAZ_21influxdb3_clap_blocks()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store ptr %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.l, align 8
  store ptr %i.i, ptr %i.b, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !9
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutReINtNtBb_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_ENtB18_4LeafE16push_with_handleCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  store ptr %i.v, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReINtNtBc_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_ENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3I_11VacantEntryB1C_B1E_E12insert_entry0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load ptr, ptr %i.ad, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_EECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %2, ptr nonnull %3) #19
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryReINtNtBd_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_EE8into_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReINtNtBb_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_ENtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtCsgAEwGHJqgHw_12futures_task8arc_wake7ArcWake11wake_by_refCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.c = tail call noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit4, label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit4: ; preds = %bb.a, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

end_hunk_0
