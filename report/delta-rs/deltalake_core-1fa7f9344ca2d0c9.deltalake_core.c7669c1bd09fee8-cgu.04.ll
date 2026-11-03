Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.04?download=true
inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters:bb.a
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.057.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.458.0.copyload = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !nonnull !30, !noundef !30 ; 3 uses
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.559.0.copyload = load i64, ptr %.sroa.559.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = icmp ult i64 %.sroa.559.0.copyload, 82351536043346213
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [112 x i8], ptr %.sroa.458.0.copyload, i64 %.sroa.559.0.copyload
  %i.bv = icmp sgt i64 %.sroa.057.0.copyload, -1
  call void @llvm.assume(i1 %i.bv)
  store i64 17, ptr %i.a, align 16, !noalias !16239
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 17, ptr %.sroa.58.0..sroa_idx.i, align 16, !noalias !16239
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %.sroa.458.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !16239
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.458.0.copyload, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !16239
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 %.sroa.057.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 16, !noalias !16239
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.bu, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !16239
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterINtNtB2y_6option6OptionB11_EEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(256) %i.a)
          to label %bb.ae unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.z, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.bx, %bb.z ], [ %i.cg, %bb.ag ] ; 2 uses
  %i.by = load i64, ptr %i.p, align 16, !range !49, !alias.scope !16240, !noundef !30
  %i.bz = icmp eq i64 %i.by, 37
  br i1 %i.bz, label %.noexc53, label %bb.aa

bb.aa:                                            ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.p)
          to label %.noexc53 unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit
  %.sroa.013.0 = phi ptr [ %i.ce, %bb.ai ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit ]
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false)
  store ptr %.sroa.013.0, ptr %0, align 16
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %.noexc53, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %.pn62, %.noexc53 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ab
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.ae:                                            ; preds = %bb.y
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i8 0, ptr %.sroa.419.0..sroa_idx.i, align 16, !alias.scope !16238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 1, ptr %i.l, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 13, ptr %i.cd, align 16
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !16241
  %i.ce = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 128, i64 noundef range(i64 8, 17) 16) #60, !noalias !16241 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.af, label %bb.ai, !prof !33

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #56
          to label %.noexc54 unwind label %bb.ag

.noexc54:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cd)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ce, ptr noundef nonnull align 16 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.aj:                                            ; preds = %bb.aa, %.thread, %.noexc53
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

.noexc53:                                         ; preds = %bb.aa, %.body, %.thread
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body48, %.thread ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t) #59
          to label %common.resume unwind label %bb.aj

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.bk, %bb.q ], [ %lpad.loopexit.split-lp111, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #59
          to label %.noexc53 unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.b unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i, %bb.b, %bb.a
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !16260)
  %i.k = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not11.not.i = icmp eq ptr %i.l, null
  br i1 %.not11.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !16260, !nonnull !30, !noundef !30 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !16260, !noundef !30 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.p, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.i.i.i.i.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16261)
  call void @llvm.experimental.noalias.scope.decl(metadata !16262)
  call void @llvm.experimental.noalias.scope.decl(metadata !16263)
  br label %.loopexit68

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i: ; preds = %.split.i.i.i.i.i
  %i.r = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc18 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not.not.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i, label %.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %.noexc18
  %i.t = phi ptr [ %i.s, %.noexc18 ], [ %i.l, %.lr.ph.i ]
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !16260, !nonnull !30, !align !35, !noundef !30 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16261)
  call void @llvm.experimental.noalias.scope.decl(metadata !16262)
  call void @llvm.experimental.noalias.scope.decl(metadata !16263)
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 72
  %.val3.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !16264, !noalias !16260, !noundef !30 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.i, i64 64
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !16264, !noalias !16260, !nonnull !30
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.x, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !16262, !noalias !16265, !noundef !30
  %i.z = icmp eq i64 %.val4.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.z, label %.split.i.i.i.i.i, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !16262, !noalias !16265, !nonnull !30, !noundef !30
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i), !noalias !16266
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.c
  %.not8.i.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not8.i.i.i.i.i, label %.loopexit68, label %bb.c

.thread:                                          ; preds = %.noexc18, %.noexc
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.f

.loopexit68:                                      ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i, %.lr.ph.split.us.i
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.d unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i, %bb.d, %.loopexit68
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.d:                                             ; preds = %.loopexit68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc37 unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.d
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not11.not.i21 = icmp eq ptr %i.ad, null
  br i1 %.not11.not.i21, label %.loopexit62, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.noexc37
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i, label %.lr.ph.i.i.i.i.i25

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i: ; preds = %.lr.ph.i22, %.noexc38
  call void @llvm.experimental.noalias.scope.decl(metadata !16267)
  call void @llvm.experimental.noalias.scope.decl(metadata !16268)
  call void @llvm.experimental.noalias.scope.decl(metadata !16269)
  %i.ae = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc38 unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %.not.us.not.i = icmp eq ptr %i.af, null
  br i1 %.not.us.not.i, label %.loopexit62, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i22, %.noexc39
  %i.ag = phi ptr [ %i.aq, %.noexc39 ], [ %i.ad, %.lr.ph.i22 ]
  %.val6.i26 = load ptr, ptr %i.ag, align 8, !noalias !16270, !nonnull !30, !align !35, !noundef !30 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16267)
  call void @llvm.experimental.noalias.scope.decl(metadata !16268)
  call void @llvm.experimental.noalias.scope.decl(metadata !16269)
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 72
  %.val3.i.i.i.i.i.i27 = load i64, ptr %i.ah, align 8, !alias.scope !16271, !noalias !16270, !noundef !30 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 64
  %.val2.i.i.i.i.i.i28 = load ptr, ptr %i.ai, align 8, !alias.scope !16271, !noalias !16270, !nonnull !30
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30, %.lr.ph.i.i.i.i.i25
  %i.aj = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i25 ], [ %i.ak, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val4.i.i.i.i.i29 = load i64, ptr %i.al, align 8, !alias.scope !16268, !noalias !16272, !noundef !30
  %i.am = icmp eq i64 %.val4.i.i.i.i.i29, %.val3.i.i.i.i.i.i27
  br i1 %i.am, label %.split.i.i.i.i.i34, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30

.split.i.i.i.i.i34:                               ; preds = %bb.e
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val3.i.i.i.i.i35 = load ptr, ptr %i.an, align 8, !alias.scope !16268, !noalias !16272, !nonnull !30, !noundef !30
  %bcmp.i.i.i.i.i.i.i.i.i36 = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i35, ptr nonnull readonly %.val2.i.i.i.i.i.i28, i64 %.val3.i.i.i.i.i.i27), !noalias !16273
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i36, 0
  br i1 %i.ao, label %.loopexit62, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30: ; preds = %.split.i.i.i.i.i34, %bb.e
  %.not8.i.i.i.i.i31 = icmp eq ptr %i.ak, %i.q
  br i1 %.not8.i.i.i.i.i31, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i, label %bb.e

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i: ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30
  %i.ap = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc39 unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0      ; 2 uses
  %.not.not.i32 = icmp eq ptr %i.aq, null
  br i1 %.not.not.i32, label %.loopexit62, label %.lr.ph.i.i.i.i.i25

.loopexit62:                                      ; preds = %.noexc39, %.split.i.i.i.i.i34, %.noexc38, %.noexc37
  %.not10.i33 = phi i1 [ true, %.split.i.i.i.i.i34 ], [ false, %.noexc37 ], [ false, %.noexc38 ], [ false, %.noexc39 ]
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.loopexit62
  %i.ar = phi i1 [ false, %.loopexit62 ], [ true, %.thread ] ; 2 uses
  %.sroa.0.0 = phi i1 [ %.not10.i33, %.loopexit62 ], [ true, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp111, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i, %bb.h, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.h
  %i.au = extractvalue { ptr, ptr } %i.at, 0      ; 2 uses
  %.not7.not.i = icmp eq ptr %i.au, null
  br i1 %.not7.not.i, label %.loopexit56, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.noexc45, %.noexc46
  %i.av = phi ptr [ %i.bd, %.noexc46 ], [ %i.au, %.noexc45 ]
  %.val6.i43 = load ptr, ptr %i.av, align 8, !noalias !16274, !nonnull !30, !align !35, !noundef !30 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val6.i43, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !16274, !noundef !30
  %i.ay = icmp eq i64 %4, %i.ax
  br i1 %i.ay, label %.split.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i42
  %i.az = getelementptr inbounds nuw i8, ptr %.val6.i43, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !16274, !nonnull !30, !noundef !30
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %3, ptr nonnull %i.ba, i64 %4), !noalias !16274
  %i.bb = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bb, label %bb.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i42
  %i.bc = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %.not.not.i44 = icmp eq ptr %i.bd, null
  br i1 %.not.not.i44, label %.loopexit56, label %.lr.ph.i42

.loopexit56:                                      ; preds = %.noexc46, %.noexc45
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.be = call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel18to_delta_predicate(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  %i.bf = load i64, ptr %i.d, align 16, !range !112, !noundef !30
  %i.bg = icmp eq i64 %i.bf, 16
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit48, label %bb.j

bb.i:                                             ; preds = %.split.i
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bh, align 8
  store i64 16, ptr %0, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bi, align 16
  br label %bb.m

bb.j:                                             ; preds = %.loopexit56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.bj = xor i1 %5, true
  %i.bk = or i1 %.sroa.0.0, %i.bj
  %.sroa.09.0 = select i1 %i.ar, i8 2, i8 1
  %i.bl = or i1 %i.ar, %i.bk
  %.sroa.03.1 = select i1 %i.bl, ptr null, ptr %1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.09.0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.03.1, ptr %i.bn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %.loopexit56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.0.0, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit48
  %.12 = select i1 %5, ptr %1, ptr null
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.bp, align 8
  store i64 16, ptr %0, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.12, ptr %i.bq, align 16
  br label %bb.m
end_hunk_0
