inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan17try_new_with_scan:bb.a
  store ptr %i.cg, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ch, ptr %.sroa.615.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ci, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.cj, ptr %.sroa.816.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit72

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit72: ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit57
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !14849)
  call void @llvm.experimental.noalias.scope.decl(metadata !14852)
  %i.ck = load ptr, ptr %i.l, align 8, !alias.scope !14855, !nonnull !27, !noundef !27
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !14855
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.e

bb.an:                                            ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.co = load i64, ptr %5, align 16, !range !989, !alias.scope !14856, !noundef !27
  %i.cp = icmp eq i64 %i.co, 37
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit63, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit63 unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body.thread76, %bb.d, %bb.ap
  %.pn38 = phi { ptr, i32 } [ %i.cq, %bb.ap ], [ %.pn36, %bb.d ], [ %.pn36, %.body.thread76 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %4) #60
          to label %.body64 unwind label %bb.s

bb.ap:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit63: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit61, %bb.ao
  %i.cr = load i64, ptr %4, align 8, !range !66, !alias.scope !14859, !noundef !27
  %i.cs = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %i.cs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit63
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body64 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.au

.body64:                                          ; preds = %bb.au, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn40 = phi { ptr, i32 } [ %.pn38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.cy, %bb.au ], [ %i.ct, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14862)
  call void @llvm.experimental.noalias.scope.decl(metadata !14865)
  %i.cv = load ptr, ptr %i.m, align 8, !alias.scope !14868, !nonnull !27, !noundef !27
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !14868
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68

bb.at:                                            ; preds = %.body64
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68 unwind label %bb.s

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit63, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14869)
  call void @llvm.experimental.noalias.scope.decl(metadata !14872)
  %i.cz = load ptr, ptr %i.m, align 8, !alias.scope !14875, !nonnull !27, !noundef !27
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !14875
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70 unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68: ; preds = %.body64, %bb.at, %bb.ax
  %.pn42 = phi { ptr, i32 } [ %i.df, %bb.ax ], [ %.pn40, %bb.at ], [ %.pn40, %.body64 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14876)
  call void @llvm.experimental.noalias.scope.decl(metadata !14879)
  %i.dc = load ptr, ptr %i.n, align 8, !alias.scope !14882, !nonnull !27, !noundef !27
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !14882
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit unwind label %bb.s

bb.ax:                                            ; preds = %bb.av
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !14883)
  call void @llvm.experimental.noalias.scope.decl(metadata !14886)
  %i.dg = load ptr, ptr %i.n, align 8, !alias.scope !14889, !nonnull !27, !noundef !27
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !14889
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit72

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit70
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit72

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEEB1m_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit68, %bb.aw
  resume { ptr, i32 } %.pn42
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 16 captures(none) dereferenceable(176) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %3, i64 noundef range(i64 0, 82351536043346213) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [160 x i8], align 8               ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 9 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [96 x i8], align 16               ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [112 x i8], align 16              ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [96 x i8], align 16              ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.675 = alloca [32 x i8], align 8          ; 6 uses
  %i.ak = alloca [64 x i8], align 8               ; 10 uses
  %i.al = alloca [144 x i8], align 8              ; 8 uses
  %.sroa.669 = alloca [32 x i8], align 8          ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 15 uses
  %i.aq = alloca [8 x i8], align 8                ; 11 uses
  %i.ar = alloca [48 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [40 x i8], align 8               ; 15 uses
  %i.au = alloca [80 x i8], align 8               ; 9 uses
  %i.av = alloca [40 x i8], align 8               ; 13 uses
  %i.aw = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.640 = alloca [32 x i8], align 8          ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 12 uses
  %i.ay = alloca [112 x i8], align 16             ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [96 x i8], align 16              ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [128 x i8], align 16             ; 9 uses
  %.sroa.720 = alloca [40 x i8], align 8          ; 8 uses
  %i.bf = alloca [128 x i8], align 16             ; 9 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [24 x i8], align 8               ; 2 uses
  %i.bl = alloca [24 x i8], align 8               ; 13 uses
  %i.bm = alloca [8 x i8], align 8                ; 14 uses
  %i.bn = alloca [128 x i8], align 16             ; 9 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 7 uses
  %i.bo = alloca [112 x i8], align 16             ; 15 uses
  %i.bp = alloca [8 x i8], align 8                ; 10 uses
  %i.bq = alloca [40 x i8], align 8               ; 7 uses
  %i.br = alloca [8 x i8], align 8                ; 15 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val257 = load ptr, ptr %i.bs, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val257, i64 552 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig12table_schema(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bt)
          to label %bb.c unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit377: ; preds = %bb.gq, %bb.gr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373, %bb.b
  %.sroa.0111.0 = phi i8 [ %.sroa.0111.1, %bb.b ], [ %.sroa.0111.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373 ], [ %.sroa.0111.2, %bb.gr ], [ %.sroa.0111.2, %bb.gq ]
  %.pn242 = phi { ptr, i32 } [ %i.bx, %bb.b ], [ %.pn240, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373 ], [ %.pn240, %bb.gr ], [ %.pn240, %bb.gq ] ; 2 uses
  %i.bu = load i64, ptr %6, align 8, !range !66, !noundef !27
  %i.bv = icmp ne i64 %i.bu, -9223372036854775808
  %i.bw = trunc nuw i8 %.sroa.0111.0 to i1
  %or.cond3 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3, label %bb.gs, label %common.resume

bb.b:                                             ; preds = %bb.gi, %bb.ek, %bb.a
  %.sroa.0111.1 = phi i8 [ %.sroa.0111.12, %bb.gi ], [ %.sroa.0111.6, %bb.ek ], [ 1, %bb.a ]
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit377

bb.c:                                             ; preds = %bb.a
  %i.by = load i64, ptr %i.bq, align 8, !range !874, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.by, 20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.3130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3130.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6127.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %i.cb, align 8
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %.sroa.2129.0..sroa_idx, align 16
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.cc = load i64, ptr %6, align 8, !range !66, !noundef !27
  %.not244 = icmp eq i64 %i.cc, -9223372036854775808
  br i1 %.not244, label %bb.eo, label %bb.gn

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  store ptr %i.ca, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters(ptr noalias noundef align 16 captures(none) dereferenceable(128) %i.bn, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5)
          to label %bb.g unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373: ; preds = %bb.gl, %bb.gk, %bb.gm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371, %bb.f
  %.sroa.0109.0 = phi i8 [ %.sroa.0109.1, %bb.f ], [ %.sroa.0109.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371 ], [ %.sroa.0109.4, %bb.gm ], [ %.sroa.0109.4, %bb.gk ], [ %.sroa.0109.4, %bb.gl ]
  %.sroa.0111.2 = phi i8 [ %.sroa.0111.3, %bb.f ], [ %.sroa.0111.7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371 ], [ %.sroa.0111.7, %bb.gm ], [ %.sroa.0111.7, %bb.gk ], [ %.sroa.0111.7, %bb.gl ] ; 3 uses
  %.pn240 = phi { ptr, i32 } [ %i.ce, %bb.f ], [ %.pn238, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371 ], [ %.pn238, %bb.gm ], [ %.pn238, %bb.gk ], [ %.pn238, %bb.gl ] ; 3 uses
  %i.cd = trunc nuw i8 %.sroa.0109.0 to i1
  br i1 %i.cd, label %bb.gq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit377

bb.f:                                             ; preds = %bb.en, %bb.aw, %bb.e
  %.sroa.0109.1 = phi i8 [ %.sroa.0109.6, %bb.aw ], [ 1, %bb.en ], [ 1, %bb.e ]
  %.sroa.0111.3 = phi i8 [ %.sroa.0111.9, %bb.aw ], [ %.sroa.0111.6, %bb.en ], [ 1, %bb.e ]
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373

bb.g:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.cg = load i64, ptr %i.cf, align 16, !range !14890, !noundef !27 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 38
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.gh

bb.i:                                             ; preds = %bb.g
  %.sroa.0131.0.copyload = load ptr, ptr %i.bn, align 16 ; 2 uses
  %.sroa.7134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7134.0..sroa_idx, i64 40, i1 false)
  %.sroa.8135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.3198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3198.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8135.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.sroa.2197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2197.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %.sroa.0131.0.copyload, ptr %i.bp, align 8
  store i64 %i.cg, ptr %i.bo, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.ck = load i64, ptr %6, align 8, !range !66, !noundef !27
  %.not202 = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not202, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !27, !noundef !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !27
  invoke fastcc void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters(ptr noalias noundef align 16 captures(none) dereferenceable(128) %i.be, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.cm, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %.sroa.0131.0.copyload, ptr %i.bm, align 8
  br label %bb.z

.body276:                                         ; preds = %bb.al, %bb.t, %bb.u, %bb.l, %.body271
  %.pn205 = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %.pn, %.body271 ], [ %i.cp, %bb.l ], [ %i.cy, %bb.u ], [ %i.ec, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bl) #60
          to label %.thread unwind label %bb.ab

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i275, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit262, %bb.s, %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body276

bb.m:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cr = load i64, ptr %i.cq, align 16, !range !14890, !noundef !27 ; 4 uses
  %i.cs = icmp eq i64 %i.cr, 38
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.720, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.720, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.720)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.an

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bf, ptr noundef nonnull align 16 dereferenceable(16) %i.be, i64 16, i1 false)
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.720, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6153.0..sroa_idx, i64 40, i1 false)
  %.sroa.7154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.626.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7154.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.720, i64 40, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx, align 16
  %i.cv = load ptr, ptr %i.bf, align 16, !noundef !27 ; 4 uses
  %.not203 = icmp eq ptr %i.cv, null
  br i1 %.not203, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %i.cv, ptr %i.bg, align 8
  %i.cw = icmp eq i64 %i.cr, 37
  br i1 %i.cw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new:bb.a
  %.sroa.0105.2 = phi i8 [ %.sroa.0105.4, %.body304 ], [ %.sroa.0105.3, %bb.bx ] ; 2 uses
  %.sroa.0119.0 = phi i8 [ %.sroa.0119.2, %.body304 ], [ %.sroa.0119.1, %bb.bx ]
  %.pn230 = phi { ptr, i32 } [ %.pn228, %.body304 ], [ %i.gq, %bb.bx ] ; 2 uses
  %i.gp = trunc nuw i8 %.sroa.0119.0 to i1
  br i1 %i.gp, label %.body296.thread, label %.body245

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325
  %.sroa.0105.3 = phi i8 [ %.sroa.0105.15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325 ]
  %.sroa.0119.1 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325 ]
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body296

bb.by:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !14956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.gr = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !nonnull !27, !noundef !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !noundef !27 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14957
  %i.gy = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc302 unwind label %bb.cd

.noexc302:                                        ; preds = %bb.by
  %i.gz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !14957
  %i.ha = icmp eq i8 %i.gz, 2
  br i1 %i.ha, label %.noexc303, label %bb.bz, !prof !152

bb.bz:                                            ; preds = %.noexc302
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #58
          to label %.noexc303 unwind label %bb.cd

bb.ca:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301, %bb.cb
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i298, i64 noundef 16, i64 noundef 16)
          to label %.body304 unwind label %bb.cc, !noalias !14957

.noexc303:                                        ; preds = %bb.bz, %.noexc302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !14957
  %.sroa.4.0..sroa_idx.i298 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx.i298, align 8, !noalias !14957
  %.not.i299 = icmp eq i64 %i.gv, 0
  br i1 %.not.i299, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301, label %bb.cb, !prof !152

bb.cb:                                            ; preds = %.noexc303
  %i.hc = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i298, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301 unwind label %bb.ca, !noalias !14957 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301: ; preds = %bb.cb, %.noexc303
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2O_14KernelScanPlan7try_news_0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4W_7HashSetReEINtNtNtBa_6traits7collect6ExtendB5F_E6extendBX_E0ENtNtB5N_8iterator8Iterator4folduNCINvNvB6w_8for_each4callTB5F_uENCINvXs1l_NtB4Y_3mapINtB7I_7HashMapB5F_uEIB5J_B7r_E6extendBN_E0E0EB2Y_(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.cf unwind label %bb.ca, !noalias !14957

bb.cc:                                            ; preds = %bb.ca
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !14957
  unreachable

.body304:                                         ; preds = %bb.ft, %bb.cd, %bb.ca, %bb.ce
  %.sroa.0105.4 = phi i8 [ %.sroa.0105.6, %bb.ce ], [ 1, %bb.ca ], [ %.sroa.0105.5, %bb.cd ], [ %.sroa.0105.6447, %bb.ft ]
  %.sroa.0119.2 = phi i8 [ %.sroa.0119.3, %bb.ce ], [ 1, %bb.ca ], [ 1, %bb.cd ], [ %.sroa.0119.3448, %bb.ft ]
  %.pn228 = phi { ptr, i32 } [ %.pn225.pn, %bb.ce ], [ %i.hb, %bb.ca ], [ %i.hf, %bb.cd ], [ %.pn225.pn449, %bb.ft ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef 16, i64 noundef 16)
          to label %.body296 unwind label %bb.ab

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346, %bb.bz, %bb.by
  %.sroa.0105.5 = phi i8 [ %.sroa.0105.15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346 ], [ 1, %bb.bz ], [ 1, %bb.by ]
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body304

bb.ce:                                            ; preds = %.thread454, %bb.fs, %.noexc308
  %.sroa.0105.6 = phi i8 [ %.sroa.0105.7450, %bb.fs ], [ %.sroa.0105.9, %.noexc308 ], [ %.sroa.0105.8.ph, %.thread454 ] ; 2 uses
  %.sroa.0118.0 = phi i8 [ %.sroa.0118.1451, %bb.fs ], [ %.sroa.0118.3, %.noexc308 ], [ %.sroa.0119.5.ph, %.thread454 ]
  %.sroa.0119.3 = phi i8 [ %.sroa.0119.4452, %bb.fs ], [ %.sroa.0119.6, %.noexc308 ], [ %.sroa.0119.5.ph, %.thread454 ] ; 2 uses
  %.pn225.pn = phi { ptr, i32 } [ %.pn225453, %bb.fs ], [ %.pn223, %.noexc308 ], [ %lpad.thr_comm, %.thread454 ] ; 2 uses
  %i.hg = trunc nuw i8 %.sroa.0118.0 to i1
  br i1 %i.hg, label %bb.ft, label %.body304

.thread442:                                       ; preds = %bb.cf
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.cf:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !14960)
  %i.hi = load ptr, ptr %i.av, align 8, !alias.scope !14960, !noalias !14963, !nonnull !27, !noundef !27 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !14960, !noalias !14963, !noundef !27
  %i.hl = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 1
  %i.hn = load <16 x i8>, ptr %i.hi, align 16, !noalias !14965
  %i.ho = icmp sgt <16 x i8> %i.hn, splat (i8 -1)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !14960, !noalias !14963, !noundef !27
  store ptr %i.hi, ptr %i.ar, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.hp, ptr %.sroa.047.sroa.4.0..sroa_idx, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.hm, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  %.sroa.047.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store <16 x i1> %i.ho, ptr %.sroa.047.sroa.6.0..sroa_idx, align 8
  %.sroa.047.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.hr, ptr %.sroa.047.sroa.8.0..sroa_idx, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.at, ptr %.sroa.448.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceB11_NtNtB2x_6hasher18DefaultHashBuilderEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ar)
          to label %bb.cg unwind label %.thread442

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.hs = invoke noundef nonnull ptr @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig13file_id_field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %5)
          to label %bb.ci unwind label %bb.ch

.noexc308:                                        ; preds = %bb.cj, %.body339
  br i1 %.sroa.0117.2, label %bb.fs, label %bb.ce

.thread454:                                       ; preds = %bb.fn, %bb.eh
  %.sroa.0105.8.ph = phi i8 [ 0, %bb.eh ], [ %.sroa.0105.15, %bb.fn ]
  %.sroa.0119.5.ph = phi i8 [ 0, %bb.eh ], [ 1, %bb.fn ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ch:                                            ; preds = %bb.cg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.ci:                                            ; preds = %bb.cg
  store ptr %i.hs, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.cl unwind label %bb.ck

.body339:                                         ; preds = %bb.fc, %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0105.9 = phi i8 [ %.sroa.0105.11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0105.10, %bb.ck ], [ %.sroa.0105.15, %bb.fc ] ; 2 uses
  %.sroa.0117.2 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0117.3, %bb.ck ], [ false, %bb.fc ]
  %.sroa.0118.3 = phi i8 [ %.sroa.0118.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0119.7, %bb.ck ], [ 1, %bb.fc ] ; 2 uses
  %.sroa.0119.6 = phi i8 [ %.sroa.0119.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0119.7, %bb.ck ], [ 1, %bb.fc ] ; 2 uses
  %.pn223 = phi { ptr, i32 } [ %.pn221, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.hw, %bb.ck ], [ %i.qk, %bb.fc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14968)
  call void @llvm.experimental.noalias.scope.decl(metadata !14971)
  %i.ht = load ptr, ptr %i.aq, align 8, !alias.scope !14974, !nonnull !27, !noundef !27
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !14974
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.cj, label %.noexc308

bb.cj:                                            ; preds = %.body339
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %.noexc308 unwind label %bb.ab

bb.ck:                                            ; preds = %bb.fd, %bb.ef, %bb.ci
  %.sroa.0105.10 = phi i8 [ %.sroa.0105.15, %bb.fd ], [ 0, %bb.ef ], [ 1, %bb.ci ]
  %.sroa.0117.3 = phi i1 [ false, %bb.fd ], [ false, %bb.ef ], [ true, %bb.ci ]
  %.sroa.0119.7 = phi i8 [ 1, %bb.fd ], [ 0, %bb.ef ], [ 1, %bb.ci ] ; 2 uses
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.cl:                                            ; preds = %bb.ci
  %i.hx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %i.hz = load i64, ptr %i.as, align 8, !range !74, !noundef !27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !27 ; 3 uses
  %i.ic = icmp ult i64 %i.ib, 576460752303423488
  call void @llvm.assume(i1 %i.ic)
  %.idx538 = shl nuw nsw i64 %i.ib, 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx538 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.hy, ptr %i.ao, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.hy, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.hz, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  store ptr %i.id, ptr %.sroa.752.0..sroa_idx, align 8
  %i.ie = icmp eq i64 %i.ib, 0
  br i1 %i.ie, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.if = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %bb.cn

.loopexit:                                        ; preds = %bb.fg, %bb.fk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp:                               ; preds = %bb.fi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.cn:                                            ; preds = %.lr.ph, %.backedge
  %i.ii = phi ptr [ %i.id, %.lr.ph ], [ %i.ra, %.backedge ]
  %i.ij = phi ptr [ %i.hy, %.lr.ph ], [ %i.qz, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14975)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  store ptr %i.ik, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !14975
  %i.il = load ptr, ptr %i.ij, align 8, !noalias !14975, !nonnull !27, !noundef !27 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noalias !14975, !noundef !27 ; 3 uses
  %7 = load ptr, ptr %i.aq, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ip = load i64, ptr %i.io, align 8, !noundef !27
  %i.iq = icmp eq i64 %i.in, %i.ip
  br i1 %i.iq, label %bb.ff, label %bb.fg

._crit_edge:                                      ; preds = %.backedge, %bb.cl
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit311 unwind label %bb.co

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.es, %bb.et, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335, %bb.ew, %bb.ex, %bb.de, %bb.df, %.thread476, %bb.cm, %.body, %bb.co
  %.sroa.0105.11 = phi i8 [ 1, %bb.co ], [ 0, %.thread476 ], [ 1, %.body ], [ 0, %bb.de ], [ 1, %bb.cm ], [ 1, %bb.ew ], [ 0, %bb.df ], [ 1, %bb.ex ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ], [ 0, %bb.et ], [ 0, %bb.es ]
  %.sroa.0118.5 = phi i8 [ 1, %bb.co ], [ 1, %.thread476 ], [ 1, %.body ], [ 1, %bb.de ], [ 1, %bb.cm ], [ 1, %bb.ew ], [ 1, %bb.df ], [ 1, %bb.ex ], [ %.sroa.0118.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ], [ %.sroa.0118.7484, %bb.et ], [ %.sroa.0118.7484, %bb.es ]
  %.sroa.0119.8 = phi i8 [ 1, %bb.co ], [ 1, %.thread476 ], [ 1, %.body ], [ 1, %bb.de ], [ 1, %bb.cm ], [ 1, %bb.ew ], [ 1, %bb.df ], [ 1, %bb.ex ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ], [ 1, %bb.et ], [ 1, %bb.es ]
  %.pn221 = phi { ptr, i32 } [ %i.ir, %bb.co ], [ %lpad.thr_comm474, %.thread476 ], [ %eh.lpad-body, %.body ], [ %i.jq, %bb.de ], [ %lpad.phi, %bb.cm ], [ %lpad.thr_comm.split-lp475, %bb.ew ], [ %i.jq, %bb.df ], [ %lpad.thr_comm.split-lp475, %bb.ex ], [ %.pn215, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ], [ %.pn215.pn488, %bb.et ], [ %.pn215.pn488, %bb.es ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #60
          to label %.body339 unwind label %bb.ab

bb.co:                                            ; preds = %bb.fm, %._crit_edge, %bb.ey, %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit311
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit311: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.is = load ptr, ptr %i.br, align 8, !nonnull !27, !noundef !27
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !27, !noundef !27
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !noundef !27
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema7project(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef %i.ix)
          to label %bb.cp unwind label %bb.co

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit311
  %i.iy = load ptr, ptr %i.aj, align 8, !noundef !27 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  %i.ja = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, ptr noundef nonnull align 8 dereferenceable(32) %i.ja, i64 32, i1 false)
  br i1 %i.iz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.fa unwind label %bb.co

bb.cr:                                            ; preds = %bb.cp
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6186.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.480.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false)
  store ptr %i.iy, ptr %i.ak, align 8
  invoke void @_RNvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtB9_6schema10StructTypeINtB5_12TryFromArrowRNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE14try_from_arrow(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ak)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cw, %bb.cs
  %eh.lpad-body = phi { ptr, i32 } [ %i.jb, %bb.cs ], [ %i.ji, %bb.cw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.ak) #60
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.ct:                                            ; preds = %bb.cr
  %i.jc = load i64, ptr %i.al, align 8, !range !66, !noundef !27 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, -9223372036854775808
  %i.je = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, ptr noundef nonnull align 8 dereferenceable(32) %i.je, i64 32, i1 false)
  br i1 %i.jd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ey unwind label %bb.cs

bb.cv:                                            ; preds = %bb.ct
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.384.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6189.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.283.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false)
  store i64 1, ptr %i.k, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.jc, ptr %i.jg, align 8
  %i.jh = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 160)
          to label %bb.cy unwind label %bb.cw, !noalias !14978 ; 4 uses

bb.cw:                                            ; preds = %bb.cv
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.jg)
          to label %.body unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.jh, ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.jh, ptr %i.am, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.ak)
          to label %bb.cz unwind label %bb.ew

.thread476:                                       ; preds = %bb.dc, %bb.da, %bb.cz
  %lpad.thr_comm474 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB2_11ScanBuilder11with_schema(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull %i.jh)
          to label %bb.da unwind label %.thread476

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB2_11ScanBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %bb.db unwind label %.thread476

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.jk = load i64, ptr %i.ah, align 16, !range !2319, !noundef !27 ; 2 uses
  %.not211 = icmp eq i64 %i.jk, -9223372036854775711
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  br i1 %.not211, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.394.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6195.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 %i.jk, ptr %i.g, align 16
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.jm, ptr %.sroa.293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g)
          to label %bb.eu unwind label %.thread476

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.jm, ptr %i.jo, align 8
  %i.jp = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.dh unwind label %bb.de, !noalias !14981 ; 5 uses

bb.de:                                            ; preds = %bb.dd
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14984)
  call void @llvm.experimental.noalias.scope.decl(metadata !14987)
  call void @llvm.experimental.noalias.scope.decl(metadata !14990)
  call void @llvm.experimental.noalias.scope.decl(metadata !14993)
  %i.jr = load ptr, ptr %i.jo, align 8, !alias.scope !14996, !nonnull !27, !noundef !27
  %i.js = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !14996
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.df, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit

bb.df:                                            ; preds = %bb.de
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jo) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15062)
  call void @llvm.experimental.noalias.scope.decl(metadata !15065)
  %i.pf = load ptr, ptr %i.aq, align 8, !alias.scope !15068, !nonnull !27, !noundef !27
  %i.pg = atomicrmw sub ptr %i.pf, i64 1 release, align 8, !noalias !15068
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325 unwind label %.thread454

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325: ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pi, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit327 unwind label %bb.bx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit327: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !15069)
  %i.pj = load ptr, ptr %i.bm, align 8, !alias.scope !15069, !noundef !27 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit327
  %i.pl = atomicrmw sub ptr %i.pj, i64 1 release, align 8, !noalias !15072
  %i.pm = icmp eq i64 %i.pl, 1
  br i1 %i.pm, label %bb.ej, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329 unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329: ; preds = %bb.ei, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit327, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.pn = trunc nuw i8 %.sroa.0102.2 to i1
  br i1 %i.pn, label %bb.el, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332: ; preds = %bb.em, %bb.el, %bb.en, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !15077)
  call void @llvm.experimental.noalias.scope.decl(metadata !15080)
  %i.po = load ptr, ptr %i.br, align 8, !alias.scope !15083, !nonnull !27, !noundef !27
  %i.pp = atomicrmw sub ptr %i.po, i64 1 release, align 8, !noalias !15083
  %i.pq = icmp eq i64 %i.pp, 1
  br i1 %i.pq, label %bb.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.ek:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.el:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit329
  call void @llvm.experimental.noalias.scope.decl(metadata !15084)
  %i.pr = load ptr, ptr %i.bp, align 8, !alias.scope !15084, !noundef !27 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pt = atomicrmw sub ptr %i.pr, i64 1 release, align 8, !noalias !15087
  %i.pu = icmp eq i64 %i.pt, 1
  br i1 %i.pu, label %bb.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332

bb.en:                                            ; preds = %bb.em
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit332, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit375, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit367, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void

bb.ep:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit318, %bb.do
  %.sroa.0114.3.ph = phi i8 [ 1, %bb.do ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit318 ]
  %lpad.thr_comm497 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #60
          to label %bb.dp unwind label %bb.ab

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %._crit_edge.i.i, %.lr.ph536.split, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit
  %i.pv = icmp eq ptr %i.md, %i.lw
  br i1 %i.pv, label %._crit_edge537, label %.lr.ph536.split, !llvm.loop !15092

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.pw = load i64, ptr %i.ln, align 8, !alias.scope !15094, !noundef !27 ; 3 uses
  %i.px = load i64, ptr %i.aa, align 8, !range !74, !alias.scope !15094, !noundef !27
  %i.py = icmp eq i64 %i.pw, %i.px
  br i1 %i.py, label %bb.eq, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.eq:                                            ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs9sM1NMKkC3_8petgraph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dt

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.eq, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core.exit
  %i.pz = load ptr, ptr %i.lm, align 8, !alias.scope !15094, !nonnull !27, !noundef !27
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.pw
  store i64 %.sroa.7385.0534, ptr %i.qa, align 8
  %i.qb = add i64 %i.pw, 1
  store i64 %i.qb, ptr %i.ln, align 8, !alias.scope !15094
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.er:                                            ; preds = %bb.di
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qc, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 unwind label %bb.ab

bb.es:                                            ; preds = %.thread479, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335
  %.pn215.pn488 = phi { ptr, i32 } [ %i.jw, %.thread479 ], [ %.pn215, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ] ; 2 uses
  %.sroa.0118.7484 = phi i8 [ 1, %.thread479 ], [ %.sroa.0118.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit335 ] ; 2 uses
  %i.qd = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !15097
  %i.qe = icmp eq i64 %i.qd, 1
  br i1 %i.qe, label %bb.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.eu:                                            ; preds = %bb.dc
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qf, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ez, %bb.eu
  %.sroa.0105.14 = phi i8 [ 1, %bb.ez ], [ 0, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.fb

bb.ew:                                            ; preds = %bb.cy
  %lpad.thr_comm.split-lp475 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = atomicrmw sub ptr %i.jh, i64 1 release, align 8, !noalias !15102
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.ey:                                            ; preds = %bb.cu
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qi, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.ak)
          to label %bb.ez unwind label %bb.co

bb.ez:                                            ; preds = %bb.fa, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  br label %bb.ev

bb.fa:                                            ; preds = %bb.cq
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qj, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ez

bb.fb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit344, %bb.ev
  %.sroa.0105.15 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit344 ], [ %.sroa.0105.14, %bb.ev ] ; 7 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body339 unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ck

bb.fe:                                            ; preds = %bb.fc
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.ff:                                            ; preds = %bb.cn
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !nonnull !27, !noundef !27
  %bcmp = call i32 @bcmp(ptr nonnull %i.il, ptr nonnull %i.qn, i64 %i.in)
  %i.qo = icmp eq i32 %bcmp, 0
  br i1 %i.qo, label %.backedge, label %bb.fg

bb.fg:                                            ; preds = %bb.cn, %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.qp = load ptr, ptr %i.br, align 8, !nonnull !27, !noundef !27
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema8index_of(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.il, i64 noundef %i.in)
          to label %bb.fh unwind label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  %i.qr = load i64, ptr %i.an, align 8, !range !469, !noundef !27 ; 2 uses
  %.not220 = icmp eq i64 %i.qr, -9223372036854775788
  %i.qs = load i64, ptr %i.if, align 8            ; 2 uses
  br i1 %.not220, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.366.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6183.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i64 %i.qr, ptr %i.o, align 8
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.qs, ptr %.sroa.265.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.fm unwind label %.loopexit.split-lp

bb.fj:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.qt = load i64, ptr %i.ig, align 8, !alias.scope !15107, !noundef !27 ; 3 uses
  %i.qu = load i64, ptr %i.ap, align 8, !range !74, !alias.scope !15107, !noundef !27
  %i.qv = icmp eq i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs9sM1NMKkC3_8petgraph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.fl unwind label %.loopexit

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.qw = load ptr, ptr %i.ih, align 8, !alias.scope !15107, !nonnull !27, !noundef !27
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %i.qt
  store i64 %i.qs, ptr %i.qx, align 8
  %i.qy = add i64 %i.qt, 1
  store i64 %i.qy, ptr %i.ig, align 8, !alias.scope !15107
  %.pre.a = load ptr, ptr %.sroa.752.0..sroa_idx, align 8, !alias.scope !15110
  %.pre542.a = load ptr, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !15110
  br label %.backedge

.backedge:                                        ; preds = %bb.fl, %bb.ff
  %i.qz = phi ptr [ %.pre542.a, %bb.fl ], [ %i.ik, %bb.ff ] ; 2 uses
  %i.ra = phi ptr [ %.pre.a, %bb.fl ], [ %i.ii, %bb.ff ] ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %._crit_edge, label %bb.cn

bb.fm:                                            ; preds = %bb.fi
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.rc, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit344 unwind label %bb.co

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit344: ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.fb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !15112)
  call void @llvm.experimental.noalias.scope.decl(metadata !15115)
  %i.rd = load ptr, ptr %i.aq, align 8, !alias.scope !15118, !nonnull !27, !noundef !27
  %i.re = atomicrmw sub ptr %i.rd, i64 1 release, align 8, !noalias !15118
  %i.rf = icmp eq i64 %i.re, 1
  br i1 %i.rf, label %bb.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346

bb.fn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346 unwind label %.thread454

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rg, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348 unwind label %bb.cd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rh, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit350 unwind label %bb.bx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit350: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !15119)
  call void @llvm.experimental.noalias.scope.decl(metadata !15122)
  %i.ri = load ptr, ptr %i.ax, align 8, !alias.scope !15125, !nonnull !27, !noundef !27
  %i.rj = atomicrmw sub ptr %i.ri, i64 1 release, align 8, !noalias !15125
  %i.rk = icmp eq i64 %i.rj, 1
  br i1 %i.rk, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352

bb.fo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit350
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352 unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit350, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.rl = trunc nuw i8 %.sroa.0105.15 to i1
  br i1 %i.rl, label %bb.fr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit: ; preds = %bb.fr, %bb.ge, %bb.gf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352
  %.sroa.0109.10 = phi i8 [ 0, %bb.ge ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352 ], [ 1, %bb.gf ], [ 1, %bb.fr ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !15126)
  %i.rm = load ptr, ptr %i.bm, align 8, !alias.scope !15126, !noundef !27 ; 2 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit354, label %bb.fp

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit
  %i.ro = atomicrmw sub ptr %i.rm, i64 1 release, align 8, !noalias !15129
  %i.rp = icmp eq i64 %i.ro, 1
  br i1 %i.rp, label %bb.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit354

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit354 unwind label %bb.y

bb.fr:                                            ; preds = %bb.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan11ScanBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit unwind label %bb.az

bb.fs:                                            ; preds = %bb.ch, %.noexc308
  %.pn225453 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ch ], [ %.pn223, %.noexc308 ]
  %.sroa.0119.4452 = phi i8 [ 1, %bb.ch ], [ %.sroa.0119.6, %.noexc308 ]
  %.sroa.0118.1451 = phi i8 [ 1, %bb.ch ], [ %.sroa.0118.3, %.noexc308 ]
  %.sroa.0105.7450 = phi i8 [ 1, %bb.ch ], [ %.sroa.0105.9, %.noexc308 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as) #60
          to label %bb.ce unwind label %bb.ab

bb.ft:                                            ; preds = %.thread442, %bb.ce
  %.pn225.pn449 = phi { ptr, i32 } [ %i.hh, %.thread442 ], [ %.pn225.pn, %bb.ce ]
  %.sroa.0119.3448 = phi i8 [ 1, %.thread442 ], [ %.sroa.0119.3, %bb.ce ]
  %.sroa.0105.6447 = phi i8 [ 1, %.thread442 ], [ %.sroa.0105.6, %bb.ce ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rq, i64 noundef 16, i64 noundef 16)
          to label %.body304 unwind label %bb.ab

.body296.thread:                                  ; preds = %.body.i, %bb.br, %.body296
  %.pn230529 = phi { ptr, i32 } [ %.pn230, %.body296 ], [ %i.ft, %bb.br ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %.sroa.0105.2527 = phi i8 [ %.sroa.0105.2, %.body296 ], [ 1, %bb.br ], [ 1, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15134)
  call void @llvm.experimental.noalias.scope.decl(metadata !15137)
  %i.rr = load ptr, ptr %i.ax, align 8, !alias.scope !15140, !nonnull !27, !noundef !27
  %i.rs = atomicrmw sub ptr %i.rr, i64 1 release, align 8, !noalias !15140
  %i.rt = icmp eq i64 %i.rs, 1
  br i1 %i.rt, label %bb.fu, label %.body245

bb.fu:                                            ; preds = %.body296.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax) #58
          to label %.body245 unwind label %bb.ab

bb.fv:                                            ; preds = %bb.bk
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ru, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.fr

bb.fw:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.rv = load i64, ptr %i.bb, align 16, !range !2319, !noundef !27 ; 2 uses
  %.not209 = icmp eq i64 %i.rv, -9223372036854775711
  %i.rw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8            ; 3 uses
  br i1 %.not209, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6160.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.rv, ptr %i.t, align 16
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.rx, ptr %.sroa.236.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.t)
          to label %bb.gf unwind label %bb.bi

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 1, ptr %i.u, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.rx, ptr %i.rz, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15141
  %i.sa = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 24, i64 noundef range(i64 8, 17) 8) #61, !noalias !15141 ; 3 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.fz, label %bb.gd, !prof !67

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #57
          to label %.noexc360 unwind label %bb.ga

.noexc360:                                        ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fz
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sd = atomicrmw sub ptr %i.rx, i64 1 release, align 8, !noalias !15144
  %i.se = icmp eq i64 %i.sd, 1
  br i1 %i.se, label %bb.gb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rz) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369 unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.gd:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.sg = load ptr, ptr %i.br, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 -9223372036854775808, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %i.bo, i64 112, i1 false)
  invoke fastcc void @_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan17try_new_with_scan(ptr noalias noundef align 16 captures(none) dereferenceable(176) %0, ptr noundef nonnull %i.sa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noundef nonnull %i.sg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.ay)
          to label %bb.ge unwind label %bb.bi

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit

bb.gf:                                            ; preds = %bb.fx
end_hunk_2
