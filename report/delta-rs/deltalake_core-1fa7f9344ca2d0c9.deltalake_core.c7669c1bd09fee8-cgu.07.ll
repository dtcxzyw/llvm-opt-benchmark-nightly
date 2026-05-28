inline.NumInlined: 9995
inline.NumDeleted: 4212
begin_hunk_0_@_RNvMs2_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_24SerializedRowGroupWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5closeCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.critedge78 unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body158:                                         ; preds = %bb.dn, %bb.dk, %.body138, %bb.dq
  %.pn75 = phi { ptr, i32 } [ %.pn69, %.body138 ], [ %.pn73.ph, %bb.dq ], [ %i.ht, %bb.dn ], [ %i.hp, %bb.dk ]
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val85 = load ptr, ptr %i.hr, align 8, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val86 = load ptr, ptr %i.hs, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceTQINtNtNtCs4tdlwR1I4n2_7parquet4file6writer12TrackedWriteQINtNtB17_3vec3VechEENtNtB2d_8metadata16RowGroupMetaDataIB33_IBH_NtNtB2f_12bloom_filter4SbbfEEIB33_IBH_NtNtNtB2d_10page_index12column_index19ColumnIndexMetaDataEEIB33_IBH_NtNtB4K_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtB4_6result6ResultuNtNtB2f_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val85, ptr %.val86) #54
          to label %common.resume unwind label %bb.cb

bb.dn:                                            ; preds = %bb.dl
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.do:                                            ; preds = %.body138
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.hu) #54
          to label %bb.dp unwind label %bb.cb

bb.dp:                                            ; preds = %bb.do, %bb.cx, %bb.da
  %.pn71.ph = phi { ptr, i32 } [ %.pn69, %bb.do ], [ %i.gu, %bb.da ], [ %i.gs, %bb.cx ]
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.hv) #54
          to label %bb.dq unwind label %bb.cb

bb.dq:                                            ; preds = %bb.dp, %bb.dc, %bb.df
  %.pn73.ph = phi { ptr, i32 } [ %.pn71.ph, %bb.dp ], [ %i.gy, %bb.df ], [ %i.gw, %bb.dc ]
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.hw) #54
          to label %.body158 unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread212, %bb.f
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15026)
  call void @llvm.experimental.noalias.scope.decl(metadata !15029)
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !15032, !nonnull !3, !noundef !3
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !15032
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.dr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit162

bb.dr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit162 unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit162: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs14kWLkQVSKO_14deltalake_core.exit, %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !15033)
  %i.ib = load ptr, ptr %i.q, align 8, !alias.scope !15033, !noundef !3 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit164, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit162
  %i.id = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !15036
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit164

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataE9drop_slowCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit164 unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit164: ; preds = %bb.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit162, %bb.dt
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.if) #54
          to label %bb.du unwind label %bb.cb

bb.du:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit164
  br i1 %.sroa.026.1, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ig) #54
          to label %bb.dw unwind label %bb.cb

bb.dw:                                            ; preds = %bb.dv
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ih) #54
          to label %bb.dy unwind label %bb.cb

bb.dx:                                            ; preds = %bb.du, %bb.dy
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val83 = load ptr, ptr %i.ii, align 8, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val84 = load ptr, ptr %i.ij, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceTQINtNtNtCs4tdlwR1I4n2_7parquet4file6writer12TrackedWriteQINtNtB17_3vec3VechEENtNtB2d_8metadata16RowGroupMetaDataIB33_IBH_NtNtB2f_12bloom_filter4SbbfEEIB33_IBH_NtNtNtB2d_10page_index12column_index19ColumnIndexMetaDataEEIB33_IBH_NtNtB4K_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtB4_6result6ResultuNtNtB2f_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val83, ptr %.val84) #54
          to label %common.resume unwind label %bb.cb

bb.dy:                                            ; preds = %bb.dw
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ik) #54
          to label %bb.dx unwind label %bb.cb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %.sroa.0.0.sroa.speculate.load.1 = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.f = getelementptr i8, ptr %.sroa.0.0.sroa.speculate.load.1, i64 32
  %.val8 = load ptr, ptr %i.f, align 8            ; 6 uses
  %i.g = icmp eq ptr %.val, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.h = load ptr, ptr %.val8, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !658, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !645, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, 536870913) %i.m) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !658, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !645, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, 536870913) %i.s) #48
  br label %.body

.body:                                            ; preds = %bb.e, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.d, %bb.a
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15044)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !15047, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !15047
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit9: ; preds = %bb.h, %bb.i, %.body
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15051)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !15054, !nonnull !3, !noundef !3
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !15054
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit9

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit9 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15055
  %i.e = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15055 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #54
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15058
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15058 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB3l_6future6future6Futurep6OutputINtNtB3l_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB3l_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #54
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB3l_6future6future6Futurep6OutputINtNtB3l_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB3l_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB2U_6future6future6Futurep6OutputINtNtB2U_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2U_6marker4SendEL_EEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 13 uses
  %i.c = load <2 x ptr>, ptr %1, align 8          ; 3 uses
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx18, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15061
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15061
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15061
  store ptr @140, ptr %i.a, align 8, !noalias !15061
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15061
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15061 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = extractelement <2 x ptr> %i.c, i64 0
  %i.q = extractelement <2 x ptr> %i.c, i64 1
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core(ptr %i.p, ptr %i.q) #54
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x ptr> %i.c, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE4pushB3a_:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15067 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9downgradeB43_.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB19_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB3m_(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9downgradeB43_.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 177
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15070
  %i.t = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15070 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9downgradeB43_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB3C_(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9downgradeB43_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE12release_taskB2k_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !range !381, !noundef !3
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.i = load i8, ptr %i.h, align 8, !range !342, !noundef !3
  switch i8 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEBO_(ptr noalias noundef nonnull align 8 dereferenceable(1016) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1048
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.e, align 8
  br i1 %i.d, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  store i64 0, ptr %i.e, align 8
  br i1 %i.d, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit
  ret void

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2p_11DeltaWriter5close000EEEB2v_.exit
  %i.m = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !15073
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEE9drop_slowB2M_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit10: ; preds = %bb.h, %bb.i, %bb.e
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %bb.e
  %i.o = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !15078
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit10

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEE9drop_slowB2M_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit10 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3136
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3152
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE3newB2k_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [3192 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3152
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3185
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15083
  %i.e = tail call noundef align 8 dereferenceable_or_null(3192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3192, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15083 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB31_11DeltaWriter5close000EEEE3newB37_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3192) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEEB2M_(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB31_11DeltaWriter5close000EEEE3newB37_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3192) %i.e, ptr noundef nonnull align 8 dereferenceable(3192) %i.b, i64 3192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15086
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15086 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3s_11DeltaWriter5close000EEEE3newB3y_.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB31_11DeltaWriter5close000EEEE3newB37_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB37_11DeltaWriter5close000EEEB3d_(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3s_11DeltaWriter5close000EEEE3newB3y_.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB31_11DeltaWriter5close000EEEE3newB37_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4pushB2k_(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(3120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [3192 x i8], align 8              ; 11 uses
  %i.c = alloca [3128 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3120) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(3120) %1, i64 3120, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15089
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15089
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15089
  store ptr @140, ptr %i.a, align 8, !noalias !15089
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15089
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15089 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB37_11DeltaWriter5close000EEE9downgradeB3d_.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2O_11DeltaWriter5close000EEEEB2U_(ptr noundef nonnull align 8 %i.c) #54
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB37_11DeltaWriter5close000EEE9downgradeB3d_.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(3128) %i.c, i64 3128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3152
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3160
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3185
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15092
  %i.t = tail call noundef align 8 dereferenceable_or_null(3192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3192, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15092 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB37_11DeltaWriter5close000EEE9downgradeB3d_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3192) #57
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEEB2M_(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB37_11DeltaWriter5close000EEE9downgradeB3d_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3192) %i.t, ptr noundef nonnull align 8 dereferenceable(3192) %i.b, i64 3192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 3136
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 3152
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 3168
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 3152
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 3144
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 3168
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 3152
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 3176
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3160
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 848
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [904 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 897
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15095
  %i.e = tail call noundef align 8 dereferenceable_or_null(904) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 904, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15095 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 904) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.e, ptr noundef nonnull align 8 dereferenceable(904) %i.b, i64 904, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15098
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15098 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(832) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [904 x i8], align 8               ; 11 uses
  %i.c = alloca [840 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(832) %1, i64 832, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15101
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15101
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15101
  store ptr @140, ptr %i.a, align 8, !noalias !15101
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15101
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15101 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(840) %i.c, i64 840, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 897
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15104
  %i.t = tail call noundef align 8 dereferenceable_or_null(904) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 904, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15104 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 904) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.t, ptr noundef nonnull align 8 dereferenceable(904) %i.b, i64 904, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 848
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 864
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 880
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 856
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 880
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 888
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 872
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 488
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [544 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 537
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15107
  %i.e = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15107 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.e, ptr noundef nonnull align 8 dereferenceable(544) %i.b, i64 544, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15110
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15110 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [544 x i8], align 8               ; 11 uses
  %i.c = alloca [480 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(472) %1, i64 472, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15113
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15113
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15113
  store ptr @140, ptr %i.a, align 8, !noalias !15113
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15113
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15113 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(480) %i.c, i64 480, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 537
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15116
  %i.t = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15116 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.t, ptr noundef nonnull align 8 dereferenceable(544) %i.b, i64 544, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 488
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 504
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 504
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 496
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 504
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [208 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15119
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15119 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB31_11ObjectStoreEL_EEB3Y_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2G_11ObjectStoreEL_EEB41_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB31_11ObjectStoreEL_EEB3Y_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15122
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15122 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB3s_11ObjectStoreEL_EEB4p_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB31_11ObjectStoreEL_EEB3Y_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB37_11ObjectStoreEL_EEB4s_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB3s_11ObjectStoreEL_EEB4p_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtBH_3ArcDNtB31_11ObjectStoreEL_EEB3Y_13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15125
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15125
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15125
  store ptr @140, ptr %i.a, align 8, !noalias !15125
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15125
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15125 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB37_11ObjectStoreEL_EEB3Y_13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2p_11ObjectStoreEL_EEB3K_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB37_11ObjectStoreEL_EEB3Y_13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15128
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15128 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB37_11ObjectStoreEL_EEB3Y_13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2G_11ObjectStoreEL_EEB41_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB37_11ObjectStoreEL_EEB3Y_13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE3newB2i_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [208 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15131
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15131 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEEE3newB35_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4z_13delete_stream00EEEB2K_(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEEE3newB35_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15134
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15134 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4X_13delete_stream00EEEE3newB3w_.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEEE3newB35_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB50_13delete_stream00EEEB3b_(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4X_13delete_stream00EEEE3newB3w_.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtBH_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEEE3newB35_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4pushB2i_(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15137
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15137
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15137
  store ptr @140, ptr %i.a, align 8, !noalias !15137
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15137
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15137 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEE9downgradeB3b_.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4i_13delete_stream00EEEB2t_(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEE9downgradeB3b_.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15140
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15140 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEE9downgradeB3b_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4z_13delete_stream00EEEB2K_(ptr noundef nonnull align 8 %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4w_13delete_stream00EEE9downgradeB3b_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15143
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15143 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15146
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15146 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3K_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #54
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15149
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15149
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15149
  store ptr @140, ptr %i.a, align 8, !noalias !15149
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15149
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15149 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2o_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15152
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15152 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15155
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15155 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15158
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15158 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3K_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #54
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15161
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15161
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15161
  store ptr @140, ptr %i.a, align 8, !noalias !15161
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15161
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15161 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2o_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15164
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15164 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15167
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15167 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15170
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15170 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #54
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15173
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15173
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15173
  store ptr @140, ptr %i.a, align 8, !noalias !15173
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15173
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15173 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2o_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15176
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15176 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
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
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15179
  %i.e = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15179 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15182
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15182 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3K_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #54
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3r_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB30_11ObjectStore13delete_stream00EEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15185
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15185
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15185
  store ptr @140, ptr %i.a, align 8, !noalias !15185
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15185
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15185 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2o_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15188
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15188 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !21

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3j_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #54
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB36_11ObjectStore13delete_stream00EEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -9223372036854775788, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15191
  %i.e = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15191 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtBP_6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15194
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15194 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBP_6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtB19_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15197
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15197
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15197
  store ptr @140, ptr %i.a, align 8, !noalias !15197
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15197
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15197 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBP_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load i64, ptr %i.c, align 8, !range !1967, !alias.scope !15200, !noundef !3
  %i.q = icmp ugt i64 %i.p, -9223372036854775791
  br i1 %i.q, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %common.resume unwind label %bb.p

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBP_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15205
  %i.v = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15205 ; 8 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.k, !prof !21

bb.h:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBP_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #57
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtNtBP_6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.u)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.o, %bb.f ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBP_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEE9downgradeCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = atomicrmw xchg ptr %i.ab, ptr %i.aa acq_rel, align 8 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8
  %.not.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  %i.am = add i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store atomic ptr %i.ac, ptr %i.ao release, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %i.aa, ptr %i.ap, align 8
  br label %bb.o

.critedge.i:                                      ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i64 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store atomic ptr null, ptr %i.ar release, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.as = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store atomic ptr null, ptr %i.at monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = atomicrmw xchg ptr %i.au, ptr %i.aa acq_rel, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store atomic ptr %i.aa, ptr %i.aw release, align 8
  ret void

bb.p:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB1A_6kernel6models6ActionENtB1w_14PartialMetricsENtNtB1A_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB2O_B4f_EEE0E28atomic_load_head_and_len_allB1A_(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB1A_6kernel6models6ActionENtB1w_14PartialMetricsENtNtB1A_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB2O_B4f_EEE0E3newB1A_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [96 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15208
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15208 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2m_6kernel6models6ActionENtB2i_14PartialMetricsENtNtB2m_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB3A_B4K_EEE0EEE3newB2m_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB22_6kernel6models6ActionENtB1Y_14PartialMetricsENtNtB22_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultB3g_B4H_EEE0EEB22_(ptr noundef nonnull align 8 %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2m_6kernel6models6ActionENtB2i_14PartialMetricsENtNtB2m_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB3A_B4K_EEE0EEE3newB2m_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !15211
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !15211 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2N_6kernel6models6ActionENtB2J_14PartialMetricsENtNtB2N_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB41_B5b_EEE0EEE3newB2N_.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2m_6kernel6models6ActionENtB2i_14PartialMetricsENtNtB2m_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB3A_B4K_EEE0EEE3newB2m_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB2t_6kernel6models6ActionENtB2p_14PartialMetricsENtNtB2t_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultB3H_B58_EEE0EEB2t_(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2N_6kernel6models6ActionENtB2J_14PartialMetricsENtNtB2N_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB41_B5b_EEE0EEE3newB2N_.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB4_3vec3VecNtNtNtB2m_6kernel6models6ActionENtB2i_14PartialMetricsENtNtB2m_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB3A_B4K_EEE0EEE3newB2m_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB1A_6kernel6models6ActionENtB1w_14PartialMetricsENtNtB1A_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB2O_B4f_EEE0E4pushB1A_(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !15214
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !15214
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15214
  store ptr @140, ptr %i.a, align 8, !noalias !15214
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !15214
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #55
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !15214 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtB7_3vec3VecNtNtNtB2t_6kernel6models6ActionENtB2p_14PartialMetricsENtNtB2t_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultB3H_B4R_EEE0EE9downgradeB2t_.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = load i64, ptr %i.c, align 8, !range !381, !noundef !3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !342, !noundef !3
  switch i8 %i.s, label %common.resume [
    i8 0, label %common.ret.sink.split.i.i.i
    i8 3, label %bb.h
  ]

common.ret.sink.split.i.i.i:                      ; preds = %bb.h, %bb.g
  %.sink.i.i.i = phi ptr [ %i.t, %bb.h ], [ %.sroa.42.0..sroa_idx, %bb.g ]
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp
; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXsc_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_11CreateIndexNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs5_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs7_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17DropCatalogSchemaNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_14CreateFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXsb_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DropFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeRINtB5_8VecDequeTNtNtB9_6string6StringjEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementENtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 28120036697727976), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 28120036697727976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 104811045873349726), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213), ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23529010298098918), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23529010298098918)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23058430092136940), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23058430092136940)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionlENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjyY8HP3IvQ6_12object_store5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtNtB8_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_10WriteErrorE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync6rwlock6RwLockINtNtB19_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjhHCjzi9uUI_17datafusion_common5types5field12LogicalFieldEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjhHCjzi9uUI_17datafusion_common5types5field12LogicalFieldEEINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8set_path(ptr noalias noundef align 8 dereferenceable(88), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs1N9T06jgEdt_11arrow_array4castINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray14as_boolean_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1z_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3R_5ErrorENtNtB1z_6marker4SendEL_EENCNvYNtNtB3R_5local15LocalFileSystemNtB3R_11ObjectStore13delete_stream0EE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(104), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr3and(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 16 captures(none) dereferenceable(128), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #42

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #42

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #40 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #43 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #45 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #48 = { nounwind }
attributes #49 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #53 = { cold noreturn nounwind }
attributes #54 = { cold }
attributes #55 = { noinline noreturn }
attributes #56 = { inlinehint }
attributes #57 = { noreturn }
attributes #58 = { noinline }
attributes #59 = { "function-inline-cost-multiplier"="2" }
attributes #60 = { inlinehint "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBV_6string6StringEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!6 = distinct !{!6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBV_6string6StringEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs14kWLkQVSKO_14deltalake_core"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!9 = distinct !{!9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!10 = !{!8, !5}
!11 = !{!12, !13}
!12 = distinct !{!12, !9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!13 = distinct !{!13, !6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBV_6string6StringEuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!14 = !{!15, !8, !12, !5}
!15 = distinct !{!15, !16, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!16 = distinct !{!16, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!17 = !{!18, !8, !12, !5}
!18 = distinct !{!18, !19, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBX_6string6StringEuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!19 = distinct !{!19, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBX_6string6StringEuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs14kWLkQVSKO_14deltalake_core"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24 = distinct !{!24, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!27 = distinct !{!27, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!28 = !{!26, !23}
!29 = !{!30, !31}
!30 = distinct !{!30, !27, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!31 = distinct !{!31, !24, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!32 = !{!33, !26, !30, !23}
!33 = distinct !{!33, !34, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!34 = distinct !{!34, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!35 = !{!36, !26, !30, !23}
!36 = distinct !{!36, !37, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!37 = distinct !{!37, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs14kWLkQVSKO_14deltalake_core"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!40 = distinct !{!40, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!43 = distinct !{!43, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!44 = !{!42, !39}
!45 = !{!46, !47}
!46 = distinct !{!46, !43, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!47 = distinct !{!47, !40, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!48 = !{!49, !42, !46, !39}
!49 = distinct !{!49, !50, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!50 = distinct !{!50, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!51 = !{!52, !42, !46, !39}
!52 = distinct !{!52, !53, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!53 = distinct !{!53, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs14kWLkQVSKO_14deltalake_core"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeECs14kWLkQVSKO_14deltalake_core: argument 0"}
!56 = distinct !{!56, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeECs14kWLkQVSKO_14deltalake_core"}
!57 = !{i64 0, i64 -9223372036854775807}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!60 = distinct !{!60, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!63 = distinct !{!63, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!64 = !{!62, !59}
!65 = !{!66, !67}
!66 = distinct !{!66, !63, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!67 = distinct !{!67, !60, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!68 = !{!69, !62, !66, !59}
!69 = distinct !{!69, !70, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!70 = distinct !{!70, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!71 = !{!72, !62, !66, !59}
!72 = distinct !{!72, !73, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBW_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!73 = distinct !{!73, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBW_3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!76 = distinct !{!76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!79 = distinct !{!79, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!80 = !{!78, !75}
!81 = !{!82, !83}
!82 = distinct !{!82, !79, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!83 = distinct !{!83, !76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!84 = !{!85, !78, !82, !75}
!85 = distinct !{!85, !86, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!86 = distinct !{!86, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!87 = !{!88, !78, !82, !75}
!88 = distinct !{!88, !89, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!89 = distinct !{!89, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeECs14kWLkQVSKO_14deltalake_core: argument 0"}
!92 = distinct !{!92, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeECs14kWLkQVSKO_14deltalake_core"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_: argument 0"}
!95 = distinct !{!95, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!98 = distinct !{!98, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!99 = !{!97, !94}
!100 = !{!101, !102}
!101 = distinct !{!101, !98, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!102 = distinct !{!102, !95, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_: argument 1"}
!103 = !{!104, !97, !101, !94}
!104 = distinct !{!104, !105, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!105 = distinct !{!105, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!106 = !{!107, !97, !101, !94}
!107 = distinct !{!107, !108, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1A_: argument 0"}
!108 = distinct !{!108, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch15PartitionWriterEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1A_"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_: argument 0"}
!111 = distinct !{!111, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!114 = distinct !{!114, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!115 = !{!113, !110}
!116 = !{!117, !118}
!117 = distinct !{!117, !114, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!118 = distinct !{!118, !111, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1y_: argument 1"}
!119 = !{!120, !113, !117, !110}
!120 = distinct !{!120, !121, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!121 = distinct !{!121, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!122 = !{!123, !113, !117, !110}
!123 = distinct !{!123, !124, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1A_: argument 0"}
!124 = distinct !{!124, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core6writer4json15DataArrowWriterEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1A_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeEB1y_: argument 0"}
!127 = distinct !{!127, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryeEB1y_"}
!128 = !{i64 0, i64 3}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEE4findNCINvNtB8_3map14equivalent_keyeBQ_jE0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!131 = distinct !{!131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEE4findNCINvNtB8_3map14equivalent_keyeBQ_jE0ECs14kWLkQVSKO_14deltalake_core"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!134 = distinct !{!134, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!135 = !{!133, !130}
!136 = !{!137, !138}
!137 = distinct !{!137, !134, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!138 = distinct !{!138, !131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEE4findNCINvNtB8_3map14equivalent_keyeBQ_jE0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!139 = !{!140, !133, !137, !130}
!140 = distinct !{!140, !141, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!141 = distinct !{!141, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!142 = !{!143, !133, !137, !130}
!143 = distinct !{!143, !144, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEE4findNCINvNtBa_3map14equivalent_keyeBS_jE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!144 = distinct !{!144, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEE4findNCINvNtBa_3map14equivalent_keyeBS_jE0E0Cs14kWLkQVSKO_14deltalake_core"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!147 = distinct !{!147, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs14kWLkQVSKO_14deltalake_core"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
end_hunk_2
