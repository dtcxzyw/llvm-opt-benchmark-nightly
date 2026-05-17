inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder13join_detailedNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnB1E_ECs14kWLkQVSKO_14deltalake_core:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.bc unwind label %bb.ag

bb.bc:                                            ; preds = %bb.bb, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.thread278 unwind label %bb.bf

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread311

bb.bf:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.bg:                                            ; preds = %bb.cb, %bb.ax
  unreachable

.body150:                                         ; preds = %bb.bp, %bb.bq, %bb.ao
  %.sroa.060.7 = phi i8 [ 0, %bb.bp ], [ 1, %bb.ao ], [ 0, %bb.bq ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.bp ], [ %i.ec, %bb.ao ], [ %i.fe, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ex = load ptr, ptr %i.i, align 8, !alias.scope !1012, !nonnull !27, !noundef !27
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !1012
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit

bb.bh:                                            ; preds = %.body150
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

bb.bi:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ea, ptr noundef nonnull align 16 dereferenceable(336) %i.c, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ea, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.f, ptr noundef nonnull align 16 dereferenceable(112) %i.af, i64 112, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fb, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #64, !noalias !1013
  %i.fc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 72, i64 noundef range(i64 8, 17) 8) #64, !noalias !1013 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bj, label %bb.bn, !prof !67

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc182 unwind label %bb.bk

.noexc182:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.fa)
          to label %.body unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

.body:                                            ; preds = %bb.bk
  %i.fg = load i64, ptr %i.f, align 16, !range !989, !alias.scope !1016, !noundef !27
  %i.fh = icmp eq i64 %i.fg, 37
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bm

bb.bm:                                            ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

bb.bn:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.045.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.045.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.045, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.fi, ptr noundef nonnull align 16 dereferenceable(136) %.sroa.045, i64 136, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store ptr %i.dx, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store ptr %i.ea, ptr %.sroa.647.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store ptr %i.fc, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store i8 0, ptr %.sroa.848.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 177
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 178
  store i8 %4, ptr %.sroa.10.0..sroa_idx, align 2
  store i64 16, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045)
  %i.fj = invoke { ptr, i1 } @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder3new(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.j)
          to label %bb.bo unwind label %bb.as     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.fk = extractvalue { ptr, i1 } %i.fj, 0
  %i.fl = extractvalue { ptr, i1 } %i.fj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = zext i1 %i.fl to i8
  store i8 %i.fo, ptr %i.fn, align 8
  store i64 20, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cw, %bb.cv, %bb.bo
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.bm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #63
          to label %bb.bp unwind label %bb.o

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %i.fp = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !1019
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bq, label %.body150

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #61
          to label %.body150 unwind label %bb.o

.thread325:                                       ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn133.pn331 = phi { ptr, i32 } [ %.pn133.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn133, %bb.au ]
  %.sroa.063.5330 = phi i8 [ %.sroa.063.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit ], [ 1, %bb.au ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.q) #63
          to label %bb.br unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit

bb.br:                                            ; preds = %.thread325, %bb.ag
  %.sroa.063.4.ph = phi i8 [ 1, %bb.ag ], [ %.sroa.063.5330, %.thread325 ]
  %.pn133.pn.pn.ph = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %.pn133.pn331, %.thread325 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #63
          to label %.thread278 unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.fr = load i64, ptr %i.af, align 16, !range !989, !alias.scope !1024, !noundef !27
  %i.fs = icmp eq i64 %i.fr, 37
  br i1 %i.fs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189 unwind label %bb.bu

bb.bt:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp310 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.x) #63
          to label %.thread278 unwind label %bb.o

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198, %bb.bs, %bb.d, %bb.c
  %.sroa.051.2 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198 ], [ 1, %bb.d ], [ %.sroa.051.0, %bb.bs ], [ 1, %bb.c ]
  %.sroa.056.2 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198 ], [ 1, %bb.d ], [ 0, %bb.bs ], [ 1, %bb.c ]
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body199

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fu = load i64, ptr %6, align 16, !range !989, !noundef !27
  %i.fv = icmp ne i64 %i.fu, 37
  %i.fw = trunc nuw i8 %.sroa.051.0 to i1
  %or.cond = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.bv, label %.thread268

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit202
  %.sroa.056.3 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit202 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %6)
          to label %bb.m unwind label %bb.cj

bb.bw:                                            ; preds = %bb.r
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #63
          to label %.thread278 unwind label %bb.o

.thread278:                                       ; preds = %bb.bd, %bb.bt, %.thread311, %bb.ab, %bb.bw, %bb.s, %bb.br, %bb.v, %bb.p
  %.pn141283 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.br, %bb.p ], [ %i.cm, %bb.v ], [ %.pn133.pn.pn.ph, %bb.br ], [ %i.da, %bb.ab ], [ %i.fx, %bb.bw ], [ %i.ev, %bb.bd ], [ %lpad.thr_comm.split-lp310, %bb.bt ], [ %lpad.thr_comm309, %.thread311 ] ; 2 uses
  %.sroa.063.1282 = phi i8 [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.v ], [ %.sroa.063.4.ph, %bb.br ], [ 1, %bb.ab ], [ 1, %bb.bw ], [ 1, %bb.bd ], [ 1, %bb.bt ], [ 1, %.thread311 ] ; 2 uses
  %i.fy = load i64, ptr %i.af, align 16, !range !989, !alias.scope !1027, !noundef !27
  %i.fz = icmp eq i64 %i.fy, 37
  br i1 %i.fz, label %.body199, label %bb.bx

bb.bx:                                            ; preds = %.thread278
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.af)
          to label %.body199 unwind label %bb.o

bb.by:                                            ; preds = %.noexc
  %i.ga = load ptr, ptr %i.ba, align 8, !noalias !990, !nonnull !27, !noundef !27 ; 2 uses
  %i.gb = icmp ugt i64 %i.az, 48
  tail call void @llvm.assume(i1 %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !990
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ga, ptr noundef nonnull readonly align 1 dereferenceable(49) @30, i64 range(i64 0, -9223372036854775808) 49, i1 false), !noalias !1030
  store i64 %i.az, ptr %i.ai, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ga, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 49, ptr %.sroa.5.0..sroa_idx217, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ca unwind label %bb.bz

.body194:                                         ; preds = %bb.ce, %bb.bz, %bb.cd
  %.pn144 = phi { ptr, i32 } [ %i.gl, %bb.cd ], [ %i.gc, %bb.bz ], [ %i.gm, %bb.ce ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #63
          to label %.body199 unwind label %bb.o

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cb, %bb.by
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.ca:                                            ; preds = %bb.by
  %i.gd = load i64, ptr %i.e, align 8, !range !38, !noundef !27
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !66, !noundef !27 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.cb, label %bb.cc, !prof !67

bb.cb:                                            ; preds = %bb.ca
  %i.gi = load i64, ptr %i.gh, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #60
          to label %bb.bg unwind label %bb.bz

bb.cc:                                            ; preds = %bb.ca
  %i.gj = load ptr, ptr %i.gh, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.gg, ptr %i.ah, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.gj, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.570.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ai, ptr %i.ag, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.gk, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @29, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit193 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #63
          to label %.body194 unwind label %bb.o

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit193: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ce

bb.ce:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit193
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body194 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit193
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198 unwind label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body199 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit202 unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit202: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  %i.gq = load i64, ptr %6, align 16, !range !989, !noundef !27
  %.not143 = icmp eq i64 %i.gq, 37
  br i1 %.not143, label %.thread264, label %bb.bv

bb.ci:                                            ; preds = %bb.cx, %bb.cj, %.body199
  %.sroa.056.4 = phi i8 [ %.sroa.056.1, %bb.cx ], [ %.sroa.056.1, %.body199 ], [ %.sroa.056.3, %bb.cj ]
  %.sroa.063.7 = phi i8 [ %.sroa.063.0, %bb.cx ], [ %.sroa.063.0, %.body199 ], [ 1, %bb.cj ] ; 2 uses
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.cx ], [ %.pn144.pn, %.body199 ], [ %i.gr, %bb.cj ] ; 2 uses
  %.sroa.36.9 = extractvalue { ptr, i32 } %.pn144.pn.pn, 1 ; 2 uses
  %.sroa.0126.9 = extractvalue { ptr, i32 } %.pn144.pn.pn, 0 ; 2 uses
  %cond149 = icmp eq i8 %.sroa.056.4, 0
  br i1 %cond149, label %bb.cs, label %bb.cy

bb.cj:                                            ; preds = %bb.bv
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.thread264:                                       ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit202, %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %.thread264
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %.body205 unwind label %bb.cm

bb.cl:                                            ; preds = %.thread264
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.co unwind label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body205

.body205:                                         ; preds = %bb.ck, %bb.cn
  %eh.lpad-body206 = phi { ptr, i32 } [ %i.gu, %bb.cn ], [ %i.gs, %bb.ck ] ; 2 uses
  %i.gv = extractvalue { ptr, i32 } %eh.lpad-body206, 1
  %i.gw = extractvalue { ptr, i32 } %eh.lpad-body206, 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #63
          to label %.thread344 unwind label %bb.o

.thread268:                                       ; preds = %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit189, %bb.m
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %3)
          to label %bb.cv unwind label %bb.cu

bb.co:                                            ; preds = %bb.cl
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body210 unwind label %bb.cr

bb.cq:                                            ; preds = %bb.co
end_hunk_0
begin_hunk_1_@_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB25_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4y_DNtNtB2z_11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2z_11log_segmentNtB7B_10LogSegment24create_checkpoint_streams_0EINtNtNtB3I_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5L_EIBR_IB15_B4x_EEEINtB8J_18MapSpecialCaseFnOkNCNCB7y_s_00EEB6O_ENCB7y_s0_0EEIB1P_IB4y_IB1P_IB1P_IB4y_INtNtNtB4C_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdc_4Scan18scan_metadata_fromBbx_E0ENCBd5_s_0EENCINvMs6_NtB2z_4scanNtBf3_4Scan18scan_metadata_fromBbd_E0EENCINvYNtNtBf3_10log_replay22ScanLogReplayProcessorNtNtB2z_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBfT_s_0EEEB57_4nextBdi_:.peel.begin
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S unwind label %.loopexit15, !noalias !21110

.loopexit15:                                      ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit15
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit15 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.g, !noalias !21110

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62, !noalias !21110
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S: ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.loopexit16, !noalias !21110

.loopexit16:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

.loopexit.split-lp17:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay226
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

common.resume.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %eh.lpad-body.i16.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i15.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.loopexit16, %.loopexit.split-lp17, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi, %bb.f ], [ %lpad.loopexit18, %.loopexit16 ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp17 ]
  store i64 6, ptr %i.c, align 16, !alias.scope !21107, !noalias !21110
  br label %common.resume.i

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNt6, %bb.a
  %.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNt6 ]
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.773.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.638.0..sroa_idx.i, i64 88, i1 false), !noalias !21105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21141
  store i64 %.lcssa, ptr %0, align 16, !alias.scope !21102, !noalias !21105
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S
  store i64 6, ptr %i.c, align 16, !alias.scope !21107, !noalias !21110
  %.pre = load i64, ptr %i.f, align 16, !range !578, !alias.scope !21130, !noalias !21133 ; 3 uses
  %.not.i2.i = icmp eq i64 %.pre, 7
  br i1 %.not.i2.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep53, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_repla

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_repla: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 6, ptr %i.f, align 16, !alias.scope !21135, !noalias !21138
  %.not1.i = icmp eq i64 %.pre, 6
  br i1 %.not1.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep53, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNt6, !llvm.loop !21143

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep53: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_repla, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !21144)
  call void @llvm.experimental.noalias.scope.decl(metadata !21147)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 4 uses
  %i.r = load i64, ptr %i.q, align 16, !range !530, !alias.scope !21149, !noalias !21150, !noundef !27
  %.not.i7.i = icmp eq i64 %i.r, 6
  br i1 %.not.i7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21151
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3o_DNtNtB1r_11engine_data10EngineDataEL_ENtNtB1r_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1r_11log_segmentNtB6r_10LogSegment24create_checkpoint_streams_0EINtNtNtB2z_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4B_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3n_EEEINtB7z_18MapSpecialCaseFnOkNCNCB6o_s_00EEB5E_ENCB6o_s0_0EEIBO_IB3o_IBO_IBO_IB3o_INtNtNtB3s_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcB_4Scan18scan_metadata_fromBaW_E0ENCBcu_s_0EENCINvMs6_NtB1r_4scanNtBes_4Scan18scan_metadata_fromBaE_E0EENCINvYNtNtBes_10log_replay22ScanLogReplayProcessorNtNtB1r_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3X_8try_folduNCINvNvB3X_4find5checkIB4C_NtBes_12ScanMetadataB5E_EQNCBfi_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBhK_EEBcH_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(704) %i.d, ptr noalias noundef nonnull %i.g), !noalias !21162
  %i.s = load i64, ptr %i.a, align 16, !range !1893, !noalias !21151, !noundef !27 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq i64 %i.s, -9223372036854775742
  br i1 %.not.i.i.i.i8.i, label %bb.k, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcess12

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcess12: ; preds = %bb.h
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.642.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.642.0..sroa_idx.i, i64 88, i1 false), !noalias !21163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21151
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB1Z_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7v_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5F_EINtNtB7_7flatten7FlattenIBZ_B4r_EEEINtB8D_18MapSpecialCaseFnOkNCNCB7s_s_00EEB6I_ENCB7s_s0_0EEIB1J_IB4s_IB1J_IB1J_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdp_4Scan18scan_metadata_fromBbK_E0ENCBdi_s_0EENCINvMs6_NtB2t_4scanNtBfg_4Scan18scan_metadata_fromBbq_E0EENCINvYNtNtBfg_10log_rep53
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !21150, !noalias !21149
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainIB1J_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB4c_DNtNtB2d_11engine_data10EngineDataEL_ENtNtB2d_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB2d_11log_segmentNtB7f_10LogSegment24create_checkpoint_streams_0EINtNtNtB3m_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5p_EINtB2_7FlattenINtNtB8_6option8IntoIterB4b_EEEINtB8n_18MapSpecialCaseFnOkNCNCB7c_s_00EEB6s_ENCB7c_s0_0EEIB1t_IB4c_IB1t_IB1t_IB4c_INtNtNtB4g_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2d_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22S24

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN20, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcess12
  store i64 %i.s, ptr %0, align 16, !alias.scope !21102, !noalias !21149
  %.sroa.642.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.642.0..sroa_idx43.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.642.i, i64 88, i1 false), !noalias !21149
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainIB1J_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB4c_DNtNtB2d_11engine_data10EngineDataEL_ENtNtB2d_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB2d_11log_segmentNtB7f_10LogSegment24create_checkpoint_streams_0EINtNtNtB3m_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5p_EINtB2_7FlattenINtNtB8_6option8IntoIterB4b_EEEINtB8n_18MapSpecialCaseFnOkNCNCB7c_s_00EEB6s_ENCB7c_s0_0EEIB1t_IB4c_IB1t_IB1t_IB4c_INtNtNtB4g_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2d_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22S24

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21151
  %i.t = load i64, ptr %i.q, align 16, !range !530, !alias.scope !21164, !noalias !21150, !noundef !27
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN20, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_(ptr noalias noundef nonnull align 16 dereferenceable(704) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay218 unwind label %bb.m, !noalias !21150

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i15.i unwind label %bb.n, !noalias !21150

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62, !noalias !21150
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay218: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN20 unwind label %bb.o, !noalias !21150

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay218
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i15.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN20: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay218, %bb.k
  store i64 6, ptr %i.q, align 16, !alias.scope !21149, !noalias !21150
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i15.i: ; preds = %bb.o, %bb.m
  %eh.lpad-body.i16.i = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.v, %bb.m ]
  store i64 6, ptr %i.q, align 16, !alias.scope !21149, !noalias !21150
  br label %common.resume.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainIB1J_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB4c_DNtNtB2d_11engine_data10EngineDataEL_ENtNtB2d_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB2d_11log_segmentNtB7f_10LogSegment24create_checkpoint_streams_0EINtNtNtB3m_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5p_EINtB2_7FlattenINtNtB8_6option8IntoIterB4b_EEEINtB8n_18MapSpecialCaseFnOkNCNCB7c_s_00EEB6s_ENCB7c_s0_0EEIB1t_IB4c_IB1t_IB1t_IB4c_INtNtNtB4g_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2d_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22S24: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.642.i)
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r: ; preds = %.loopexit, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainIB1J_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB4c_DNtNtB2d_11engine_data10EngineDataEL_ENtNtB2d_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB2d_11log_segmentNtB7f_10LogSegment24create_checkpoint_streams_0EINtNtNtB3m_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5p_EINtB2_7FlattenINtNtB8_6option8IntoIterB4b_EEEINtB8n_18MapSpecialCaseFnOkNCNCB7c_s_00EEB6s_ENCB7c_s0_0EEIB1t_IB4c_IB1t_IB1t_IB4c_INtNtNtB4g_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2d_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22S24
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB25_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4y_DNtNtB2z_11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2z_11log_segmentNtB7B_10LogSegment24create_checkpoint_streams_0EINtNtNtB3I_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5L_EIBR_IB15_B4x_EEEINtB8J_18MapSpecialCaseFnOkNCNCB7y_s_00EEB6O_ENCB7y_s0_0EEIB1P_IB4y_IB1P_IB1P_IB4y_INtNtNtB4C_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdc_4Scan18scan_metadata_fromBbx_E0ENCBd5_s_0EENCINvMs6_NtB2z_4scanNtBf3_4Scan18scan_metadata_fromBbd_E0EENCINvYNtNtBf3_10log_replay22ScanLogReplayProcessorNtNtB2z_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBfT_s_0EEEB57_9size_hintBdi_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(2112) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21172
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 16, !range !530, !alias.scope !21170, !noalias !21167, !noundef !27
  %.not.i = icmp eq i64 %i.e, 6
  %..i = select i1 %.not.i, ptr null, ptr %1
  store i64 0, ptr %i.a, align 8, !noalias !21172
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !21172
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.g, align 8, !noalias !21172
  call fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainIB1E_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5k_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EEIB1o_IB47_IB1o_IB1o_IB47_INtNtNtB4b_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdf_4Scan18scan_metadata_fromBbA_E0ENCBd8_s_0EENCINvMs6_NtB28_4scanNtBf6_4Scan18scan_metadata_fromBbg_E0EENCINvYNtNtBf6_10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBfW_s_0EE6map_orTjIBw_jEENvYBJ_B4G_9size_hintEBdl_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(704) %..i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.a) #66, !noalias !21167
  %i.h = load i64, ptr %i.c, align 8, !noalias !21172, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !38, !noalias !21172, !noundef !27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !21172 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21172
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = load i64, ptr %i.m, align 16, !range !530, !alias.scope !21170, !noalias !21167, !noundef !27
  %.not54.i = icmp eq i64 %i.n, 6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.sroa.018.0.i = select i1 %.not54.i, ptr null, ptr %i.o
  call fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainIB1E_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5k_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EEIB1o_IB47_IB1o_IB1o_IB47_INtNtNtB4b_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdf_4Scan18scan_metadata_fromBbA_E0ENCBd8_s_0EENCINvMs6_NtB28_4scanNtBf6_4Scan18scan_metadata_fromBbg_E0EENCINvYNtNtBf6_10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBfW_s_0EE6map_orTjIBw_jEENvYBJ_B4G_9size_hintEBdl_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(704) %.sroa.018.0.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.a) #66, !noalias !21167
  %i.p = load i64, ptr %i.b, align 8, !noalias !21172, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !38, !noalias !21172, !noundef !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !21172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21172
  %i.u = tail call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.p) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.w = load i64, ptr %i.v, align 16, !range !578, !alias.scope !21170, !noalias !21167, !noundef !27 ; 2 uses
  %.not55.i = icmp eq i64 %i.w, 7
  br i1 %.not55.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not62.i = icmp eq i64 %i.w, 6
  %2 = trunc nuw i64 %i.j to i1
  %3 = trunc nuw i64 %i.r to i1
  %op.rdx = select i1 %.not62.i, i1 %2, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %3, i1 false
  br i1 %op.rdx1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = and i64 %i.r, %i.j
  %or.cond56.not.i = icmp eq i64 %i.x, 0
  br i1 %or.cond56.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.u, ptr %0, align 8, !alias.scope !21167, !noalias !21170
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = add i64 %i.t, %i.l                       ; 2 uses
  %i.z = icmp uge i64 %i.y, %i.l
  %.57.i = zext i1 %i.z to i64
  store i64 %i.u, ptr %0, align 8, !alias.scope !21167, !noalias !21170
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.57.i, ptr %i.aa, align 8, !alias.scope !21167, !noalias !21170
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r: ; preds = %bb.d, %bb.e
  %.sink64.i = phi i64 [ 16, %bb.e ], [ 8, %bb.d ]
  %.sink.i = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sink64.i
  store i64 %.sink.i, ptr %i.ab, align 8, !alias.scope !21167, !noalias !21170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4t_DNtNtB2u_11engine_data10EngineDataEL_ENtNtB2u_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2u_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3D_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5G_EIBR_IB15_B4s_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EENCINvYNtNtNtB2u_4scan10log_replay22ScanLogReplayProcessorNtNtB2u_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBb5_s_0EEEB52_10advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(2016) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.b = load i64, ptr %i.a, align 16, !range !24, !alias.scope !21173, !noundef !27
  %.not.i.i = icmp eq i64 %i.b, 5
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4r_DNtNtB2s_11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2s_11log_segmentNtB6Z_10LogSegment24create_checkpoint_streams_0EINtNtNtB3B_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB59_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4q_EEEINtB87_18MapSpecialCaseFnOkNCNCB6W_s_00EEB6c_ENCB6W_s0_0EENCINvYNtNtNtB2s_4scan10log_replay22ScanLogReplayProcessorNtNtB2s_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBbc_s_0ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %0, i64 noundef %1) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pr.i.i = load i64, ptr %i.a, align 16, !alias.scope !21178
  %i.d = icmp eq i64 %.pr.i.i, 5
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.e, %bb.e ]
  store i64 5, ptr %i.a, align 16, !alias.scope !21173
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.c, %bb.a
  %.sroa.0.051.i.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.c, %bb.c ], [ %1, %bb.a ] ; 3 uses
  store i64 5, ptr %i.a, align 16, !alias.scope !21173
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21184)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.l = load i64, ptr %i.k, align 16, !range !530, !alias.scope !21186, !noalias !21184, !noundef !27 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 6
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21190)
  store i64 5, ptr %i.k, align 16, !alias.scope !21192, !noalias !21195
  %.not34.i.i.i.i = icmp eq i64 %i.l, 5
  br i1 %.not34.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i, label %_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4H_DNtNtB2I_11engine_data10EngineDataEL_ENtNtB2I_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2I_11log_segmentNtB7K_10LogSegment24create_checkpoint_streams_0EINtNtNtB3R_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5U_EINtBa_7FlattenINtNtBg_6option8IntoIterB4G_EEEINtB8S_18MapSpecialCaseFnOkNCNCB7H_s_00EEB6X_ENCB7H_s0_0EENCINvYNtNtNtB2I_4scan10log_replay22ScanLogReplayProcessorNtNtB2I_10log_replay18LogReplayProcessor20process_actions_iterB2i_E0ENCBbM_s_0EjINtNtNtBg_3ops12control_flow11ControlFlowujEINvNvXsi_Ba_BV_B5g_10advance_by7advanceB1G_EE0Cs14kWLkQVSKO_14deltalake_core.exit.us.i.i.i.i

_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4H_DNtNtB2I_11engine_data10EngineDataEL_ENtNtB2I_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2I_11log_segmentNtB7K_10LogSegment24create_checkpoint_streams_0EINtNtNtB3R_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5U_EINtBa_7FlattenINtNtBg_6option8IntoIterB4G_EEEINtB8S_18MapSpecialCaseFnOkNCNCB7H_s_00EEB6X_ENCB7H_s0_0EENCINvYNtNtNtB2I_4scan10log_replay22ScanLogReplayProcessorNtNtB2I_10log_replay18LogReplayProcessor20process_actions_iterB2i_E0ENCBbM_s_0EjINtNtNtBg_3ops12control_flow11ControlFlowujEINvNvXsi_Ba_BV_B5g_10advance_by7advanceB1G_EE0Cs14kWLkQVSKO_14deltalake_core.exit.us.i.i.i.i: ; preds = %bb.h
  %.sroa.7.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sroa.719.16..sroa.1.8..val.sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2016) %0, ptr noundef nonnull align 16 dereferenceable(672) %i.j, i64 96, i1 false), !alias.scope !21197
  store i64 %i.l, ptr %i.a, align 16, !alias.scope !21198, !noalias !21202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.719.16..sroa.1.8..val.sroa_idx20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.7.0..sroa_idx10.i.i.i.i, i64 568, i1 false), !alias.scope !21197
  %i.m = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4r_DNtNtB2s_11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2s_11log_segmentNtB6Z_10LogSegment24create_checkpoint_streams_0EINtNtNtB3B_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB59_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4q_EEEINtB87_18MapSpecialCaseFnOkNCNCB6W_s_00EEB6c_ENCB6W_s0_0EENCINvYNtNtNtB2s_4scan10log_replay22ScanLogReplayProcessorNtNtB2s_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBbc_s_0ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %0, i64 noundef %.sroa.0.051.i.i), !noalias !21203 ; 3 uses
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.us.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4H_DNtNtB2I_11engine_data10EngineDataEL_ENtNtB2I_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2I_11log_segmentNtB7K_10LogSegment24create_checkpoint_streams_0EINtNtNtB3R_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5U_EINtBa_7FlattenINtNtBg_6option8IntoIterB4G_EEEINtB8S_18MapSpecialCaseFnOkNCNCB7H_s_00EEB6X_ENCB7H_s0_0EENCINvYNtNtNtB2I_4scan10log_replay22ScanLogReplayProcessorNtNtB2I_10log_replay18LogReplayProcessor20process_actions_iterB2i_E0ENCBbM_s_0EjINtNtNtBg_3ops12control_flow11ControlFlowujEINvNvXsi_Ba_BV_B5g_10advance_by7advanceB1G_EE0Cs14kWLkQVSKO_14deltalake_core.exit.us.i.i.i.i
  store i64 5, ptr %i.k, align 16, !alias.scope !21192, !noalias !21206
  %.pre.i.i = load i64, ptr %i.a, align 16, !range !24, !alias.scope !21208
  %i.n = icmp eq i64 %.pre.i.i, 5
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i36.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.p)
          to label %.body37.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i36.i.i: ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i36.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body37.i.i

.body37.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body38.i.i = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.o, %bb.k ]
  store i64 5, ptr %i.a, align 16, !alias.scope !21173
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i36.i.i, %bb.i, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.4.0.i.ph65.i.i = phi i64 [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i36.i.i ], [ %i.m, %bb.i ], [ %.sroa.0.051.i.i, %bb.h ], [ %.sroa.0.051.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  store i64 5, ptr %i.a, align 16, !alias.scope !21173
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 4 uses
  %i.v = load i64, ptr %i.u, align 16, !range !24, !alias.scope !21173, !noundef !27
  %.not32.i.i = icmp eq i64 %i.v, 5
  br i1 %.not32.i.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit40.i.i
  %i.w = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4r_DNtNtB2s_11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2s_11log_segmentNtB6Z_10LogSegment24create_checkpoint_streams_0EINtNtNtB3B_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB59_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4q_EEEINtB87_18MapSpecialCaseFnOkNCNCB6W_s_00EEB6c_ENCB6W_s0_0EENCINvYNtNtNtB2s_4scan10log_replay22ScanLogReplayProcessorNtNtB2s_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBbc_s_0ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(672) %i.t, i64 noundef %.sroa.4.0.i.ph65.i.i) ; 3 uses
  %.not.i.i41.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i41.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.pre60.i.i = load i64, ptr %i.u, align 16, !range !24, !alias.scope !21211
  %i.x = icmp eq i64 %.pre60.i.i, 5
  br i1 %i.x, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(672) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i45.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.z)
          to label %.body46.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i45.i.i: ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ab)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i45.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

.body46.i.i:                                      ; preds = %bb.s, %bb.q
  %eh.lpad-body47.i.i = phi { ptr, i32 } [ %i.ac, %bb.s ], [ %i.y, %bb.q ]
  store i64 5, ptr %i.u, align 16, !alias.scope !21173
  br label %bb.t

bb.t:                                             ; preds = %.body46.i.i, %.body37.i.i, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body47.i.i, %.body46.i.i ], [ %eh.lpad-body38.i.i, %.body37.i.i ]
  resume { ptr, i32 } %.pn.i.i

end_hunk_1
