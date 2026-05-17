inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder13join_detailedNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnB1E_ECs7p2uQeJxui2_9deltalake:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.bc unwind label %bb.ag

bb.bc:                                            ; preds = %bb.bb, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.thread278 unwind label %bb.bf

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs7p2uQeJxui2_9deltalake.exit unwind label %.thread311

bb.bf:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bg:                                            ; preds = %bb.cb, %bb.ax
  unreachable

.body150:                                         ; preds = %bb.bp, %bb.bq, %bb.ao
  %.sroa.060.7 = phi i8 [ 0, %bb.bp ], [ 1, %bb.ao ], [ 0, %bb.bq ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.bp ], [ %i.ec, %bb.ao ], [ %i.fe, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ex = load ptr, ptr %i.i, align 8, !alias.scope !513, !nonnull !4, !noundef !4
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !513
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit

bb.bh:                                            ; preds = %.body150
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.o

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
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !514
  %i.fc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 72, i64 noundef range(i64 8, 17) 8) #41, !noalias !514 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bj, label %bb.bn, !prof !64

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc182 unwind label %bb.bk

.noexc182:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.fa)
          to label %.body unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.bk
  %i.fg = load i64, ptr %i.f, align 16, !range !490, !alias.scope !517, !noundef !4
  %i.fh = icmp eq i64 %i.fg, 37
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.bm

bb.bm:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.o

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
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.cw, %bb.cv, %bb.bo
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body, %bb.bm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %bb.bp unwind label %bb.o

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit
  %i.fp = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !520
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bq, label %.body150

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #40
          to label %.body150 unwind label %bb.o

.thread325:                                       ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit
  %.pn133.pn331 = phi { ptr, i32 } [ %.pn133.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit ], [ %.pn133, %bb.au ]
  %.sroa.063.5330 = phi i8 [ %.sroa.063.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit ], [ 1, %bb.au ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.q) #38
          to label %bb.br unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit

bb.br:                                            ; preds = %.thread325, %bb.ag
  %.sroa.063.4.ph = phi i8 [ 1, %bb.ag ], [ %.sroa.063.5330, %.thread325 ]
  %.pn133.pn.pn.ph = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %.pn133.pn331, %.thread325 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #38
          to label %.thread278 unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.fr = load i64, ptr %i.af, align 16, !range !490, !alias.scope !525, !noundef !4
  %i.fs = icmp eq i64 %i.fr, 37
  br i1 %i.fs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189 unwind label %bb.bu

bb.bt:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp310 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.x) #38
          to label %.thread278 unwind label %bb.o

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198, %bb.bs, %bb.d, %bb.c
  %.sroa.051.2 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198 ], [ 1, %bb.d ], [ %.sroa.051.0, %bb.bs ], [ 1, %bb.c ]
  %.sroa.056.2 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198 ], [ 1, %bb.d ], [ 0, %bb.bs ], [ 1, %bb.c ]
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body199

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fu = load i64, ptr %6, align 16, !range !490, !noundef !4
  %i.fv = icmp ne i64 %i.fu, 37
  %i.fw = trunc nuw i8 %.sroa.051.0 to i1
  %or.cond = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.bv, label %.thread268

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit202
  %.sroa.056.3 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit202 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %6)
          to label %bb.m unwind label %bb.cj

bb.bw:                                            ; preds = %bb.r
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #38
          to label %.thread278 unwind label %bb.o

.thread278:                                       ; preds = %bb.bd, %bb.bt, %.thread311, %bb.ab, %bb.bw, %bb.s, %bb.br, %bb.v, %bb.p
  %.pn141283 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.br, %bb.p ], [ %i.cm, %bb.v ], [ %.pn133.pn.pn.ph, %bb.br ], [ %i.da, %bb.ab ], [ %i.fx, %bb.bw ], [ %i.ev, %bb.bd ], [ %lpad.thr_comm.split-lp310, %bb.bt ], [ %lpad.thr_comm309, %.thread311 ] ; 2 uses
  %.sroa.063.1282 = phi i8 [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.v ], [ %.sroa.063.4.ph, %bb.br ], [ 1, %bb.ab ], [ 1, %bb.bw ], [ 1, %bb.bd ], [ 1, %bb.bt ], [ 1, %.thread311 ] ; 2 uses
  %i.fy = load i64, ptr %i.af, align 16, !range !490, !alias.scope !528, !noundef !4
  %i.fz = icmp eq i64 %i.fy, 37
  br i1 %i.fz, label %.body199, label %bb.bx

bb.bx:                                            ; preds = %.thread278
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.af)
          to label %.body199 unwind label %bb.o

bb.by:                                            ; preds = %.noexc
  %i.ga = load ptr, ptr %i.ba, align 8, !noalias !491, !nonnull !4, !noundef !4 ; 2 uses
  %i.gb = icmp ugt i64 %i.az, 48
  tail call void @llvm.assume(i1 %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !491
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ga, ptr noundef nonnull readonly align 1 dereferenceable(49) @33, i64 range(i64 0, -9223372036854775808) 49, i1 false), !noalias !531
  store i64 %i.az, ptr %i.ai, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ga, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 49, ptr %.sroa.5.0..sroa_idx217, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ca unwind label %bb.bz

.body194:                                         ; preds = %bb.ce, %bb.bz, %bb.cd
  %.pn144 = phi { ptr, i32 } [ %i.gl, %bb.cd ], [ %i.gc, %bb.bz ], [ %i.gm, %bb.ce ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #38
          to label %.body199 unwind label %bb.o

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.cb, %bb.by
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.ca:                                            ; preds = %bb.by
  %i.gd = load i64, ptr %i.e, align 8, !range !3, !noundef !4
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !63, !noundef !4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.cb, label %bb.cc, !prof !64

bb.cb:                                            ; preds = %bb.ca
  %i.gi = load i64, ptr %i.gh, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #37
          to label %bb.bg unwind label %bb.bz

bb.cc:                                            ; preds = %bb.ca
  %i.gj = load ptr, ptr %i.gh, align 8, !nonnull !4, !noundef !4
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
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @32, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit193 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #38
          to label %.body194 unwind label %bb.o

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit193: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ce

bb.ce:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit193
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body194 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit193
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198 unwind label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body199 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit202 unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit202: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  %i.gq = load i64, ptr %6, align 16, !range !490, !noundef !4
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

.thread264:                                       ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit202, %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %.thread264
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %.body205 unwind label %bb.cm

bb.cl:                                            ; preds = %.thread264
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.co unwind label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body205

.body205:                                         ; preds = %bb.ck, %bb.cn
  %eh.lpad-body206 = phi { ptr, i32 } [ %i.gu, %bb.cn ], [ %i.gs, %bb.ck ] ; 2 uses
  %i.gv = extractvalue { ptr, i32 } %eh.lpad-body206, 1
  %i.gw = extractvalue { ptr, i32 } %eh.lpad-body206, 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #38
          to label %.thread344 unwind label %bb.o

.thread268:                                       ; preds = %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit189, %bb.m
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %3)
          to label %bb.cv unwind label %bb.cu

bb.co:                                            ; preds = %bb.cl
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body210 unwind label %bb.cr

bb.cq:                                            ; preds = %bb.co
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB4_15DeltaTableState7try_new0Cs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.li, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lj = icmp eq i64 %.val37.i.i.i, 23
  br i1 %i.lj, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !8403)
  %i.lk = icmp ult i64 %.val37.i.i.i, 38
  br i1 %i.lk, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %bb.dq

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %bb.dp
  %i.ll = load i128, ptr %.val.i.i13.i, align 1
  %i.lm = xor i128 %i.ll, 43072362355690950656158319865334099790
  %i.ln = getelementptr i8, ptr %.val.i.i13.i, i64 7
  %i.lo = load i128, ptr %i.ln, align 1
  %i.lp = xor i128 %i.lo, 154763657356728356358779844745476251763
  %i.lq = or i128 %i.lm, %i.lp
  %i.lr = icmp ne i128 %i.lq, 0
  %i.ls = zext i1 %i.lr to i32
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i145 = phi i64 [ %i.me, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i ], [ %.val37.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i144 = phi ptr [ %i.lu, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i ], [ %.val.i.i13.i, %.lr.ph.split.us.i.i.i.i.i.i.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i144, i64 1 ; 3 uses
  %i.lv = load i128, ptr %i.lu, align 1
  %i.lw = xor i128 %i.lv, 43072362355690950656158319865334099790
  %i.lx = getelementptr i8, ptr %i.lu, i64 7
  %i.ly = load i128, ptr %i.lx, align 1
  %i.lz = xor i128 %i.ly, 154763657356728356358779844745476251763
  %i.ma = or i128 %i.lw, %i.lz
  %i.mb = icmp ne i128 %i.ma, 0
  %i.mc = zext i1 %i.mb to i32
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.me = add nsw i64 %.in.i.i.i.i.i.i145, -1     ; 2 uses
  %.not28.i.i.i.i.i.i.i = icmp ugt i64 %i.me, 23
  br i1 %.not28.i.i.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8406
  store ptr %.val.i.i13.i, ptr %i.g, align 8, !noalias !8406
  %i.mf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val37.i.i.i, ptr %i.mf, align 8, !noalias !8406
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @113, i64 1), ptr %i.mg, align 8, !noalias !8406
  %i.mh = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 22, ptr %i.mh, align 8, !noalias !8406
  %i.mi = icmp ult i64 %.val37.i.i.i, 87
  br i1 %i.mi, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.du, %bb.dq
  %.sroa.06.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.dq ], [ %i.od, %bb.du ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i.i = phi i8 [ 0, %bb.dq ], [ %.sroa.014.2.3.i.i.i.i.i.i, %bb.du ] ; 2 uses
  %i.mj = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i, 38
  %i.mk = icmp uge i64 %i.mj, %.val37.i.i.i
  %i.ml = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i.i.i = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %or.cond338.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dq, %bb.du
  %.sroa.06.036.i.i.i.i.i.i = phi i64 [ %i.od, %bb.du ], [ 0, %bb.dq ] ; 7 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i.i13.i, i64 %.sroa.06.036.i.i.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.mm, align 1, !alias.scope !8407, !noalias !8408
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.mn, align 1, !alias.scope !8407, !noalias !8408
  %i.mo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i, splat (i8 78)
  %i.mp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i.i, splat (i8 116)
  %i.mq = and <16 x i1> %i.mo, %i.mp
  %i.mr = bitcast <16 x i1> %i.mq to i16          ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i = load <16 x i8>, ptr %i.ms, align 1, !alias.scope !8407, !noalias !8408
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i = load <16 x i8>, ptr %i.mt, align 1, !alias.scope !8407, !noalias !8408
  %i.mu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i, splat (i8 78)
  %i.mv = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i.i, splat (i8 116)
  %i.mw = and <16 x i1> %i.mu, %i.mv
  %i.mx = bitcast <16 x i1> %i.mw to i16          ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i = load <16 x i8>, ptr %i.my, align 1, !alias.scope !8407, !noalias !8408
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mm, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i = load <16 x i8>, ptr %i.mz, align 1, !alias.scope !8407, !noalias !8408
  %i.na = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i, splat (i8 78)
  %i.nb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i.i, splat (i8 116)
  %i.nc = and <16 x i1> %i.na, %i.nb
  %i.nd = bitcast <16 x i1> %i.nc to i16          ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i = load <16 x i8>, ptr %i.ne, align 1, !alias.scope !8407, !noalias !8408
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mm, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i = load <16 x i8>, ptr %i.nf, align 1, !alias.scope !8407, !noalias !8408
  %i.ng = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i, splat (i8 78)
  %i.nh = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i.i, splat (i8 116)
  %i.ni = and <16 x i1> %i.ng, %i.nh
  %i.nj = bitcast <16 x i1> %i.ni to i16          ; 2 uses
  %i.nk = icmp eq i16 %i.mr, 0
  br i1 %i.nk, label %.preheader30.1.i.i.i.i.i.i, label %bb.dv

.preheader30.1.i.i.i.i.i.i:                       ; preds = %.noexc58.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.014.2.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.oi, %.noexc58.i.i.i ] ; 2 uses
  %i.nl = icmp eq i16 %i.mx, 0
  br i1 %i.nl, label %.preheader30.2.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %.preheader30.1.i.i.i.i.i.i
  %i.nm = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i, 16
  %i.nn = trunc nuw i8 %.sroa.014.2.i.i.i.i.i.i to i1 ; 2 uses
  %i.no = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.nm, i16 noundef %i.mx, i1 noundef zeroext %i.nn) #42
          to label %.noexc55.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !8304

.noexc55.i.i.i:                                   ; preds = %bb.dr
  %i.np = or i1 %i.no, %i.nn
  %i.nq = zext i1 %i.np to i8
  br label %.preheader30.2.i.i.i.i.i.i

.preheader30.2.i.i.i.i.i.i:                       ; preds = %.noexc55.i.i.i, %.preheader30.1.i.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i.i, %.preheader30.1.i.i.i.i.i.i ], [ %i.nq, %.noexc55.i.i.i ] ; 2 uses
  %i.nr = icmp eq i16 %i.nd, 0
  br i1 %i.nr, label %.preheader30.3.i.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %.preheader30.2.i.i.i.i.i.i
  %i.ns = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i, 32
  %i.nt = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i.i to i1 ; 2 uses
  %i.nu = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.ns, i16 noundef %i.nd, i1 noundef zeroext %i.nt) #42
          to label %.noexc56.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !8304

.noexc56.i.i.i:                                   ; preds = %bb.ds
  %i.nv = or i1 %i.nu, %i.nt
  %i.nw = zext i1 %i.nv to i8
  br label %.preheader30.3.i.i.i.i.i.i

.preheader30.3.i.i.i.i.i.i:                       ; preds = %.noexc56.i.i.i, %.preheader30.2.i.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i.i, %.preheader30.2.i.i.i.i.i.i ], [ %i.nw, %.noexc56.i.i.i ] ; 2 uses
  %i.nx = icmp eq i16 %i.nj, 0
  br i1 %i.nx, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.preheader30.3.i.i.i.i.i.i
  %i.ny = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i, 48
  %i.nz = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i.i to i1 ; 2 uses
  %i.oa = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.ny, i16 noundef %i.nj, i1 noundef zeroext %i.nz) #42
          to label %.noexc57.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !8304

.noexc57.i.i.i:                                   ; preds = %bb.dt
  %i.ob = or i1 %i.oa, %i.nz
  %i.oc = zext i1 %i.ob to i8
  br label %bb.du

bb.du:                                            ; preds = %.noexc57.i.i.i, %.preheader30.3.i.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i.i, %.preheader30.3.i.i.i.i.i.i ], [ %i.oc, %.noexc57.i.i.i ] ; 2 uses
  %i.od = add i64 %.sroa.06.036.i.i.i.i.i.i, 64   ; 2 uses
  %i.oe = add i64 %.sroa.06.036.i.i.i.i.i.i, 150
  %i.of = icmp uge i64 %i.oe, %.val37.i.i.i
  %i.og = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.of, i1 true, i1 %i.og
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.oh = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.036.i.i.i.i.i.i, i16 noundef %i.mr, i1 noundef zeroext false) #42
          to label %.noexc58.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !8304

.noexc58.i.i.i:                                   ; preds = %bb.dv
  %i.oi = zext i1 %i.oh to i8
  br label %.preheader30.1.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dw, %.preheader.i.i.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i.i, %bb.dw ]
  %.lcssa.i.i.i.i.i.i = phi i1 [ %i.ml, %.preheader.i.i.i.i.i.i ], [ %i.pb, %bb.dw ] ; 2 uses
  %i.oj = add i64 %.val37.i.i.i, -38              ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val.i.i13.i, i64 %i.oj ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i.i = load <16 x i8>, ptr %i.ok, align 1, !alias.scope !8407, !noalias !8411
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i.i.i = load <16 x i8>, ptr %i.ol, align 1, !alias.scope !8407, !noalias !8411
  %i.om = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i.i, splat (i8 78)
  %i.on = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i.i.i, splat (i8 116)
  %i.oo = and <16 x i1> %i.om, %i.on
  %i.op = bitcast <16 x i1> %i.oo to i16          ; 2 uses
  %i.oq = icmp eq i16 %i.op, 0
  br i1 %i.oq, label %bb.dy, label %bb.dz

.lr.ph40.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %bb.dw
  %.sroa.06.139.i.i.i.i.i.i = phi i64 [ %i.oy, %bb.dw ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.val.i.i13.i, i64 %.sroa.06.139.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i.i.i = load <16 x i8>, ptr %i.or, align 1, !alias.scope !8407, !noalias !8414
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i.i.i = load <16 x i8>, ptr %i.os, align 1, !alias.scope !8407, !noalias !8414
  %i.ot = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i.i.i, splat (i8 78)
  %i.ou = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i.i.i, splat (i8 116)
  %i.ov = and <16 x i1> %i.ot, %i.ou
  %i.ow = bitcast <16 x i1> %i.ov to i16          ; 2 uses
  %i.ox = icmp eq i16 %i.ow, 0
  br i1 %i.ox, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.noexc59.i.i.i, %.lr.ph40.i.i.i.i.i.i
  %.sroa.014.4.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i.i.i ], [ %i.pd, %.noexc59.i.i.i ] ; 2 uses
  %i.oy = add i64 %.sroa.06.139.i.i.i.i.i.i, 16
  %i.oz = add i64 %.sroa.06.139.i.i.i.i.i.i, 54
  %i.pa = icmp uge i64 %i.oz, %.val37.i.i.i
  %i.pb = trunc nuw i8 %.sroa.014.4.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i.i.i = select i1 %i.pa, i1 true, i1 %i.pb
  br i1 %or.cond3.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i

bb.dx:                                            ; preds = %.lr.ph40.i.i.i.i.i.i
  %i.pc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.139.i.i.i.i.i.i, i16 noundef %i.ow, i1 noundef zeroext false) #42
          to label %.noexc59.i.i.i unwind label %.loopexit.i.i.i, !noalias !8304

.noexc59.i.i.i:                                   ; preds = %bb.dx
  %i.pd = zext i1 %i.pc to i8
  br label %bb.dw

bb.dy:                                            ; preds = %.noexc60.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.014.5.i.i.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.ph, %.noexc60.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8406
  %i.pe = trunc nuw i8 %.sroa.014.5.i.i.i.i.i.i to i1
  br i1 %i.pe, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.pf = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.oj, i16 noundef %i.op, i1 noundef zeroext %.lcssa.i.i.i.i.i.i) #42
          to label %.noexc60.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !8304

.noexc60.i.i.i:                                   ; preds = %bb.dz
  %i.pg = or i1 %.lcssa.i.i.i.i.i.i, %i.pf
  %i.ph = zext i1 %i.pg to i8
  br label %bb.dy

.loopexit.i.i.i:                                  ; preds = %bb.dx
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.dv, %bb.dt, %bb.ds, %bb.dr
  %lpad.loopexit180.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.dz
  %lpad.loopexit.split-lp181.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit180.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp181.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #38
          to label %.body42.i.i.i unwind label %bb.dg, !noalias !8304

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.do
  %i.pi = load i128, ptr %.val.i.i13.i, align 1
  %i.pj = xor i128 43072362355690950656158319865334099790, %i.pi
  %i.pk = getelementptr i8, ptr %.val.i.i13.i, i64 7
  %i.pl = load i128, ptr %i.pk, align 1
  %i.pm = xor i128 154763657356728356358779844745476251763, %i.pl
  %i.pn = or i128 %i.pj, %i.pm
  %i.po = icmp ne i128 %i.pn, 0
  %i.pp = zext i1 %i.po to i32
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.dy, %bb.do
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ea, !noalias !8304

bb.ea:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body42.i.i.i unwind label %bb.eb, !noalias !8304

bb.eb:                                            ; preds = %bb.ea
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8304
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread160.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ef unwind label %bb.ee, !noalias !8304

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.dy, %.lr.ph.split.us.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i65.i.i.i unwind label %bb.ec, !noalias !8304

bb.ec:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body42.i.i.i unwind label %bb.ed, !noalias !8304

bb.ed:                                            ; preds = %bb.ec
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8304
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i65.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit69.i.i.i unwind label %bb.ee, !noalias !8304

.body42.i.i.i:                                    ; preds = %bb.ee, %bb.ec, %bb.ea, %.loopexit.split-lp.i.i.i, %bb.co
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.jj, %bb.co ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.pt, %bb.ec ], [ %i.pr, %bb.ea ], [ %i.pv, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8300
  br label %.body75.i.i.i

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i65.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i.i.i

bb.ef:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8300
  %.sroa.0126.0.copyload.i.i.i = load i64, ptr %i.r, align 16, !noalias !8300
  %.sroa.5127.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !8300
  %.sroa.10.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 16, !noalias !8300
  %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.10.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i, align 8, !noalias !8300
  %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.10.i.i.sroa.11.0.copyload.i = load ptr, ptr %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i, align 16, !noalias !8300
  %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i, i64 40, i1 false), !noalias !8300
  %.sroa.7129.0.copyload.i.i.i = load ptr, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i, align 16, !noalias !8300
  %.sroa.8130.0.copyload.i.i.i = load ptr, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i, align 8, !noalias !8300
  br label %bb.ek

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit69.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i65.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8417
  store i64 0, ptr %i.f, align 8, !noalias !8417
  %.sroa.42.0..sroa_idx.i.i70.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i70.i.i.i, align 8, !noalias !8417
  %.sroa.53.0..sroa_idx.i.i71.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i71.i.i.i, align 8, !noalias !8417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8417
  %i.pw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1610612768, ptr %i.pw, align 8, !noalias !8417
  %.sroa.4.0..sroa_idx.i.i72.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i72.i.i.i, align 4, !noalias !8417
  %.sroa.5.0..sroa_idx.i.i73.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i73.i.i.i, align 2, !noalias !8417
  store ptr %i.f, ptr %i.e, align 8, !noalias !8417
  %i.px = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @514, ptr %i.px, align 8, !noalias !8417
  %i.py = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.eh unwind label %bb.eg, !noalias !8424

bb.eg:                                            ; preds = %bb.ei, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit69.i.i.i
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %.body75.i.i.i unwind label %bb.ej, !noalias !8424

bb.eh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit69.i.i.i
  br i1 %i.py, label %bb.ei, label %bb.el, !prof !64

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @240, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #37
          to label %.noexc.i.i74.i.i.i unwind label %bb.eg, !noalias !8424

.noexc.i.i74.i.i.i:                               ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.eg
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8424
  unreachable

bb.ek:                                            ; preds = %bb.el, %bb.ef
  %.sroa.10.i.i.sroa.0.0.i = phi ptr [ %.sroa.10.i.i.sroa.0.0.copyload118.i, %bb.el ], [ %.sroa.10.i.i.sroa.0.0.copyload.i, %bb.ef ]
  %.sroa.10.i.i.sroa.10.0.i = phi i64 [ %.sroa.10.i.i.sroa.10.0.copyload122.i, %bb.el ], [ %.sroa.10.i.i.sroa.10.0.copyload.i, %bb.ef ]
  %.sroa.10.i.i.sroa.11.0.i = phi ptr [ undef, %bb.el ], [ %.sroa.10.i.i.sroa.11.0.copyload.i, %bb.ef ]
  %.sroa.097.2174.i.i.i = phi i64 [ -9223372036854775735, %bb.el ], [ %.sroa.0126.0.copyload.i.i.i, %bb.ef ]
  %.sroa.6.2172.i.i.i = phi ptr [ %.sroa.0116.0.copyload.i.i.i, %bb.el ], [ %.sroa.5127.0.copyload.i.i.i, %bb.ef ]
  %.sroa.11104.2170.i.i.i = phi ptr [ undef, %bb.el ], [ %.sroa.7129.0.copyload.i.i.i, %bb.ef ]
  %.sroa.12107.2168.i.i.i = phi ptr [ undef, %bb.el ], [ %.sroa.8130.0.copyload.i.i.i, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8300
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit54.i.i.i

bb.el:                                            ; preds = %bb.eh
  %.sroa.0116.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !noalias !8425
  %.sroa.10.i.i.sroa.0.0.copyload118.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i70.i.i.i, align 8, !noalias !8300
  %.sroa.10.i.i.sroa.10.0.copyload122.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i71.i.i.i, align 8, !noalias !8300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8417
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.r)
          to label %bb.ek unwind label %bb.en, !noalias !8304

bb.em:                                            ; preds = %.body75.i.i.i, %bb.en
  %.pn30.i.i.i = phi { ptr, i32 } [ %i.qb, %bb.en ], [ %.pn28.ph.i.i.i, %.body75.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8300
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.body75.i.i.i:                                    ; preds = %bb.eg, %.body42.i.i.i
  %.pn28.ph.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %.body42.i.i.i ], [ %i.pz, %bb.eg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.r) #38
          to label %bb.em unwind label %bb.dg, !noalias !8304

end_hunk_1
begin_hunk_2_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i unwind label %.thread33.i, !noalias !11144

bb.br:                                            ; preds = %bb.bp
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11144
  unreachable

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11144
  %i.fm = icmp ult i64 %.sroa.6236.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5235.0.copyload.i, i64 %.sroa.6236.0.copyload.i
  %i.fo = icmp sgt i64 %.sroa.0234.0.copyload.i, -1
  call void @llvm.assume(i1 %i.fo)
  store ptr %.sroa.5235.0.copyload.i, ptr %i.g, align 8, !noalias !11144
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0234.0.copyload.i, ptr %i.fp, align 8, !noalias !11144
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5235.0.copyload.i, ptr %i.fq, align 8, !noalias !11144
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fn, ptr %i.fr, align 8, !noalias !11144
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types3any5PyAnyEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.bt unwind label %bb.bf, !noalias !11144

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11144
  %.sroa.740.8.copyload43 = load i64, ptr %i.o, align 8, !noalias !11141
  %.sroa.15.8.copyload49 = load ptr, ptr %i.eg, align 8, !noalias !11141
  %.sroa.19.8.copyload56 = load i64, ptr %i.eh, align 8, !noalias !11141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11144
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bu, !noalias !11144

bb.bu:                                            ; preds = %bb.bt
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.bv, !noalias !11144

bb.bv:                                            ; preds = %bb.bu
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11144
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bw unwind label %bb.ac, !noalias !11144

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11144
  %.val261.i = load ptr, ptr %i.w, align 8, !noalias !11144, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val261.i) #41, !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11144
  %.val258.i = load ptr, ptr %i.y, align 8, !noalias !11144, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val258.i) #41, !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11144
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.bx, !noalias !11146

bb.bx:                                            ; preds = %bb.bw
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.by, !noalias !11146

bb.by:                                            ; preds = %bb.bx
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11146
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i: ; preds = %bb.co, %bb.bw
  %.sroa.19.3 = phi i64 [ %.sroa.19.2, %bb.co ], [ %.sroa.19.8.copyload56, %bb.bw ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.co ], [ %.sroa.15.8.copyload49, %bb.bw ] ; 2 uses
  %.sroa.740.3 = phi i64 [ %.sroa.740.2, %bb.co ], [ %.sroa.740.8.copyload43, %bb.bw ] ; 2 uses
  %.sroa.0.3 = phi i1 [ true, %bb.co ], [ false, %bb.bw ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.cr unwind label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11144
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ci, %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i
  %.sroa.19.0 = phi i64 [ %.sroa.6221.0.copyload.i, %bb.cc ], [ %.sroa.6236.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.19.8.copyload52, %bb.ci ]
  %.sroa.15.0 = phi ptr [ %.sroa.5220.0.copyload.i, %bb.cc ], [ %.sroa.5235.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.15.8.copyload45, %bb.ci ]
  %.sroa.740.0 = phi i64 [ %.sroa.0219.0.copyload.i, %bb.cc ], [ %.sroa.0234.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ], [ %.sroa.740.8.copyload41, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11144
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i unwind label %bb.bz, !noalias !11144

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.ca, !noalias !11144

bb.ca:                                            ; preds = %bb.bz
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11144
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i unwind label %bb.ac, !noalias !11144

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11144
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %bb.cc unwind label %bb.cb, !noalias !11144

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %.body298.i unwind label %bb.cd, !noalias !11144

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ai, !noalias !11144

bb.cd:                                            ; preds = %bb.cb
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11144
  unreachable

bb.ce:                                            ; preds = %bb.cn, %.thread19.thread.i, %bb.cf, %bb.bf, %.body270.i, %.body298.i, %bb.p
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11146
  unreachable

.thread19.i:                                      ; preds = %bb.bf
  br i1 %.sroa.0142.2.i, label %.thread19.thread.i, label %.body298.i

bb.cf:                                            ; preds = %bb.be
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #38
          to label %.thread19.thread.i unwind label %bb.ce, !noalias !11144

.thread19.thread.i:                               ; preds = %bb.cf, %.thread19.i, %.thread33.thread.i, %bb.bi
  %.pn2439.i = phi { ptr, i32 } [ %lpad.thr_comm44.i, %.thread33.thread.i ], [ %i.eo, %.thread19.i ], [ %lpad.thr_comm.split-lp.i, %bb.cf ], [ %i.es, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6.0..sroa_idx195.i) #38
          to label %.body298.i unwind label %bb.ce, !noalias !11144

bb.cg:                                            ; preds = %bb.ay, %bb.ar
  %.sroa.929.sroa.11.sroa.10.2.i = phi i64 [ 0, %bb.ay ], [ %.sroa.787.0.copyload.i, %bb.ar ]
  %.sroa.929.sroa.11.sroa.9.2.i = phi ptr [ %i.dj, %bb.ay ], [ %.sroa.686.0.copyload.i, %bb.ar ]
  %.sroa.929.sroa.11.sroa.0.2.i = phi ptr [ %i.dh, %bb.ay ], [ %i.dk, %bb.ar ]
  %.sroa.0139.2.i = phi i8 [ 1, %bb.ay ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.929.sroa.10.2.i = phi i64 [ %.sroa.580.0.copyload.i, %bb.ay ], [ %.sroa.484.0.copyload.i, %bb.ar ]
  %.sroa.929.sroa.9.2.i = phi ptr [ %.sroa.479.0.copyload.i, %bb.ay ], [ %.sroa.383.0.copyload.i, %bb.ar ]
  %.sroa.929.sroa.0.2.i = phi i64 [ %.sroa.078.0.copyload.i, %bb.ay ], [ %.sroa.282.0.copyload.i, %bb.ar ]
  %i.gb = ptrtoint ptr %.sroa.929.sroa.9.2.i to i64
  %i.gc = ptrtoint ptr %.sroa.929.sroa.11.sroa.9.2.i to i64
  %i.gd = inttoptr i64 %.sroa.929.sroa.0.2.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11144
  store i64 -9223372036854775711, ptr %i.j, align 16, !noalias !11144
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.cx, ptr %.sroa.290.0..sroa_idx.i, align 8, !noalias !11144
  %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.gd, ptr %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11144
  %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.gb, ptr %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11144
  %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.929.sroa.10.2.i, ptr %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11144
  %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %.sroa.929.sroa.11.sroa.0.2.i, ptr %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11144
  %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.gc, ptr %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11144
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.sroa.929.sroa.11.sroa.10.2.i, ptr %.sroa.391.0..sroa_idx.i, align 8, !noalias !11144
  %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !11144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11144
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.j)
          to label %bb.ch unwind label %bb.bb, !noalias !11144

bb.ch:                                            ; preds = %bb.cg
  %.sroa.740.8.copyload41 = load i64, ptr %i.i, align 8, !noalias !11141
  %.sroa.15.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.15.8.copyload45 = load ptr, ptr %.sroa.15.8..sroa_idx44, align 8, !noalias !11141
  %.sroa.19.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.19.8.copyload52 = load i64, ptr %.sroa.19.8..sroa_idx51, align 8, !noalias !11141
  %.sroa.21.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.8..sroa_idx58, i64 32, i1 false), !noalias !11141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11144
  %i.ge = load i64, ptr %i.r, align 8, !range !9840, !noalias !11144, !noundef !4 ; 3 uses
  %i.gf = icmp ne i64 %i.ge, -9223372036854775790
  %i.gg = trunc nuw i8 %.sroa.0139.2.i to i1
  %or.cond3.i = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond3.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %bb.cj, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11144
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.gh = icmp ne i64 %i.ge, -9223372036854775800
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp eq i64 %i.ge, -9223372036854775801
  br i1 %i.gi, label %bb.ci, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r)
          to label %bb.ci unwind label %bb.ai, !noalias !11144

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11144
  %.val260.i = load ptr, ptr %i.w, align 8, !noalias !11144, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val260.i) #41, !noalias !11144
  br label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i, %bb.x
  %.sroa.19.1 = phi i64 [ %.sroa.19.16.copyload, %bb.x ], [ %.sroa.19.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.16.copyload, %bb.x ], [ %.sroa.15.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.740.1 = phi i64 [ %i.bw, %bb.x ], [ %.sroa.740.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11144
  %.val257.i = load ptr, ptr %i.y, align 8, !noalias !11144, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val257.i) #41, !noalias !11144
  br label %bb.co

bb.cm:                                            ; preds = %.body272.i
  %i.gj = icmp ne i64 %i.dz, -9223372036854775800
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp eq i64 %i.dz, -9223372036854775801
  br i1 %i.gk, label %.body298.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r) #38
          to label %.body298.i unwind label %bb.ce, !noalias !11144

bb.co:                                            ; preds = %bb.cl, %bb.s
  %.sroa.19.2 = phi i64 [ %.sroa.19.16.copyload57, %bb.s ], [ %.sroa.19.1, %bb.cl ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.16.copyload50, %bb.s ], [ %.sroa.15.1, %bb.cl ]
  %.sroa.740.2 = phi i64 [ %i.br, %bb.s ], [ %.sroa.740.1, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11144
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.cp, !noalias !11146

bb.cp:                                            ; preds = %bb.co
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.cq, !noalias !11146

bb.cq:                                            ; preds = %bb.cp
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11146
  unreachable

bb.cr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.sroa.0.3, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, i64 32, i1 false)
  %i.gn = inttoptr i64 %.sroa.740.3 to ptr
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  store i64 %.sroa.740.3, ptr %i.z, align 8
  %.sroa.15.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.15.3, ptr %.sroa.15.8..sroa_idx46, align 8
  %.sroa.19.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.19.3, ptr %.sroa.19.8..sroa_idx53, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11162
  invoke void @_RINvYINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.ct
  %i.go = load i64, ptr %i.b, align 8, !range !3, !noalias !11162, !noundef !4
  %i.gp = trunc nuw i64 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload61 = load ptr, ptr %i.gq, align 8, !noalias !11166 ; 2 uses
  br i1 %i.gp, label %.thread, label %bb.cv

.thread:                                          ; preds = %.noexc34
  %.sroa.10.8..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.sroa.0.0.copyload67 = load ptr, ptr %.sroa.10.8..sroa_idx63, align 8, !noalias !11166
  %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.sroa.5.0.copyload68 = load i64, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx63.sroa_idx, align 8, !noalias !11166
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx63.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11162
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %bb.cs
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.15.3, %bb.cs ], [ %.sroa.10.sroa.0.0.copyload67, %.thread ]
  %.sroa.10.sroa.5.0 = phi i64 [ %.sroa.19.3, %bb.cs ], [ %.sroa.10.sroa.5.0.copyload68, %.thread ]
  %.sroa.5.0 = phi ptr [ %i.gn, %bb.cs ], [ %.sroa.5.8.copyload61, %.thread ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.gr, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.sroa.0.0, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.771.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, i64 32, i1 false)
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11162
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload61, ptr %i.gs, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %storemerge = phi i64 [ 0, %bb.cv ], [ 1, %bb.cu ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gt = load ptr, ptr %i.af, align 8, !alias.scope !11167, !noundef !4
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35: ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.cz:                                            ; preds = %bb.n, %bb.l
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.l ], [ %.sink.sroa.gep89, %bb.n ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gv, ptr noundef nonnull align 8 dereferenceable(56) %.sink.sroa.phi, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.de

bb.dc:                                            ; preds = %bb.m, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #38
          to label %.body36 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.d, %bb.dc
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %i.gz = load ptr, ptr %i.af, align 8, !alias.scope !11170, !noundef !4
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit39, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit39

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit39: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body36, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext10drop_table0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
default.unreachable:                              ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !noalias !12864, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !noalias !12864
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false), !noalias !12864
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 56, i1 false), !noalias !12864
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.v = load i8, ptr %i.u, align 8, !range !101, !noalias !12864, !noundef !4
  store i8 %i.v, ptr %i.t, align 1, !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12869)
  %i.w = load i64, ptr %i.s, align 8, !range !288, !alias.scope !12869, !noalias !12871, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !12869, !noalias !12871, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !12869, !noalias !12871, !noundef !4 ; 3 uses
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !12872
  %i.ac = icmp slt i64 %i.ab, 0                   ; 3 uses
  switch i64 %i.w, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.f, label %bb.q

bb.d:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.n ], [ %.sink18.i.sroa.gep68.i, %bb.g ]
  %.sink16.i.i = phi ptr [ %i.ak, %bb.n ], [ %i.y, %bb.g ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.n ], [ %.sink15.i.sroa.gep69.i, %bb.g ]
  %.sink13.i.i = phi i64 [ %i.am, %bb.n ], [ %i.aa, %bb.g ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i.i = phi ptr [ %i.aq, %bb.n ], [ %i.ae, %bb.g ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i.i = phi i64 [ %i.as, %bb.n ], [ %i.ag, %bb.g ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !12866, !noalias !12873
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !12866, !noalias !12873
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !12869, !noalias !12871, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !12869, !noalias !12871, !noundef !4
  %i.ah = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !12872
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !12869, !noalias !12871, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !12869, !noalias !12871, !noundef !4
  %i.an = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !12872
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !12869, !noalias !12871, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !12869, !noalias !12871, !noundef !4
  %i.at = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8, !noalias !12872
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.y, ptr %.sink18.i.sroa.gep68.i, align 8, !alias.scope !12866, !noalias !12873
  store i64 %i.aa, ptr %.sink15.i.sroa.gep69.i, align 8, !alias.scope !12866, !noalias !12873
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  br label %bb.v

bb.q:                                             ; preds = %.sink.split.i.i, %bb.c
  %.sink12.i.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.y, %bb.c ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.aa, %bb.c ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.av, align 8, !alias.scope !12866, !noalias !12873
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.aw, align 8, !alias.scope !12866, !noalias !12873
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !12866, !noalias !12873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12864
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.065.i, i64 56, i1 false), !noalias !12864
  %.sroa.766.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 272
  store ptr %i.q, ptr %.sroa.766.0..sroa_idx.i, align 8, !noalias !12864
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 416
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !12864
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 417
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !12864
  br label %bb.v

bb.r:                                             ; preds = %bb.z, %bb.u
  %.pn7.i = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %i.ay, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  br label %bb.bb

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #36, !noalias !12861
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #36, !noalias !12861
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12864
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.az) #38
          to label %bb.r unwind label %bb.at, !noalias !12861

bb.v:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12864
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  invoke fastcc void @_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.u, !noalias !12861

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %i.k, align 8, !range !6373, !noalias !12864, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 21
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12864
  store i64 37, ptr %0, align 16, !alias.scope !12861, !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext10drop_table0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12864
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.az)
          to label %bb.aa unwind label %bb.z, !noalias !12861

bb.z:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12864
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.be = load i8, ptr %i.bd, align 1, !range !101, !noalias !12864, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !12864
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 %i.be, ptr %i.bf, align 8, !noalias !12864
  %i.bg = load i64, ptr %i.i, align 8, !range !403, !noalias !12864, !noundef !4
  %.not9.i = icmp eq i64 %i.bg, 20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !101, !noalias !12864
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.bj, i1 false
  %i.bk = trunc nuw i8 %i.be to i1
  %or.cond79.i = select i1 %or.cond.i, i1 true, i1 %i.bk
  br i1 %or.cond79.i, label %.invoke.i, label %bb.ah

bb.ab:                                            ; preds = %.body57.i, %bb.ad
  %.pn26.i = phi { ptr, i32 } [ %i.bn, %bb.ad ], [ %.pn20.i, %.body57.i ] ; 2 uses
  %i.bl = load i64, ptr %i.i, align 8, !range !403, !alias.scope !12875, !noalias !12864, !noundef !4
  %i.bm = icmp eq i64 %i.bl, 20
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.at, !noalias !12861

bb.ad:                                            ; preds = %.invoke.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ae:                                            ; preds = %bb.as, %.invoke.i
  %i.bo = load i64, ptr %i.i, align 8, !range !403, !alias.scope !12880, !noalias !12864, !noundef !4
  %i.bp = icmp eq i64 %i.bo, 20
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i unwind label %bb.au, !noalias !12861

.invoke.i:                                        ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !12864, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.ae unwind label %bb.ad, !noalias !12861

bb.ag:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12864
  br label %.body57.i

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12864
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12864
  store ptr %i.bt, ptr %i.e, align 8, !noalias !12864
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !12864
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @145, ptr noundef nonnull %i.e)
          to label %bb.ai unwind label %bb.ag, !noalias !12861

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !12885, !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12889
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i unwind label %bb.ak, !noalias !12861

.noexc40.i:                                       ; preds = %bb.ai
  %i.bu = load i64, ptr %i.a, align 8, !range !3, !noalias !12889, !noundef !4
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !63, !noalias !12889, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.aj, label %bb.am, !prof !64

bb.aj:                                            ; preds = %.noexc40.i
  %i.bz = load i64, ptr %i.by, align 8, !noalias !12889
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #37
          to label %.noexc41.i unwind label %bb.ak, !noalias !12861

.noexc41.i:                                       ; preds = %bb.aj
  unreachable

.body.i:                                          ; preds = %bb.an, %bb.al, %bb.ak
  %.pn18.i = phi { ptr, i32 } [ %i.cb, %bb.al ], [ %i.ca, %bb.ak ], [ %i.ce, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12864
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body57.i unwind label %bb.at, !noalias !12861

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aj, %bb.ai
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.al:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12864
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #38
          to label %.body.i unwind label %bb.at, !noalias !12861

bb.am:                                            ; preds = %.noexc40.i
  %i.cc = load ptr, ptr %i.by, align 8, !noalias !12889, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12889
  store i64 %i.bx, ptr %i.d, align 8, !noalias !12864
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !12864
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx.i, align 8, !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12864
  store ptr %i.g, ptr %i.c, align 8, !noalias !12864
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.573.0..sroa_idx.i, align 8, !noalias !12864
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cd, align 8, !noalias !12864
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !12864
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @32, ptr noundef nonnull %i.c)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i unwind label %bb.al, !noalias !12861

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i:   ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12864
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.an, !noalias !12861

bb.an:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.ao, !noalias !12861

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ak, !noalias !12861

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12864
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i unwind label %bb.ap, !noalias !12861

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i unwind label %bb.aq, !noalias !12861

bb.aq:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.as unwind label %bb.ar, !noalias !12861

.body57.i:                                        ; preds = %bb.ar, %bb.ap, %.body.i, %bb.ag
  %.pn20.i = phi { ptr, i32 } [ %i.bs, %bb.ag ], [ %.pn18.i, %.body.i ], [ %i.ci, %bb.ar ], [ %i.cg, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12864
  br label %bb.ab

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12864
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !12864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12864
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 10, ptr %i.cj, align 8, !noalias !12864
  store i64 36, ptr %i.b, align 16, !noalias !12864
  br label %bb.ae

bb.at:                                            ; preds = %bb.bb, %bb.aw, %bb.al, %.body.i, %bb.ac, %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.au, %bb.ac, %bb.ab
  %.pn28.i = phi { ptr, i32 } [ %i.cl, %bb.au ], [ %.pn26.i, %bb.ac ], [ %.pn26.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12864
  br label %bb.bb

bb.au:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12864
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.cm)
          to label %bb.ay unwind label %bb.ax, !noalias !12861

bb.av:                                            ; preds = %bb.bb, %bb.ax
  %.pn31.i = phi { ptr, i32 } [ %i.cr, %bb.ax ], [ %.pn28.pn.i, %bb.bb ] ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11drop_schema0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13104
  unreachable

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !13105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13097
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val37.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !13094
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val38.pre.i = load i64, ptr %.phi.trans.insert16.i, align 8, !noalias !13094
  br label %bb.p

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %_RNvMs2_NtCslfDARg5dRCJ_8lock_api6rwlockINtB5_6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateE4readCs7p2uQeJxui2_9deltalake.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val29.i, i64 1440
  %.val28.i = load ptr, ptr %i.ao, align 8, !noalias !13094, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val28.i, i64 456
  %.val.i = load ptr, ptr %i.ap, align 8, !noalias !13094, !nonnull !4, !noundef !4
  %i.aq = getelementptr i8, ptr %.val28.i, i64 464
  %.val27.i = load i64, ptr %i.aq, align 8, !noalias !13094, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13112
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val27.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %bb.i, !noalias !13094

.noexc43.i:                                       ; preds = %bb.j
  %i.ar = load i64, ptr %i.b, align 8, !range !3, !noalias !13112, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !63, !noalias !13112, !noundef !4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.as, label %bb.k, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, !prof !64

bb.k:                                             ; preds = %.noexc43.i
  %i.aw = load i64, ptr %i.av, align 8, !noalias !13112
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #37
          to label %.noexc44.i unwind label %bb.i, !noalias !13094

.noexc44.i:                                       ; preds = %bb.k
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.noexc43.i
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !13112, !nonnull !4, !noundef !4 ; 3 uses
  %i.ay = icmp ule i64 %.val27.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13112
  %.not.i.i.i.i = icmp eq i64 %.val27.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val27.i, i1 false), !noalias !13116
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  store i64 %i.au, ptr %i.h, align 8, !alias.scope !13117, !noalias !13094
  %.sroa.4.0..sroa_idx.i.i41.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i.i41.i, align 8, !alias.scope !13117, !noalias !13094
  %.sroa.5.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val27.i, ptr %.sroa.5.0..sroa_idx.i.i42.i, align 8, !alias.scope !13117, !noalias !13094
  br label %bb.p

.body.i:                                          ; preds = %bb.bj, %bb.bg, %bb.s, %bb.n, %bb.i, %bb.e
  %.pn8.i = phi { ptr, i32 } [ %i.ff, %bb.bj ], [ %.pn6.i, %bb.bg ], [ %i.an, %bb.i ], [ %i.al, %bb.e ], [ %i.br, %bb.s ], [ %i.bc, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13094
  %i.az = atomicrmw sub ptr %i.w, i64 16 release, align 8, !noalias !13094
  %i.ba = and i64 %i.az, -14
  %i.bb = icmp eq i64 %i.ba, 18
  br i1 %i.bb, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i, !prof !64

bb.m:                                             ; preds = %.body.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.at, !noalias !13094

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i75.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i
  %.val38.i = phi i64 [ %.val27.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i ], [ %.val38.pre.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i ]
  %.val37.i = phi ptr [ %i.ax, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i ], [ %.val37.pre.i, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtB7_4sync3ArceENtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.val29.i, i64 1168
  %.val32.i = load ptr, ptr %i.be, align 8, !noalias !13094, !nonnull !4, !noundef !4
  %i.bf = getelementptr i8, ptr %.val29.i, i64 1176
  %.val33.i = load ptr, ptr %i.bf, align 8, !noalias !13094, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !605, !invariant.load !4, !noalias !13094
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = and i64 %i.bi, -16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.val33.i, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !4, !noalias !13094, !nonnull !4
  %i.bo = invoke { ptr, ptr } %i.bn(ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val37.i, i64 noundef %.val38.i)
          to label %bb.q unwind label %bb.o, !noalias !13094 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 4 uses
  %.not5.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.s, !noalias !13094

bb.s:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.t, !noalias !13094

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13094
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !13094

bb.u:                                             ; preds = %bb.q
  br i1 %i.r, label %bb.bf, label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13094
  %i.bt = atomicrmw sub ptr %i.w, i64 16 release, align 8, !noalias !13094
  %i.bu = and i64 %i.bt, -14
  %i.bv = icmp eq i64 %i.bu, 18
  br i1 %i.bv, label %bb.v, label %bb.w, !prof !64

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.w)
          to label %bb.w unwind label %bb.c, !noalias !13094

bb.w:                                             ; preds = %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  store ptr %i.bp, ptr %i.i, align 8, !noalias !13094
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bq, ptr %i.bw, align 8, !noalias !13094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13094
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !605, !invariant.load !4, !noalias !13094
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = and i64 %i.bz, -16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.j, align 8, !alias.scope !13118, !noalias !13094, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !13118, !noalias !13094 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %.pn.i.i = select i1 %.not.i.i, ptr %i.cf, ptr %i.cd
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.val.i.i = load i64, ptr %i.cg, align 8, !alias.scope !13118, !noalias !13094
  %.val1.cast.i.i = ptrtoint ptr %i.cf to i64
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %.val.i.i, i64 %.val1.cast.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !4, !noalias !13094, !nonnull !4
  invoke void %i.ci(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i1 noundef zeroext %i.u)
          to label %bb.y unwind label %bb.x, !noalias !13094

bb.x:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13094
  br label %bb.au

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !13121)
  %i.ck = load i64, ptr %i.g, align 8, !range !403, !alias.scope !13124, !noalias !13126, !noundef !4 ; 2 uses
  %.not.i51.i = icmp eq i64 %i.ck, 20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !13127, !noalias !13094 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !13127, !noalias !13094 ; 2 uses
  br i1 %.not.i51.i, label %bb.z, label %bb.aw

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13094
  store ptr %i.cm, ptr %i.f, align 8, !noalias !13094
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !noalias !13094
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.q, ptr %i.cq, align 8, !noalias !13094
  %.not15.i = icmp ne ptr %i.cm, null
  %brmerge.i = select i1 %.not15.i, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.invoke.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext23schema_doesnt_exist_err(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.ae unwind label %bb.ab, !noalias !13094

.invoke.i:                                        ; preds = %bb.z
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
          to label %bb.ae unwind label %bb.ab, !noalias !13094

bb.ab:                                            ; preds = %.invoke.i, %bb.aa
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13128)
  call void @llvm.experimental.noalias.scope.decl(metadata !13131)
  %i.cs = load ptr, ptr %i.f, align 8, !alias.scope !13134, !noalias !13094, !noundef !4 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !13135
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.at, !noalias !13094

bb.ae:                                            ; preds = %.invoke.i, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !13140)
  call void @llvm.experimental.noalias.scope.decl(metadata !13143)
  %i.cw = load ptr, ptr %i.f, align 8, !alias.scope !13146, !noalias !13094, !noundef !4 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !13147
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i unwind label %bb.ah, !noalias !13094

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab
  %.pn16.i = phi { ptr, i32 } [ %i.da, %bb.ah ], [ %i.cr, %bb.ad ], [ %i.cr, %bb.ab ], [ %i.cr, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13094
  br label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i: ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13094
  call void @llvm.experimental.noalias.scope.decl(metadata !13152)
  call void @llvm.experimental.noalias.scope.decl(metadata !13155)
  %i.db = load ptr, ptr %i.i, align 8, !alias.scope !13158, !noalias !13094, !nonnull !4, !noundef !4
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !13159
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aj, !noalias !13094

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.av, %bb.au, %bb.aj, %bb.m, %.body.i, %bb.c
  %.pn21.i = phi { ptr, i32 } [ %i.de, %bb.aj ], [ %.pn8.i, %.body.i ], [ %i.af, %bb.c ], [ %.pn18.pn.i, %bb.au ], [ %.pn8.i, %bb.m ], [ %.pn18.pn.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13094
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.j) #38
          to label %.body57.i unwind label %bb.at, !noalias !13094

bb.aj:                                            ; preds = %bb.ax, %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13094
  call void @llvm.experimental.noalias.scope.decl(metadata !13160)
  %i.df = load ptr, ptr %i.j, align 8, !alias.scope !13160, !noalias !13094, !noundef !4 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13163)
  call void @llvm.experimental.noalias.scope.decl(metadata !13166)
  %i.dh = load ptr, ptr %i.ce, align 8, !alias.scope !13169, !noalias !13094, !nonnull !4, !noundef !4
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !13170
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.dk = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !13171
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i unwind label %bb.an, !noalias !13094

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i, %bb.ak
  %.sink.i.i = phi ptr [ %i.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i ], [ %i.ce, %bb.ak ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i.i) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ar, !noalias !13094

bb.an:                                            ; preds = %bb.am
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13176)
  call void @llvm.experimental.noalias.scope.decl(metadata !13179)
  %i.dn = load ptr, ptr %i.cg, align 8, !alias.scope !13182, !noalias !13094, !nonnull !4, !noundef !4
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !13183
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ao, label %.body57.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cg) #40
          to label %.body57.i unwind label %bb.ap, !noalias !13094

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !13184)
  call void @llvm.experimental.noalias.scope.decl(metadata !13187)
  %i.dq = load ptr, ptr %i.cg, align 8, !alias.scope !13190, !noalias !13094, !nonnull !4, !noundef !4
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !13191
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13094
  unreachable

.body57.i:                                        ; preds = %bb.bc, %bb.bb, %bb.ar, %bb.ao, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i
  %.pn23.i = phi { ptr, i32 } [ %.pn21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.dm, %bb.an ], [ %i.dm, %bb.ao ], [ %i.dy, %bb.ar ], [ %i.eu, %bb.bc ], [ %i.eu, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13094
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13192)
  call void @llvm.experimental.noalias.scope.decl(metadata !13195)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !13198, !noalias !13094, !nonnull !4, !noundef !4
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !13199
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit.i

bb.aq:                                            ; preds = %.body57.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.du) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.at, !noalias !13094

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i67.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13094
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  call void @llvm.experimental.noalias.scope.decl(metadata !13203)
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !13206, !noalias !13094, !nonnull !4, !noundef !4
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !13207
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %.invoke26.i, label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext11drop_schema0Cs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.as, %bb.aq, %.body57.i
  %.pn25.i = phi { ptr, i32 } [ %i.ed, %bb.as ], [ %.pn23.i, %bb.aq ], [ %.pn23.i, %.body57.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13094
  store i8 2, ptr %i.l, align 8, !noalias !13094
  resume { ptr, i32 } %.pn25.i

bb.as:                                            ; preds = %.invoke26.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit.i

bb.at:                                            ; preds = %bb.bg, %bb.av, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ad, %bb.m
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13094
  unreachable

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i, %bb.x
  %.pn18.pn.i = phi { ptr, i32 } [ %i.cj, %bb.x ], [ %.pn16.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEbEECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13208)
  call void @llvm.experimental.noalias.scope.decl(metadata !13211)
  %i.ef = load ptr, ptr %i.i, align 8, !alias.scope !13214, !noalias !13094, !nonnull !4, !noundef !4
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !13215
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.av:                                            ; preds = %bb.au
  fence acquire
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext9drop_view0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
default.unreachable:                              ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14012, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !noalias !14012
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false), !noalias !14012
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 56, i1 false), !noalias !14012
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.v = load i8, ptr %i.u, align 8, !range !101, !noalias !14012, !noundef !4
  store i8 %i.v, ptr %i.t, align 1, !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14017)
  %i.w = load i64, ptr %i.s, align 8, !range !288, !alias.scope !14017, !noalias !14019, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !14017, !noalias !14019, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !14017, !noalias !14019, !noundef !4 ; 3 uses
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !14020
  %i.ac = icmp slt i64 %i.ab, 0                   ; 3 uses
  switch i64 %i.w, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.f, label %bb.q

bb.d:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.n ], [ %.sink18.i.sroa.gep68.i, %bb.g ]
  %.sink16.i.i = phi ptr [ %i.ak, %bb.n ], [ %i.y, %bb.g ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.n ], [ %.sink15.i.sroa.gep69.i, %bb.g ]
  %.sink13.i.i = phi i64 [ %i.am, %bb.n ], [ %i.aa, %bb.g ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i.i = phi ptr [ %i.aq, %bb.n ], [ %i.ae, %bb.g ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i.i = phi i64 [ %i.as, %bb.n ], [ %i.ag, %bb.g ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !14014, !noalias !14021
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !14014, !noalias !14021
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !14017, !noalias !14019, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !14017, !noalias !14019, !noundef !4
  %i.ah = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !14020
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !14017, !noalias !14019, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !14017, !noalias !14019, !noundef !4
  %i.an = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !14020
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !14017, !noalias !14019, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !14017, !noalias !14019, !noundef !4
  %i.at = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8, !noalias !14020
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.y, ptr %.sink18.i.sroa.gep68.i, align 8, !alias.scope !14014, !noalias !14021
  store i64 %i.aa, ptr %.sink15.i.sroa.gep69.i, align 8, !alias.scope !14014, !noalias !14021
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  br label %bb.v

bb.q:                                             ; preds = %.sink.split.i.i, %bb.c
  %.sink12.i.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.y, %bb.c ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.aa, %bb.c ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.av, align 8, !alias.scope !14014, !noalias !14021
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.aw, align 8, !alias.scope !14014, !noalias !14021
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !14014, !noalias !14021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14012
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.065.i, i64 56, i1 false), !noalias !14012
  %.sroa.766.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 272
  store ptr %i.q, ptr %.sroa.766.0..sroa_idx.i, align 8, !noalias !14012
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 416
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !14012
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 417
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !14012
  br label %bb.v

bb.r:                                             ; preds = %bb.z, %bb.u
  %.pn7.i = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %i.ay, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  br label %bb.bb

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #36, !noalias !14009
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #36, !noalias !14009
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14012
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.az) #38
          to label %bb.r unwind label %bb.at, !noalias !14009

bb.v:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14012
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  invoke fastcc void @_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.u, !noalias !14009

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %i.k, align 8, !range !6373, !noalias !14012, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 21
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14012
  store i64 37, ptr %0, align 16, !alias.scope !14009, !noalias !14022
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext9drop_view0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14012
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.az)
          to label %bb.aa unwind label %bb.z, !noalias !14009

bb.z:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14012
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 425
  %i.be = load i8, ptr %i.bd, align 1, !range !101, !noalias !14012, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !14012
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 %i.be, ptr %i.bf, align 8, !noalias !14012
  %i.bg = load i64, ptr %i.i, align 8, !range !403, !noalias !14012, !noundef !4
  %.not9.i = icmp eq i64 %i.bg, 20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !101, !noalias !14012
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.bj, i1 false
  %i.bk = trunc nuw i8 %i.be to i1
  %or.cond79.i = select i1 %or.cond.i, i1 true, i1 %i.bk
  br i1 %or.cond79.i, label %.invoke.i, label %bb.ah

bb.ab:                                            ; preds = %.body57.i, %bb.ad
  %.pn26.i = phi { ptr, i32 } [ %i.bn, %bb.ad ], [ %.pn20.i, %.body57.i ] ; 2 uses
  %i.bl = load i64, ptr %i.i, align 8, !range !403, !alias.scope !14023, !noalias !14012, !noundef !4
  %i.bm = icmp eq i64 %i.bl, 20
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.at, !noalias !14009

bb.ad:                                            ; preds = %.invoke.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ae:                                            ; preds = %bb.as, %.invoke.i
  %i.bo = load i64, ptr %i.i, align 8, !range !403, !alias.scope !14028, !noalias !14012, !noundef !4
  %i.bp = icmp eq i64 %i.bo, 20
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i unwind label %bb.au, !noalias !14009

.invoke.i:                                        ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !14012, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.ae unwind label %bb.ad, !noalias !14009

bb.ag:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14012
  br label %.body57.i

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14012
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14012
  store ptr %i.bt, ptr %i.e, align 8, !noalias !14012
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !14012
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @182, ptr noundef nonnull %i.e)
          to label %bb.ai unwind label %bb.ag, !noalias !14009

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !14033, !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14037
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i unwind label %bb.ak, !noalias !14009

.noexc40.i:                                       ; preds = %bb.ai
  %i.bu = load i64, ptr %i.a, align 8, !range !3, !noalias !14037, !noundef !4
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !63, !noalias !14037, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.aj, label %bb.am, !prof !64

bb.aj:                                            ; preds = %.noexc40.i
  %i.bz = load i64, ptr %i.by, align 8, !noalias !14037
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #37
          to label %.noexc41.i unwind label %bb.ak, !noalias !14009

.noexc41.i:                                       ; preds = %bb.aj
  unreachable

.body.i:                                          ; preds = %bb.an, %bb.al, %bb.ak
  %.pn18.i = phi { ptr, i32 } [ %i.cb, %bb.al ], [ %i.ca, %bb.ak ], [ %i.ce, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14012
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body57.i unwind label %bb.at, !noalias !14009

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aj, %bb.ai
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.al:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14012
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #38
          to label %.body.i unwind label %bb.at, !noalias !14009

bb.am:                                            ; preds = %.noexc40.i
  %i.cc = load ptr, ptr %i.by, align 8, !noalias !14037, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14037
  store i64 %i.bx, ptr %i.d, align 8, !noalias !14012
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14012
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx.i, align 8, !noalias !14012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14012
  store ptr %i.g, ptr %i.c, align 8, !noalias !14012
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.573.0..sroa_idx.i, align 8, !noalias !14012
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cd, align 8, !noalias !14012
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !14012
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @32, ptr noundef nonnull %i.c)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i unwind label %bb.al, !noalias !14009

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i:   ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14012
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.an, !noalias !14009

bb.an:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.ao, !noalias !14009

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !14009
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit53.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ak, !noalias !14009

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14012
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i unwind label %bb.ap, !noalias !14009

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body57.i unwind label %bb.aq, !noalias !14009

bb.aq:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !14009
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.as unwind label %bb.ar, !noalias !14009

.body57.i:                                        ; preds = %bb.ar, %bb.ap, %.body.i, %bb.ag
  %.pn20.i = phi { ptr, i32 } [ %i.bs, %bb.ag ], [ %.pn18.i, %.body.i ], [ %i.ci, %bb.ar ], [ %i.cg, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14012
  br label %bb.ab

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14012
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14012
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 10, ptr %i.cj, align 8, !noalias !14012
  store i64 36, ptr %i.b, align 16, !noalias !14012
  br label %bb.ae

bb.at:                                            ; preds = %bb.bb, %bb.aw, %bb.al, %.body.i, %bb.ac, %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !14009
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.au, %bb.ac, %bb.ab
  %.pn28.i = phi { ptr, i32 } [ %i.cl, %bb.au ], [ %.pn26.i, %bb.ac ], [ %.pn26.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14012
  br label %bb.bb

bb.au:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs7p2uQeJxui2_9deltalake.exit36.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14012
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.cm)
          to label %bb.ay unwind label %bb.ax, !noalias !14009

bb.av:                                            ; preds = %bb.bb, %bb.ax
  %.pn31.i = phi { ptr, i32 } [ %i.cr, %bb.ax ], [ %.pn28.pn.i, %bb.bb ] ; 2 uses
end_hunk_5
