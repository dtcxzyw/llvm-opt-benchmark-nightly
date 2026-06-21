inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils20map_action_to_scalarNtNtNtNtB8_6kernel6models7actions6RemoveEB8_:bb.a
  %i.bw = load ptr, ptr %i.bs, align 8, !noalias !5509, !nonnull !3, !noundef !3 ; 2 uses
  %i.bx = icmp ule i64 %i.bn, %i.br
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5509
  %.not9.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not9.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.br, ptr %i.by, align 8, !noalias !5509
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bw, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !5509
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5509
  store i8 3, ptr %i.f, align 8, !noalias !5509
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion23to_correct_scalar_value(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz)
          to label %bb.r unwind label %bb.q, !noalias !5517

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.bl, i64 %i.bn, i1 false), !noalias !5509
  br label %bb.o

bb.q:                                             ; preds = %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB1s_5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.t, %bb.q
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ce, %bb.t ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.f) #50
          to label %.body unwind label %bb.v, !noalias !5517

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5509
  store i128 2, ptr %i.e, align 16, !noalias !5509
  call void @llvm.experimental.noalias.scope.decl(metadata !5518)
  call void @llvm.experimental.noalias.scope.decl(metadata !5521)
  %i.cb = load i128, ptr %i.g, align 16, !range !954, !alias.scope !5521, !noalias !5523, !noundef !3 ; 3 uses
  %i.cc = icmp eq i128 %i.cb, 51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB1s_5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.cd, i64 48, i1 false), !alias.scope !5525, !noalias !5526
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.e)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.t, !noalias !5527

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB1s_5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.cd)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i unwind label %bb.q, !noalias !5517

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB1s_5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5509
  store i128 2, ptr %i.d, align 16, !noalias !5509
  br label %bb.u

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5509
  store i128 2, ptr %i.d, align 16, !noalias !5509
  %.not10.i.i = icmp eq i128 %i.cb, 50
  br i1 %.not10.i.i, label %.thread9.i, label %bb.u

bb.u:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.0.118.i.i = phi i128 [ 2, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.cb, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !noalias !5528
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %.thread9.i unwind label %bb.q, !noalias !5517

.thread9.i:                                       ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.u
  %.sroa.0.0.i23 = phi i128 [ %.sroa.0.118.i.i, %bb.u ], [ 2, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtB17_5error15DataFusionErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %.thread9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5509
  store i128 %.sroa.0.0.i23, ptr %i.j, align 16, !noalias !5499
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.0..sroa_idx11.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.i, i64 48, i1 false), !noalias !5499
  br label %.sink.split

bb.v:                                             ; preds = %.body.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5517
  unreachable

bb.w:                                             ; preds = %.noexc26
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload4.i = load i128, ptr %i.cg, align 16, !alias.scope !5529, !noalias !5530 ; 2 uses
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.0..sroa_idx7.i, i64 48, i1 false), !alias.scope !5529, !noalias !5530
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5509
  store i128 %.sroa.0.0.copyload4.i, ptr %i.j, align 16, !noalias !5499
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.i, i64 48, i1 false), !noalias !5499
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ch = icmp eq i128 %.sroa.0.0.copyload4.i, 50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5499
  store i128 2, ptr %i.h, align 16, !noalias !5499
  call void @llvm.experimental.noalias.scope.decl(metadata !5531)
  call void @llvm.experimental.noalias.scope.decl(metadata !5534)
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.x

.sink.split:                                      ; preds = %.noexc27, %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5499
  store i128 2, ptr %i.h, align 16, !noalias !5499
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false), !alias.scope !5536, !noalias !5538
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h)
          to label %bb.z unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc30, %.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.h, i64 64, i1 false), !alias.scope !5539, !noalias !5540
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %bb.z unwind label %.loopexit.split-lp

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i128 2, ptr %i.l, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cj, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !5541)
  call void @llvm.experimental.noalias.scope.decl(metadata !5544)
  %i.ck = load ptr, ptr %i.o, align 8, !alias.scope !5547, !nonnull !3, !noundef !3
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !5547
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19

bb.z:                                             ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i128 2, ptr %i.l, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19.sink.split: ; preds = %bb.y, %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit19.sink.split, %bb.y, %bb.d
  ret void

bb.aa:                                            ; preds = %bb.b
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.b
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions10AddCDCFileEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(64) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 8 uses
  %i.f = alloca [64 x i8], align 16               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [96 x i8], align 16               ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [184 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 8                ; 12 uses
  %i.t = alloca [184 x i8], align 8               ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [136 x i8], align 8               ; 11 uses
  %.sroa.8156 = alloca [128 x i8], align 8        ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  store ptr %1, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.af = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @58)
          to label %bb.d unwind label %bb.c       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit, %bb.c
  %.sroa.038.0 = phi i1 [ %.sroa.038.1, %bb.c ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit ]
  %.pn90 = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn88, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit ] ; 2 uses
  %i.ag = load i128, ptr %5, align 16, !range !2618, !alias.scope !5548, !noundef !3
  %i.ah = icmp eq i128 %i.ag, 50
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bc

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit143, %bb.a
  %.sroa.038.1 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit143 ], [ true, %bb.a ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.aj = extractvalue { i64, i64 } %i.af, 0
  %i.ak = extractvalue { i64, i64 } %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.aj, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.ak, ptr %.sroa.541.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.an = load i64, ptr %2, align 8, !range !708, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !3 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 230584300921369396
  tail call void @llvm.assume(i1 %i.aq)
  %.idx = mul nuw nsw i64 %i.ap, 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.am, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.ar, ptr %.sroa.7.0..sroa_idx, align 8
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph: ; preds = %bb.d
  %.sroa.8152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.sroa.8156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8166.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit

.thread:                                          ; preds = %.thread205.loopexit, %.thread205.loopexit.split-lp, %bb.bn, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit, %.thread194
  %.pn85.pn = phi { ptr, i32 } [ %eh.lpad-body197, %.thread194 ], [ %.pn83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit ], [ %i.ex, %bb.bn ], [ %i.df, %bb.w ], [ %lpad.loopexit265, %.thread205.loopexit ], [ %lpad.loopexit.split-lp266, %.thread205.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit unwind label %bb.bc

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %i.by = phi ptr [ %i.am, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph ], [ %i.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %i.bz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5551, !noalias !5554
  %.sroa.0.0.copyload151 = load i64, ptr %i.by, align 8, !noalias !5551 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload151, -9223372036854775808
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit
  %.sroa.8152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.0.0.copyload151, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8152.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8152.0..sroa_idx153, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ca = load i128, ptr %5, align 16, !range !2618, !noundef !3
  %.not69 = icmp eq i128 %i.ca, 50
  %.val = load i64, ptr %i.at, align 8
  %.val94 = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5556
  br i1 %.not69, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5556
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) dereferenceable_or_null(64) %5) #55
          to label %.noexc97 unwind label %bb.s

.noexc97:                                         ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5560
  %i.cb = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 64, i64 noundef range(i64 1, 17) 16) #45, !noalias !5560 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.g, label %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions10AddCDCFileE0Ba_.exit.i, !prof !4

bb.g:                                             ; preds = %.noexc97
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #53
          to label %.noexc.i.i unwind label %bb.h, !noalias !5560

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.d) #50
          to label %.thread194 unwind label %bb.i, !noalias !5564

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5564
  unreachable

_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions10AddCDCFileE0Ba_.exit.i: ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cb, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5556
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions10AddCDCFileE0Ba_.exit.i, %bb.e
  %.sink10.i = phi i64 [ 1, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions10AddCDCFileE0Ba_.exit.i ], [ 0, %bb.e ] ; 5 uses
  %.sink9.i = phi ptr [ %i.cb, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions10AddCDCFileE0Ba_.exit.i ], [ inttoptr (i64 16 to ptr), %bb.e ]
  store i64 %.sink10.i, ptr %i.g, align 8, !noalias !5556
  store ptr %.sink9.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5556
  store i64 %.sink10.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5556
  store i64 1, ptr %i.av, align 16, !noalias !5556
  store i64 %.val, ptr %i.aw, align 8, !noalias !5556
  store i128 14, ptr %i.f, align 16, !noalias !5556
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge4.i unwind label %bb.k, !noalias !5565

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f) #50
          to label %.body.i unwind label %bb.l, !noalias !5568

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5568
  unreachable
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions10AddCDCFileEB8_:bb.a
  %.pn = phi { ptr, i32 } [ %lpad.phi254, %bb.bd ], [ %i.dx, %bb.an ], [ %lpad.loopexit247, %.loopexit245 ], [ %lpad.loopexit.split-lp248, %.loopexit.split-lp246 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #50
          to label %.thread220 unwind label %bb.bc

.loopexit245:                                     ; preds = %bb.ag
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.loopexit.split-lp246:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.ah:                                            ; preds = %bb.ag
  %i.du = load i64, ptr %i.q, align 8, !range !4421, !noundef !3 ; 2 uses
  %.not72 = icmp eq i64 %i.du, -9223372036854775802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  br i1 %.not72, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.658.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 %i.du, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6errorsNtB2_15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.be unwind label %.loopexit.split-lp246

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  %.val95 = load i64, ptr %i.bo, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %i.o, align 8
  %i.dv = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef 719163)
          to label %.noexc113 unwind label %.loopexit250 ; 2 uses

.noexc113:                                        ; preds = %bb.aj
  %.not.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.noexc113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5596
  store ptr @153, ptr %i.c, align 8, !noalias !5599
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 37, ptr %i.dw, align 8, !noalias !5599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5604
  store ptr %i.c, ptr %i.b, align 8, !noalias !5604
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5604
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #49
          to label %.noexc114 unwind label %.loopexit.split-lp251

.noexc114:                                        ; preds = %bb.ak
  unreachable

.loopexit250:                                     ; preds = %bb.aj
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp251:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp251, %.loopexit250
  %lpad.phi254 = phi { ptr, i32 } [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #50
          to label %bb.bd unwind label %bb.bc

bb.am:                                            ; preds = %.noexc113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i32 %i.dv, ptr %i.bp, align 8
  store i32 0, ptr %.sroa.4175.0..sroa_idx, align 4
  store i32 0, ptr %.sroa.5176.0..sroa_idx, align 8
  store i64 %.val95, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.s) #50
          to label %.body110 unwind label %bb.bc

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bt, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 0, ptr %i.t, align 8
  store i64 0, ptr %i.bw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bb unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.035.1 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %bb.au ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB10_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.as unwind label %bb.ar

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.eb = load i64, ptr %i.h, align 8, !range !140, !noundef !3 ; 2 uses
  %.not74 = icmp eq i64 %i.eb, -9223372036854775808
  %i.ec = load ptr, ptr %.sroa.4183.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not74, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %.sroa.5184.0.copyload = load ptr, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0.copyload = load ptr, ptr %.sroa.6185.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.7186.0.copyload = load i64, ptr %.sroa.7186.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5608
  store i64 %i.eb, ptr %i.a, align 8
  store ptr %i.ec, ptr %.sroa.6.0..sroa_idx164, align 8
  store ptr %.sroa.5184.0.copyload, ptr %.sroa.8166.0..sroa_idx167, align 8
  store i64 0, ptr %i.bx, align 8, !noalias !5608
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5608
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5608
  %i.ed = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6185.0.copyload, i64 noundef %.sroa.7186.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc118 unwind label %bb.ar

.noexc118:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5608
  br label %bb.av

bb.av:                                            ; preds = %.noexc118, %bb.at
  %.pn.i = phi ptr [ %i.ed, %.noexc118 ], [ %i.ec, %bb.at ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.l, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  %i.ee = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !5611, !noalias !5614, !noundef !3 ; 3 uses
  %i.eg = load i64, ptr %.sroa.0.0.i, align 8, !range !708, !alias.scope !5611, !noalias !5614, !noundef !3
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileE8grow_oneBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i)
          to label %bb.az unwind label %bb.ax, !noalias !5614

bb.ax:                                            ; preds = %bb.aw
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.l) #50
          to label %.thread214 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.ek = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !5611, !noalias !5614, !nonnull !3, !noundef !3
  %i.em = getelementptr inbounds nuw [184 x i8], ptr %i.el, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.em, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  %i.en = add i64 %i.ef, 1
  store i64 %i.en, ptr %i.ee, align 8, !alias.scope !5611, !noalias !5614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEBO_(ptr noalias noundef align 8 dereferenceable(136) %i.y)
          to label %bb.ba unwind label %.loopexit255

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8156)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8156)
  %i.eo = load ptr, ptr %.sroa.75.0..sroa_idx, align 8, !alias.scope !5616, !noalias !5592, !nonnull !3, !noundef !3
  %i.ep = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !5616, !noalias !5592, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.eo
  br i1 %i.eq, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.bb:                                            ; preds = %bb.ap, %bb.ar
  %.sroa.035.1.lpad-body.ph = phi i1 [ %.sroa.035.1, %bb.ar ], [ true, %bb.ap ]
  %eh.lpad-body116.ph = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %i.dy, %bb.ap ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.t) #50
          to label %.body115 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bs, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit, %.thread, %bb.b, %bb.bt, %.thread194, %bb.bl, %.thread220, %bb.bd, %bb.bb, %bb.an, %bb.al, %.body110, %.thread214, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bd:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.r) #50
          to label %.body110 unwind label %bb.bc

bb.be:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread220 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124: ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128 unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread214 unwind label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133 unwind label %bb.ad

bb.bj:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEBO_(ptr noalias noundef align 8 dereferenceable(136) %i.y)
          to label %bb.bm unwind label %.loopexit.split-lp256

.thread220:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.bf, %.body110, %.body115
  %.pn76224 = phi { ptr, i32 } [ %eh.lpad-body116.ph, %.body115 ], [ %.pn, %.body110 ], [ %i.es, %bb.bf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %.thread214 unwind label %bb.bc

bb.bl:                                            ; preds = %bb.ac
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.x) #50
          to label %.thread214 unwind label %bb.bc

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8156)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit135 unwind label %.loopexit.split-lp261

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit135: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit135
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1C_.exit135
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141 unwind label %.thread205.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions10AddCDCFileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit143 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit143: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions10AddCDCFileEEEB1B_.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ez = load i128, ptr %5, align 16, !range !2618, !alias.scope !5618, !noundef !3
  %i.fa = icmp eq i128 %i.ez, 50
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  call void @llvm.experimental.noalias.scope.decl(metadata !5624)
  %i.fb = load ptr, ptr %i.ae, align 8, !alias.scope !5627, !nonnull !3, !noundef !3
  %i.fc = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !5627
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

.thread194:                                       ; preds = %bb.h, %.body.i, %bb.s
  %eh.lpad-body197 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %i.cd, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10AddCDCFileEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #50
          to label %.thread unwind label %bb.bc

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn92191 = phi { ptr, i32 } [ %i.cr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pn90, %bb.bt ], [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5628)
  call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  %i.fe = load ptr, ptr %i.ae, align 8, !alias.scope !5634, !nonnull !3, !noundef !3
  %i.ff = atomicrmw sub ptr %i.fe, i64 1 release, align 8, !noalias !5634
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150 unwind label %bb.bc

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1k_6kernel6models7actions10AddCDCFileEEEB1k_(ptr noalias noundef align 8 dereferenceable(24) %2) #50
          to label %bb.br unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150: ; preds = %bb.br, %bb.bs
  resume { ptr, i32 } %.pn92191
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions3AddEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(64) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 8 uses
  %i.f = alloca [64 x i8], align 16               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [96 x i8], align 16               ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [184 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 8                ; 12 uses
  %i.t = alloca [184 x i8], align 8               ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [272 x i8], align 8               ; 11 uses
  %.sroa.8156 = alloca [264 x i8], align 8        ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  store ptr %1, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.af = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @58)
          to label %bb.d unwind label %bb.c       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit, %bb.c
  %.sroa.038.0 = phi i1 [ %.sroa.038.1, %bb.c ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit ]
  %.pn90 = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn88, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit ] ; 2 uses
  %i.ag = load i128, ptr %5, align 16, !range !2618, !alias.scope !5635, !noundef !3
  %i.ah = icmp eq i128 %i.ag, 50
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bc

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit143, %bb.a
  %.sroa.038.1 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit143 ], [ true, %bb.a ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.aj = extractvalue { i64, i64 } %i.af, 0
  %i.ak = extractvalue { i64, i64 } %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.aj, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.ak, ptr %.sroa.541.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.an = load i64, ptr %2, align 8, !range !708, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !3 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 230584300921369396
  tail call void @llvm.assume(i1 %i.aq)
  %.idx = mul nuw nsw i64 %i.ap, 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.am, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.ar, ptr %.sroa.7.0..sroa_idx, align 8
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph: ; preds = %bb.d
  %.sroa.8152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.sroa.8156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8166.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit

.thread:                                          ; preds = %.thread205.loopexit, %.thread205.loopexit.split-lp, %bb.bn, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit, %.thread194
  %.pn85.pn = phi { ptr, i32 } [ %eh.lpad-body197, %.thread194 ], [ %.pn83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit ], [ %i.ex, %bb.bn ], [ %i.df, %bb.w ], [ %lpad.loopexit265, %.thread205.loopexit ], [ %lpad.loopexit.split-lp266, %.thread205.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit unwind label %bb.bc

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %i.by = phi ptr [ %i.am, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph ], [ %i.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5638)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %i.bz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5638, !noalias !5641
  %.sroa.0.0.copyload151 = load i64, ptr %i.by, align 8, !noalias !5638 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload151, -9223372036854775808
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit
  %.sroa.8152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.0.0.copyload151, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8152.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8152.0..sroa_idx153, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ca = load i128, ptr %5, align 16, !range !2618, !noundef !3
  %.not69 = icmp eq i128 %i.ca, 50
  %.val = load i64, ptr %i.at, align 8
  %.val94 = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5643
  br i1 %.not69, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5643
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) dereferenceable_or_null(64) %5) #55
          to label %.noexc97 unwind label %bb.s

.noexc97:                                         ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5647
  %i.cb = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 64, i64 noundef range(i64 1, 17) 16) #45, !noalias !5647 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.g, label %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions3AddE0Ba_.exit.i, !prof !4

bb.g:                                             ; preds = %.noexc97
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #53
          to label %.noexc.i.i unwind label %bb.h, !noalias !5647

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.d) #50
          to label %.thread194 unwind label %bb.i, !noalias !5651

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5651
  unreachable

_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions3AddE0Ba_.exit.i: ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cb, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5643
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions3AddE0Ba_.exit.i, %bb.e
  %.sink10.i = phi i64 [ 1, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions3AddE0Ba_.exit.i ], [ 0, %bb.e ] ; 5 uses
  %.sink9.i = phi ptr [ %i.cb, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions3AddE0Ba_.exit.i ], [ inttoptr (i64 16 to ptr), %bb.e ]
  store i64 %.sink10.i, ptr %i.g, align 8, !noalias !5643
  store ptr %.sink9.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5643
  store i64 %.sink10.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5643
  store i64 1, ptr %i.av, align 16, !noalias !5643
  store i64 %.val, ptr %i.aw, align 8, !noalias !5643
  store i128 14, ptr %i.f, align 16, !noalias !5643
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge4.i unwind label %bb.k, !noalias !5652

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f) #50
          to label %.body.i unwind label %bb.l, !noalias !5655

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5655
  unreachable
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions3AddEB8_:bb.a
  %.pn = phi { ptr, i32 } [ %lpad.phi254, %bb.bd ], [ %i.dx, %bb.an ], [ %lpad.loopexit247, %.loopexit245 ], [ %lpad.loopexit.split-lp248, %.loopexit.split-lp246 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #50
          to label %.thread220 unwind label %bb.bc

.loopexit245:                                     ; preds = %bb.ag
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.loopexit.split-lp246:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.ah:                                            ; preds = %bb.ag
  %i.du = load i64, ptr %i.q, align 8, !range !4421, !noundef !3 ; 2 uses
  %.not72 = icmp eq i64 %i.du, -9223372036854775802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  br i1 %.not72, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.658.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 %i.du, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6errorsNtB2_15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.be unwind label %.loopexit.split-lp246

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  %.val95 = load i64, ptr %i.bo, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %i.o, align 8
  %i.dv = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef 719163)
          to label %.noexc113 unwind label %.loopexit250 ; 2 uses

.noexc113:                                        ; preds = %bb.aj
  %.not.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.noexc113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5683
  store ptr @153, ptr %i.c, align 8, !noalias !5686
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 37, ptr %i.dw, align 8, !noalias !5686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5691
  store ptr %i.c, ptr %i.b, align 8, !noalias !5691
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5691
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #49
          to label %.noexc114 unwind label %.loopexit.split-lp251

.noexc114:                                        ; preds = %bb.ak
  unreachable

.loopexit250:                                     ; preds = %bb.aj
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp251:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp251, %.loopexit250
  %lpad.phi254 = phi { ptr, i32 } [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #50
          to label %bb.bd unwind label %bb.bc

bb.am:                                            ; preds = %.noexc113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i32 %i.dv, ptr %i.bp, align 8
  store i32 0, ptr %.sroa.4175.0..sroa_idx, align 4
  store i32 0, ptr %.sroa.5176.0..sroa_idx, align 8
  store i64 %.val95, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.s) #50
          to label %.body110 unwind label %bb.bc

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bt, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 0, ptr %i.t, align 8
  store i64 0, ptr %i.bw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bb unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.035.1 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %bb.au ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB10_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.as unwind label %bb.ar

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.eb = load i64, ptr %i.h, align 8, !range !140, !noundef !3 ; 2 uses
  %.not74 = icmp eq i64 %i.eb, -9223372036854775808
  %i.ec = load ptr, ptr %.sroa.4183.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not74, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %.sroa.5184.0.copyload = load ptr, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0.copyload = load ptr, ptr %.sroa.6185.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.7186.0.copyload = load i64, ptr %.sroa.7186.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5695
  store i64 %i.eb, ptr %i.a, align 8
  store ptr %i.ec, ptr %.sroa.6.0..sroa_idx164, align 8
  store ptr %.sroa.5184.0.copyload, ptr %.sroa.8166.0..sroa_idx167, align 8
  store i64 0, ptr %i.bx, align 8, !noalias !5695
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5695
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5695
  %i.ed = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6185.0.copyload, i64 noundef %.sroa.7186.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc118 unwind label %bb.ar

.noexc118:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5695
  br label %bb.av

bb.av:                                            ; preds = %.noexc118, %bb.at
  %.pn.i = phi ptr [ %i.ed, %.noexc118 ], [ %i.ec, %bb.at ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.l, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  %i.ee = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !5698, !noalias !5701, !noundef !3 ; 3 uses
  %i.eg = load i64, ptr %.sroa.0.0.i, align 8, !range !708, !alias.scope !5698, !noalias !5701, !noundef !3
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileE8grow_oneBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i)
          to label %bb.az unwind label %bb.ax, !noalias !5701

bb.ax:                                            ; preds = %bb.aw
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.l) #50
          to label %.thread214 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.ek = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !5698, !noalias !5701, !nonnull !3, !noundef !3
  %i.em = getelementptr inbounds nuw [184 x i8], ptr %i.el, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.em, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  %i.en = add i64 %i.ef, 1
  store i64 %i.en, ptr %i.ee, align 8, !alias.scope !5698, !noalias !5701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.y)
          to label %bb.ba unwind label %.loopexit255

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8156)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8156)
  %i.eo = load ptr, ptr %.sroa.75.0..sroa_idx, align 8, !alias.scope !5703, !noalias !5679, !nonnull !3, !noundef !3
  %i.ep = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !5703, !noalias !5679, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.eo
  br i1 %i.eq, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.bb:                                            ; preds = %bb.ap, %bb.ar
  %.sroa.035.1.lpad-body.ph = phi i1 [ %.sroa.035.1, %bb.ar ], [ true, %bb.ap ]
  %eh.lpad-body116.ph = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %i.dy, %bb.ap ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.t) #50
          to label %.body115 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bs, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit, %.thread, %bb.b, %bb.bt, %.thread194, %bb.bl, %.thread220, %bb.bd, %bb.bb, %bb.an, %bb.al, %.body110, %.thread214, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bd:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.r) #50
          to label %.body110 unwind label %bb.bc

bb.be:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread220 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124: ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128 unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread214 unwind label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit128
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133 unwind label %bb.ad

bb.bj:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit133, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.y)
          to label %bb.bm unwind label %.loopexit.split-lp256

.thread220:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.bf, %.body110, %.body115
  %.pn76224 = phi { ptr, i32 } [ %eh.lpad-body116.ph, %.body115 ], [ %.pn, %.body110 ], [ %i.es, %bb.bf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %.thread214 unwind label %bb.bc

bb.bl:                                            ; preds = %bb.ac
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.x) #50
          to label %.thread214 unwind label %bb.bc

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8156)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit135 unwind label %.loopexit.split-lp261

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit135: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit135
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1C_.exit135
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141 unwind label %.thread205.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions3AddEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit143 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit143: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions3AddEEEB1B_.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ez = load i128, ptr %5, align 16, !range !2618, !alias.scope !5705, !noundef !3
  %i.fa = icmp eq i128 %i.ez, 50
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit147: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit145, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !5708)
  call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  %i.fb = load ptr, ptr %i.ae, align 8, !alias.scope !5714, !nonnull !3, !noundef !3
  %i.fc = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !5714
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

.thread194:                                       ; preds = %bb.h, %.body.i, %bb.s
  %eh.lpad-body197 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %i.cd, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #50
          to label %.thread unwind label %bb.bc

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn92191 = phi { ptr, i32 } [ %i.cr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pn90, %bb.bt ], [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5715)
  call void @llvm.experimental.noalias.scope.decl(metadata !5718)
  %i.fe = load ptr, ptr %i.ae, align 8, !alias.scope !5721, !nonnull !3, !noundef !3
  %i.ff = atomicrmw sub ptr %i.fe, i64 1 release, align 8, !noalias !5721
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150 unwind label %bb.bc

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1k_6kernel6models7actions3AddEEEB1k_(ptr noalias noundef align 8 dereferenceable(24) %2) #50
          to label %bb.br unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit150: ; preds = %bb.br, %bb.bs
  resume { ptr, i32 } %.pn92191
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions6RemoveEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(64) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 8 uses
  %i.f = alloca [64 x i8], align 16               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [96 x i8], align 16               ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [184 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [96 x i8], align 16               ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [96 x i8], align 8                ; 12 uses
  %i.u = alloca [184 x i8], align 8               ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [240 x i8], align 8               ; 11 uses
  %.sroa.8155 = alloca [232 x i8], align 8        ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 12 uses
  %i.ac = alloca [40 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 10 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [8 x i8], align 8                ; 7 uses
  store ptr %1, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ag = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @58)
          to label %bb.d unwind label %bb.c       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit, %bb.c
  %.sroa.038.0 = phi i1 [ %.sroa.038.1, %bb.c ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit ]
  %.pn90 = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %.pn88, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit ] ; 2 uses
  %i.ah = load i128, ptr %5, align 16, !range !2618, !alias.scope !5722, !noundef !3
  %i.ai = icmp eq i128 %i.ah, 50
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bi

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit142, %bb.a
  %.sroa.038.1 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit142 ], [ true, %bb.a ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = extractvalue { i64, i64 } %i.ag, 0
  %i.al = extractvalue { i64, i64 } %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.ak, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i64 %i.al, ptr %.sroa.541.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.ao = load i64, ptr %2, align 8, !range !708, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 230584300921369396
  tail call void @llvm.assume(i1 %i.ar)
  %.idx = mul nuw nsw i64 %i.aq, 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.an, ptr %i.ad, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.as, ptr %.sroa.7.0..sroa_idx, align 8
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph: ; preds = %bb.d
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %.sroa.8155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8162.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit

.thread:                                          ; preds = %.thread201.loopexit, %.thread201.loopexit.split-lp, %bb.bt, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit, %.thread190
  %.pn85.pn = phi { ptr, i32 } [ %eh.lpad-body193, %.thread190 ], [ %.pn83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit ], [ %i.fd, %bb.bt ], [ %i.dg, %bb.w ], [ %lpad.loopexit261, %.thread201.loopexit ], [ %lpad.loopexit.split-lp262, %.thread201.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit unwind label %bb.bi

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %i.bz = phi ptr [ %i.an, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph ], [ %i.dj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5725, !noalias !5728
  %.sroa.0.0.copyload150 = load i64, ptr %i.bz, align 8, !noalias !5725 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload150, -9223372036854775808
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB13_.exit
  %.sroa.8151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.0.0.copyload150, ptr %i.ac, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151.0..sroa_idx152, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cb = load i128, ptr %5, align 16, !range !2618, !noundef !3
  %.not69 = icmp eq i128 %i.cb, 50
  %.val = load i64, ptr %i.au, align 8
  %.val94 = load i64, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5730
  br i1 %.not69, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5730
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) dereferenceable_or_null(64) %5) #55
          to label %.noexc96 unwind label %bb.s

.noexc96:                                         ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5734
  %i.cc = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 64, i64 noundef range(i64 1, 17) 16) #45, !noalias !5734 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.g, label %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions6RemoveE0Ba_.exit.i, !prof !4

bb.g:                                             ; preds = %.noexc96
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #53
          to label %.noexc.i.i unwind label %bb.h, !noalias !5734

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.d) #50
          to label %.thread190 unwind label %bb.i, !noalias !5738

bb.i:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5738
  unreachable

_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions6RemoveE0Ba_.exit.i: ; preds = %.noexc96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cc, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !5738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5730
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions6RemoveE0Ba_.exit.i, %bb.e
  %.sink10.i = phi i64 [ 1, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions6RemoveE0Ba_.exit.i ], [ 0, %bb.e ] ; 5 uses
  %.sink9.i = phi ptr [ %i.cc, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils28create_spec_partition_valuesNtNtNtNtBa_6kernel6models7actions6RemoveE0Ba_.exit.i ], [ inttoptr (i64 16 to ptr), %bb.e ]
  store i64 %.sink10.i, ptr %i.g, align 8, !noalias !5730
  store ptr %.sink9.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5730
  store i64 %.sink10.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5730
  store i64 1, ptr %i.aw, align 16, !noalias !5730
  store i64 %.val, ptr %i.ax, align 8, !noalias !5730
  store i128 14, ptr %i.f, align 16, !noalias !5730
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge4.i unwind label %bb.k, !noalias !5739

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f) #50
          to label %.body.i unwind label %bb.l, !noalias !5742

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !5742
  unreachable
end_hunk_2
begin_hunk_3_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf10scan_utils23create_partition_valuesNtNtNtNtB8_6kernel6models7actions6RemoveEB8_:bb.a
          to label %.body109 unwind label %bb.bi

bb.al:                                            ; preds = %bb.aj
  %i.dx = load i64, ptr %i.p, align 16, !range !953, !noundef !3 ; 2 uses
  %.not73 = icmp eq i64 %i.dx, -9223372036854775711
  %i.dy = load i64, ptr %i.bp, align 8            ; 2 uses
  br i1 %.not73, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.367.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.664.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.dx, ptr %0, align 16
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dy, ptr %.sroa.266.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body109 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp242

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %i.o, align 8
  %i.eb = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef 719163)
          to label %.noexc112 unwind label %.loopexit246 ; 2 uses

.noexc112:                                        ; preds = %bb.ap
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5770
  store ptr @153, ptr %i.c, align 8, !noalias !5773
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 37, ptr %i.ec, align 8, !noalias !5773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5778
  store ptr %i.c, ptr %i.b, align 8, !noalias !5778
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5778
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #49
          to label %.noexc113 unwind label %.loopexit.split-lp247

.noexc113:                                        ; preds = %bb.aq
  unreachable

.loopexit246:                                     ; preds = %bb.ap
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp247:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp247, %.loopexit246
  %lpad.phi250 = phi { ptr, i32 } [ %lpad.loopexit248, %.loopexit246 ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp247 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #50
          to label %bb.bj unwind label %bb.bi

bb.as:                                            ; preds = %.noexc112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i32 %i.eb, ptr %i.bq, align 8
  store i32 0, ptr %.sroa.4171.0..sroa_idx, align 4
  store i32 0, ptr %.sroa.5172.0..sroa_idx, align 8
  store i64 %i.dy, ptr %i.br, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.t) #50
          to label %.body109 unwind label %bb.bi

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 0, ptr %i.u, align 8
  store i64 0, ptr %i.bx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bh unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.au
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.035.1 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %bb.ba ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB10_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.ay unwind label %bb.ax

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.eh = load i64, ptr %i.h, align 8, !range !140, !noundef !3 ; 2 uses
  %.not74 = icmp eq i64 %i.eh, -9223372036854775808
  %i.ei = load ptr, ptr %.sroa.4179.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not74, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %.sroa.5180.0.copyload = load ptr, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0.copyload = load ptr, ptr %.sroa.6181.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.7182.0.copyload = load i64, ptr %.sroa.7182.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5782
  store i64 %i.eh, ptr %i.a, align 8
  store ptr %i.ei, ptr %.sroa.6.0..sroa_idx160, align 8
  store ptr %.sroa.5180.0.copyload, ptr %.sroa.8162.0..sroa_idx163, align 8
  store i64 0, ptr %i.by, align 8, !noalias !5782
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5782
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5782
  %i.ej = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6181.0.copyload, i64 noundef %.sroa.7182.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc117 unwind label %bb.ax

.noexc117:                                        ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5782
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc117, %bb.az
  %.pn.i = phi ptr [ %i.ej, %.noexc117 ], [ %i.ei, %bb.az ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.l, ptr noundef nonnull align 8 dereferenceable(184) %i.u, i64 184, i1 false)
  %i.ek = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !5785, !noalias !5788, !noundef !3 ; 3 uses
  %i.em = load i64, ptr %.sroa.0.0.i, align 8, !range !708, !alias.scope !5785, !noalias !5788, !noundef !3
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileE8grow_oneBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i)
          to label %bb.bf unwind label %bb.bd, !noalias !5788

bb.bd:                                            ; preds = %bb.bc
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.l) #50
          to label %.thread210 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  %i.eq = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !5785, !noalias !5788, !nonnull !3, !noundef !3
  %i.es = getelementptr inbounds nuw [184 x i8], ptr %i.er, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.es, ptr noundef nonnull align 8 dereferenceable(184) %i.u, i64 184, i1 false)
  %i.et = add i64 %i.el, 1
  store i64 %i.et, ptr %i.ek, align 8, !alias.scope !5785, !noalias !5788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEBO_(ptr noalias noundef align 8 dereferenceable(240) %i.z)
          to label %bb.bg unwind label %.loopexit251

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8155)
  %i.eu = load ptr, ptr %.sroa.75.0..sroa_idx, align 8, !alias.scope !5790, !noalias !5766, !nonnull !3, !noundef !3
  %i.ev = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !5790, !noalias !5766, !nonnull !3, !noundef !3 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.eu
  br i1 %i.ew, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.bh:                                            ; preds = %bb.av, %bb.ax
  %.sroa.035.1.lpad-body.ph = phi i1 [ %.sroa.035.1, %bb.ax ], [ true, %bb.av ]
  %eh.lpad-body115.ph = phi { ptr, i32 } [ %i.eg, %bb.ax ], [ %i.ee, %bb.av ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.u) #50
          to label %.body114 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.by, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit, %.thread, %bb.b, %bb.bz, %.thread190, %bb.br, %.thread216, %bb.bj, %bb.bh, %bb.at, %bb.ar, %bb.ak, %.body109, %.thread210, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bj:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #50
          to label %.body109 unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i123 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread216 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i123: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit127 unwind label %.loopexit.split-lp

bb.bm:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit127: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit127
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread210 unwind label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit127
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit132 unwind label %bb.ad

bb.bp:                                            ; preds = %bb.bn
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit132: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit132, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEBO_(ptr noalias noundef align 8 dereferenceable(240) %i.z)
          to label %bb.bs unwind label %.loopexit.split-lp252

.thread216:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.bk, %.body109, %.body114
  %.pn76220 = phi { ptr, i32 } [ %eh.lpad-body115.ph, %.body114 ], [ %.pn, %.body109 ], [ %i.ey, %bb.bk ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.v) #50
          to label %.thread210 unwind label %bb.bi

bb.br:                                            ; preds = %bb.ac
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.y) #50
          to label %.thread210 unwind label %bb.bi

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8155)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit134 unwind label %.loopexit.split-lp257

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit134: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit134
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread unwind label %bb.bv

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1C_.exit134
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit140 unwind label %.thread201.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bt
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit140: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB13_6kernel6models7actions6RemoveEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit142 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit142: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBQ_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit144 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit144: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1B_6kernel6models7actions6RemoveEEEB1B_.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ff = load i128, ptr %5, align 16, !range !2618, !alias.scope !5792, !noundef !3
  %i.fg = icmp eq i128 %i.ff, 50
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit146, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit144
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit146 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit146: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1C_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit144, %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !5795)
  call void @llvm.experimental.noalias.scope.decl(metadata !5798)
  %i.fh = load ptr, ptr %i.af, align 8, !alias.scope !5801, !nonnull !3, !noundef !3
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !5801
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

.thread190:                                       ; preds = %bb.h, %.body.i, %bb.s
  %eh.lpad-body193 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %i.ce, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #50
          to label %.thread unwind label %bb.bi

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn92187 = phi { ptr, i32 } [ %i.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pn90, %bb.bz ], [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5802)
  call void @llvm.experimental.noalias.scope.decl(metadata !5805)
  %i.fk = load ptr, ptr %i.af, align 8, !alias.scope !5808, !nonnull !3, !noundef !3
  %i.fl = atomicrmw sub ptr %i.fk, i64 1 release, align 8, !noalias !5808
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit149

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit149 unwind label %bb.bi

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf11CdcDataSpecNtNtNtNtB1k_6kernel6models7actions6RemoveEEEB1k_(ptr noalias noundef align 8 dereferenceable(24) %2) #50
          to label %bb.bx unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit149: ; preds = %bb.bx, %bb.by
  resume { ptr, i32 } %.pn92187
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4list7channelINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_(i64 noundef 0) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_3
