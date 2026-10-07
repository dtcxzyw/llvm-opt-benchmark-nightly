Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3i_4read7StrReadEEB1L_:bb.a
bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #80
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.eq, !noalias !28049

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ep
  unreachable

bb.eq:                                            ; preds = %bb.ep
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids17InlineRowIdsInnerEEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #81
          to label %common.resume.i.i.i.i.i unwind label %bb.er, !noalias !28049

bb.er:                                            ; preds = %bb.eq
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !28049
  unreachable

bb.es:                                            ; preds = %bb.en
  %i.oh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !28045, !nonnull !68, !align !73, !noundef !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28045
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread.i.i.i.i.i

_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread6.i.i.i.i.i: ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.od, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !28049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28045
  store i64 -1, ptr %i.az, align 8, !alias.scope !28050, !noalias !28051
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.od, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28050, !noalias !28051
  %i.oj = load i8, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880, !noundef !68
  %i.ok = add i8 %i.oj, 1
  store i8 %i.ok, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !27879
  br label %bb.eu

_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread.i.i.i.i.i: ; preds = %bb.es, %.thread.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.bw, %bb.as, %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.am, %.loopexit.i7.i.i.i.i.i.i.i.i, %bb.ai, %bb.ah, %bb.y, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.95.017.i.sink.i.i.i.i.i = phi ptr [ %i.dw, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.oi, %bb.es ], [ %i.dx, %bb.y ], [ %i.fs, %bb.am ], [ %i.fr, %.loopexit.i7.i.i.i.i.i.i.i.i ], [ %i.fh, %bb.ah ], [ %i.fj, %bb.ai ], [ %i.ip, %bb.bw ], [ %i.gh, %bb.as ], [ %i.fz, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ny, %.thread.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ol = load i8, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880, !noundef !68
  %i.om = add i8 %i.ol, 1
  store i8 %i.om, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !27879
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread272.i.i.i

_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.i.i.i.i.i: ; preds = %bb.eg, %bb.bo
  %.sroa.14.0.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, %bb.eg ], [ %.sroa.11.0.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ]
  %.sroa.13.0.i.i.i.i.i.i = phi i64 [ %.sroa.1410.0.i.i.i.i.i.i.i.i.i.i.i, %bb.eg ], [ %.sroa.10.016.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ]
  %.sroa.8.0.i.i.i.i.i.i = phi ptr [ %.sroa.99.0.i.i.i.i.i.i.i.i.i.i.i, %bb.eg ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i = phi i64 [ %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i, %bb.eg ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %.sroa.15.0.i.i.i.i.i.i = phi i64 [ %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i, %bb.eg ], [ %.sroa.123.0.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ]
  store i64 %.sroa.08.0.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !28050, !noalias !28051
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.8.0.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28050, !noalias !28051
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.13.0.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28050, !noalias !28051
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %.sroa.14.0.i.i.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28050, !noalias !28051
  %.sroa.714.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.15.0.i.i.i.i.i.i, ptr %.sroa.714.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28050, !noalias !28051
  %i.on = load i8, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880, !noundef !68
  %i.oo = add i8 %i.on, 1
  store i8 %i.oo, ptr %i.bt, align 8, !alias.scope !27881, !noalias !27880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !27879
  %i.op = icmp eq i64 %.sroa.08.0.i.i.i.i.i.i, -2
  br i1 %i.op, label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread272.i.i.i, label %bb.eu

bb.et:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !27879
  store i64 24, ptr %i.ay, align 8, !noalias !27879
  %i.oq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ay), !noalias !27880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !27879
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread.i.i.i

bb.eu:                                            ; preds = %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.i.i.i.i.i, %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !28052
  call void @llvm.experimental.noalias.scope.decl(metadata !28053)
  %i.or = load i64, ptr %i.bb, align 8, !alias.scope !28054, !noalias !28055, !noundef !68 ; 2 uses
  %.promoted.i14.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !28056, !noalias !28057 ; 2 uses
  %i.os = icmp ult i64 %.promoted.i14.i.i.i.i.i, %i.or
  br i1 %i.os, label %.lr.ph.i16.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i:                             ; preds = %bb.eu
  %i.ot = load ptr, ptr %i.bl, align 8, !alias.scope !28054, !noalias !28055, !nonnull !68, !noundef !68
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ew, %.lr.ph.i16.i.i.i.i.i
  %i.ou = phi i64 [ %.promoted.i14.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i ], [ %i.ox, %bb.ew ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28058)
  call void @llvm.experimental.noalias.scope.decl(metadata !28059)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !noalias !28060, !noundef !68
  switch i8 %i.ow, label %bb.fd [
    i8 32, label %bb.ew
    i8 10, label %bb.ew
    i8 9, label %bb.ew
    i8 13, label %bb.ew
    i8 125, label %bb.fg
  ], !prof !167

bb.ew:                                            ; preds = %bb.ev, %bb.ev, %bb.ev, %bb.ev
  %i.ox = add i64 %i.ou, 1                        ; 3 uses
  store i64 %i.ox, ptr %i.ba, align 8, !alias.scope !28061, !noalias !28057
  %exitcond.not.i17.i.i.i.i.i = icmp eq i64 %i.ox, %i.or
  br i1 %exitcond.not.i17.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.ev

.loopexit.i.i.i.i.i:                              ; preds = %bb.ew, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !27879
  store i64 3, ptr %i.av, align 8, !noalias !27879
  %i.oy = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.ey unwind label %bb.ex, !noalias !27880

bb.ex:                                            ; preds = %bb.fd, %.loopexit.i.i.i.i.i
  %i.oz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az) #81
          to label %common.resume.i.i.i.i.i unwind label %bb.ff, !noalias !28062

bb.ey:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !27879
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fe, %bb.ey
  %.sink391.i.i.i.i.i = phi ptr [ %i.pg, %bb.fe ], [ %i.oy, %bb.ey ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28063)
  %i.pa = load i64, ptr %i.ax, align 8, !range !70, !alias.scope !28063, !noalias !28064, !noundef !68 ; 2 uses
  switch i64 %i.pa, label %bb.fc [
    i64 -1, label %bb.fa
    i64 0, label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28065), !noalias !27869
  call void @llvm.experimental.noalias.scope.decl(metadata !28066), !noalias !27869
  call void @llvm.experimental.noalias.scope.decl(metadata !28067), !noalias !27869
  %i.pc = load ptr, ptr %i.pb, align 8, !alias.scope !28068, !noalias !28064, !nonnull !68, !noundef !68
  %i.pd = atomicrmw sub ptr %i.pc, i64 1 release, align 8, !noalias !28069
  %i.pe = icmp eq i64 %i.pd, 1
  br i1 %i.pe, label %bb.fb, label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire, !noalias !27869
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids17InlineRowIdsInnerE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.pb), !noalias !27880
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i

bb.fc:                                            ; preds = %bb.ez
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !alias.scope !28063, !noalias !28064, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.pa, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !28070
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i

bb.fd:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !27879
  store i64 10, ptr %i.aw, align 8, !noalias !27879
  %i.pg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.fe unwind label %bb.ex, !noalias !27880

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27879
  br label %bb.ez

bb.ff:                                            ; preds = %bb.ex
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !27880
  unreachable

_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread272.i.i.i: ; preds = %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.i.i.i.i.i, %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread.i.i.i.i.i
  %i.pi = phi ptr [ %.sroa.8.0.i.i.i.i.i.i, %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.i.i.i.i.i ], [ %.sroa.95.017.i.sink.i.i.i.i.i, %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtBb_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB2Y_4read7StrReadEEBf_.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !27879
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread.i.i.i

_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i: ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !27879
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread.i.i.i

_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread.i.i.i: ; preds = %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i, %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread272.i.i.i, %bb.et, %bb.v, %bb.u, %bb.t, %bb.f, %.loopexit10.i.i.i.i.i
  %i.pj = phi ptr [ %i.oq, %bb.et ], [ %i.br, %.loopexit10.i.i.i.i.i ], [ %i.pi, %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread272.i.i.i ], [ %.sink391.i.i.i.i.i, %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread274.i.i.i ], [ %i.bs, %bb.f ], [ %i.dp, %bb.v ], [ %i.do, %bb.u ], [ %.sroa.91.1.ph.i.i.i.i.i.i.i.i, %bb.t ]
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pj, ptr %i.pk, align 8, !alias.scope !28062, !noalias !28071
  store i64 -3, ptr %0, align 8, !alias.scope !28062, !noalias !28071
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB1a_.exit.i.i

bb.fg:                                            ; preds = %bb.ev
  %i.pl = add i64 %i.ou, 1
  store i64 %i.pl, ptr %i.ba, align 8, !alias.scope !28072, !noalias !27880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !27879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !28071
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB1a_.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB1a_.exit.i.i: ; preds = %bb.fg, %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format7row_idss1_1__NtB5_9RowIdMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB9_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !27866
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2T_4read7StrReadEEB1r_.exit

bb.fh:                                            ; preds = %bb.b
  %i.pm = add i64 %i.bg, 1                        ; 4 uses
  store i64 %i.pm, ptr %i.ba, align 8, !alias.scope !28073, !noalias !28074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28075)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.pm, i64 %i.bc) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28077)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.pm, %i.bc
  br i1 %exitcond.not.i9.not.i.i, label %bb.fi, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !noalias !28078, !noundef !68
  %i.pp = add i64 %i.bg, 2                        ; 3 uses
  store i64 %i.pp, ptr %i.ba, align 8, !alias.scope !28079, !noalias !28080
  %.not.i.i.i = icmp eq i8 %i.po, 117
  br i1 %.not.i.i.i, label %bb.fj, label %bb.fn, !prof !169

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28082)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.pp, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !noalias !28083, !noundef !68
  %i.ps = add i64 %i.bg, 3                        ; 3 uses
  store i64 %i.ps, ptr %i.ba, align 8, !alias.scope !28084, !noalias !28080
  %.not.i.1.i.i = icmp eq i8 %i.pr, 108
  br i1 %.not.i.1.i.i, label %bb.fl, label %bb.fn, !prof !169

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28086)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ps, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !noalias !28087, !noundef !68
  %i.pv = add i64 %i.bg, 4
  store i64 %i.pv, ptr %i.ba, align 8, !alias.scope !28088, !noalias !28080
  %.not.i.2.i.i = icmp eq i8 %i.pu, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.fn, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.fl, %bb.fj, %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28089
  store i64 5, ptr %i.c, align 8, !noalias !28089
  %i.pw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !28090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28089
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm, %bb.fk, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28089
  store i64 9, ptr %i.b, align 8, !noalias !28089
  %i.px = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !28090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28089
  br label %bb.fo

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.fm
  store i64 -2, ptr %0, align 8, !alias.scope !28091, !noalias !28092
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2T_4read7StrReadEEB1r_.exit

bb.fo:                                            ; preds = %bb.fn, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.pw, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.px, %bb.fn ]
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.py, align 8, !alias.scope !28074, !noalias !28092
  store i64 -3, ptr %0, align 8, !alias.scope !28074, !noalias !28092
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2T_4read7StrReadEEB1r_.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2T_4read7StrReadEEB1r_.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB1a_.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, %bb.fo
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEEB1L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 12 uses
  %i.ae = alloca [16 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 14 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28336)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !28337, !noalias !28338, !noundef !68 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !28339, !noalias !28340 ; 3 uses
  %i.ay = icmp ult i64 %.promoted.i.i.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !28337, !noalias !28338, !nonnull !68, !noundef !68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bb = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.be, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28342)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !28343, !noundef !68
  switch i8 %i.bd, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.dj
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.be = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.be, ptr %i.av, align 8, !alias.scope !28344, !noalias !28340
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.ax
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.bb, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28349)
  %i.bf = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ax
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !28350, !noalias !28351, !nonnull !68, !noundef !68
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.bi = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28353)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !28354, !noundef !68
  switch i8 %i.bk, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 91, label %bb.g
    i8 123, label %bb.h
  ], !prof !166

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.av, align 8, !alias.scope !28355, !noalias !28356
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.ax
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !28357
  store i64 5, ptr %i.au, align 8, !noalias !28357
  %i.bm = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au), !noalias !28358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !28357
  br label %bb.di

end_hunk_0
begin_hunk_1_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEEB1L_:bb.a

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28487
  store i64 6, ptr %i.k, align 8, !noalias !28487
  %i.lb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fy, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !28488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28487
  br label %.loopexit519.i.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueINtNtCscI6d9CVNmLh_4core6option6OptionmEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.cq
  %i.lc = add i64 %i.kw, 1
  store i64 %i.lc, ptr %i.ga, align 8, !alias.scope !28489, !noalias !28488
  call fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionmEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef align 8 dereferenceable(56) %i.fy), !noalias !28420
  %.pre.i.i.i.i.i.i = load i32, ptr %i.af, align 8, !range !105, !noalias !28404
  %i.ld = trunc nuw i32 %.pre.i.i.i.i.i.i to i1
  br i1 %i.ld, label %.loopexit519.i.loopexit.i.i.i.i.i, label %bb.ct

.loopexit519.i.loopexit.i.i.i.i.i:                ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueINtNtCscI6d9CVNmLh_4core6option6OptionmEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !noalias !28404
  br label %.loopexit519.i.i.i.i.i.i

.loopexit519.i.i.i.i.i.i:                         ; preds = %.loopexit519.i.loopexit.i.i.i.i.i, %bb.cs, %.loopexit.i.i.i117.i.i.i.i.i.i
  %i.le = phi ptr [ %.pre.i.i.i.i.i, %.loopexit519.i.loopexit.i.i.i.i.i ], [ %i.la, %.loopexit.i.i.i117.i.i.i.i.i.i ], [ %i.lb, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !28404
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i

bb.ct:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueINtNtCscI6d9CVNmLh_4core6option6OptionmEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.lf = load i32, ptr %i.fq, align 4, !range !105, !noalias !28404, !noundef !68
  %i.lg = load i32, ptr %i.fp, align 8, !noalias !28404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !28404
  br label %bb.bt

bb.cu:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28490
  store ptr @187, ptr %i.i, align 8, !noalias !28491
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 12, ptr %i.lh, align 8, !noalias !28491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28491
  store ptr %i.i, ptr %i.h, align 8, !noalias !28491
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !28491
  %i.li = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2129, ptr noundef nonnull %i.h), !noalias !28420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28490
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i

bb.cv:                                            ; preds = %bb.be
  %i.lj = trunc nuw i64 %.sroa.012.0326.i.i.i.i.i.i to i1
  br i1 %i.lj, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !28492
  store ptr @188, ptr %i.g, align 8, !noalias !28493
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.lk, align 8, !noalias !28493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28493
  store ptr %i.g, ptr %i.f, align 8, !noalias !28493
  %.sroa.42.0..sroa_idx.i.i121.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx.i.i121.i.i.i.i.i.i, align 8, !noalias !28493
  %i.ll = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2129, ptr noundef nonnull %i.f), !noalias !28420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28492
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %.not83.i.i.i.i.i.i = icmp eq i8 %.sroa.022.0324.i.i.i.i.i.i, 2
  br i1 %.not83.i.i.i.i.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28494
  store ptr @189, ptr %i.e, align 8, !noalias !28495
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 9, ptr %i.lm, align 8, !noalias !28495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28495
  store ptr %i.e, ptr %i.d, align 8, !noalias !28495
  %.sroa.42.0..sroa_idx.i.i122.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx.i.i122.i.i.i.i.i.i, align 8, !noalias !28495
  %i.ln = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2129, ptr noundef nonnull %i.d), !noalias !28496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28494
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %.not84.i.i.i.i.i.i = icmp eq i64 %.sroa.028.0323.i.i.i.i.i.i, -1 ; 2 uses
  %..sroa.028.0.i.i.i.i.i.i = select i1 %.not84.i.i.i.i.i.i, i64 0, i64 %.sroa.028.0323.i.i.i.i.i.i
  %..sroa.531.0.i.i.i.i.i.i = select i1 %.not84.i.i.i.i.i.i, i64 undef, i64 %.sroa.531.0322.i.i.i.i.i.i
  %.not85.i.i.i.i.i.i = icmp eq i32 %.sroa.036.0321.i.i.i.i.i.i, -1 ; 2 uses
  %.sroa.068.0.i.i.i.i.i.i = select i1 %.not85.i.i.i.i.i.i, i32 0, i32 %.sroa.036.0321.i.i.i.i.i.i
  %.sroa.369.0.i.i.i.i.i.i = select i1 %.not85.i.i.i.i.i.i, i32 undef, i32 %.sroa.539.0320.i.i.i.i.i.i
  %i.lo = inttoptr i64 %..sroa.531.0.i.i.i.i.i.i to ptr
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i

_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i: ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %bb.bk, %bb.cz, %bb.cy, %bb.cw, %bb.cu, %.loopexit519.i.i.i.i.i.i, %bb.co, %.loopexit.i37.i.i.i.i.i, %bb.ci, %.loopexit522.i.i.i.i.i.i, %bb.cc, %bb.bu, %bb.bl, %bb.bd, %._crit_edge.i.i.i.i.i.i
  %.sroa.40.0.i.i.i.i.i = phi i8 [ undef, %bb.cu ], [ undef, %bb.cw ], [ undef, %bb.bl ], [ undef, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.bu ], [ undef, %bb.bd ], [ undef, %.loopexit522.i.i.i.i.i.i ], [ undef, %bb.cc ], [ undef, %.loopexit.i37.i.i.i.i.i ], [ undef, %bb.ci ], [ undef, %.loopexit519.i.i.i.i.i.i ], [ undef, %bb.co ], [ undef, %bb.cy ], [ %.sroa.022.0324.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.bk ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ]
  %.sroa.39.0.i.i.i.i.i = phi i64 [ undef, %bb.cu ], [ undef, %bb.cw ], [ undef, %bb.bl ], [ undef, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.bu ], [ undef, %bb.bd ], [ undef, %.loopexit522.i.i.i.i.i.i ], [ undef, %bb.cc ], [ undef, %.loopexit.i37.i.i.i.i.i ], [ undef, %bb.ci ], [ undef, %.loopexit519.i.i.i.i.i.i ], [ undef, %bb.co ], [ undef, %bb.cy ], [ %.sroa.414.0325.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.bk ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ]
  %.sroa.38.0.i.i.i.i.i = phi i64 [ undef, %bb.cu ], [ undef, %bb.cw ], [ undef, %bb.bl ], [ undef, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.bu ], [ undef, %bb.bd ], [ undef, %.loopexit522.i.i.i.i.i.i ], [ undef, %bb.cc ], [ undef, %.loopexit.i37.i.i.i.i.i ], [ undef, %bb.ci ], [ undef, %.loopexit519.i.i.i.i.i.i ], [ undef, %bb.co ], [ undef, %bb.cy ], [ %.sroa.4.0327.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.bk ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ]
  %.sroa.37.0.i.i.i.i.i = phi i32 [ undef, %bb.cu ], [ undef, %bb.cw ], [ undef, %bb.bl ], [ undef, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.bu ], [ undef, %bb.bd ], [ undef, %.loopexit522.i.i.i.i.i.i ], [ undef, %bb.cc ], [ undef, %.loopexit.i37.i.i.i.i.i ], [ undef, %bb.ci ], [ undef, %.loopexit519.i.i.i.i.i.i ], [ undef, %bb.co ], [ undef, %bb.cy ], [ %.sroa.369.0.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.bk ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ]
  %.sroa.36.0.i.i.i.i.i = phi i32 [ undef, %bb.cu ], [ undef, %bb.cw ], [ undef, %bb.bl ], [ undef, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.bu ], [ undef, %bb.bd ], [ undef, %.loopexit522.i.i.i.i.i.i ], [ undef, %bb.cc ], [ undef, %.loopexit.i37.i.i.i.i.i ], [ undef, %bb.ci ], [ undef, %.loopexit519.i.i.i.i.i.i ], [ undef, %bb.co ], [ undef, %bb.cy ], [ %.sroa.068.0.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.bk ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ undef, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ]
  %.sroa.2019.0.i.i.i.i.i = phi ptr [ %i.li, %bb.cu ], [ %i.ll, %bb.cw ], [ %i.hx, %bb.bl ], [ %i.fv, %._crit_edge.i.i.i.i.i.i ], [ %i.is, %bb.bu ], [ %i.gg, %bb.bd ], [ %i.jy, %.loopexit522.i.i.i.i.i.i ], [ %i.jl, %bb.cc ], [ %i.ko, %.loopexit.i37.i.i.i.i.i ], [ %i.kb, %bb.ci ], [ %i.le, %.loopexit519.i.i.i.i.i.i ], [ %i.kr, %bb.co ], [ %i.ln, %bb.cy ], [ %i.lo, %bb.cz ], [ %i.jh, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ], [ %i.im, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.hv, %bb.bk ] ; 5 uses
  %.sroa.018.0.i.i.i.i.i = phi i64 [ -1, %bb.cu ], [ -1, %bb.cw ], [ -1, %bb.bl ], [ -1, %._crit_edge.i.i.i.i.i.i ], [ -1, %bb.bu ], [ -1, %bb.bd ], [ -1, %.loopexit522.i.i.i.i.i.i ], [ -1, %bb.cc ], [ -1, %.loopexit.i37.i.i.i.i.i ], [ -1, %bb.ci ], [ -1, %.loopexit519.i.i.i.i.i.i ], [ -1, %bb.co ], [ -1, %bb.cy ], [ %..sroa.028.0.i.i.i.i.i.i, %bb.cz ], [ -1, %bb.bk ], [ -1, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ -1, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueyECs9KQ7US1M400_11lance_table.exit102.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28357
  %i.lp = load i8, ptr %i.bs, align 8, !alias.scope !28359, !noalias !28358, !noundef !68
  %i.lq = add i8 %i.lp, 1
  store i8 %i.lq, ptr %i.bs, align 8, !alias.scope !28359, !noalias !28358
  %i.lr = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.db unwind label %bb.da, !noalias !28358 ; 9 uses

bb.da:                                            ; preds = %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEB13_(i64 %.sroa.018.0.i.i.i.i.i, ptr %.sroa.2019.0.i.i.i.i.i) #81
          to label %common.resume.i.i.i.i.i unwind label %bb.ao, !noalias !28358

bb.db:                                            ; preds = %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtBb_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB31_4read7StrReadEEBf_.exit.i.i.i.i.i
  %i.lt = icmp eq i64 %.sroa.018.0.i.i.i.i.i, -1
  br i1 %i.lt, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i.i, label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtB5_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB9_.exit.i.i.i, label %.thread.i.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2019.0.i.i.i.i.i) ]
  %.not73.i.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not73.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !28497)
  call void @llvm.experimental.noalias.scope.decl(metadata !28498)
  %i.lu = load i64, ptr %i.lr, align 8, !range !108, !alias.scope !28499, !noalias !28500, !noundef !68
  switch i64 %i.lu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i [
    i64 0, label %bb.df
    i64 1, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %.val1.i.i.i.i39.i.i.i.i.i = load i64, ptr %i.lv, align 8, !alias.scope !28499, !noalias !28500, !noundef !68 ; 2 uses
  %i.lw = icmp eq i64 %.val1.i.i.i.i39.i.i.i.i.i, 0
  br i1 %i.lw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i40.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i40.i.i.i.i.i: ; preds = %bb.df
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.val.i.i.i.i41.i.i.i.i.i = load ptr, ptr %i.lx, align 8, !alias.scope !28499, !noalias !28500, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i41.i.i.i.i.i, i64 noundef %.val1.i.i.i.i39.i.i.i.i.i, i64 noundef 1) #76, !noalias !28501
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ly)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i unwind label %bb.dh, !noalias !28500

bb.dh:                                            ; preds = %bb.dg
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lr, i64 noundef 40, i64 noundef 8) #76, !noalias !28500
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i: ; preds = %bb.dg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i40.i.i.i.i.i, %bb.df, %bb.de
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lr, i64 noundef 40, i64 noundef 8) #76, !noalias !28500
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i, %bb.dd, %bb.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %bb.an, %bb.am, %bb.f
  %.sroa.10.3.i.i.i.i.i = phi ptr [ %i.bn, %bb.f ], [ %.sroa.2019.0.i.i.i.i.i, %bb.dd ], [ %.sroa.2019.0.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit42.i.i.i.i.i ], [ %i.lr, %bb.dc ], [ %.sroa.10.037.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %i.ey, %bb.am ], [ %.sroa.10.037.i.i.i.i.i, %bb.an ]
  %i.ma = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %.sroa.10.3.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !28358
  br label %bb.di

bb.di:                                            ; preds = %.thread.i.i.i.i.i, %bb.at, %bb.i, %.loopexit.i.i.i.i.i
  %.sroa.8.0.ph.i.i.i = phi ptr [ %i.fi, %bb.at ], [ %i.bw, %bb.i ], [ %i.bm, %.loopexit.i.i.i.i.i ], [ %i.ma, %.thread.i.i.i.i.i ]
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i.i.i, ptr %i.mb, align 8, !alias.scope !28502, !noalias !28503
  store i64 -2, ptr %0, align 8, !alias.scope !28502, !noalias !28503
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEEB1r_.exit

_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtB5_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB9_.exit.i.i.i: ; preds = %bb.dc, %bb.am
  %.sroa.17.0.i.i.i = phi i8 [ %.sroa.20.0.i.i.i.i.i, %bb.am ], [ %.sroa.40.0.i.i.i.i.i, %bb.dc ]
  %.sroa.16.0.i.i.i = phi i64 [ %.sroa.19.0.i.i.i.i.i, %bb.am ], [ %.sroa.39.0.i.i.i.i.i, %bb.dc ]
  %.sroa.15.0.i.i.i = phi i64 [ %.sroa.18.0.i.i.i.i.i, %bb.am ], [ %.sroa.38.0.i.i.i.i.i, %bb.dc ]
  %.sroa.14.0.i.i.i = phi i32 [ %.sroa.17.0.i.i.i.i.i, %bb.am ], [ %.sroa.37.0.i.i.i.i.i, %bb.dc ]
  %.sroa.13.0.i.i.i = phi i32 [ %.sroa.16.0.i.i.i.i.i, %bb.am ], [ %.sroa.36.0.i.i.i.i.i, %bb.dc ]
  %.sroa.8.0.i.i.i = phi ptr [ %.sroa.10.037.i.i.i.i.i, %bb.am ], [ %.sroa.2019.0.i.i.i.i.i, %bb.dc ]
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i.i, %bb.am ], [ %.sroa.018.0.i.i.i.i.i, %bb.dc ]
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !28502, !noalias !28503
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !28502, !noalias !28503
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !28502, !noalias !28503
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.14.0.i.i.i, ptr %.sroa.66.0..sroa_idx.i.i.i, align 4, !alias.scope !28502, !noalias !28503
  %.sroa.77.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.77.0..sroa_idx.i.i.i, align 8, !alias.scope !28502, !noalias !28503
  %.sroa.88.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.16.0.i.i.i, ptr %.sroa.88.0..sroa_idx.i.i.i, align 8, !alias.scope !28502, !noalias !28503
  %.sroa.99.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.17.0.i.i.i, ptr %.sroa.99.0..sroa_idx.i.i.i, align 8, !alias.scope !28502, !noalias !28503
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEEB1r_.exit

bb.dj:                                            ; preds = %bb.b
  %i.mc = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.mc, ptr %i.av, align 8, !alias.scope !28504, !noalias !28505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28506)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.mc, i64 %i.ax) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28508)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.mc, %i.ax
  br i1 %exitcond.not.i9.not.i.i, label %bb.dk, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.md = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !noalias !28509, !noundef !68
  %i.mf = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.mf, ptr %i.av, align 8, !alias.scope !28510, !noalias !28511
  %.not.i.i.i = icmp eq i8 %i.me, 117
  br i1 %.not.i.i.i, label %bb.dl, label %bb.dp, !prof !169

bb.dl:                                            ; preds = %bb.dk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28513)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.mf, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !noalias !28514, !noundef !68
  %i.mi = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.mi, ptr %i.av, align 8, !alias.scope !28515, !noalias !28511
  %.not.i.1.i.i = icmp eq i8 %i.mh, 108
  br i1 %.not.i.1.i.i, label %bb.dn, label %bb.dp, !prof !169

bb.dn:                                            ; preds = %bb.dm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28517)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.mi, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !28518, !noundef !68
  %i.ml = add i64 %i.bb, 4
  store i64 %i.ml, ptr %i.av, align 8, !alias.scope !28519, !noalias !28511
  %.not.i.2.i.i = icmp eq i8 %i.mk, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.dp, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.dn, %bb.dl, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28520
  store i64 5, ptr %i.c, align 8, !noalias !28520
  %i.mm = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !28521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28520
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dm, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28520
  store i64 9, ptr %i.b, align 8, !noalias !28520
  %i.mn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !28521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28520
  br label %bb.dq

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.do
  store i64 -1, ptr %0, align 8, !alias.scope !28522, !noalias !28523
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEEB1r_.exit

bb.dq:                                            ; preds = %bb.dp, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.mm, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.mn, %bb.dp ]
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.mo, align 8, !alias.scope !28505, !noalias !28523
  store i64 -2, ptr %0, align 8, !alias.scope !28505, !noalias !28523
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEEB1r_.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEEB1r_.exit: ; preds = %bb.di, %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments1_1__NtB5_12DeletionFileNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB9_.exit.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, %bb.dq
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3v_4read7StrReadEEB1L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 53 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 12 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [40 x i8], align 8               ; 21 uses
  %i.bx = alloca [40 x i8], align 8               ; 16 uses
  %i.by = alloca [32 x i8], align 8               ; 9 uses
  %i.bz = alloca [32 x i8], align 8               ; 28 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28951)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !28952, !noalias !28953, !noundef !68 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !28954, !noalias !28955 ; 2 uses
  %i.cd = icmp ult i64 %.promoted.i.i.i, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !28952, !noalias !28953, !nonnull !68, !noundef !68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.cg = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.cj, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28957)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !28958, !noundef !68
  switch i8 %i.ci, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.hm
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cj = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.ca, align 8, !alias.scope !28959, !noalias !28955
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.cc
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !28961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !28961
  call fastcc void @_RINvYQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content14ContentVisitorECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.by, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !28962
  %i.ck = load i8, ptr %i.by, align 8, !range !112, !noalias !28961, !noundef !68 ; 4 uses
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !28961, !nonnull !68, !align !73, !noundef !68
end_hunk_1
begin_hunk_2_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3v_4read7StrReadEEB1L_:bb.a
  store i64 -2, ptr %i.bw, align 8, !alias.scope !29113, !noalias !29114
  %i.aaf = icmp eq i64 %.sroa.073.0374.i.i.i.i.i.i.i.i, 0
  br i1 %i.aaf, label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i, label %_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.thread.i.i.i.i.i.i

_RINvXs5_NtCskpEw9nXJLNc_10serde_core2deQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs9KQ7US1M400_11lance_table.exit.i.i.i41.i.i.i.i.i: ; preds = %bb.gq, %bb.ej, %bb.du, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %.split557.i.i.i.i.i.i.i.i, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %.split.i.i.i58.i.i.i.i.i, %bb.dc, %.split559.i.i.i.i.i.i.i.i, %bb.db, %.split556.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i
  %.sroa.19.sroa.8.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.433.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %i.tc, %bb.ej ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.du ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.do ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dn ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dl ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %.split557.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dk ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dd ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %.split.i.i.i58.i.i.i.i.i ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %.split559.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %.split556.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.8.0370.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.19.sroa.6.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %i.st, %bb.ej ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.du ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.do ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dn ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dl ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %.split557.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dk ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dd ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %.split.i.i.i58.i.i.i.i.i ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %.split559.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %.split556.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.6.0371.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.19.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.1037.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ej ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.du ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.do ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dn ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dl ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %.split557.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dk ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dd ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %.split.i.i.i58.i.i.i.i.i ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %.split559.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %.split556.i.i.i.i.i.i.i.i ], [ %.sroa.19.sroa.0.0372.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.1.i.i.i42.i.i.i.i.i = phi ptr [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %i.sk, %bb.ej ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.du ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.do ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dn ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dl ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %.split557.i.i.i.i.i.i.i.i ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dk ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dd ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %.split.i.i.i58.i.i.i.i.i ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %.split559.i.i.i.i.i.i.i.i ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %.split556.i.i.i.i.i.i.i.i ], [ %.sroa.13.0373.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.073.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0124.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %i.si, %bb.ej ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.du ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.ds ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.do ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dn ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dl ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %.split557.i.i.i.i.i.i.i.i ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dk ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.di ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dd ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %.split.i.i.i58.i.i.i.i.i ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.dc ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %.split559.i.i.i.i.i.i.i.i ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %.split556.i.i.i.i.i.i.i.i ], [ %.sroa.073.0374.i.i.i.i.i.i.i.i, %.split558.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aag = icmp eq ptr %i.ox, %i.ot
  br i1 %i.aag, label %.thread.i.i.i43.i.i.i.i.i, label %bb.da

.thread.thread.i.i.i45.i.i.i.i.i:                 ; preds = %.thread.i.i.i43.i.i.i.i.i, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29115
  store ptr @226, ptr %i.e, align 8, !noalias !29116
  %i.aah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 8, ptr %i.aah, align 8, !noalias !29116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29116
  store ptr %i.e, ptr %i.d, align 8, !noalias !29116
  %.sroa.42.0..sroa_idx.i.i.i.i.i46.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i46.i.i.i.i.i, align 8, !noalias !29116
  %i.aai = invoke fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2129, ptr noundef nonnull %i.d)
          to label %.noexc85.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !28962

.noexc85.i.i.i.i.i:                               ; preds = %.thread.thread.i.i.i45.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29115
  br label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.sink.split.i.i.i.i.i

bb.gx:                                            ; preds = %bb.dt
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.ru, ptr %i.aaj, align 8, !alias.scope !29113, !noalias !29114
  store i64 -2, ptr %i.bw, align 8, !alias.scope !29113, !noalias !29114
  %i.aak = icmp sgt i64 %.sroa.073.0374.i.i.i.i.i.i.i.i, 0
  br i1 %i.aak, label %_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.thread.i.i.i.i.i.i, label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i

_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.thread.i.i.i.i.i.i: ; preds = %bb.gx, %.thread124.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0373.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0373.i.i.i.i.i.i.i.i, i64 noundef %.sroa.073.0374.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !29117
  br label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.i.i.i.i.i

bb.gy:                                            ; preds = %.body.i.i.i49.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0373.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0373.i.i.i.i.i.i.i.i, i64 noundef %.sroa.073.0374.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !29118
  br label %.body.i.i.i.i.i

_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i43.i.i.i.i.i
  store i64 %.sroa.073.1.i.i.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !29113, !noalias !29114
  %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.13.1.i.i.i42.i.i.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !29113, !noalias !29114
  %.sroa.5.0..sroa_idx.i.i.i44.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.19.sroa.0.1.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i44.i.i.i.i.i, align 8, !alias.scope !29113, !noalias !29114
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %.sroa.19.sroa.6.1.i.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !29113, !noalias !29114
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 %.sroa.19.sroa.8.1.i.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !29113, !noalias !29114
  br label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.i.i.i.i.i

_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.i.i.i.i.i: ; preds = %_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.i.i.i.i.i.i, %_RINvXs3_NvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBh_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBb_6HelperB1t_11deserializeNtB6_s_9___VisitorNtB1v_7Visitor9visit_mapQINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content18MapRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEBl_.exit.i.thread.i.i.i.i.i.i, %bb.cp
  %.pr89.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noalias !28961 ; 2 uses
  %i.aal = icmp eq i64 %.pr89.i.i.i.i.i, -2
  br i1 %i.aal, label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i, label %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i

_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i: ; preds = %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.i.i.i.i.i
  %.sroa.9.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.9.0.copyload20.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx19.i.i.i.i, align 8, !noalias !29031
  %.sroa.13.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.13.sroa.0.0.copyload26.i.i.i.i = load ptr, ptr %.sroa.13.0..sroa_idx21.i.i.i.i, align 8, !noalias !29031
  %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx21.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.13.sroa.6.0.copyload27.i.i.i.i = load i64, ptr %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx21.sroa_idx.i.i.i.i, align 8, !noalias !29031
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx21.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.13.sroa.7.0.copyload28.i.i.i.i = load i64, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx21.sroa_idx.i.i.i.i, align 8, !noalias !29031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !28961
  br label %bb.hd

_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.sink.split.i.i.i.i.i: ; preds = %.noexc85.i.i.i.i.i, %bb.gv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gs, %bb.gr, %bb.gl, %.thread159.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eo, %bb.en, %bb.ei, %.loopexit136.i.i.i.i.i.i.i.i, %bb.ed, %bb.ea, %bb.dy, %.noexc81.i.i.i.i.i, %.noexc80.i.i.i.i.i, %.noexc79.i.i.i.i.i, %.noexc78.i.i.i.i.i, %.noexc77.i.i.i.i.i, %.noexc76.i.i.i.i.i, %.noexc75.i.i.i.i.i, %.noexc74.i.i.i.i.i, %.noexc73.i.i.i.i.i, %.noexc71.i.i.i.i.i, %.noexc70.i.i.i.i.i, %.noexc69.i.i.i.i.i, %.noexc68.i.i.i.i.i, %.noexc67.i.i.i.i.i, %.noexc66.i.i.i.i.i, %.noexc65.i.i.i.i.i, %.noexc64.i.i.i.i.i, %.noexc63.i.i.i.i.i, %.noexc62.i.i.i.i.i, %.noexc61.i.i.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.lw, %.noexc61.i.i.i.i.i ], [ %i.ma, %.noexc62.i.i.i.i.i ], [ %i.mf, %.noexc63.i.i.i.i.i ], [ %i.mk, %.noexc64.i.i.i.i.i ], [ %i.mn, %.noexc65.i.i.i.i.i ], [ %i.mr, %.noexc66.i.i.i.i.i ], [ %i.mw, %.noexc67.i.i.i.i.i ], [ %i.nb, %.noexc68.i.i.i.i.i ], [ %i.ne, %.noexc69.i.i.i.i.i ], [ %i.nj, %.noexc70.i.i.i.i.i ], [ %i.nm, %.noexc71.i.i.i.i.i ], [ %i.nu, %.noexc73.i.i.i.i.i ], [ %i.nz, %.noexc74.i.i.i.i.i ], [ %i.of, %.noexc75.i.i.i.i.i ], [ %i.ok, %.noexc76.i.i.i.i.i ], [ %i.ol, %.noexc77.i.i.i.i.i ], [ %i.om, %.noexc78.i.i.i.i.i ], [ %i.on, %.noexc79.i.i.i.i.i ], [ %i.oo, %.noexc80.i.i.i.i.i ], [ %i.op, %.noexc81.i.i.i.i.i ], [ %i.aai, %.noexc85.i.i.i.i.i ], [ %i.sk, %bb.ea ], [ %.sink.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gs ], [ %.sink.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gr ], [ %i.sb, %bb.dy ], [ %.sink391.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gv ], [ %.sink391.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zu, %bb.gl ], [ %i.th, %bb.eo ], [ %i.th, %bb.en ], [ %.sink79.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ei ], [ %.sink79.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit136.i.i.i.i.i.i.i.i ], [ %i.zd, %.thread159.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sr, %bb.ed ]
  %i.aam = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sink.i.i.i.i.i, ptr %i.aam, align 8, !alias.scope !29033, !noalias !29119
  store i64 -2, ptr %i.bw, align 8, !alias.scope !29033, !noalias !29119
  br label %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i

_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i: ; preds = %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.sink.split.i.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.i.i.i.i.i, %bb.gx, %.thread124.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB15_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize6HelperNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEEB19_(ptr noalias noundef align 8 dereferenceable(40) %i.bw)
          to label %bb.gz unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !28962

bb.gz:                                            ; preds = %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserializes_9___VisitorEB3j_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !28961
  %i.aan = invoke fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customReECs9KQ7US1M400_11lance_table()
          to label %bb.ha unwind label %.loopexit.split-lp.i.i.i.i.i

bb.ha:                                            ; preds = %bb.gz
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(32) %i.bz), !noalias !28962
  br label %bb.hk

bb.hb:                                            ; preds = %.body.i.i.i.i.i
  %i.aao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !28962
  unreachable

bb.hc:                                            ; preds = %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i: ; preds = %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.i._RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit_crit_edge.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.thread88.i.i.i.i.i
  %.sroa.13.sroa.6.0.copyload.i.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.thread88.i.i.i.i.i ], [ %.sroa.13.sroa.6.0.copyload.pre.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.i._RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit_crit_edge.i.i.i.i ]
  %.sroa.13.sroa.0.0.copyload.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.thread88.i.i.i.i.i ], [ %.sroa.13.sroa.0.0.copyload.pre.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.i._RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit_crit_edge.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %i.lr, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.thread88.i.i.i.i.i ], [ %.sroa.9.0.copyload.pre.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.i._RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit_crit_edge.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ -1, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.thread88.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %_RINvXsD_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB3f_21RowDatasetVersionMetaNtB22_11Deserialize11deserialize1__NtB39_6HelperB4s_11deserialize9___VisitorEB3j_.exit.i._RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit_crit_edge.i.i.i.i ]
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.13.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !29031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !28961
  br label %bb.hd

bb.hd:                                            ; preds = %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i
  %.sroa.0.045.i.i.i.i = phi i64 [ %.pr89.i.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i ] ; 2 uses
  %.sroa.9.044.i.i.i.i = phi ptr [ %.sroa.9.0.copyload20.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i ], [ %.sroa.9.0.copyload.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i ] ; 3 uses
  %.sroa.13.sroa.7.043.i.i.i.i = phi i64 [ %.sroa.13.sroa.7.0.copyload28.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i ], [ %.sroa.13.sroa.7.0.copyload.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i ]
  %.sroa.13.sroa.6.042.i.i.i.i = phi i64 [ %.sroa.13.sroa.6.0.copyload27.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i ], [ %.sroa.13.sroa.6.0.copyload.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i ] ; 6 uses
  %.sroa.13.sroa.0.041.i.i.i.i = phi ptr [ %.sroa.13.sroa.0.0.copyload26.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.thread35.i.i.i.i ], [ %.sroa.13.sroa.0.0.copyload.i.i.i.i, %_RINvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBb_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtB5_6HelperB1n_11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEEBf_.exit.i.i.i.i ] ; 4 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(32) %i.bz), !noalias !28962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !28961
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.045.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aap = ptrtoint ptr %.sroa.13.sroa.0.041.i.i.i.i to i64
  br label %bb.hl

bb.hf:                                            ; preds = %bb.hd
  %i.aaq = ptrtoint ptr %.sroa.9.044.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.sroa.0.041.i.i.i.i) ]
  %i.aar = icmp sgt i64 %.sroa.13.sroa.6.042.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aar)
  %i.aas = call { i64, i64 } @_RNvNtCs40k4W9msRzi_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 5) 1, i64 noundef %.sroa.13.sroa.6.042.i.i.i.i), !noalias !29120 ; 2 uses
  %i.aat = extractvalue { i64, i64 } %i.aas, 0    ; 3 uses
  %i.aau = extractvalue { i64, i64 } %i.aas, 1    ; 3 uses
  %i.aav = icmp eq i64 %i.aau, 0
  br i1 %i.aav, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.aaw = inttoptr i64 %i.aat to ptr
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcShE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

bb.hh:                                            ; preds = %bb.hf
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !29120
  %i.aax = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aau, i64 noundef range(i64 1, -9223372036854775807) %i.aat) #76, !noalias !29120
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcShE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcShE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.hh, %bb.hg
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aaw, %bb.hg ], [ %i.aax, %bb.hh ] ; 6 uses
  %i.aay = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aay, label %bb.hi, label %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, !prof !71

bb.hi:                                            ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcShE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.aat, i64 noundef %i.aau) #80, !noalias !29120
  unreachable

_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcShE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, align 8, !noalias !29120
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.aaz, align 8, !noalias !29120
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aba, ptr nonnull align 1 %.sroa.13.sroa.0.041.i.i.i.i, i64 %.sroa.13.sroa.6.042.i.i.i.i, i1 false), !noalias !29120
  %i.abb = icmp eq ptr %.sroa.9.044.i.i.i.i, null
  br i1 %i.abb, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.sroa.0.041.i.i.i.i, i64 noundef %i.aaq, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !29120
  br label %bb.hl

bb.hk:                                            ; preds = %bb.ha, %bb.d
  %.sroa.9.1.ph.i.i.i.i = phi ptr [ %i.aan, %bb.ha ], [ %i.cn, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !28961
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.1.ph.i.i.i.i, ptr %i.abc, align 8, !alias.scope !29121, !noalias !29122
  store i64 -3, ptr %0, align 8, !alias.scope !29121, !noalias !29122
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB36_4read7StrReadEEB1r_.exit

bb.hl:                                            ; preds = %bb.hj, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %bb.he
  %.sroa.14.0.ph.i.i.i = phi i64 [ undef, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ undef, %bb.hj ], [ %.sroa.13.sroa.7.043.i.i.i.i, %bb.he ]
  %.sroa.13.0.ph.i.i.i = phi i64 [ undef, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ undef, %bb.hj ], [ %.sroa.13.sroa.6.042.i.i.i.i, %bb.he ]
  %.sroa.11.0.ph.i.i.i = phi i64 [ %.sroa.13.sroa.6.042.i.i.i.i, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %.sroa.13.sroa.6.042.i.i.i.i, %bb.hj ], [ %i.aap, %bb.he ]
  %.sroa.7.0.ph.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.hj ], [ %.sroa.9.044.i.i.i.i, %bb.he ]
  store i64 %.sroa.0.045.i.i.i.i, ptr %0, align 8, !alias.scope !29121, !noalias !29122
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !29121, !noalias !29122
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.ph.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !29121, !noalias !29122
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8, !alias.scope !29121, !noalias !29122
  %.sroa.77.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.14.0.ph.i.i.i, ptr %.sroa.77.0..sroa_idx.i.i.i, align 8, !alias.scope !29121, !noalias !29122
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB36_4read7StrReadEEB1r_.exit

bb.hm:                                            ; preds = %bb.b
  %i.abd = add i64 %i.cg, 1                       ; 4 uses
  store i64 %i.abd, ptr %i.ca, align 8, !alias.scope !29123, !noalias !29124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29125)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.abd, i64 %i.cc) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29127)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.abd, %i.cc
  br i1 %exitcond.not.i9.not.i.i, label %bb.hn, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.abe = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !noalias !29128, !noundef !68
  %i.abg = add i64 %i.cg, 2                       ; 3 uses
  store i64 %i.abg, ptr %i.ca, align 8, !alias.scope !29129, !noalias !29130
  %.not.i.i.i = icmp eq i8 %i.abf, 117
  br i1 %.not.i.i.i, label %bb.ho, label %bb.hs, !prof !169

bb.ho:                                            ; preds = %bb.hn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29132)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.abg, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.abh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !noalias !29133, !noundef !68
  %i.abj = add i64 %i.cg, 3                       ; 3 uses
  store i64 %i.abj, ptr %i.ca, align 8, !alias.scope !29134, !noalias !29130
  %.not.i.1.i.i = icmp eq i8 %i.abi, 108
  br i1 %.not.i.1.i.i, label %bb.hq, label %bb.hs, !prof !169

bb.hq:                                            ; preds = %bb.hp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29136)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.abj, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !noalias !29137, !noundef !68
  %i.abm = add i64 %i.cg, 4
  store i64 %i.abm, ptr %i.ca, align 8, !alias.scope !29138, !noalias !29130
  %.not.i.2.i.i = icmp eq i8 %i.abl, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.hs, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.hq, %bb.ho, %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29139
  store i64 5, ptr %i.c, align 8, !noalias !29139
  %i.abn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !29140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29139
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hr, %bb.hp, %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29139
  store i64 9, ptr %i.b, align 8, !noalias !29139
  %i.abo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !29140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29139
  br label %bb.ht

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.hr
  store i64 -2, ptr %0, align 8, !alias.scope !29141, !noalias !29142
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB36_4read7StrReadEEB1r_.exit

bb.ht:                                            ; preds = %bb.hs, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.abn, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.abo, %bb.hs ]
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.abp, align 8, !alias.scope !29124, !noalias !29142
  store i64 -3, ptr %0, align 8, !alias.scope !29124, !noalias !29142
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB36_4read7StrReadEEB1r_.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7version21RowDatasetVersionMetaENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB36_4read7StrReadEEB1r_.exit: ; preds = %bb.hk, %bb.hl, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, %bb.ht
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionjEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29207)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !29208, !noalias !29209, !noundef !68 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !29210, !noalias !29211 ; 3 uses
  %i.n = icmp ult i64 %.promoted.i.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !29208, !noalias !29209, !nonnull !68, !noundef !68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.t, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29213)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !29214, !noundef !68
  switch i8 %i.s, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !29215, !noalias !29211
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.q, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29221)
  %i.u = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !29222, !noalias !29223, !nonnull !68, !noundef !68
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.x = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29225)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !29226, !noundef !68 ; 2 uses
  switch i8 %i.z, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.k, align 8, !alias.scope !29227, !noalias !29228
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29229
  store i64 5, ptr %i.j, align 8, !noalias !29229
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !29230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29229
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !29231, !noalias !29230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29229
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !29230
  %i.ad = load i64, ptr %i.i, align 8, !range !115, !noalias !29229, !noundef !68 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !165

bb.g:                                             ; preds = %bb.d
  %i.ag = add i8 %i.z, -48
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond.i.i.i.i.i.i, label %bb.o, label %bb.n, !prof !125

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !29229, !nonnull !68, !align !73, !noundef !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29229
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !29229 ; 4 uses
  switch i64 %i.ad, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.r, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.ai, align 8, !noalias !29232
  store i8 3, ptr %i.g, align 8, !noalias !29232
  %i.aj = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71), !noalias !29233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29232
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp sgt i64 %.sroa.2.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.ak, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.l, !prof !80

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29232
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !29232
  store i8 2, ptr %i.f, align 8, !noalias !29232
  %i.am = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71), !noalias !29233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29232
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i

_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i: ; preds = %bb.l, %bb.j
  %.pn2.i.ph.i.i.i.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29229
  br label %bb.p

_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29229
  br label %bb.w

.thread.i.i.i.i.i.i:                              ; preds = %bb.u, %bb.s
  %.pn2.i9.ph.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.u ], [ %i.au, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29229
  br label %bb.p

bb.m:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29229
  br label %bb.w

bb.n:                                             ; preds = %bb.g
  %i.an = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71), !noalias !29230
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29229
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !29230
  %i.ao = load i64, ptr %i.h, align 8, !range !115, !noalias !29229, !noundef !68 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !165

bb.p:                                             ; preds = %bb.n, %.thread.i.i.i.i.i.i, %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i
  %.sroa.74.1.i.i.i.i.i.i = phi ptr [ %.pn2.i9.ph.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.an, %bb.n ], [ %.pn2.i.ph.i.i.i.i.i.i, %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i ]
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %.sroa.74.1.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !29230
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !29229, !nonnull !68, !align !73, !noundef !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29229
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %.sroa.217.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !29229 ; 4 uses
  switch i64 %i.ao, label %default.unreachable [
    i64 0, label %bb.s
    i64 1, label %bb.m
    i64 2, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29234
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.217.0.copyload.i.i.i.i.i.i, ptr %i.at, align 8, !noalias !29234
  store i8 3, ptr %i.e, align 8, !noalias !29234
  %i.au = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71), !noalias !29235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29234
  br label %.thread.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.av = icmp sgt i64 %.sroa.217.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.av, label %bb.m, label %bb.u, !prof !80

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29234
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.217.0.copyload.i.i.i.i.i.i, ptr %i.aw, align 8, !noalias !29234
  store i8 2, ptr %i.d, align 8, !noalias !29234
  %i.ax = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71), !noalias !29235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29234
  br label %.thread.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.h, %.loopexit.i.i.i.i.i.i
  %.sroa.7.3.in.i.i.i.ph.i.i.i = phi ptr [ %i.ar, %bb.p ], [ %i.ah, %bb.h ], [ %i.as, %bb.q ], [ %i.ab, %.loopexit.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.3.in.i.i.i.ph.i.i.i, ptr %i.ay, align 8, !alias.scope !29230, !noalias !29236
  store i64 -1, ptr %0, align 8, !alias.scope !29230, !noalias !29236
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.w:                                             ; preds = %bb.m, %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.sroa.7.3.in.i.i.i.in.i.i.i = phi i64 [ %.sroa.217.0.copyload.i.i.i.i.i.i, %bb.m ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  store i64 1, ptr %0, align 8, !alias.scope !29230, !noalias !29236
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.3.in.i.i.i.in.i.i.i, ptr %i.az, align 8, !alias.scope !29230, !noalias !29236
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.x:                                             ; preds = %bb.b
  %i.ba = add i64 %i.q, 1                         ; 4 uses
  store i64 %i.ba, ptr %i.k, align 8, !alias.scope !29237, !noalias !29238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29239)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.m) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29241)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ba, %i.m
  br i1 %exitcond.not.i9.not.i.i, label %bb.y, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !29242, !noundef !68
  %i.bd = add i64 %i.q, 2                         ; 3 uses
  store i64 %i.bd, ptr %i.k, align 8, !alias.scope !29243, !noalias !29244
  %.not.i.i.i = icmp eq i8 %i.bc, 117
  br i1 %.not.i.i.i, label %bb.z, label %bb.ad, !prof !169

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29246)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.bd, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !29247, !noundef !68
  %i.bg = add i64 %i.q, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.k, align 8, !alias.scope !29248, !noalias !29244
  %.not.i.1.i.i = icmp eq i8 %i.bf, 108
  br i1 %.not.i.1.i.i, label %bb.ab, label %bb.ad, !prof !169

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29250)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.bg, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !29251, !noundef !68
  %i.bj = add i64 %i.q, 4
  store i64 %i.bj, ptr %i.k, align 8, !alias.scope !29252, !noalias !29244
  %.not.i.2.i.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.ad, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.ab, %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29253
  store i64 5, ptr %i.c, align 8, !noalias !29253
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !29254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29253
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29253
  store i64 9, ptr %i.b, align 8, !noalias !29253
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !29254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29253
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.ac
  store i64 0, ptr %0, align 8, !alias.scope !29255, !noalias !29256
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.ae:                                            ; preds = %bb.ad, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.bk, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.bl, %bb.ad ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.bm, align 8, !alias.scope !29238, !noalias !29256
  store i64 -1, ptr %0, align 8, !alias.scope !29238, !noalias !29256
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.v, %bb.w, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, %bb.ae
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionmEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29298)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !29299, !noalias !29300, !noundef !68 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !29301, !noalias !29302 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29299, !noalias !29300, !nonnull !68, !noundef !68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29304)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !29305, !noundef !68
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !29306, !noalias !29302
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29308
  call fastcc void @_RINvXs16_NtNtCskpEw9nXJLNc_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !29309
  %i.n = load i32, ptr %i.c, align 8, !range !105, !noalias !29308, !noundef !68
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !29308, !nonnull !68, !align !73, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !29309, !noalias !29310
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECs9KQ7US1M400_11lance_table.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noalias !29308, !noundef !68
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.u, align 4, !alias.scope !29309, !noalias !29310
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.t, ptr %i.v, align 8, !alias.scope !29309, !noalias !29310
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECs9KQ7US1M400_11lance_table.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  store i32 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !29309, !noalias !29310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29308
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.f:                                             ; preds = %bb.b
  %i.w = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !29311, !noalias !29312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29313)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29315)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.w, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !29316, !noundef !68
  %i.z = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !29317, !noalias !29318
  %.not.i.i.i = icmp eq i8 %i.y, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !169

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29320)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.z, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !29321, !noundef !68
  %i.ac = add i64 %i.j, 3                         ; 3 uses
  store i64 %i.ac, ptr %i.d, align 8, !alias.scope !29322, !noalias !29318
  %.not.i.1.i.i = icmp eq i8 %i.ab, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !169

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29324)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ac, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !29325, !noundef !68
  %i.af = add i64 %i.j, 4
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !29326, !noalias !29318
  %.not.i.2.i.i = icmp eq i8 %i.ae, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.l, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29327
  store i64 5, ptr %i.b, align 8, !noalias !29327
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !29328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29327
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29327
  store i64 9, ptr %i.a, align 8, !noalias !29327
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !29328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29327
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ai, align 4, !alias.scope !29329, !noalias !29330
  store i32 0, ptr %0, align 8, !alias.scope !29329, !noalias !29330
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ag, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ah, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.aj, align 8, !alias.scope !29312, !noalias !29330
  store i32 1, ptr %0, align 8, !alias.scope !29312, !noalias !29330
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECs9KQ7US1M400_11lance_table.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECs9KQ7US1M400_11lance_table.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3A_4read7StrReadEEB1W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.082.i.sroa.5.i.i.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [80 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [80 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 23 uses
  %i.aa = alloca [80 x i8], align 8               ; 26 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [80 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.026.i.sroa.5.i.i.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.ai = alloca [80 x i8], align 8               ; 8 uses
  %i.aj = alloca [16 x i8], align 8               ; 10 uses
  %i.ak = alloca [112 x i8], align 8              ; 8 uses
  %i.al = alloca [120 x i8], align 8              ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [112 x i8], align 8              ; 8 uses
  %i.ao = alloca [120 x i8], align 8              ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [112 x i8], align 8              ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29613)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !29614, !noalias !29615, !noundef !68 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !29616, !noalias !29617 ; 2 uses
  %i.bb = icmp ult i64 %.promoted.i.i.i, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !29614, !noalias !29615, !nonnull !68, !noundef !68
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.be = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bh, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29619)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !29620, !noundef !68
  switch i8 %i.bg, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !167

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bh = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !29621, !noalias !29617
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.ba
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !29622
  store i64 5, ptr %i.ax, align 8, !noalias !29622
  %i.bi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax), !noalias !29623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !29622
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !29623, !noalias !29624
  store i64 -1, ptr %0, align 8, !alias.scope !29623, !noalias !29624
  br label %_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2V_4read7StrReadEEB1m_.exit

bb.d:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bl = load i8, ptr %i.bk, align 8, !alias.scope !29624, !noalias !29623, !noundef !68
  %i.bm = add i8 %i.bl, -1                        ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 8, !alias.scope !29624, !noalias !29623
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.g, !prof !71

bb.e:                                             ; preds = %bb.b
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @229), !noalias !29623
  br label %.thread46.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !29622
  store i64 24, ptr %i.aw, align 8, !noalias !29622
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw), !noalias !29623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !29622
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !29623, !noalias !29624
  store i64 -1, ptr %0, align 8, !alias.scope !29623, !noalias !29624
  br label %_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2V_4read7StrReadEEB1m_.exit

bb.g:                                             ; preds = %bb.d
  %i.br = add i64 %i.be, 1
end_hunk_2
begin_hunk_3_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtCs40k4W9msRzi_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content22ContentRefDeserializerNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEECs9KQ7US1M400_11lance_table:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtCs40k4W9msRzi_5alloc6string6StringENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2B_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30164)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !30165, !noalias !30166, !noundef !68 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !30167, !noalias !30168 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !30165, !noalias !30166, !nonnull !68, !noundef !68
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30170)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !30171, !noundef !68
  switch i8 %i.l, label %bb.o [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.d
  ], !prof !167

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !30172, !noalias !30168
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30173
  store i64 5, ptr %i.c, align 8, !noalias !30173
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !30174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30173
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !30174, !noalias !30175
  store i64 -1, ptr %0, align 8, !alias.scope !30174, !noalias !30175
  br label %_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !30176, !noalias !30174
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.q, align 8, !alias.scope !30175, !noalias !30174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30173
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !30174
  %i.r = load i64, ptr %i.b, align 8, !range !97, !noalias !30173, !noundef !68 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !30173 ; 3 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !30174, !noalias !30175
  store i64 -1, ptr %0, align 8, !alias.scope !30174, !noalias !30175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30173
  br label %_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !30173 ; 10 uses
  %i.w = trunc nuw i64 %i.r to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.not.i.i.i.i.i = icmp slt i64 %.sroa.4.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.x, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !30177
  %i.y = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !30177 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %.sink.split.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.g ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i) #80, !noalias !30178
  unreachable

bb.k:                                             ; preds = %bb.f
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.aa, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !30179
  %i.ab = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !30179 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.n, label %.sink.split.i.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.k ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i) #80, !noalias !30180
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227), !noalias !30174
  %i.ae = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !30174
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !30174, !noalias !30175
  store i64 -1, ptr %0, align 8, !alias.scope !30174, !noalias !30175
  br label %_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

.sink.split.i.i.i:                                ; preds = %bb.m, %bb.i
  %.sink.i.i.i = phi ptr [ %i.y, %bb.i ], [ %i.ab, %bb.m ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i.i.i, ptr nonnull readonly align 1 %i.u, i64 %.sroa.4.0.copyload.i.i.i, i1 false), !noalias !30174
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.i.i, %bb.l, %bb.h
  %.sroa.8.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %.sink.i.i.i, %.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30173
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !30174, !noalias !30175
  %.sroa.4.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.4.0..sroa_idx13.i.i.i, align 8, !alias.scope !30174, !noalias !30175
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !30174, !noalias !30175
  br label %_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit: ; preds = %.loopexit.i.i.i, %bb.e, %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtCsjjbR6Jfsbqw_8lance_io5utils14CachedFileSizeENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2M_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30218)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !30219, !noalias !30220, !noundef !68 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !30221, !noalias !30222 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i.i.i, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !30219, !noalias !30220, !nonnull !68, !noundef !68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30224)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !30225, !noundef !68
  switch i8 %i.k, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !30226, !noalias !30222
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = tail call fastcc { i64, ptr } @_RINvXs19_NtNtCskpEw9nXJLNc_10serde_core2de5implsyNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !30227 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.sink2.i.i.i = ptrtoint ptr %i.p to i64
  br i1 %i.o, label %select.unfold.i, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitoryEECs9KQ7US1M400_11lance_table.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !30228, !noalias !30229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30230)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.e) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30232)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.q, %i.e
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !30233, !noundef !68
  %i.t = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !30234, !noalias !30235
  %.not.i.i.i = icmp eq i8 %i.s, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !169

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30237)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !30238, !noundef !68
  %i.w = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !30239, !noalias !30235
  %.not.i.1.i.i = icmp eq i8 %i.v, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !169

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30241)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.w, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !30242, !noundef !68
  %i.z = add i64 %i.i, 4
  store i64 %i.z, ptr %i.c, align 8, !alias.scope !30243, !noalias !30235
  %.not.i.2.i.i = icmp eq i8 %i.y, 108
  br i1 %.not.i.2.i.i, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitoryEECs9KQ7US1M400_11lance_table.exit.i, label %bb.j, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30244
  store i64 5, ptr %i.b, align 8, !noalias !30244
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !30245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30244
  br label %select.unfold.i

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30244
  store i64 9, ptr %i.a, align 8, !noalias !30244
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !30245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30244
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.j, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %.sroa.5.0.ph.i = phi ptr [ %i.p, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ %i.aa, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ab, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph.i, ptr %i.ac, align 8, !alias.scope !30215, !noalias !30216
  br label %_RINvXNtCsjjbR6Jfsbqw_8lance_io5utilsNtB3_14CachedFileSizeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitoryEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %.sink.i.i = phi i64 [ %.sink2.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ 0, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i, ptr %i.ad, align 8, !alias.scope !30215, !noalias !30216
  br label %_RINvXNtCsjjbR6Jfsbqw_8lance_io5utilsNtB3_14CachedFileSizeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit

_RINvXNtCsjjbR6Jfsbqw_8lance_io5utilsNtB3_14CachedFileSizeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECs9KQ7US1M400_11lance_table.exit: ; preds = %select.unfold.i, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitoryEECs9KQ7US1M400_11lance_table.exit.i
  %storemerge.i = phi i64 [ 0, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitoryEECs9KQ7US1M400_11lance_table.exit.i ], [ 1, %select.unfold.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !30215, !noalias !30216
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15OverlayCoverageENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB32_4read7StrReadEEB1p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [56 x i8], align 8                ; 4 uses
  %i.z = alloca [56 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30432)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !30433, !noalias !30434, !noundef !68 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !30435, !noalias !30436 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i.i.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i.i, label %.loopexit8.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !30433, !noalias !30434, !nonnull !68, !noundef !68 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ah = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30438)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !30439, !noundef !68
  switch i8 %i.aj, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i
  ], !prof !166

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !30440, !noalias !30436
  %exitcond.not.i.i.i = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i.i.i, label %.loopexit8.i.i, label %bb.b

.loopexit8.i.i:                                   ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30441
  store i64 5, ptr %i.t, align 8, !noalias !30441
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !30442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30441
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format7overlays1_1__NtB2r_20OverlayCoverageBytesNtB1j_11Deserialize11deserialize9___VisitorEB2v_.exit.thread.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !30441
  store i64 10, ptr %i.u, align 8, !noalias !30441
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !30442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30441
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format7overlays1_1__NtB2r_20OverlayCoverageBytesNtB1j_11Deserialize11deserialize9___VisitorEB2v_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.ao = load i8, ptr %i.an, align 8, !alias.scope !30443, !noalias !30442, !noundef !68
  %i.ap = add i8 %i.ao, -1                        ; 2 uses
  store i8 %i.ap, ptr %i.an, align 8, !alias.scope !30443, !noalias !30442
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.bs, label %bb.u, !prof !71

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30451)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i
  %i.ar = phi i64 [ %i.au, %bb.f ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !30452, !noundef !68
  switch i8 %i.at, label %bb.h [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 34, label %bb.g
  ], !prof !167

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.au = add i64 %i.ar, 1                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !30453, !noalias !30454
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30455
  store i64 5, ptr %i.s, align 8, !noalias !30455
  %i.av = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !30456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30455
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtNtCs9KQ7US1M400_11lance_table6format8fragment16DeletionFileTypeENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB34_4read7StrReadEEB1p_:bb.a

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30736
  store i64 17, ptr %i.i, align 8, !noalias !30736
  %i.cv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !30737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30736
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30741)
  %i.cw = add i64 %i.cq, 1
  store i64 %i.cw, ptr %i.r, align 8, !alias.scope !30742, !noalias !30743
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cx, align 8, !alias.scope !30744, !noalias !30743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30745
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !30743
  %i.cy = load i64, ptr %i.g, align 8, !range !97, !noalias !30745, !noundef !68 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, -1
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !30745 ; 11 uses
  br i1 %i.cz, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i9.i.i, align 8, !noalias !30745 ; 3 uses
  %i.dc = trunc nuw i64 %i.cy to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  br i1 %i.dc, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i, label %.sink.split.i.i.i.i.i [
    i64 5, label %bb.ab
    i64 6, label %bb.ac
  ], !prof !168

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i32, ptr %i.db, align 1
  %i.de = xor i32 %i.dd, 1634890337
  %i.df = getelementptr i8, ptr %i.db, i64 4
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32
  %i.di = xor i32 %i.dh, 121
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ai, label %.sink.split.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = load i32, ptr %i.db, align 1
  %i.do = xor i32 %i.dn, 1836345698
  %i.dp = getelementptr i8, ptr %i.db, i64 4
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i32
  %i.ds = xor i32 %i.dr, 28769
  %i.dt = or i32 %i.do, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ai, label %.sink.split.i.i.i.i.i, !prof !80

bb.ad:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i, label %.sink.split.i.i.i.i.i [
    i64 5, label %bb.ae
    i64 6, label %bb.af
  ], !prof !168

bb.ae:                                            ; preds = %bb.ad
  %i.dx = load i32, ptr %i.db, align 1
  %i.dy = xor i32 %i.dx, 1634890337
  %i.dz = getelementptr i8, ptr %i.db, i64 4
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = xor i32 %i.eb, 121
  %i.ed = or i32 %i.dy, %i.ec
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ai, label %.sink.split.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eh = load i32, ptr %i.db, align 1
  %i.ei = xor i32 %i.eh, 1836345698
  %i.ej = getelementptr i8, ptr %i.db, i64 4
  %i.ek = load i16, ptr %i.ej, align 1
  %i.el = zext i16 %i.ek to i32
  %i.em = xor i32 %i.el, 28769
  %i.en = or i32 %i.ei, %i.em
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ai, label %.sink.split.i.i.i.i.i, !prof !80

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30736
  store i64 10, ptr %i.j, align 8, !noalias !30736
  %i.er = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !30737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30736
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.es = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error15unknown_variantCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @201)
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.y
  %.sroa.1010.0.i.i.i.i.i = phi ptr [ %i.db, %bb.y ], [ %i.es, %.sink.split.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30745
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1010.0.i.i.i.i.i) ]
  %i.et = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %.sroa.1010.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !30737
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %not.cond.i.i.i = phi i8 [ 1, %bb.af ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30745
  call void @llvm.experimental.noalias.scope.decl(metadata !30746)
  call void @llvm.experimental.noalias.scope.decl(metadata !30747)
  %i.eu = load i64, ptr %i.s, align 8, !alias.scope !30748, !noalias !30749, !noundef !68 ; 8 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !30750, !noalias !30751 ; 2 uses
  %i.ev = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ai
  %i.ew = load ptr, ptr %i.v, align 8, !alias.scope !30748, !noalias !30749, !nonnull !68, !noundef !68 ; 6 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i
  %i.ex = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fa, %bb.ak ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30752)
  call void @llvm.experimental.noalias.scope.decl(metadata !30753)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !30754, !noundef !68
  switch i8 %i.ez, label %bb.al [
    i8 32, label %bb.ak
    i8 10, label %bb.ak
    i8 9, label %bb.ak
    i8 13, label %bb.ak
    i8 58, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.i.i.i
  ], !prof !167

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.fa = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.r, align 8, !alias.scope !30755, !noalias !30751
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.fa, %i.eu
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i, label %bb.aj

.loopexit.i7.i.i.i.i.i:                           ; preds = %bb.ak, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30756
  store i64 3, ptr %i.e, align 8, !noalias !30756
  %i.fb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !30737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30756
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30756
  store i64 6, ptr %i.f, align 8, !noalias !30756
  %i.fc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !30737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30756
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.i.i.i: ; preds = %bb.aj
  %i.fd = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.fd, ptr %i.r, align 8, !alias.scope !30757, !noalias !30737
  call void @llvm.experimental.noalias.scope.decl(metadata !30758)
  call void @llvm.experimental.noalias.scope.decl(metadata !30759), !noalias !30728
  call void @llvm.experimental.noalias.scope.decl(metadata !30760), !noalias !30728
  %i.fe = icmp ult i64 %i.fd, %i.eu
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.i.i.i, %bb.am
  %i.ff = phi i64 [ %i.fi, %bb.am ], [ %i.fd, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.i.i.i ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !30761, !noundef !68
  switch i8 %i.fh, label %bb.au [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 110, label %bb.an
  ], !prof !167

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.r, align 8, !alias.scope !30762, !noalias !30763
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fi, %i.eu
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.am, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30764
  store i64 5, ptr %i.d, align 8, !noalias !30764
  %i.fj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !30765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30764
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fk = add i64 %i.ff, 1                        ; 4 uses
  store i64 %i.fk, ptr %i.r, align 8, !alias.scope !30766, !noalias !30765
  call void @llvm.experimental.noalias.scope.decl(metadata !30767), !noalias !30728
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.eu) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30768), !noalias !30728
  call void @llvm.experimental.noalias.scope.decl(metadata !30769), !noalias !30728
  %exitcond.not.i10.not.i.i.i.i = icmp ult i64 %i.fk, %i.eu
  br i1 %exitcond.not.i10.not.i.i.i.i, label %bb.ao, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !30770, !noundef !68
  %i.fn = add i64 %i.ff, 2                        ; 3 uses
  store i64 %i.fn, ptr %i.r, align 8, !alias.scope !30771, !noalias !30772
  %.not.i.i.i.i.i = icmp eq i8 %i.fm, 117
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.at, !prof !169

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !30773), !noalias !30728
  call void @llvm.experimental.noalias.scope.decl(metadata !30774), !noalias !30728
  %exitcond.not.i10.1.i.i.i.i = icmp eq i64 %i.fn, %umax.i.i.i.i.i
  br i1 %exitcond.not.i10.1.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !30775, !noundef !68
  %i.fq = add i64 %i.ff, 3                        ; 3 uses
  store i64 %i.fq, ptr %i.r, align 8, !alias.scope !30776, !noalias !30772
  %.not.i.1.i.i.i.i = icmp eq i8 %i.fp, 108
  br i1 %.not.i.1.i.i.i.i, label %bb.ar, label %bb.at, !prof !169

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !30777), !noalias !30728
  call void @llvm.experimental.noalias.scope.decl(metadata !30778), !noalias !30728
  %exitcond.not.i10.2.i.i.i.i = icmp eq i64 %i.fq, %umax.i.i.i.i.i
  br i1 %exitcond.not.i10.2.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !30779, !noundef !68
  %i.ft = add i64 %i.ff, 4                        ; 3 uses
  store i64 %i.ft, ptr %i.r, align 8, !alias.scope !30780, !noalias !30772
  %.not.i.2.i.i.i.i = icmp eq i8 %i.fs, 108
  br i1 %.not.i.2.i.i.i.i, label %_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.at, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.ap, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30781
  store i64 5, ptr %i.c, align 8, !noalias !30781
  %i.fu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !30782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30781
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30781
  store i64 9, ptr %i.b, align 8, !noalias !30781
  %i.fv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !30782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30781
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @236), !noalias !30765
  %i.fx = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !30765
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i

bb.av:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30706
  store i64 24, ptr %i.q, align 8, !noalias !30706
  %i.fy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !30707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30706
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fy, ptr %i.fz, align 8, !alias.scope !30707, !noalias !30708
  store i8 1, ptr %0, align 8, !alias.scope !30707, !noalias !30708
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit

_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %not.cond.i.i.i, ptr %i.ga, align 1, !alias.scope !30765, !noalias !30783
  store i8 0, ptr %0, align 8, !alias.scope !30765, !noalias !30783
  %i.gb = load i8, ptr %i.ae, align 8, !alias.scope !30708, !noalias !30707, !noundef !68
  %i.gc = add i8 %i.gb, 1
  store i8 %i.gc, ptr %i.ae, align 8, !alias.scope !30708, !noalias !30707
  call void @llvm.experimental.noalias.scope.decl(metadata !30784)
  %i.gd = icmp ult i64 %i.ft, %i.eu
  br i1 %i.gd, label %.lr.ph.i17.i.i, label %.loopexit.i.i

.lr.ph.i17.i.i:                                   ; preds = %_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCs9KQ7US1M400_11lance_table.exit.i.i, %bb.aw
  %i.ge = phi i64 [ %i.gh, %bb.aw ], [ %i.ft, %_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCs9KQ7US1M400_11lance_table.exit.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !30785, !noundef !68
  switch i8 %i.gg, label %bb.ay [
    i8 32, label %bb.aw
    i8 10, label %bb.aw
    i8 9, label %bb.aw
    i8 13, label %bb.aw
    i8 125, label %bb.ax
  ], !prof !167

bb.aw:                                            ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i, %.lr.ph.i17.i.i, %.lr.ph.i17.i.i
  %i.gh = add i64 %i.ge, 1                        ; 3 uses
  store i64 %i.gh, ptr %i.r, align 8, !alias.scope !30786, !noalias !30787
  %exitcond.not.i18.i.i = icmp eq i64 %i.gh, %i.eu
  br i1 %exitcond.not.i18.i.i, label %.loopexit.i.i, label %.lr.ph.i17.i.i

.loopexit.i.i:                                    ; preds = %bb.aw, %_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCs9KQ7US1M400_11lance_table.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30706
  store i64 3, ptr %i.o, align 8, !noalias !30706
  %i.gi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !30707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30706
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !alias.scope !30707, !noalias !30708
  store i8 1, ptr %0, align 8, !alias.scope !30707, !noalias !30708
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit

bb.ax:                                            ; preds = %.lr.ph.i17.i.i
  %i.gk = add i64 %i.ge, 1
  store i64 %i.gk, ptr %i.r, align 8, !alias.scope !30788, !noalias !30707
  store i8 0, ptr %0, align 8, !alias.scope !30707, !noalias !30708
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit

bb.ay:                                            ; preds = %.lr.ph.i17.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30706
  store i64 10, ptr %i.p, align 8, !noalias !30706
  %i.gl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !30707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30706
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gl, ptr %i.gm, align 8, !alias.scope !30707, !noalias !30708
  store i8 1, ptr %0, align 8, !alias.scope !30707, !noalias !30708
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i: ; preds = %bb.au, %bb.at, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i, %.loopexit.i.i.i.i, %bb.al, %.loopexit.i7.i.i.i.i.i, %bb.ah, %bb.ag, %bb.x, %.loopexit.i.i.i.i.i
  %.sroa.107.012.i.sink.i.i = phi ptr [ %i.cu, %.loopexit.i.i.i.i.i ], [ %i.cv, %bb.x ], [ %i.fc, %bb.al ], [ %i.fb, %.loopexit.i7.i.i.i.i.i ], [ %i.er, %bb.ag ], [ %i.et, %bb.ah ], [ %i.fu, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i ], [ %i.fx, %bb.au ], [ %i.fv, %bb.at ], [ %i.fj, %.loopexit.i.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.012.i.sink.i.i, ptr %i.gn, align 8, !alias.scope !30765, !noalias !30783
  store i8 1, ptr %0, align 8, !alias.scope !30765, !noalias !30783
  %i.go = load i8, ptr %i.ae, align 8, !alias.scope !30708, !noalias !30707, !noundef !68
  %i.gp = add i8 %i.go, 1
  store i8 %i.gp, ptr %i.ae, align 8, !alias.scope !30708, !noalias !30707
  br label %_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit

_RINvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB5_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2l_4read7StrReadEEB9_.exit: ; preds = %bb.d, %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtBb_16DeletionFileTypeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1q_7Visitor10visit_enumINtNtCs5QD3CVEMyfH_10serde_json2de17UnitVariantAccessNtNtB36_4read7StrReadEEBf_.exit.i.i, %bb.av, %.loopexit.i.i, %bb.ax, %bb.ay, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9KQ7US1M400_11lance_table6format8fragments_1__NtB29_16DeletionFileTypeNtB1d_11Deserialize11deserialize7___FieldEB2d_.exit.thread.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2V_4read7StrReadEEB1p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 14 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 17 uses
  %i.bf = alloca [96 x i8], align 8               ; 17 uses
end_hunk_4
begin_hunk_5_@_RINvXsf_NtCsjMQ83FLvXnF_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCs8a8leFYyzqu_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECs9KQ7US1M400_11lance_table:bb.a
          to label %bb.ag unwind label %bb.af

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 56, i64 noundef 8) #76, !noalias !32830
  store ptr null, ptr %i.e, align 8, !alias.scope !32830
  %i.be = atomicrmw or ptr %i.p, i64 1 acquire, align 8
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ad, label %.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load ptr, ptr %i.d, align 8, !align !73, !noundef !68 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %i.bi = load i8, ptr %i.f, align 8, !range !77, !noundef !68
  %i.bj = trunc nuw i8 %i.bi to i1
  %.not.i54 = icmp ne ptr %i.bh, null             ; 2 uses
  %or.cond.not.i55 = and i1 %.not.i54, %i.bj
  br i1 %or.cond.not.i55, label %_RINvXs2_Cs8a8leFYyzqu_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.thread.sink.split, label %_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit56

_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit56: ; preds = %bb.ad
  br i1 %.not.i54, label %_RINvXs2_Cs8a8leFYyzqu_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.thread, label %bb.ae, !prof !174

bb.ae:                                            ; preds = %_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit56
  call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #80
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ag:                                            ; preds = %bb.ab
  store ptr %i.bd, ptr %i.e, align 8
  %i.bl = cmpxchg ptr %i.p, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bn = load ptr, ptr %i.d, align 8, !align !73, !noundef !68 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %i.bo = load i8, ptr %i.f, align 8, !range !77, !noundef !68
  %i.bp = trunc nuw i8 %i.bo to i1
  %.not.i61 = icmp ne ptr %i.bn, null             ; 2 uses
  %or.cond.not.i62 = and i1 %.not.i61, %i.bp
  br i1 %or.cond.not.i62, label %_RINvXs2_Cs8a8leFYyzqu_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.thread.sink.split, label %_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit63

_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit63: ; preds = %bb.ah
  br i1 %.not.i61, label %_RINvXs2_Cs8a8leFYyzqu_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs9KQ7US1M400_11lance_table.exit.thread, label %bb.aj, !prof !174

bb.ai:                                            ; preds = %bb.ag
  %.sroa.01.0.i60 = extractvalue { i64, i1 } %i.bl, 0
  %i.bq = and i64 %.sroa.01.0.i60, 1
  %.not36 = icmp eq i64 %i.bq, 0
  br i1 %.not36, label %bb.ak, label %.backedge

bb.aj:                                            ; preds = %_RNvMse_NtCsjMQ83FLvXnF_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCs9KQ7US1M400_11lance_table.exit63
  call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #80
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call fastcc void @_RINvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB6_5Event6notifylECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.u)
  br label %.backedge

.backedge:                                        ; preds = %bb.ak, %bb.ai, %bb.ac
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs9KQ7US1M400_11lance_table(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32973)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !32974, !noalias !32975, !noundef !68 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !32976, !noalias !32977 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32974, !noalias !32975, !nonnull !68, !noundef !68 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32979)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !32980, !noundef !68
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !167

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !32981, !noalias !32977
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32972
  store i64 3, ptr %i.o, align 8, !noalias !32972
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32972
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !32972
  store i64 6, ptr %i.p, align 8, !noalias !32972
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32972
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !32982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32986)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !32987
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eq, %bb.bg ] ; 11 uses
  %.promoted.i171.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.bg ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bg ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32988)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i171.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !32989, !noundef !68 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !32990, !noalias !32991
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32987
  store i64 5, ptr %i.n, align 8, !noalias !32987
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32987
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !125

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !32992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32993)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32995)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !32996, !noundef !68
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !32997, !noalias !32998
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit233.i.i.i.i.i, !prof !169

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33000)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !33001, !noundef !68
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !33002, !noalias !32998
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit233.i.i.i.i.i, !prof !169

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33004)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !33005, !noundef !68
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !33006, !noalias !32998
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %.loopexit233.i.i.i.i.i, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33007
  store i64 5, ptr %i.f, align 8, !noalias !33007
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !33008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33007
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

.loopexit233.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33007
  store i64 9, ptr %i.e, align 8, !noalias !33007
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !33008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33007
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !33009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33010)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33012)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !33013, !noundef !68
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !33014, !noalias !33015
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit226.i.i.i.i.i, !prof !169

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33017)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !33018, !noundef !68
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !33019, !noalias !33015
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit226.i.i.i.i.i, !prof !169

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33021)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !33022, !noundef !68
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !33023, !noalias !33015
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %.loopexit226.i.i.i.i.i, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33024
  store i64 5, ptr %i.d, align 8, !noalias !33024
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !33025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !33024
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

.loopexit226.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33024
  store i64 9, ptr %i.c, align 8, !noalias !33024
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !33025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33024
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !33026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33027)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33029)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !33030, !noundef !68
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !33031, !noalias !33032
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit219.i.i.i.i.i, !prof !169

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33034)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !33035, !noundef !68
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !33036, !noalias !33032
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit219.i.i.i.i.i, !prof !169

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33038)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !33039, !noundef !68
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !33040, !noalias !33032
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit219.i.i.i.i.i, !prof !169

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33042)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !33043, !noundef !68
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !33044, !noalias !33032
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %.loopexit219.i.i.i.i.i, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33045
  store i64 5, ptr %i.b, align 8, !noalias !33045
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !33046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33045
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

.loopexit219.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33045
  store i64 9, ptr %i.a, align 8, !noalias !33045
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !33046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33045
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !33047
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !33048
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33049)
  %i.cf = zext i1 %.sroa.039.0169.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !33050, !noundef !68 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !72, !alias.scope !33050, !noundef !68
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, !prof !71

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !33051
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !33051, !nonnull !68, !noundef !68
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.7.0170.i.i.i.i.i, ptr %i.cm, align 1, !noalias !33052
  %i.cn = add i64 %i.ck, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !33051, !noalias !33053
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !33054, !noundef !68
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !33054
  br label %bb.ah

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0169.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !32987, !noundef !68 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit, label %bb.ak

bb.ah:                                            ; preds = %bb.ak, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %i.dc, %bb.ak ], [ %.sroa.7.0170.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ true, %bb.ak ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ]
  %i.cs = load i64, ptr %i.r, align 8, !alias.scope !33055, !noalias !33056, !noundef !68 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !33057, !noalias !33058 ; 2 uses
  %i.ct = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ah
  %i.cu = load ptr, ptr %i.u, align 8, !alias.scope !33055, !noalias !33056, !nonnull !68, !noundef !68 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i

bb.ai:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32987
  store i64 10, ptr %i.m, align 8, !noalias !32987
  %i.cv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32987
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.aj:                                            ; preds = %bb.h
  %i.cw = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs9KQ7US1M400_11lance_table.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cx = add i64 %i.cq, -1                       ; 3 uses
  store i64 %i.cx, ptr %i.ad, align 8, !alias.scope !32987
  %i.cy = load i64, ptr %.0.val, align 8, !range !72, !alias.scope !32987, !noundef !68
  %i.cz = icmp ult i64 %i.cx, %i.cy
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = load ptr, ptr %i.af, align 8, !alias.scope !32987, !nonnull !68, !noundef !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dc = load i8, ptr %i.db, align 1, !noundef !68
  br label %bb.ah

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dm, %bb.av ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.du, %bb.av ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33059)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i75.i.i.i.i.i
  %i.dd = phi i64 [ %.promoted.i73165.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.dg, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33061)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !33062, !noundef !68
  switch i8 %i.df, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.dg = add i64 %i.dd, 1                        ; 3 uses
  store i64 %i.dg, ptr %i.q, align 8, !alias.scope !33063, !noalias !33058
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.dg, %i.cs
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.al

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ah, %bb.av, %bb.am
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.du, %bb.av ], [ %.sroa.027.2163.i.i.i.i.i, %bb.am ], [ %.sroa.027.0.i.i.i.i.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32987
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1092) #80
  unreachable

end_hunk_5
begin_hunk_6_@_RINvYNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBg_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBa_6HelperB1s_11deserialize9___VisitorNtB1u_7Visitor10visit_charNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEBk_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33681
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.ad, align 8, !noalias !33681
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.05.i, ptr %i.ae, align 8, !noalias !33681
  store i8 5, ptr %i.b, align 8, !noalias !33681
  %i.af = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271), !noalias !33680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33681
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !33680, !noalias !33682
  store i64 -2, ptr %0, align 8, !alias.scope !33680, !noalias !33682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYNtNvXNvNvXs3_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtBg_21RowDatasetVersionMetaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize1__NtBa_6HelperB1s_11deserializes_9___VisitorNtB1u_7Visitor10visit_charNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorEBk_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = trunc i32 %1 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %1, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %1, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %1, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = trunc nuw nsw i32 %1 to i8
  store i8 %i.t, ptr %i.c, align 4, !alias.scope !33688
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %i.c, align 4, !alias.scope !33688
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.v, align 1, !alias.scope !33688
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %1, 65536
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i8 %i.n, -32
  store i8 %i.x, ptr %i.c, align 4, !alias.scope !33688
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.l, ptr %i.y, align 1, !alias.scope !33688
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.h, ptr %i.z, align 2, !alias.scope !33688
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !33688
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.p, ptr %i.aa, align 1, !alias.scope !33688
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.l, ptr %i.ab, align 2, !alias.scope !33688
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.h, ptr %i.ac, align 1, !alias.scope !33688
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33690
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.ad, align 8, !noalias !33690
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.05.i, ptr %i.ae, align 8, !noalias !33690
  store i8 5, ptr %i.b, align 8, !noalias !33690
  %i.af = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @272), !noalias !33689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33690
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !33689, !noalias !33691
  store i64 -2, ptr %0, align 8, !alias.scope !33689, !noalias !33691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content14ContentVisitorECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.679 = alloca [48 x i8], align 8          ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.862 = alloca [16 x i8], align 8          ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.20 = alloca [6 x i8], align 2            ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33850)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !33851, !noalias !33852, !noundef !68 ; 8 uses
  %.promoted.i42 = load i64, ptr %i.af, align 8, !alias.scope !33850, !noalias !33853 ; 2 uses
  %i.ai = icmp ult i64 %.promoted.i42, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit168

.lr.ph.i:                                         ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !33851, !noalias !33852, !nonnull !68, !noundef !68 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.al = phi i64 [ %.promoted.i42, %.lr.ph.i ], [ %i.ao, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33854), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33855), !noalias !33848
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !33856, !noundef !68 ; 3 uses
  switch i8 %i.an, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ao = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.af, align 8, !alias.scope !33857, !noalias !33853
  %exitcond.not.i43 = icmp eq i64 %i.ao, %i.ah
  br i1 %exitcond.not.i43, label %.loopexit168, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  switch i8 %i.an, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit168:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !33858
  store i64 5, ptr %i.ae, align 8, !noalias !33858
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae), !noalias !33848, !inline_history !33706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33858
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content14ContentVisitorECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.ar = add i8 %i.an, -48
  %or.cond8.i = icmp ult i8 %i.ar, 10
  br i1 %or.cond8.i, label %bb.dj, label %bb.di, !prof !125

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.as = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.as, ptr %i.af, align 8, !alias.scope !33859, !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33860)
  %umax.i35 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33861), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33862), !noalias !33848
  %exitcond.not.i37.not = icmp ult i64 %i.as, %i.ah
  br i1 %exitcond.not.i37.not, label %bb.f, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !33863, !noundef !68
  %i.av = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.av, ptr %i.af, align 8, !alias.scope !33864, !noalias !33865
  %.not.i38 = icmp eq i8 %i.au, 117
  br i1 %.not.i38, label %bb.g, label %bb.k, !prof !169

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33866), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33867), !noalias !33848
  %exitcond.not.i37.1 = icmp eq i64 %i.av, %umax.i35
  br i1 %exitcond.not.i37.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !33868, !noundef !68
  %i.ay = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.ay, ptr %i.af, align 8, !alias.scope !33869, !noalias !33865
  %.not.i38.1 = icmp eq i8 %i.ax, 108
  br i1 %.not.i38.1, label %bb.i, label %bb.k, !prof !169

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33870), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33871), !noalias !33848
  %exitcond.not.i37.2 = icmp eq i64 %i.ay, %umax.i35
  br i1 %exitcond.not.i37.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !33872, !noundef !68
  %i.bb = add i64 %i.al, 4
  store i64 %i.bb, ptr %i.af, align 8, !alias.scope !33873, !noalias !33865
  %.not.i38.2 = icmp eq i8 %i.ba, 108
  br i1 %.not.i38.2, label %.thread, label %bb.k, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33874
  store i64 5, ptr %i.f, align 8, !noalias !33874
  %i.bc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !33875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33874
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33874
  store i64 9, ptr %i.e, align 8, !noalias !33874
  %i.bd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !33875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33874
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.be = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.be, ptr %i.af, align 8, !alias.scope !33876, !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33877)
  %umax.i27 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33878), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33879), !noalias !33848
  %exitcond.not.i29.not = icmp ult i64 %i.be, %i.ah
  br i1 %exitcond.not.i29.not, label %bb.m, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !33880, !noundef !68
  %i.bh = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.bh, ptr %i.af, align 8, !alias.scope !33881, !noalias !33882
  %.not.i30 = icmp eq i8 %i.bg, 114
  br i1 %.not.i30, label %bb.n, label %bb.r, !prof !169

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33883), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33884), !noalias !33848
  %exitcond.not.i29.1 = icmp eq i64 %i.bh, %umax.i27
  br i1 %exitcond.not.i29.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !33885, !noundef !68
  %i.bk = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.bk, ptr %i.af, align 8, !alias.scope !33886, !noalias !33882
  %.not.i30.1 = icmp eq i8 %i.bj, 117
  br i1 %.not.i30.1, label %bb.p, label %bb.r, !prof !169

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33887), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33888), !noalias !33848
  %exitcond.not.i29.2 = icmp eq i64 %i.bk, %umax.i27
  br i1 %exitcond.not.i29.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !33889, !noundef !68
  %i.bn = add i64 %i.al, 4
  store i64 %i.bn, ptr %i.af, align 8, !alias.scope !33890, !noalias !33882
  %.not.i30.2 = icmp eq i8 %i.bm, 101
  br i1 %.not.i30.2, label %.thread, label %bb.r, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33891
  store i64 5, ptr %i.h, align 8, !noalias !33891
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !33892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33891
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33891
  store i64 9, ptr %i.g, align 8, !noalias !33891
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !33892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33891
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.bq = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.bq, ptr %i.af, align 8, !alias.scope !33893, !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33894)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33895), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33896), !noalias !33848
  %exitcond.not.i.not = icmp ult i64 %i.bq, %i.ah
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !33897, !noundef !68
  %i.bt = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.bt, ptr %i.af, align 8, !alias.scope !33898, !noalias !33899
  %.not.i25 = icmp eq i8 %i.bs, 97
  br i1 %.not.i25, label %bb.u, label %bb.aa, !prof !169

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33900), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33901), !noalias !33848
  %exitcond.not.i.1 = icmp eq i64 %i.bt, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !33902, !noundef !68
  %i.bw = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.bw, ptr %i.af, align 8, !alias.scope !33903, !noalias !33899
  %.not.i25.1 = icmp eq i8 %i.bv, 108
  br i1 %.not.i25.1, label %bb.w, label %bb.aa, !prof !169

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33904), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33905), !noalias !33848
  %exitcond.not.i.2 = icmp eq i64 %i.bw, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !33906, !noundef !68
  %i.bz = add i64 %i.al, 4                        ; 3 uses
  store i64 %i.bz, ptr %i.af, align 8, !alias.scope !33907, !noalias !33899
  %.not.i25.2 = icmp eq i8 %i.by, 115
  br i1 %.not.i25.2, label %bb.y, label %bb.aa, !prof !169

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33908), !noalias !33848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33909), !noalias !33848
  %exitcond.not.i.3 = icmp eq i64 %i.bz, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !33910, !noundef !68
  %i.cc = add i64 %i.al, 5
  store i64 %i.cc, ptr %i.af, align 8, !alias.scope !33911, !noalias !33899
  %.not.i25.3 = icmp eq i8 %i.cb, 101
  br i1 %.not.i25.3, label %.thread, label %bb.aa, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !33912
  store i64 5, ptr %i.j, align 8, !noalias !33912
  %i.cd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !33913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33912
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33912
  store i64 9, ptr %i.i, align 8, !noalias !33912
  %i.ce = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !33913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33912
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.cf = add i64 %i.al, 1
  store i64 %i.cf, ptr %i.af, align 8, !alias.scope !33914, !noalias !33848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33858
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !33848, !inline_history !33706
  %i.cg = load i64, ptr %i.ad, align 8, !range !115, !noalias !33858, !noundef !68 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.cj = add i64 %i.al, 1
  store i64 %i.cj, ptr %i.af, align 8, !alias.scope !33915, !noalias !33848
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ck, align 8, !alias.scope !33849, !noalias !33848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !33858
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !33848, !inline_history !33706
  %i.cl = load i64, ptr %i.ab, align 8, !range !97, !noalias !33858, !noundef !68 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !33858 ; 4 uses
  br i1 %i.cm, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !33849, !noalias !33848, !noundef !68
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !33849, !noalias !33848
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.at, label %bb.au, !prof !71

bb.ae:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs9KQ7US1M400_11lance_table.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cu = load i8, ptr %i.ct, align 8, !alias.scope !33849, !noalias !33848, !noundef !68
  %i.cv = add i8 %i.cu, -1                        ; 2 uses
  store i8 %i.cv, ptr %i.ct, align 8, !alias.scope !33849, !noalias !33848
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.by, label %bb.bz, !prof !71

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40
  %.sroa.0.1.i39.ph = phi ptr [ %i.bc, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i40 ], [ %i.bd, %bb.k ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i39.ph, ptr %i.cx, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  br label %bb.ah

bb.ag:                                            ; preds = %.thread157, %.thread154
  %.sroa.31.0 = phi i64 [ %.sroa.31.3, %.thread157 ], [ %.sroa.31.2, %.thread154 ]
  %.sroa.29.0 = phi i64 [ %.sroa.29.3, %.thread157 ], [ %.sroa.29.2, %.thread154 ]
  %.sroa.20284.0 = phi i64 [ %.sroa.20284.3, %.thread157 ], [ %.sroa.20284.2, %.thread154 ] ; 2 uses
  %.sroa.18.0 = phi i8 [ %.sroa.18.2, %.thread157 ], [ %.sroa.18.1, %.thread154 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.3, %.thread157 ], [ %.sroa.0.2, %.thread154 ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.cy, label %._crit_edge, label %.thread, !prof !33916

._crit_edge:                                      ; preds = %bb.ag
  %i.cz = inttoptr i64 %.sroa.20284.0 to ptr
  br label %bb.dk

bb.ah:                                            ; preds = %bb.dl, %bb.by, %bb.at, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsfFuRbk4VBmG_5serde7private2de7content14ContentVisitorECs9KQ7US1M400_11lance_table.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32
  %.sroa.0.1.i31.ph = phi ptr [ %i.bo, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i32 ], [ %i.bp, %bb.r ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i31.ph, ptr %i.da, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.cd, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ce, %bb.aa ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.db, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dc = load ptr, ptr %i.ci, align 8, !noalias !33858, !nonnull !68, !align !73, !noundef !68
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33858
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ci, align 8, !noalias !33858
  %switch.cast = trunc i64 %i.cg to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33858
  br label %.thread

bb.al:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.de, align 8, !alias.scope !33848, !noalias !33849
  store i8 -1, ptr %0, align 8, !alias.scope !33848, !noalias !33849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !33858
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !33858 ; 8 uses
  %i.df = trunc nuw i64 %i.cl to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  br i1 %i.df, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %.not.i.i = icmp slt i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.ao, !prof !69

bb.ao:                                            ; preds = %bb.an
  %i.dg = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.dg, label %_RINvXsj_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !33917
  %i.dh = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !33917 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.ap ], [ 0, %bb.an ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.4.0.copyload.i) #80, !noalias !33918
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.co, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !33919
  %i.dj = ptrtoint ptr %i.dh to i64
  br label %_RINvXsj_NtNtNtCsfFuRbk4VBmG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table.exit
end_hunk_6
begin_hunk_7_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0B7_:bb.a
bb.hc:                                            ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !42791
  store i64 17, ptr %i.ar, align 8, !noalias !42791
  %i.aco = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc24.i.i.i:                                   ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !42791
  br label %bb.hh

bb.hd:                                            ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !42791
  store i64 21, ptr %i.as, align 8, !noalias !42791
  %i.acp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc25.i.i.i:                                   ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !42791
  br label %bb.hh

bb.he:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !42791
  store i64 17, ptr %i.at, align 8, !noalias !42791
  %i.acq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc26.i.i.i:                                   ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !42791
  br label %bb.hh

.loopexit.i.i.i29.i.i.i.i.i:                      ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i.i, %bb.gy
  %i.acr = phi i64 [ %i.abz, %bb.gy ], [ %i.aci, %.lr.ph.i7.i.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !42798)
  call void @llvm.experimental.noalias.scope.decl(metadata !42799)
  call void @llvm.experimental.noalias.scope.decl(metadata !42800)
  call void @llvm.experimental.noalias.scope.decl(metadata !42801)
  %i.acs = add i64 %i.acr, 1
  store i64 %i.acs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42802, !noalias !42803
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42804, !noalias !42803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !42805
  invoke void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zv, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %.noexc27.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !42755

.noexc27.i.i.i:                                   ; preds = %.loopexit.i.i.i29.i.i.i.i.i
  %i.act = load i64, ptr %i.ao, align 8, !range !97, !noalias !42805, !noundef !68
  %i.acu = icmp eq i64 %i.act, -1
  %i.acv = load ptr, ptr %i.abw, align 8, !noalias !42805 ; 5 uses
  br i1 %i.acu, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.noexc27.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !42805
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acv) ]
  %i.acw = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.acw, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i.i.i.i.i.i, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread50.i.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread50.i.i.i.i.i.i: ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !42805
  br label %bb.hi

bb.hg:                                            ; preds = %.noexc27.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !42805
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acv) ]
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.noexc26.i.i.i, %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %.noexc22.i.i.i, %.noexc21.i.i.i
  %.sroa.837.0.ph.i.i.i.i.i.i = phi ptr [ %i.aco, %.noexc24.i.i.i ], [ %i.acn, %.noexc23.i.i.i ], [ %i.acp, %.noexc25.i.i.i ], [ %i.acm, %.noexc22.i.i.i ], [ %i.acd, %.noexc21.i.i.i ], [ %i.acq, %.noexc26.i.i.i ], [ %i.acv, %bb.hg ]
  %i.acx = ptrtoint ptr %.sroa.837.0.ph.i.i.i.i.i.i to i64
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEEBf_.exit.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i.i.i.i.i.i: ; preds = %bb.hf
  %i.acy = load i32, ptr %i.acv, align 1
  %i.acz = xor i32 %i.acy, 1936876918
  %i.ada = getelementptr i8, ptr %i.acv, i64 3
  %i.adb = load i32, ptr %i.ada, align 1
  %i.adc = xor i32 %i.adb, 1852795251
  %i.add = or i32 %i.acz, %i.adc
  %i.ade = icmp ne i32 %i.add, 0
  %i.adf = zext i1 %i.ade to i32
  %.not.i.i.i.i.i60.i = icmp eq i32 %i.adf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !42805
  br i1 %.not.i.i.i.i.i60.i, label %bb.jq, label %bb.hi

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread45.i.i.i.i.i.i: ; preds = %bb.gu
  %i.adg = trunc nuw i64 %.sroa.05.0235.i.i.i.i.i.i to i1
  br i1 %i.adg, label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEEBf_.exit.i.i.i.i.i, label %bb.jy

bb.hi:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread50.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42806)
  call void @llvm.experimental.noalias.scope.decl(metadata !42807)
  %i.adh = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42808, !noalias !42809, !noundef !68 ; 4 uses
  %.promoted.i.i.i.i28.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42810, !noalias !42811 ; 2 uses
  %i.adi = icmp ult i64 %.promoted.i.i.i.i28.i.i.i.i.i.i, %i.adh
  br i1 %i.adi, label %.lr.ph.i.i.i.i30.i.i.i.i.i.i, label %.loopexit.i.i.i29.i.i.i.i.i.i

.lr.ph.i.i.i.i30.i.i.i.i.i.i:                     ; preds = %bb.hi
  %i.adj = load ptr, ptr %i.zv, align 8, !alias.scope !42808, !noalias !42809, !nonnull !68, !noundef !68 ; 2 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hk, %.lr.ph.i.i.i.i30.i.i.i.i.i.i
  %i.adk = phi i64 [ %.promoted.i.i.i.i28.i.i.i.i.i.i, %.lr.ph.i.i.i.i30.i.i.i.i.i.i ], [ %i.adn, %bb.hk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42812)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !noalias !42813, !noundef !68
  switch i8 %i.adm, label %bb.hl [
    i8 32, label %bb.hk
    i8 10, label %bb.hk
    i8 9, label %bb.hk
    i8 13, label %bb.hk
    i8 58, label %bb.hm
  ], !prof !167

bb.hk:                                            ; preds = %bb.hj, %bb.hj, %bb.hj, %bb.hj
  %i.adn = add i64 %i.adk, 1                      ; 3 uses
  store i64 %i.adn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42814, !noalias !42811
  %exitcond.not.i.i.i.i31.i.i.i.i.i.i = icmp eq i64 %i.adn, %i.adh
  br i1 %exitcond.not.i.i.i.i31.i.i.i.i.i.i, label %.loopexit.i.i.i29.i.i.i.i.i.i, label %bb.hj

.loopexit.i.i.i29.i.i.i.i.i.i:                    ; preds = %bb.hi, %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !42815
  store i64 3, ptr %i.am, align 8, !noalias !42815
  %i.ado = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am)
          to label %.noexc28.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc28.i.i.i:                                   ; preds = %.loopexit.i.i.i29.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !42815
  br label %.loopexit.i30.i.i.i.i.i

bb.hl:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !42815
  store i64 6, ptr %i.an, align 8, !noalias !42815
  %i.adp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc29.i.i.i:                                   ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !42815
  br label %.loopexit.i30.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hj
  %i.adq = add i64 %i.adk, 1                      ; 3 uses
  store i64 %i.adq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42816, !noalias !42746
  call void @llvm.experimental.noalias.scope.decl(metadata !42817)
  call void @llvm.experimental.noalias.scope.decl(metadata !42818)
  call void @llvm.experimental.noalias.scope.decl(metadata !42819)
  call void @llvm.experimental.noalias.scope.decl(metadata !42820)
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42821, !noalias !42746
  %i.adr = icmp ult i64 %i.adq, %i.adh
  br i1 %i.adr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.hm, %bb.jn
  %i.ads = phi ptr [ %i.aic, %bb.jn ], [ %i.adj, %bb.hm ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jn ], [ %i.adq, %bb.hm ]
  %i.adt = phi i64 [ %i.aib, %bb.jn ], [ %i.adh, %bb.hm ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jn ], [ undef, %bb.hm ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.jn ], [ false, %bb.hm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42822)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adu = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adx, %bb.ho ] ; 17 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !noalias !42823, !noundef !68 ; 3 uses
  switch i8 %i.adw, label %bb.hp [
    i8 32, label %bb.ho
    i8 10, label %bb.ho
    i8 9, label %bb.ho
    i8 13, label %bb.ho
    i8 110, label %bb.hq
    i8 116, label %bb.hw
    i8 102, label %bb.ic
    i8 45, label %bb.ik
    i8 34, label %bb.il
    i8 91, label %bb.im
    i8 123, label %bb.im
  ]

bb.ho:                                            ; preds = %bb.hn, %bb.hn, %bb.hn, %bb.hn
  %i.adx = add i64 %i.adu, 1                      ; 3 uses
  store i64 %i.adx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42824, !noalias !42825
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adx, %i.adt
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hn

.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.hm, %bb.jn, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !42826
  store i64 5, ptr %i.al, align 8, !noalias !42826
  %i.ady = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc30.i.i.i:                                   ; preds = %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !42826
  br label %.loopexit.i30.i.i.i.i.i

bb.hp:                                            ; preds = %bb.hn
  %i.adz = add i8 %i.adw, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.adz, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ir, label %bb.iq, !prof !125

bb.hq:                                            ; preds = %bb.hn
  %i.aea = add i64 %i.adu, 1                      ; 4 uses
  store i64 %i.aea, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42827, !noalias !42746
  call void @llvm.experimental.noalias.scope.decl(metadata !42828)
  %umax.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aea, i64 %i.adt) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42829)
  %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aea, %i.adt
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hq
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !noalias !42830, !noundef !68
  %i.aed = add i64 %i.adu, 2                      ; 3 uses
  store i64 %i.aed, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42831, !noalias !42832
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aec, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hs, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.experimental.noalias.scope.decl(metadata !42833)
  %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aed, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !noalias !42834, !noundef !68
  %i.aeg = add i64 %i.adu, 3                      ; 3 uses
  store i64 %i.aeg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42835, !noalias !42832
  %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aef, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hu, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !42836)
  %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeg, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !noalias !42837, !noundef !68
  %i.aej = add i64 %i.adu, 4
  store i64 %i.aej, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42838, !noalias !42832
  %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aei, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hu, %bb.hs, %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !42839
  store i64 5, ptr %i.ad, align 8, !noalias !42839
  %i.aek = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %.noexc31.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc31.i.i.i:                                   ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !42839
  br label %.loopexit.i30.i.i.i.i.i

.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.hv, %bb.ht, %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !42839
  store i64 9, ptr %i.ac, align 8, !noalias !42839
  %i.ael = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %.noexc32.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc32.i.i.i:                                   ; preds = %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !42839
  br label %.loopexit.i30.i.i.i.i.i

bb.hw:                                            ; preds = %bb.hn
  %i.aem = add i64 %i.adu, 1                      ; 4 uses
  store i64 %i.aem, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42840, !noalias !42746
  call void @llvm.experimental.noalias.scope.decl(metadata !42841)
  %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aem, i64 %i.adt) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42842)
  %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aem, %i.adt
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hx, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !noalias !42843, !noundef !68
  %i.aep = add i64 %i.adu, 2                      ; 3 uses
  store i64 %i.aep, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42844, !noalias !42845
  %.not.i59.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aeo, 114
  br i1 %.not.i59.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hy, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !42846)
  %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aep, %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aep
  %i.aer = load i8, ptr %i.aeq, align 1, !noalias !42847, !noundef !68
  %i.aes = add i64 %i.adu, 3                      ; 3 uses
  store i64 %i.aes, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42848, !noalias !42845
  %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aer, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !42849)
  %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aes, %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aes
  %i.aeu = load i8, ptr %i.aet, align 1, !noalias !42850, !noundef !68
  %i.aev = add i64 %i.adu, 4
  store i64 %i.aev, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42851, !noalias !42845
  %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aeu, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ia, %bb.hy, %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !42852
  store i64 5, ptr %i.ab, align 8, !noalias !42852
  %i.aew = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc33.i.i.i:                                   ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !42852
  br label %.loopexit.i30.i.i.i.i.i

.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ib, %bb.hz, %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !42852
  store i64 9, ptr %i.aa, align 8, !noalias !42852
  %i.aex = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc34.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc34.i.i.i:                                   ; preds = %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !42852
  br label %.loopexit.i30.i.i.i.i.i

bb.ic:                                            ; preds = %bb.hn
  %i.aey = add i64 %i.adu, 1                      ; 4 uses
  store i64 %i.aey, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42853, !noalias !42746
  call void @llvm.experimental.noalias.scope.decl(metadata !42854)
  %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aey, i64 %i.adt) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42855)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aey, %i.adt
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.id, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.ic
  %i.aez = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !noalias !42856, !noundef !68
  %i.afb = add i64 %i.adu, 2                      ; 3 uses
  store i64 %i.afb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42857, !noalias !42858
  %.not.i68.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.afa, 97
  br i1 %.not.i68.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ie, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.ie:                                            ; preds = %bb.id
  call void @llvm.experimental.noalias.scope.decl(metadata !42859)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afb, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !noalias !42860, !noundef !68
  %i.afe = add i64 %i.adu, 3                      ; 3 uses
  store i64 %i.afe, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42861, !noalias !42858
  %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.afd, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ig, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.ig:                                            ; preds = %bb.if
  call void @llvm.experimental.noalias.scope.decl(metadata !42862)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afe, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !noalias !42863, !noundef !68
  %i.afh = add i64 %i.adu, 4                      ; 3 uses
  store i64 %i.afh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42864, !noalias !42858
  %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.afg, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ii, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.experimental.noalias.scope.decl(metadata !42865)
  %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afh, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.afh
  %i.afj = load i8, ptr %i.afi, align 1, !noalias !42866, !noundef !68
  %i.afk = add i64 %i.adu, 5
  store i64 %i.afk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42867, !noalias !42858
  %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.afj, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ii, %bb.ig, %bb.ie, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !42868
  store i64 5, ptr %i.z, align 8, !noalias !42868
  %i.afl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc35.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc35.i.i.i:                                   ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !42868
  br label %.loopexit.i30.i.i.i.i.i

.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ij, %bb.ih, %bb.if, %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !42868
  store i64 9, ptr %i.y, align 8, !noalias !42868
  %i.afm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc36.i.i.i:                                   ; preds = %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !42868
  br label %.loopexit.i30.i.i.i.i.i

bb.ik:                                            ; preds = %bb.hn
  %i.afn = add i64 %i.adu, 1
  store i64 %i.afn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42869, !noalias !42746
  %i.afo = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %.noexc37.i.i.i unwind label %.loopexit66.i.i.i, !noalias !42755 ; 2 uses

.noexc37.i.i.i:                                   ; preds = %bb.ik
  %.not45.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afo, null
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i30.i.i.i.i.i

bb.il:                                            ; preds = %bb.hn
  %i.afp = add i64 %i.adu, 1
  store i64 %i.afp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42870, !noalias !42746
  %i.afq = invoke noundef align 8 ptr @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zv)
          to label %.noexc38.i.i.i unwind label %.loopexit66.i.i.i, !noalias !42755 ; 2 uses

.noexc38.i.i.i:                                   ; preds = %bb.il
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i30.i.i.i.i.i

bb.im:                                            ; preds = %bb.hn, %bb.hn
  call void @llvm.experimental.noalias.scope.decl(metadata !42871)
  %i.afr = zext i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.afs = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42872, !noalias !42746, !noundef !68 ; 3 uses
  %i.aft = load i64, ptr %i.bb, align 8, !range !72, !alias.scope !42872, !noalias !42746, !noundef !68
  %i.afu = sub i64 %i.aft, %i.afs
  %i.afv = icmp ult i64 %i.afu, %i.afr
  br i1 %i.afv, label %bb.in, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

bb.in:                                            ; preds = %bb.im
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb, i64 noundef %i.afs, i64 noundef %i.afr, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i.i.i unwind label %.loopexit66.i.i.i, !noalias !42755

.noexc39.i.i.i:                                   ; preds = %bb.in
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42873, !noalias !42746
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc39.i.i.i, %bb.im
  %i.afw = phi i64 [ %i.afs, %bb.im ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc39.i.i.i ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !42873, !noalias !42746, !nonnull !68, !noundef !68
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.afw
  store i8 %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.afy, align 1, !noalias !42874
  %i.afz = add i64 %i.afw, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42873, !noalias !42875
  %i.aga = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42876, !noalias !42746, !noundef !68
  %i.agb = add i64 %i.aga, 1
  store i64 %i.agb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42876, !noalias !42746
  br label %bb.ip

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc41.i.i.i, %.noexc38.i.i.i, %.noexc37.i.i.i, %bb.ij, %bb.ib, %bb.hv
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agc = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42821, !noalias !42746, !noundef !68 ; 2 uses
  %i.agd = icmp eq i64 %i.agc, 0
  br i1 %i.agd, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.is

bb.ip:                                            ; preds = %bb.is, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.adw, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agq, %bb.is ], [ %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.is ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.age = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42877, !noalias !42878, !noundef !68 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !42879, !noalias !42880 ; 2 uses
  %i.agf = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i, %i.age
  br i1 %i.agf, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.ip
  %i.agg = load ptr, ptr %i.zv, align 8, !alias.scope !42877, !noalias !42878, !nonnull !68, !noundef !68 ; 3 uses
  %.sroa.57.0..sroa_idx.promoted.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !42746
  %i.agh = load i64, ptr %i.bb, align 8, !range !72, !noalias !42746
  %i.agi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !42746, !nonnull !68
  br label %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !42826
  store i64 10, ptr %i.ak, align 8, !noalias !42826
  %i.agj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !42755

.noexc40.i.i.i:                                   ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !42826
  br label %.loopexit.i30.i.i.i.i.i

bb.ir:                                            ; preds = %bb.hp
  %i.agk = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %.noexc41.i.i.i unwind label %.loopexit66.i.i.i, !noalias !42755 ; 2 uses

.noexc41.i.i.i:                                   ; preds = %bb.ir
  %.not49.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agk, null
  br i1 %.not49.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i30.i.i.i.i.i

bb.is:                                            ; preds = %bb.io
  %i.agl = add i64 %i.agc, -1                     ; 3 uses
  store i64 %i.agl, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !42821, !noalias !42746
  %i.agm = load i64, ptr %i.bb, align 8, !range !72, !alias.scope !42821, !noalias !42746, !noundef !68
  %i.agn = icmp ult i64 %i.agl, %i.agm
  call void @llvm.assume(i1 %i.agn)
  %i.ago = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !42821, !noalias !42746, !nonnull !68, !noundef !68
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 %i.agl
  %i.agq = load i8, ptr %i.agp, align 1, !noalias !42755, !noundef !68
  br label %bb.ip

.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.jc, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agr = phi i64 [ %.sroa.57.0..sroa_idx.promoted.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahd, %bb.jc ] ; 2 uses
  %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahb, %bb.jc ]
  %.sroa.042.2164.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.jc ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahg, %bb.jc ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42881)
  br label %bb.it

bb.it:                                            ; preds = %bb.iu, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ags = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agv, %bb.iu ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42882)
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.ags
  %i.agu = load i8, ptr %i.agt, align 1, !noalias !42883, !noundef !68
  switch i8 %i.agu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.iu
    i8 10, label %bb.iu
    i8 9, label %bb.iu
    i8 13, label %bb.iu
    i8 44, label %bb.ix
    i8 93, label %bb.iy
    i8 125, label %bb.iz
end_hunk_7
begin_hunk_8_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCs9KQ7US1M400_11lance_table:bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !53740, !noundef !68
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !53741
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53742)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5QD3CVEMyfH_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !53743, !noundef !68 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !71

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53743
  store i64 14, ptr %i.a, align 8, !noalias !53743
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !53742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53743
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !53742, !noalias !53744
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !53742, !noalias !53744
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !71

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53743
  store i64 14, ptr %i.b, align 8, !noalias !53743
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !53742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53743
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !53742, !noalias !53744
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !53742, !noalias !53744
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !163

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53803)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !53804, !noalias !53805, !noundef !68 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !53804, !noalias !53805, !noundef !68 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !53804, !noalias !53805, !nonnull !68, !noundef !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !53806, !noundef !68 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !194

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !169

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !53807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53808)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !53808, !noalias !53809, !nonnull !68 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53811)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !53812, !noundef !68
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !53813, !noalias !53814
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !169

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53816)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !53817, !noundef !68
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !53818, !noalias !53814
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !169

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53820)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !53821, !noundef !68
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !53822, !noalias !53814
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit, label %bb.j, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !53823
  store i64 5, ptr %i.f, align 8, !noalias !53823
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !53809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53823
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53823
  store i64 9, ptr %i.e, align 8, !noalias !53823
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !53809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53823
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !53824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53825)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !53825, !noalias !53826, !nonnull !68 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53828)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !53829, !noundef !68
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !53830, !noalias !53831
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !169

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53833)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !53834, !noundef !68
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !53835, !noalias !53831
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !169

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53837)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !53838, !noundef !68
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !53839, !noalias !53831
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit30, label %bb.q, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53840
  store i64 5, ptr %i.d, align 8, !noalias !53840
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !53826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53840
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53840
  store i64 9, ptr %i.c, align 8, !noalias !53840
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !53826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53840
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !53841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53842)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !53842, !noalias !53843, !nonnull !68 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53845)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !53846, !noundef !68
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !53847, !noalias !53848
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !169

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53850)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !53851, !noundef !68
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !53852, !noalias !53848
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !169

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53854)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !53855, !noundef !68
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !53856, !noalias !53848
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !169

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53858)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !53859, !noundef !68
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !53860, !noalias !53848
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit38, label %bb.z, !prof !169

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53861
  store i64 5, ptr %i.b, align 8, !noalias !53861
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !53843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53861
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53861
  store i64 9, ptr %i.a, align 8, !noalias !53861
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !53843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53861
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !53862
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !115, !noundef !68
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !80

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !53863
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !97, !noundef !68
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !68, !noundef !68 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !80

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !68, !align !73, !noundef !68
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !115, !noundef !68
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !68, !align !73, !noundef !68
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_8
begin_hunk_9_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCs9KQ7US1M400_11lance_table:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !54081, !noundef !68
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !54082
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54083)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5QD3CVEMyfH_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !54084, !noundef !68 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !71

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54084
  store i64 14, ptr %i.a, align 8, !noalias !54084
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !54083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54084
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !54083, !noalias !54085
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !54083, !noalias !54085
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !71

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54084
  store i64 14, ptr %i.b, align 8, !noalias !54084
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !54083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54084
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !54083, !noalias !54085
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !54083, !noalias !54085
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs9KQ7US1M400_11lance_table.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !163

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54124)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !54124, !noalias !54125, !noundef !68 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !54124, !noalias !54125, !noundef !68 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !54124, !noalias !54125, !nonnull !68, !noundef !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !54126, !noundef !68 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !194

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !169

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !54127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54128)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !54128, !noalias !54129, !nonnull !68 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54130)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !54131, !noundef !68
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !54132, !noalias !54133
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !169

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54134)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !54135, !noundef !68
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !54136, !noalias !54133
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !169

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54137)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !54138, !noundef !68
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !54139, !noalias !54133
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit, label %bb.j, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54140
  store i64 5, ptr %i.f, align 8, !noalias !54140
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !54129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54140
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54140
  store i64 9, ptr %i.e, align 8, !noalias !54140
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !54129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54140
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !54141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54142)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !54142, !noalias !54143, !nonnull !68 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54144)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !54145, !noundef !68
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !54146, !noalias !54147
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !169

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54148)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !54149, !noundef !68
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !54150, !noalias !54147
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !169

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54151)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !54152, !noundef !68
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !54153, !noalias !54147
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit30, label %bb.q, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54154
  store i64 5, ptr %i.d, align 8, !noalias !54154
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !54143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54154
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54154
  store i64 9, ptr %i.c, align 8, !noalias !54154
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !54143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54154
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !54155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54156)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !54156, !noalias !54157, !nonnull !68 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54158)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !54159, !noundef !68
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !54160, !noalias !54161
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !169

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54162)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !54163, !noundef !68
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !54164, !noalias !54161
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !169

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54165)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !54166, !noundef !68
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !54167, !noalias !54161
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !169

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54168)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !54169, !noundef !68
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !54170, !noalias !54161
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit38, label %bb.z, !prof !169

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54171
  store i64 5, ptr %i.b, align 8, !noalias !54171
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !54157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54171
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54171
  store i64 9, ptr %i.a, align 8, !noalias !54171
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !54157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54171
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !54172
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !115, !noundef !68
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !80

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !54173
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !97, !noundef !68
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !68, !noundef !68 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !80

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !68, !align !73, !noundef !68
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !115, !noundef !68
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !68, !align !73, !noundef !68
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

end_hunk_9
begin_hunk_10_@_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table:bb.a

bb.e:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 1, ptr %i.c, align 8, !noalias !76812
  store i64 0, ptr %1, align 8, !noalias !76813
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !76, !noundef !68 ; 2 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = load i64, ptr %1, align 8, !range !76, !noundef !68
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !82, !noalias !76818, !noundef !68
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @560) #80, !noalias !76818
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @560) #80, !noalias !76818
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 1, ptr %i.c, align 8, !noalias !76818
  store i64 0, ptr %1, align 8, !noalias !76819
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !76, !noundef !68 ; 2 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core6future5readyINtB4_5ReadyuENtNtB6_6future6Future4pollCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef captures(none) dereferenceable(1) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !77, !noundef !68
  %i.b = trunc nuw i8 %i.a to i1
  store i8 0, ptr %0, align 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !80

bb.b:                                             ; preds = %bb.a
  ret i1 false

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1957, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1959) #80
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCseXbohGRa9jr_5tokio4sync9once_cellINtB4_8OnceCelljENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1960, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i8, ptr %i.c acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  %. = select i1 %i.e, ptr null, ptr %0
  store ptr %., ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @376, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1961)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscI6d9CVNmLh_4core6option6OptionINtCsdWqgeKPIYK7_4slab4SlabIB1m_NtNtNtB1q_4task4wake5WakerEEEEENtNtB1q_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1962, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1962, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1962, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB4_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB23_16CachedReaderDataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !77, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !76836, !noalias !76837
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !76836, !noalias !76837, !nonnull !68 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !76836, !noalias !76837, !nonnull !68, !align !73 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !alias.scope !76836, !noalias !76837
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.c:                                             ; preds = %.preheader, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit4
  %i.s = phi i64 [ %.promoted, %.preheader ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit4 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76838)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ %i.v, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i ]
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.w, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76839)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.k) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i
  %i.v = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i ] ; 6 uses
  %i.x = load i64, ptr %1, align 8, !range !70, !alias.scope !76836, !noalias !76837, !noundef !68 ; 4 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !76840, !noalias !76837, !noundef !68 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.thread.i.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.d
  %exitcond.not.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.thread.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.i.i
  %exitcond.not9.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not9.i.i, label %bb.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76841
  %i.aa = load ptr, ptr %i.p, align 8, !invariant.load !68, !noalias !76841, !nonnull !68
  call void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !76841, !inline_history !76827
  call void @llvm.experimental.noalias.scope.decl(metadata !76842)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76841
  %i.ab = load ptr, ptr %i.p, align 8, !invariant.load !68, !noalias !76841, !nonnull !68
  call void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !76841, !inline_history !76827
  call void @llvm.experimental.noalias.scope.decl(metadata !76843)
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !76844, !noalias !76837, !nonnull !68, !noundef !68
  %i.ad = mul nuw i64 %i.x, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !76845
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.f, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !76837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76841
  %i.ae = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !76836, !noalias !76837
  br label %bb.d

_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.i.i
  %i.af = add nsw i64 %.val.i.i.i, -1             ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !76838, !noalias !76837
  %i.ag = icmp samesign ult i64 %i.af, %i.x
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.q, align 8, !alias.scope !76838, !noalias !76837, !nonnull !68, !noundef !68
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af ; 3 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !76846 ; 6 uses
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload.i, -1
  br i1 %.not3.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !76846
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76846 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.010.0.copyload.i, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.r, align 8, !invariant.load !68, !nonnull !68
  invoke void %i.aj(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.thread.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs9KQ7US1M400_11lance_table.exit.thread.i.i
  store i8 1, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76847
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.c, align 8, !range !70, !noundef !68
  %.not1 = icmp eq i64 %i.am, -1
  br i1 %.not1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76848
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit4: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB4_6DeleteNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76851
  %i.a = tail call noundef dereferenceable_or_null(31) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 31, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76851 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 31) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.a, ptr noundef nonnull align 1 dereferenceable(31) @1963, i64 31, i1 false)
  store i64 31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB4_6DeleteNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76854
  %i.a = tail call noundef dereferenceable_or_null(30) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76854 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 30) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @1964, i64 30, i1 false)
  store i64 30, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 30, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB4_14RangeWithHolesNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76857
  %i.a = tail call noundef dereferenceable_or_null(38) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 38, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76857 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 38) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.a, ptr noundef nonnull align 1 dereferenceable(38) @1965, i64 38, i1 false)
  store i64 38, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segmentNtB4_14RangeWithHolesNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76860
  %i.a = tail call noundef dereferenceable_or_null(37) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 37, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76860 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
end_hunk_10
