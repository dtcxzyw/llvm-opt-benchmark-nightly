Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.13?download=true
inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i8 0, ptr %i.ep, align 16
  br label %bb.fe

bb.z:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.dq, align 8, !nonnull !97, !align !100, !noundef !97
  %i.er = invoke noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins11read_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.lq

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.z, %bb.s
  %.sink = phi ptr [ %.val280, %bb.s ], [ %i.er, %bb.z ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %.sink, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.et = load ptr, ptr %i.dq, align 8, !nonnull !97, !align !100, !noundef !97
  %i.eu = atomicrmw add ptr %.sink, i64 1 monotonic, align 8
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.aa, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.aa:                                            ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider17df_logical_schema(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei, ptr noundef nonnull %.sink)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !18661)
  %i.ew = load i64, ptr %i.cz, align 16, !range !128, !alias.scope !18662, !noundef !97 ; 2 uses
  %.not.i309 = icmp eq i64 %i.ew, -9223372036854775711
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !18663 ; 4 uses
  br i1 %.not.i309, label %bb.ad, label %bb.ex

bb.ac:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit552

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  store i8 1, ptr %i.dg, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  store ptr %i.ey, ptr %i.fa, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.fc = load ptr, ptr %i.fb, align 16, !align !100, !noundef !97 ; 3 uses
  %.not48 = icmp eq ptr %i.fc, null
  br i1 %.not48, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.dg, align 2
  store i8 1, ptr %i.dh, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.ey, ptr %i.fd, align 8
  br label %bb.bp

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.fe = getelementptr i8, ptr %i.fc, i64 16     ; 3 uses
  %.val281 = load i64, ptr %i.fe, align 8, !noundef !97 ; 3 uses
  %i.ff = icmp ult i64 %.val281, 1152921504606846976
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.experimental.noalias.scope.decl(metadata !18664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18664
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %.val281, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112)
          to label %.noexc310 unwind label %bb.bg

.noexc310:                                        ; preds = %bb.af
  %i.fg = load i64, ptr %i.ab, align 8, !range !102, !noalias !18664, !noundef !97
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !range !99, !noalias !18664, !noundef !97 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.fh, label %bb.ag, label %bb.ah, !prof !101

bb.ag:                                            ; preds = %.noexc310
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !18664
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fj, i64 %i.fl) #48
          to label %.noexc311 unwind label %bb.bg

.noexc311:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %.noexc310
  %i.fm = load ptr, ptr %i.fk, align 8, !noalias !18664, !nonnull !97, !noundef !97
  %i.fn = icmp ule i64 %.val281, %i.fj
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18664
  store i64 %i.fj, ptr %i.cy, align 8, !alias.scope !18664
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  store ptr %i.fm, ptr %i.fo, align 8, !alias.scope !18664
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 5 uses
  store i64 0, ptr %i.fp, align 8, !alias.scope !18664
  %i.fq = getelementptr i8, ptr %i.fc, i64 8      ; 2 uses
  %.val282 = load ptr, ptr %i.fq, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %.val283 = load i64, ptr %i.fe, align 8, !noundef !97 ; 2 uses
  %.idx = shl nuw nsw i64 %.val283, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %.val282, i64 %.idx
  %i.fs = icmp eq i64 %.val283, 0
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bx, %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 16, !range !103, !noundef !97
  %.not50 = icmp eq i64 %i.fu, 37
  br i1 %.not50, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  invoke void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cv, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ft)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit316, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq)
          to label %bb.bk unwind label %bb.bj

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.bi

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cv, i64 48, i1 false), !noalias !18665
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.cw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cu, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge, %bb.am
  %i.fx = invoke noundef align 8 ptr @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_RNvXsp_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB5_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ao ; 3 uses

bb.an:                                            ; preds = %bb.as, %.body, %bb.ao
  %.pn231.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.ao ], [ %i.gd, %bb.as ], [ %eh.lpad-body, %.body ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.ao:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_RNvXsp_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB5_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.not51 = icmp eq ptr %i.fx, null
  br i1 %.not51, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_RNvXsp_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB5_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit316 unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.aq
  %.pn235 = phi { ptr, i32 } [ %i.fz, %bb.aq ], [ %.pn231.pn.pn, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.bi

bb.aq:                                            ; preds = %bb.be, %bb.ap
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit316: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.aj

bb.ar:                                            ; preds = %_RNvXsp_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB5_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %.val268 = load ptr, ptr %i.fa, align 16, !nonnull !97, !noundef !97
  %i.ga = getelementptr inbounds nuw i8, ptr %.val268, i64 16
  %i.gb = getelementptr i8, ptr %i.fx, i64 64
  %.val = load ptr, ptr %i.gb, align 8, !nonnull !97, !noundef !97
  %i.gc = getelementptr i8, ptr %i.fx, i64 72
  %.val261 = load i64, ptr %i.gc, align 8, !noundef !97
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema8index_of(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val261)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.an

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !18666)
  %i.ge = load i64, ptr %i.ct, align 8, !range !175, !alias.scope !18667, !noundef !97 ; 2 uses
  %.not.i317 = icmp eq i64 %i.ge, -9223372036854775788
  %i.gf = load i64, ptr %i.fw, align 8, !alias.scope !18668 ; 13 uses
  br i1 %.not.i317, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  %.val284 = load ptr, ptr %i.fq, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %.val285 = load i64, ptr %i.fe, align 8, !noundef !97 ; 2 uses
  %i.gg = and i64 %.val285, 1152921504606846968   ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.val284, i64 %i.gg ; 2 uses
  %.not.i.i1279 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i1279, label %._crit_edge1282, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.av:                                            ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 64
  %i.gj = add nsw i64 %.sroa.5.0.i.i1280, -8      ; 2 uses
  %.not.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i, label %._crit_edge1282, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

._crit_edge1282:                                  ; preds = %bb.av, %bb.au
  %i.gk = shl i64 %.val285, 3
  %.idx1287 = and i64 %i.gk, 56                   ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx1287
  %.not.not.not.i.not.not.i.not.i1283 = icmp samesign eq i64 %.idx1287, 0
  br i1 %.not.not.not.i.not.not.i.not.i1283, label %._crit_edge1286, label %.lr.ph1285.a

bb.aw:                                            ; preds = %.lr.ph1285.a
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.a = icmp eq ptr %i.gl, %3
  br i1 %.not.not.not.i.not.not.i.not.i.a, label %._crit_edge1286, label %.lr.ph1285.a

.lr.ph1285.a:                                     ; preds = %._crit_edge1282, %bb.aw
  %4 = phi ptr [ %i.gl, %bb.aw ], [ %i.gh, %._crit_edge1282 ] ; 2 uses
  %.val3.i.i.i.a = load i64, ptr %4, align 8, !alias.scope !18669, !noalias !18670, !noundef !97
  %i.gm = icmp eq i64 %.val3.i.i.i.a, %i.gf
  br i1 %i.gm, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge, label %bb.aw

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.au, %bb.av
  %.sroa.0.05.i.i1281 = phi ptr [ %i.gi, %bb.av ], [ %.val284, %bb.au ] ; 9 uses
  %.sroa.5.0.i.i1280 = phi i64 [ %i.gj, %bb.av ], [ %i.gg, %bb.au ]
  %.val13.i.i.i = load i64, ptr %.sroa.0.05.i.i1281, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.gn = icmp eq i64 %.val13.i.i.i, %i.gf
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 8
  %.val13.i.1.i.i = load i64, ptr %i.go, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.gp = icmp eq i64 %.val13.i.1.i.i, %i.gf
  %i.gq = or i1 %i.gn, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 16
  %.val13.i.2.i.i = load i64, ptr %i.gr, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.gs = icmp eq i64 %.val13.i.2.i.i, %i.gf
  %i.gt = or i1 %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 24
  %.val13.i.3.i.i = load i64, ptr %i.gu, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.gv = icmp eq i64 %.val13.i.3.i.i, %i.gf
  %i.gw = or i1 %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 32
  %.val13.i.4.i.i = load i64, ptr %i.gx, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.gy = icmp eq i64 %.val13.i.4.i.i, %i.gf
  %i.gz = or i1 %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 40
  %.val13.i.5.i.i = load i64, ptr %i.ha, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.hb = icmp eq i64 %.val13.i.5.i.i, %i.gf
  %i.hc = or i1 %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 48
  %.val13.i.6.i.i = load i64, ptr %i.hd, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.he = icmp eq i64 %.val13.i.6.i.i, %i.gf
  %i.hf = or i1 %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i1281, i64 56
  %.val13.i.7.i.i = load i64, ptr %i.hg, align 8, !alias.scope !18669, !noalias !18671, !noundef !97
  %i.hh = icmp eq i64 %.val13.i.7.i.i, %i.gf
  %i.hi = or i1 %i.hf, %i.hh
  br i1 %i.hi, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge, label %bb.av

._crit_edge1286:                                  ; preds = %bb.aw, %._crit_edge1282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %.val267 = load ptr, ptr %i.fa, align 16, !nonnull !97, !noundef !97 ; 2 uses
  %i.hj = getelementptr i8, ptr %.val267, i64 24
  %.val290 = load i64, ptr %i.hj, align 8, !noundef !97 ; 2 uses
  %i.hk = icmp ult i64 %i.gf, %.val290
  br i1 %i.hk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge1286
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gf, i64 noundef %.val290, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @692) #50
          to label %.noexc318 unwind label %.loopexit.split-lp1070.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc318:                                        ; preds = %bb.ax
  unreachable

.loopexit.split-lp1070.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp1070.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb
  %eh.lpad-body = phi { ptr, i32 } [ %i.ht, %bb.bb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1070.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.an

bb.ay:                                            ; preds = %._crit_edge1286
  %i.hl = getelementptr inbounds nuw i8, ptr %.val267, i64 16
  %.val289 = load ptr, ptr %i.hl, align 8, !nonnull !97, !noundef !97
  %i.hm = getelementptr inbounds nuw i8, ptr %.val289, i64 16
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.gf
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !97, !noundef !97
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  invoke void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.hp)
          to label %bb.az unwind label %.loopexit.split-lp1070.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.hq = load i64, ptr %i.fp, align 8, !alias.scope !18672, !noundef !97 ; 3 uses
  %i.hr = load i64, ptr %i.cy, align 8, !range !98, !alias.scope !18672, !noundef !97
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.bd unwind label %bb.bb, !noalias !18673

bb.bb:                                            ; preds = %bb.ba
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.cs) #46
          to label %.body unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bd:                                            ; preds = %bb.ba, %bb.az
  %i.hv = load ptr, ptr %i.fo, align 8, !alias.scope !18672, !nonnull !97, !noundef !97
  %i.hw = getelementptr inbounds nuw [112 x i8], ptr %i.hv, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hw, ptr noundef nonnull align 8 dereferenceable(112) %i.cs, i64 112, i1 false)
  %i.hx = add i64 %i.hq, 1
  store i64 %i.hx, ptr %i.fp, align 8, !alias.scope !18672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge

_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph1285.a, %bb.bd
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.be:                                            ; preds = %bb.at
  %.sroa.10584.0..sroa_idx585 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.3588.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3588.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10584.0..sroa_idx585, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.experimental.noalias.scope.decl(metadata !18674)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 -9223372036854775741, ptr %i.hy, align 16, !alias.scope !18675
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %i.ge, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18676
  %.sroa.2587.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %i.gf, ptr %.sroa.2587.0..sroa.4.0..sroa_idx.i.sroa_idx, align 16, !alias.scope !18676
  store i64 -9223372036854775808, ptr %i.af, align 16, !alias.scope !18675
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit320 unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit320: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cy)
          to label %bb.bh unwind label %bb.bg

bb.bf:                                            ; preds = %.body321, %bb.by, %bb.bg
  %.pn238.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.ph, %bb.by ], [ %.pn52, %.body321 ], [ %i.hz, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit550

bb.bg:                                            ; preds = %bb.ag, %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit320
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ew, %bb.bh
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 591
  store i8 0, ptr %i.ia, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 586
  %i.ic = load i8, ptr %i.ib, align 2, !range !107, !noundef !97
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.pt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit543

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ak
  %.pn235.pn = phi { ptr, i32 } [ %.pn235, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.fv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.by

.body321:                                         ; preds = %bb.bm, %bb.bj
  %.pn52 = phi { ptr, i32 } [ %i.ie, %bb.bj ], [ %i.ij, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.bf

bb.bj:                                            ; preds = %bb.aj
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %.body321

bb.bk:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !18677
  store i64 1, ptr %i.z, align 8, !noalias !18677
  %i.if = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.if, align 8, !noalias !18677
  %i.ig = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ig, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.cr, i64 64, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !18678
  %i.ih = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 80, i64 noundef range(i64 8, 17) 8) #40, !noalias !18678 ; 4 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bl, label %bb.bo, !prof !101

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc.i unwind label %bb.bm, !noalias !18677

.noexc.i:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.z) #46
          to label %.body321 unwind label %bb.bn, !noalias !18677

bb.bn:                                            ; preds = %bb.bm
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !18677
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ih, ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 80, i1 false), !noalias !18677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !18677
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.ih, ptr %i.il, align 8
  store i8 1, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ae
  %.val263 = phi ptr [ %i.ih, %bb.bo ], [ %i.ey, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.in = atomicrmw add ptr %.val263, i64 1 monotonic, align 8
  %i.io = icmp slt i64 %i.in, 0
  br i1 %i.io, label %bb.bq, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit323

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

.lr.ph:                                           ; preds = %bb.ah, %bb.bx
  %.sroa.0577.01104 = phi ptr [ %i.ip, %bb.bx ], [ %.val282, %bb.ah ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0577.01104, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %.val269 = load ptr, ptr %i.fa, align 16, !nonnull !97, !noundef !97 ; 2 uses
  %i.iq = load i64, ptr %.sroa.0577.01104, align 8, !noundef !97 ; 3 uses
  %i.ir = getelementptr i8, ptr %.val269, i64 24
  %.val288 = load i64, ptr %i.ir, align 8, !noundef !97 ; 2 uses
  %i.is = icmp ult i64 %i.iq, %.val288
  br i1 %i.is, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.iq, i64 noundef %.val288, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @692) #50
          to label %.noexc324 unwind label %.loopexit.split-lp1075.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc324:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %.lr.ph
  %i.it = getelementptr inbounds nuw i8, ptr %.val269, i64 16
  %.val287 = load ptr, ptr %i.it, align 8, !nonnull !97, !noundef !97
  %i.iu = getelementptr inbounds nuw i8, ptr %.val287, i64 16
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iq
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !97, !noundef !97
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  invoke void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ix)
          to label %bb.bt unwind label %.loopexit.split-lp1075.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1075.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.br
  %lpad.loopexit.split-lp1320 = landingpad { ptr, i32 }
          cleanup
  br label %.body326

.body326:                                         ; preds = %.loopexit.split-lp1075.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv
  %eh.lpad-body327 = phi { ptr, i32 } [ %i.jb, %bb.bv ], [ %lpad.loopexit.split-lp1320, %.loopexit.split-lp1075.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.iy = load i64, ptr %i.fp, align 8, !alias.scope !18679, !noundef !97 ; 3 uses
  %i.iz = load i64, ptr %i.cy, align 8, !range !98, !alias.scope !18679, !noundef !97
  %i.ja = icmp eq i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.bx unwind label %bb.bv, !noalias !18680

bb.bv:                                            ; preds = %bb.bu
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.cx) #46
          to label %.body326 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bx:                                            ; preds = %bb.bu, %bb.bt
  %i.jd = load ptr, ptr %i.fo, align 8, !alias.scope !18679, !nonnull !97, !noundef !97
  %i.je = getelementptr inbounds nuw [112 x i8], ptr %i.jd, i64 %i.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.je, ptr noundef nonnull align 8 dereferenceable(112) %i.cx, i64 112, i1 false)
  %i.jf = add i64 %i.iy, 1
  store i64 %i.jf, ptr %i.fp, align 8, !alias.scope !18679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.jg = icmp eq ptr %i.ip, %i.fr
  br i1 %i.jg, label %._crit_edge, label %.lr.ph

bb.by:                                            ; preds = %bb.bi, %.body326
  %.pn238.pn.pn.ph = phi { ptr, i32 } [ %.pn235.pn, %bb.bi ], [ %eh.lpad-body327, %.body326 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cy) #46
          to label %bb.bf unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit550: ; preds = %bb.qm, %bb.qn, %bb.ps, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit364, %bb.bf
  %.pn238.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn, %bb.bf ], [ %i.akd, %bb.ps ], [ %.pn223.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit364 ], [ %.pn223.pn, %bb.qn ], [ %.pn223.pn, %bb.qm ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 591
  store i8 0, ptr %i.jh, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 586
  %i.jj = load i8, ptr %i.ji, align 2, !range !107, !noundef !97
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.qo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit552
end_hunk_0
