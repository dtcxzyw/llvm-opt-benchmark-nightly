inline.NumInlined: 9995
inline.NumDeleted: 4212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction5stateNtB2_12AddContainer17predicate_matches:bb.a
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.083.0.copyload, ptr %.sroa.234.0..sroa_idx, align 8
  %.sroa.234.sroa.2.0..sroa.234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.584.0.copyload, ptr %.sroa.234.sroa.2.0..sroa.234.0..sroa_idx.sroa_idx, align 8
  %.sroa.234.sroa.3.0..sroa.234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.685.0.copyload, ptr %.sroa.234.sroa.3.0..sroa.234.0..sroa_idx.sroa_idx, align 8
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.656.0.copyload, ptr %.sroa.335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.z unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = icmp sgt i64 %.sroa.685.0.copyload, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.584.0.copyload, i64 %.sroa.685.0.copyload
  %.sroa.1075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1075.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.aw, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %.sroa.570.0..sroa_idx, align 16
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.584.0.copyload, ptr %.sroa.671.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.584.0.copyload, ptr %.sroa.772.0..sroa_idx, align 16
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.083.0.copyload, ptr %.sroa.873.0..sroa_idx, align 8
  %.sroa.974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.av, ptr %.sroa.974.0..sroa_idx, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate16PruningPredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbBja147j8zv_18datafusion_pruning17pruning_predicate16PruningPredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.j)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.ab:                                            ; preds = %bb.ac, %bb.ak, %bb.ah, %bb.ae, %bb.u, %bb.m, %bb.i, %bb.e
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.thread91:                                        ; preds = %bb.m, %bb.o
  %.pn94 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.o ], [ %i.af, %bb.m ] ; 2 uses
  %i.ay = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !12996
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %.thread91
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #58
          to label %.thread unwind label %bb.ab

bb.ad:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.ah, %bb.af, %bb.i, %bb.e
  %.pn62 = phi { ptr, i32 } [ %i.ba, %bb.af ], [ %i.bb, %bb.ah ], [ %i.y, %bb.i ], [ %i.u, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.n) #54
          to label %.thread unwind label %bb.ab

bb.af:                                            ; preds = %bb.ai, %bb.ad
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.aj, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

bb.ah:                                            ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.m) #54
          to label %bb.ae unwind label %bb.ab

bb.ai:                                            ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.m)
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ag

.thread:                                          ; preds = %.thread91, %bb.ac, %bb.u, %bb.ae, %bb.ak
  %.pn6488 = phi { ptr, i32 } [ %.pn94, %.thread91 ], [ %i.bc, %bb.ak ], [ %.pn94, %bb.ac ], [ %i.ar, %bb.u ], [ %.pn62, %bb.ae ]
  resume { ptr, i32 } %.pn6488

bb.ak:                                            ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %.thread unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 16 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [168 x i8], align 8               ; 4 uses
  %i.q = alloca [168 x i8], align 8               ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [168 x i8], align 8               ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [168 x i8], align 8               ; 9 uses
  %i.w = alloca [168 x i8], align 8               ; 4 uses
  %i.x = alloca [168 x i8], align 8               ; 3 uses
  %i.y = alloca [4 x i8], align 4                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [96 x i8], align 8               ; 14 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.67.sroa.7 = alloca [16 x i8], align 8    ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.6.sroa.7 = alloca [16 x i8], align 8     ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 5 uses
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.an, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.am, 4
  br i1 %i.ao, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.am, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bb, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ba, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 72
  %.val.i = load i64, ptr %i.aq, align 8, !noundef !3
  %i.ar = add i64 %.val.i, %.sroa.02.0.i
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.at = getelementptr i8, ptr %i.as, i64 168
  %.val.i.1 = load i64, ptr %i.at, align 8, !noundef !3
  %i.au = add i64 %.val.i.1, %i.ar
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aw = getelementptr i8, ptr %i.av, i64 264
  %.val.i.2 = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ax = add i64 %.val.i.2, %i.au
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.az = getelementptr i8, ptr %i.ay, i64 360
  %.val.i.3 = load i64, ptr %i.az, align 8, !noundef !3
  %i.ba = add i64 %.val.i.3, %i.ax                ; 3 uses
  %i.bb = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, label %.preheader

bb.b:                                             ; preds = %.thread246, %bb.al
  %.sroa.029.0 = phi i1 [ %.sroa.029.2, %bb.al ], [ %.sroa.029.2251, %.thread246 ]
  %.sroa.023.0 = phi i8 [ %.sroa.023.2, %bb.al ], [ %.sroa.023.2252, %.thread246 ] ; 2 uses
  %.pn64 = phi { ptr, i32 } [ %.pn62, %bb.al ], [ %.pn62253, %.thread246 ] ; 2 uses
  br i1 %.sroa.029.0, label %.body.thread, label %.body.thread231

.body.thread236:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMNtNtB1P_8metadata6writerINtB3W_20ThriftMetadataWriterIBR_hEE23finalize_column_indexes00ECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit28.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i143
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread231

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bb, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod428 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod428)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bf, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.be, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i.epil
  %i.bd = getelementptr i8, ptr %i.bc, i64 72
  %.val.i.epil = load i64, ptr %i.bd, align 8, !noundef !3
  %i.be = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil, !llvm.loop !13001

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ], [ %i.be, %.preheader.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13005
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !13007
  store i64 -9223372036854775808, ptr %i.bh, align 8, !alias.scope !13002, !noalias !13007
  %i.bi = load i64, ptr %i.l, align 8, !range !57, !noalias !13005, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i, label %.thread54.i, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4Q_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !13005, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !13005, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13011)
  %.idx.i.i = mul nuw nsw i64 %i.am, 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i
  br i1 %i.an, label %.loopexit57.thread.i, label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  br label %bb.d

.loopexit.i.i:                                    ; preds = %bb.i, %bb.d
  %i.bp = icmp eq ptr %i.bq, %i.bn
  br i1 %i.bp, label %.loopexit57.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i, %.lr.ph67.i.i
  %.sroa.0.066.i.i = phi ptr [ %i.ak, %.lr.ph67.i.i ], [ %i.bq, %.loopexit.i.i ] ; 3 uses
  %.sroa.8.065.i.i = phi i64 [ 0, %.lr.ph67.i.i ], [ %i.br, %.loopexit.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 96 ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.8.065.i.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !13013, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !13013, !noundef !3 ; 2 uses
  %.idx68.i.i = mul nuw nsw i64 %i.bv, 416
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx68.i.i
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.by = icmp samesign ult i64 %.sroa.8.065.i.i, %i.bm
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.8.065.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br i1 %i.by, label %.lr.ph.split.i.i, label %.invoke.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !13011, !noalias !13015, !noundef !3 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %.sroa.036.064.i.i = phi ptr [ %i.bt, %.lr.ph.split.i.i ], [ %i.cd, %bb.i ] ; 5 uses
  %.sroa.838.063.i.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ce, %bb.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 416 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.838.063.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.sroa.838.063.i.i, %i.cc
  br i1 %exitcond.not.i.i, label %.invoke.i, label %bb.f

.invoke.i:                                        ; preds = %.lr.ph.i.i, %bb.e
  %i.cf = phi i64 [ %i.cc, %bb.e ], [ %.sroa.8.065.i.i, %.lr.ph.i.i ]
  %i.cg = phi i64 [ %i.cc, %bb.e ], [ %i.bm, %.lr.ph.i.i ]
  %i.ch = phi ptr [ @128, %bb.e ], [ @127, %.lr.ph.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #55
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !13007

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %i.ca, align 8, !alias.scope !13011, !noalias !13015, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.ci, i64 %.sroa.838.063.i.i ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !1017, !noalias !13013, !noundef !3 ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ck, 9
  br i1 %.not31.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.bo, align 8, !alias.scope !13016, !noalias !13013, !nonnull !3, !align !356, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !13013, !noundef !3 ; 2 uses
  %i.co = icmp eq i64 %i.ck, 0
  br i1 %i.co, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13017
  store ptr %i.bo, ptr %i.i, align 8, !noalias !13017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13017
  invoke void @_RINvXs7_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB6_19ColumnIndexMetaDataNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc24.i unwind label %.loopexit56.i, !noalias !13007

.noexc24.i:                                       ; preds = %bb.h
  %i.cp = load i64, ptr %i.h, align 8, !range !401, !noalias !13017, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cp, 8
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.cq = icmp eq ptr %i.cd, %i.bw
  br i1 %i.cq, label %.loopexit.i.i, label %bb.e

bb.j:                                             ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13017
  %i.cr = load ptr, ptr %i.bo, align 8, !alias.scope !13016, !noalias !13013, !nonnull !3, !align !356, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !13013, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 64
  store i64 1, ptr %i.cu, align 8, !noalias !13013
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 72
  store i64 %i.cn, ptr %i.cv, align 8, !noalias !13013
  %i.cw = sub i64 %i.ct, %i.cn
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 336
  store i32 1, ptr %i.cy, align 8, !noalias !13013
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 340
  store i32 %i.cx, ptr %i.cz, align 4, !noalias !13013
  br label %bb.i

.loopexit57.i:                                    ; preds = %.loopexit.i.i
  %.pr.pre.i = load i64, ptr %i.l, align 8, !noalias !13005 ; 2 uses
  %.not21.i = icmp eq i64 %.pr.pre.i, -9223372036854775808
  br i1 %.not21.i, label %.thread54.i, label %.loopexit57.i..loopexit57.thread.i_crit_edge

.loopexit57.i..loopexit57.thread.i_crit_edge:     ; preds = %.loopexit57.i
  %.pre = load ptr, ptr %i.bj, align 8, !noalias !13005
  %.pre345 = load i64, ptr %i.bl, align 8, !noalias !13005
  br label %.loopexit57.thread.i

bb.k:                                             ; preds = %.noexc24.i
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !13002
  %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx, i64 16, i1 false), !noalias !13002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13017
  %i.da = load i64, ptr %i.l, align 8, !range !57, !alias.scope !13026, !noalias !13005, !noundef !3
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtBO_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.m, !noalias !13007

bb.m:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.n, !noalias !13007

end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.da
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dd

.body158:                                         ; preds = %bb.dd, %bb.db, %.body150
  %.sroa.023.10 = phi i8 [ %.sroa.023.9, %.body150 ], [ %.sroa.023.8, %bb.db ], [ %.sroa.023.8, %bb.dd ]
  %.pn68 = phi { ptr, i32 } [ %.pn66, %.body150 ], [ %i.kx, %bb.db ], [ %i.la, %bb.dd ] ; 2 uses
  %i.kz = trunc nuw i8 %.sroa.023.10 to i1
  br i1 %i.kz, label %bb.dm, label %common.resume

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %cond = icmp eq i8 %.sroa.023.8, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.de

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.lc = load i64, ptr %i.lb, align 8, !range !57, !alias.scope !13130, !noundef !3
  %i.ld = icmp eq i64 %i.lc, -9223372036854775808
  br i1 %i.ld, label %.noexc163, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %bb.dn unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.df
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %.noexc163 unwind label %bb.di

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.noexc163:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.de
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.li = load i64, ptr %i.lh, align 8, !range !57, !alias.scope !13133, !noundef !3
  %i.lj = icmp eq i64 %i.li, -9223372036854775808
  br i1 %i.lj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dj

bb.dj:                                            ; preds = %.noexc163
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %common.resume unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dj
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

bb.dm:                                            ; preds = %.body158
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lm) #54
          to label %bb.dn unwind label %bb.bx

bb.dn:                                            ; preds = %bb.dm, %bb.dg, %bb.di
  %.pn70.ph = phi { ptr, i32 } [ %.pn68, %bb.dm ], [ %i.lg, %bb.di ], [ %i.le, %bb.dg ]
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ln) #54
          to label %common.resume unwind label %bb.bx

.body.thread231:                                  ; preds = %bb.cq, %.body, %.body.thread, %bb.b
  %.pn64226 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn64227, %.body.thread ], [ %.pn64, %bb.b ], [ %i.kj, %bb.cq ] ; 2 uses
  %.sroa.023.0224 = phi i8 [ %.sroa.023.7, %.body ], [ %.sroa.023.0225, %.body.thread ], [ %.sroa.023.0, %bb.b ], [ %.sroa.023.7, %bb.cq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #54
          to label %bb.do unwind label %bb.bx

.body.thread:                                     ; preds = %bb.ap, %bb.m, %bb.p, %bb.r, %.body.thread236, %bb.b
  %.pn64227 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread236 ], [ %.pn64, %bb.b ], [ %lpad.phi.i, %bb.r ], [ %i.ds, %bb.p ], [ %i.dc, %bb.m ], [ %i.gy, %bb.ap ]
  %.sroa.023.0225 = phi i8 [ 1, %.body.thread236 ], [ %.sroa.023.0, %bb.b ], [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.ap ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %1) #54
          to label %.body.thread231 unwind label %bb.bx

bb.do:                                            ; preds = %.body.thread231
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lo) #54
          to label %bb.dp unwind label %bb.bx

bb.dp:                                            ; preds = %bb.do
  %cond73 = icmp eq i8 %.sroa.023.0224, 0
  br i1 %cond73, label %common.resume, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lp) #54
          to label %bb.dr unwind label %bb.bx

bb.dr:                                            ; preds = %bb.dq
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq) #54
          to label %common.resume unwind label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finishB1n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 16 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [168 x i8], align 8               ; 4 uses
  %i.q = alloca [168 x i8], align 8               ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [168 x i8], align 8               ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [168 x i8], align 8               ; 9 uses
  %i.w = alloca [168 x i8], align 8               ; 4 uses
  %i.x = alloca [168 x i8], align 8               ; 3 uses
  %i.y = alloca [4 x i8], align 4                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [96 x i8], align 8               ; 14 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.67.sroa.7 = alloca [16 x i8], align 8    ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.6.sroa.7 = alloca [16 x i8], align 8     ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 5 uses
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.an, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.am, 4
  br i1 %i.ao, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.am, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bb, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ba, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 72
  %.val.i = load i64, ptr %i.aq, align 8, !noundef !3
  %i.ar = add i64 %.val.i, %.sroa.02.0.i
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.at = getelementptr i8, ptr %i.as, i64 168
  %.val.i.1 = load i64, ptr %i.at, align 8, !noundef !3
  %i.au = add i64 %.val.i.1, %i.ar
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aw = getelementptr i8, ptr %i.av, i64 264
  %.val.i.2 = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ax = add i64 %.val.i.2, %i.au
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.az = getelementptr i8, ptr %i.ay, i64 360
  %.val.i.3 = load i64, ptr %i.az, align 8, !noundef !3
  %i.ba = add i64 %.val.i.3, %i.ax                ; 3 uses
  %i.bb = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa, label %.preheader

bb.b:                                             ; preds = %.thread246, %bb.al
  %.sroa.029.0 = phi i1 [ %.sroa.029.2, %bb.al ], [ %.sroa.029.2251, %.thread246 ]
  %.sroa.023.0 = phi i8 [ %.sroa.023.2, %bb.al ], [ %.sroa.023.2252, %.thread246 ] ; 2 uses
  %.pn64 = phi { ptr, i32 } [ %.pn62, %bb.al ], [ %.pn62253, %.thread246 ] ; 2 uses
  br i1 %.sroa.029.0, label %.body.thread, label %.body.thread231

.body.thread236:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMNtNtB1P_8metadata6writerINtB3W_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_column_indexes00EB4T_.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit28.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i143
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread231

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bb, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa ]
  %lcmp.mod428 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod428)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bf, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.be, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i.epil
  %i.bd = getelementptr i8, ptr %i.bc, i64 72
  %.val.i.epil = load i64, ptr %i.bd, align 8, !noundef !3
  %i.be = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit, label %.preheader.epil, !llvm.loop !13136

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit.loopexit.unr-lcssa ], [ %i.be, %.preheader.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13140
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !13142
  store i64 -9223372036854775808, ptr %i.bh, align 8, !alias.scope !13137, !noalias !13142
  %i.bi = load i64, ptr %i.l, align 8, !range !57, !noalias !13140, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i, label %.thread54.i, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finish0NCINvXse_NtB1T_5accumxNtB5l_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EB45_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !13140, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !13140, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13146)
  %.idx.i.i = mul nuw nsw i64 %i.am, 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i
  br i1 %i.an, label %.loopexit57.thread.i, label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  br label %bb.d

.loopexit.i.i:                                    ; preds = %bb.i, %bb.d
  %i.bp = icmp eq ptr %i.bq, %i.bn
  br i1 %i.bp, label %.loopexit57.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i, %.lr.ph67.i.i
  %.sroa.0.066.i.i = phi ptr [ %i.ak, %.lr.ph67.i.i ], [ %i.bq, %.loopexit.i.i ] ; 3 uses
  %.sroa.8.065.i.i = phi i64 [ 0, %.lr.ph67.i.i ], [ %i.br, %.loopexit.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 96 ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.8.065.i.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !13148, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !13148, !noundef !3 ; 2 uses
  %.idx68.i.i = mul nuw nsw i64 %i.bv, 416
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx68.i.i
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.by = icmp samesign ult i64 %.sroa.8.065.i.i, %i.bm
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.8.065.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br i1 %i.by, label %.lr.ph.split.i.i, label %.invoke.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !13146, !noalias !13150, !noundef !3 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %.sroa.036.064.i.i = phi ptr [ %i.bt, %.lr.ph.split.i.i ], [ %i.cd, %bb.i ] ; 5 uses
  %.sroa.838.063.i.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ce, %bb.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 416 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.838.063.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.sroa.838.063.i.i, %i.cc
  br i1 %exitcond.not.i.i, label %.invoke.i, label %bb.f

.invoke.i:                                        ; preds = %.lr.ph.i.i, %bb.e
  %i.cf = phi i64 [ %i.cc, %bb.e ], [ %.sroa.8.065.i.i, %.lr.ph.i.i ]
  %i.cg = phi i64 [ %i.cc, %bb.e ], [ %i.bm, %.lr.ph.i.i ]
  %i.ch = phi ptr [ @128, %bb.e ], [ @127, %.lr.ph.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #55
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !13142

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %i.ca, align 8, !alias.scope !13146, !noalias !13150, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.ci, i64 %.sroa.838.063.i.i ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !1017, !noalias !13148, !noundef !3 ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ck, 9
  br i1 %.not31.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.bo, align 8, !alias.scope !13151, !noalias !13148, !nonnull !3, !align !356, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !13148, !noundef !3 ; 2 uses
  %i.co = icmp eq i64 %i.ck, 0
  br i1 %i.co, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13152
  store ptr %i.bo, ptr %i.i, align 8, !noalias !13152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13152
  invoke void @_RINvXs7_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB6_19ColumnIndexMetaDataNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEEB2S_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc24.i unwind label %.loopexit56.i, !noalias !13142

.noexc24.i:                                       ; preds = %bb.h
  %i.cp = load i64, ptr %i.h, align 8, !range !401, !noalias !13152, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cp, 8
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.cq = icmp eq ptr %i.cd, %i.bw
  br i1 %i.cq, label %.loopexit.i.i, label %bb.e

bb.j:                                             ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13152
  %i.cr = load ptr, ptr %i.bo, align 8, !alias.scope !13151, !noalias !13148, !nonnull !3, !align !356, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !13148, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 64
  store i64 1, ptr %i.cu, align 8, !noalias !13148
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 72
  store i64 %i.cn, ptr %i.cv, align 8, !noalias !13148
  %i.cw = sub i64 %i.ct, %i.cn
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 336
  store i32 1, ptr %i.cy, align 8, !noalias !13148
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 340
  store i32 %i.cx, ptr %i.cz, align 4, !noalias !13148
  br label %bb.i

.loopexit57.i:                                    ; preds = %.loopexit.i.i
  %.pr.pre.i = load i64, ptr %i.l, align 8, !noalias !13140 ; 2 uses
  %.not21.i = icmp eq i64 %.pr.pre.i, -9223372036854775808
  br i1 %.not21.i, label %.thread54.i, label %.loopexit57.i..loopexit57.thread.i_crit_edge

.loopexit57.i..loopexit57.thread.i_crit_edge:     ; preds = %.loopexit57.i
  %.pre = load ptr, ptr %i.bj, align 8, !noalias !13140
  %.pre345 = load i64, ptr %i.bl, align 8, !noalias !13140
  br label %.loopexit57.thread.i

bb.k:                                             ; preds = %.noexc24.i
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !13137
  %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx, i64 16, i1 false), !noalias !13137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13152
  %i.da = load i64, ptr %i.l, align 8, !range !57, !alias.scope !13161, !noalias !13140, !noundef !3
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtBO_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.m, !noalias !13142

bb.m:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.n, !noalias !13142

end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finishB1n_:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.da
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dd

.body158:                                         ; preds = %bb.dd, %bb.db, %.body150
  %.sroa.023.10 = phi i8 [ %.sroa.023.9, %.body150 ], [ %.sroa.023.8, %bb.db ], [ %.sroa.023.8, %bb.dd ]
  %.pn68 = phi { ptr, i32 } [ %.pn66, %.body150 ], [ %i.kx, %bb.db ], [ %i.la, %bb.dd ] ; 2 uses
  %i.kz = trunc nuw i8 %.sroa.023.10 to i1
  br i1 %i.kz, label %bb.dm, label %common.resume

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %cond = icmp eq i8 %.sroa.023.8, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.de

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.lc = load i64, ptr %i.lb, align 8, !range !57, !alias.scope !13265, !noundef !3
  %i.ld = icmp eq i64 %i.lc, -9223372036854775808
  br i1 %i.ld, label %.noexc163, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %bb.dn unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.df
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %.noexc163 unwind label %bb.di

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.noexc163:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.de
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.li = load i64, ptr %i.lh, align 8, !range !57, !alias.scope !13268, !noundef !3
  %i.lj = icmp eq i64 %i.li, -9223372036854775808
  br i1 %i.lj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dj

bb.dj:                                            ; preds = %.noexc163
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %common.resume unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dj
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

bb.dm:                                            ; preds = %.body158
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lm) #54
          to label %bb.dn unwind label %bb.bx

bb.dn:                                            ; preds = %bb.dm, %bb.dg, %bb.di
  %.pn70.ph = phi { ptr, i32 } [ %.pn68, %bb.dm ], [ %i.lg, %bb.di ], [ %i.le, %bb.dg ]
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ln) #54
          to label %common.resume unwind label %bb.bx

.body.thread231:                                  ; preds = %bb.cq, %.body, %.body.thread, %bb.b
  %.pn64226 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn64227, %.body.thread ], [ %.pn64, %bb.b ], [ %i.kj, %bb.cq ] ; 2 uses
  %.sroa.023.0224 = phi i8 [ %.sroa.023.7, %.body ], [ %.sroa.023.0225, %.body.thread ], [ %.sroa.023.0, %bb.b ], [ %.sroa.023.7, %bb.cq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #54
          to label %bb.do unwind label %bb.bx

.body.thread:                                     ; preds = %bb.ap, %bb.m, %bb.p, %bb.r, %.body.thread236, %bb.b
  %.pn64227 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread236 ], [ %.pn64, %bb.b ], [ %lpad.phi.i, %bb.r ], [ %i.ds, %bb.p ], [ %i.dc, %bb.m ], [ %i.gy, %bb.ap ]
  %.sroa.023.0225 = phi i8 [ 1, %.body.thread236 ], [ %.sroa.023.0, %bb.b ], [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.ap ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %1) #54
          to label %.body.thread231 unwind label %bb.bx

bb.do:                                            ; preds = %.body.thread231
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lo) #54
          to label %bb.dp unwind label %bb.bx

bb.dp:                                            ; preds = %bb.do
  %cond73 = icmp eq i8 %.sroa.023.0224, 0
  br i1 %cond73, label %common.resume, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.lp) #54
          to label %bb.dr unwind label %bb.bx

bb.dr:                                            ; preds = %bb.dq
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq) #54
          to label %common.resume unwind label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 16 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [168 x i8], align 8               ; 4 uses
  %i.q = alloca [168 x i8], align 8               ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [168 x i8], align 8               ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [168 x i8], align 8               ; 9 uses
  %i.w = alloca [168 x i8], align 8               ; 4 uses
  %i.x = alloca [168 x i8], align 8               ; 3 uses
  %i.y = alloca [4 x i8], align 4                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [96 x i8], align 8               ; 14 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.67.sroa.7 = alloca [16 x i8], align 8    ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.6.sroa.7 = alloca [16 x i8], align 8     ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 5 uses
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.an, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.am, 4
  br i1 %i.ao, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.am, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bb, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ba, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 72
  %.val.i = load i64, ptr %i.aq, align 8, !noundef !3
  %i.ar = add i64 %.val.i, %.sroa.02.0.i
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.at = getelementptr i8, ptr %i.as, i64 168
  %.val.i.1 = load i64, ptr %i.at, align 8, !noundef !3
  %i.au = add i64 %.val.i.1, %i.ar
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.aw = getelementptr i8, ptr %i.av, i64 264
  %.val.i.2 = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ax = add i64 %.val.i.2, %i.au
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i
  %i.az = getelementptr i8, ptr %i.ay, i64 360
  %.val.i.3 = load i64, ptr %i.az, align 8, !noundef !3
  %i.ba = add i64 %.val.i.3, %i.ax                ; 3 uses
  %i.bb = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, label %.preheader

bb.b:                                             ; preds = %.thread246, %bb.al
  %.sroa.029.0 = phi i1 [ %.sroa.029.2, %bb.al ], [ %.sroa.029.2251, %.thread246 ]
  %.sroa.023.0 = phi i8 [ %.sroa.023.2, %bb.al ], [ %.sroa.023.2252, %.thread246 ] ; 2 uses
  %.pn64 = phi { ptr, i32 } [ %.pn62, %bb.al ], [ %.pn62253, %.thread246 ] ; 2 uses
  br i1 %.sroa.029.0, label %.body.thread, label %.body.thread231

.body.thread236:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMNtNtB1P_8metadata6writerINtB3W_20ThriftMetadataWriterQIBR_hEE23finalize_column_indexes00ECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB13_IBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEEECs14kWLkQVSKO_14deltalake_core.exit28.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs14kWLkQVSKO_14deltalake_core.exit.i143
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread231

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bb, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod428 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod428)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bf, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.be, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %.sroa.04.0.i.epil
  %i.bd = getelementptr i8, ptr %i.bc, i64 72
  %.val.i.epil = load i64, ptr %i.bd, align 8, !noundef !3
  %i.be = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil, !llvm.loop !13271

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.ba, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ], [ %i.be, %.preheader.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13275
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !13277
  store i64 -9223372036854775808, ptr %i.bh, align 8, !alias.scope !13272, !noalias !13277
  %i.bi = load i64, ptr %i.l, align 8, !range !57, !noalias !13275, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i, label %.thread54.i, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB1V_8adapters3map8map_foldRBQ_xxNCNvMNtBS_6writerINtB3k_20ThriftMetadataWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finish0NCINvXse_NtB1T_5accumxNtB4R_3Sum3sumINtB2F_3MapBF_B3f_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !13275, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !13275, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13281)
  %.idx.i.i = mul nuw nsw i64 %i.am, 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i
  br i1 %i.an, label %.loopexit57.thread.i, label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  br label %bb.d

.loopexit.i.i:                                    ; preds = %bb.i, %bb.d
  %i.bp = icmp eq ptr %i.bq, %i.bn
  br i1 %i.bp, label %.loopexit57.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i, %.lr.ph67.i.i
  %.sroa.0.066.i.i = phi ptr [ %i.ak, %.lr.ph67.i.i ], [ %i.bq, %.loopexit.i.i ] ; 3 uses
  %.sroa.8.065.i.i = phi i64 [ 0, %.lr.ph67.i.i ], [ %i.br, %.loopexit.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 96 ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.8.065.i.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !13283, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !13283, !noundef !3 ; 2 uses
  %.idx68.i.i = mul nuw nsw i64 %i.bv, 416
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx68.i.i
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.by = icmp samesign ult i64 %.sroa.8.065.i.i, %i.bm
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.8.065.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br i1 %i.by, label %.lr.ph.split.i.i, label %.invoke.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !13281, !noalias !13285, !noundef !3 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %.sroa.036.064.i.i = phi ptr [ %i.bt, %.lr.ph.split.i.i ], [ %i.cd, %bb.i ] ; 5 uses
  %.sroa.838.063.i.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ce, %bb.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 416 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.838.063.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.sroa.838.063.i.i, %i.cc
  br i1 %exitcond.not.i.i, label %.invoke.i, label %bb.f

.invoke.i:                                        ; preds = %.lr.ph.i.i, %bb.e
  %i.cf = phi i64 [ %i.cc, %bb.e ], [ %.sroa.8.065.i.i, %.lr.ph.i.i ]
  %i.cg = phi i64 [ %i.cc, %bb.e ], [ %i.bm, %.lr.ph.i.i ]
  %i.ch = phi ptr [ @128, %bb.e ], [ @127, %.lr.ph.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #55
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !13277

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %i.ca, align 8, !alias.scope !13281, !noalias !13285, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.ci, i64 %.sroa.838.063.i.i ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !1017, !noalias !13283, !noundef !3 ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ck, 9
  br i1 %.not31.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.bo, align 8, !alias.scope !13286, !noalias !13283, !nonnull !3, !align !356, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !13283, !noundef !3 ; 2 uses
  %i.co = icmp eq i64 %i.ck, 0
  br i1 %i.co, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13287
  store ptr %i.bo, ptr %i.i, align 8, !noalias !13287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13287
  invoke void @_RINvXs7_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB6_19ColumnIndexMetaDataNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc24.i unwind label %.loopexit56.i, !noalias !13277

.noexc24.i:                                       ; preds = %bb.h
  %i.cp = load i64, ptr %i.h, align 8, !range !401, !noalias !13287, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cp, 8
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.cq = icmp eq ptr %i.cd, %i.bw
  br i1 %i.cq, label %.loopexit.i.i, label %bb.e

bb.j:                                             ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13287
  %i.cr = load ptr, ptr %i.bo, align 8, !alias.scope !13286, !noalias !13283, !nonnull !3, !align !356, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !13283, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 64
  store i64 1, ptr %i.cu, align 8, !noalias !13283
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 72
  store i64 %i.cn, ptr %i.cv, align 8, !noalias !13283
  %i.cw = sub i64 %i.ct, %i.cn
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 336
  store i32 1, ptr %i.cy, align 8, !noalias !13283
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.036.064.i.i, i64 340
  store i32 %i.cx, ptr %i.cz, align 4, !noalias !13283
  br label %bb.i

.loopexit57.i:                                    ; preds = %.loopexit.i.i
  %.pr.pre.i = load i64, ptr %i.l, align 8, !noalias !13275 ; 2 uses
  %.not21.i = icmp eq i64 %.pr.pre.i, -9223372036854775808
  br i1 %.not21.i, label %.thread54.i, label %.loopexit57.i..loopexit57.thread.i_crit_edge

.loopexit57.i..loopexit57.thread.i_crit_edge:     ; preds = %.loopexit57.i
  %.pre = load ptr, ptr %i.bj, align 8, !noalias !13275
  %.pre345 = load i64, ptr %i.bl, align 8, !noalias !13275
  br label %.loopexit57.thread.i

bb.k:                                             ; preds = %.noexc24.i
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !13272
  %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.9..sroa.12.8..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.sroa_idx, i64 16, i1 false), !noalias !13272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13287
  %i.da = load i64, ptr %i.l, align 8, !range !57, !alias.scope !13296, !noalias !13275, !noundef !3
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtBO_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.m, !noalias !13277

bb.m:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread unwind label %bb.n, !noalias !13277

end_hunk_2
