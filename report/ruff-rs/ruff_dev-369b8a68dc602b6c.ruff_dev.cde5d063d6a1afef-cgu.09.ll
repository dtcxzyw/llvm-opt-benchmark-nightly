Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.09?download=true
inline.NumInlined: 1392
inline.NumDeleted: 572
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs7_Csh8k9AkFYpg3_17tracing_indicatifINtB5_14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB15_3fmt9fmt_layer5LayerIBZ_NtNtNtB15_6filter3env9EnvFilterNtNtNtB15_8registry7sharded8RegistryENtNtB24_6format13DefaultFieldsNtB3G_6FormatNtNtB5_6writer15IndicatifWriterEB2u_EE25get_stderr_writer_contextCshFZivb7RUAJ_8ruff_dev:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.t(ptr noundef nonnull %1, ptr noundef nonnull %i.r)
  ret void

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMs7_Csh8k9AkFYpg3_17tracing_indicatifINtB5_14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB15_3fmt9fmt_layer5LayerIBZ_NtNtNtB15_6filter3env9EnvFilterNtNtNtB15_8registry7sharded8RegistryENtNtB24_6format13DefaultFieldsNtB3G_6FormatNtNtB5_6writer15IndicatifWriterEB2u_EE25get_stdout_writer_contextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !29, !invariant.load !6
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %i.m = tail call noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB2f_3fmt9fmt_layer5LayerIB29_NtNtNtB2f_6filter3env9EnvFilterNtNtNtB2f_8registry7sharded8RegistryENtNtB3e_6format13DefaultFieldsNtB4R_6FormatNtNtB1l_6writer15IndicatifWriterEB3E_EEECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.f) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.t(ptr noundef nonnull %1, ptr noundef nonnull %i.r)
  ret void

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMs7_Csh8k9AkFYpg3_17tracing_indicatifINtB5_14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB15_3fmt9fmt_layer5LayerIBZ_NtNtNtB15_6filter3env9EnvFilterNtNtNtB15_8registry7sharded8RegistryENtNtB24_6format13DefaultFieldsNtB3G_6FormatNtNtB5_6writer15IndicatifWriterEB2u_EE26get_multi_progress_contextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !29, !invariant.load !6
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %i.m = tail call noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB2f_3fmt9fmt_layer5LayerIB29_NtNtNtB2f_6filter3env9EnvFilterNtNtNtB2f_8registry7sharded8RegistryENtNtB3e_6format13DefaultFieldsNtB4R_6FormatNtNtB1l_6writer15IndicatifWriterEB3E_EEECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.f) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.t(ptr noundef nonnull %1, ptr noundef nonnull %i.r)
  ret void

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1151, !noalias !1152, !noundef !6 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1151, !noalias !1152
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E8try_growCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(648) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit
    i64 0, label %bb.e
  ], !prof !31

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E8try_growCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 8 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1158, !noalias !1159, !nonnull !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit, label %bb.m, !prof !32

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit
  %i.k = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond62, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45, label %bb.m, !prof !32

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #28 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1w_INtNtNtBG_3fmt9fmt_layer5LayerIB1w_NtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryENtNtB31_6format13DefaultFieldsNtB4q_6FormatNtNtB24_6writer15IndicatifWriterEB3q_EEB2R_EEECshFZivb7RUAJ_8ruff_dev.exit, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1160
  store i64 0, ptr %i.a, align 8, !noalias !1160
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !1160
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !1160
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1w_INtNtNtBG_3fmt9fmt_layer5LayerIB1w_NtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryENtNtB31_6format13DefaultFieldsNtB4q_6FormatNtNtB24_6writer15IndicatifWriterEB3q_EEB2R_EEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1w_INtNtNtBG_3fmt9fmt_layer5LayerIB1w_NtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryENtNtB31_6format13DefaultFieldsNtB4q_6FormatNtNtB24_6writer15IndicatifWriterEB3q_EEB2R_EEECshFZivb7RUAJ_8ruff_dev.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1w_INtNtNtBG_3fmt9fmt_layer5LayerIB1w_NtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryENtNtB31_6format13DefaultFieldsNtB4q_6FormatNtNtB24_6writer15IndicatifWriterEB3q_EEB2R_EEECshFZivb7RUAJ_8ruff_dev.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1w_INtNtNtBG_3fmt9fmt_layer5LayerIB1w_NtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryENtNtB31_6format13DefaultFieldsNtB4q_6FormatNtNtB24_6writer15IndicatifWriterEB3q_EEB2R_EEECshFZivb7RUAJ_8ruff_dev.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1y_INtNtNtBI_3fmt9fmt_layer5LayerIB1y_NtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryENtNtB33_6format13DefaultFieldsNtB4s_6FormatNtNtB26_6writer15IndicatifWriterEB3s_EEB2T_EEECshFZivb7RUAJ_8ruff_dev.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1164, !noalias !1165, !noundef !6 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1164, !noalias !1165
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E8try_growCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(648) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit
    i64 0, label %bb.e
  ], !prof !31

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E8try_growCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 8 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1171, !noalias !1172, !nonnull !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit, label %bb.m, !prof !32

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit
  %i.k = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond62, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45, label %bb.m, !prof !32

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #28 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1173
  store i64 0, ptr %i.a, align 8, !noalias !1173
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !1173
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !1173
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredNtNtNtBG_6filter3env9EnvFilterNtNtBE_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtBG_7sharded8RegistryEEECshFZivb7RUAJ_8ruff_dev.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(456) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1181, !noalias !1182, !noundef !6 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1181, !noalias !1182, !nonnull !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1181, !noalias !1182 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !1183
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 56                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 164703072086692425
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.p, !prof !32

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i
  %or.cond62.i = icmp ult i64 %i.c, 164703072086692426
  br i1 %or.cond62.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i, label %bb.p, !prof !32

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1183
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #28, !noalias !1183 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 56
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #28, !noalias !1183 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1183
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1183
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1183
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(456) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw i64 %i.g, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1183
  %i.x = mul i64 %.sink.i.i, 56                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 164703072086692426
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.n, !prof !32

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  store i64 0, ptr %i.a, align 8, !noalias !1184
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1184
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !1184
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #28, !noalias !1183
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #29
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef align 8 captures(none) dereferenceable(456) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1188, !noalias !1189, !noundef !6 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1188, !noalias !1189, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink9.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink8.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %i.f = load i64, ptr %.sink8.i, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.g, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectiveECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(56) %2) #25
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(456) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.a ] ; 4 uses
  %.sroa.05.0 = phi ptr [ %i.e, %bb.e ], [ %.sink8.i, %bb.a ]
  %.sroa.04.0 = phi ptr [ %i.k, %bb.e ], [ %.sink9.i, %bb.a ]
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.g, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %.sroa.04.0, i64 %1 ; 3 uses
  %i.m = icmp ult i64 %1, %i.i
  br i1 %i.m, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #29
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.n = add i64 %i.i, 1
  store i64 %i.n, ptr %.sroa.05.0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  ret void

bb.i:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = sub nuw i64 %i.i, %1
  %i.q = mul i64 %i.p, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1197, !noalias !1198, !noundef !6 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1197, !noalias !1198, !nonnull !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1197, !noalias !1198 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !1199
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 80                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 115292150460684697
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.p, !prof !32

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i
  %or.cond62.i = icmp ult i64 %i.c, 115292150460684698
  br i1 %or.cond62.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i, label %bb.p, !prof !32

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1199
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #28, !noalias !1199 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 80
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #28, !noalias !1199 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1199
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !1199
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1199
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(648) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw i64 %i.g, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(648) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1199
  %i.x = mul i64 %.sink.i.i, 80                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 115292150460684698
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.n, !prof !32

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1200
  store i64 0, ptr %i.a, align 8, !noalias !1200
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1200
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !1200
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #28, !noalias !1199
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #29
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef align 8 captures(none) dereferenceable(648) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1204, !noalias !1205, !noundef !6 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1204, !noalias !1205, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink9.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink8.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %i.f = load i64, ptr %.sink8.i, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.g, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(80) %2) #25
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(648) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.a ] ; 4 uses
  %.sroa.05.0 = phi ptr [ %i.e, %bb.e ], [ %.sink8.i, %bb.a ]
  %.sroa.04.0 = phi ptr [ %i.k, %bb.e ], [ %.sink9.i, %bb.a ]
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.g, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.sroa.04.0, i64 %1 ; 3 uses
  %i.m = icmp ult i64 %1, %i.i
  br i1 %i.m, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #29
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.n = add i64 %i.i, 1
  store i64 %i.n, ptr %.sroa.05.0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  ret void

bb.i:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.p = sub nuw i64 %i.i, %1
  %i.q = mul i64 %i.p, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPNtNtCshFZivb7RUAJ_8ruff_dev10format_dev15CheckRepoResultENtNtNtB6_3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPRNtNtCsoTR8nlGN3X_18ty_python_semantic4lint6LintIdENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldEENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetEENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPTRINtNtB6_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1C_5codes4RuleEEENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, i32 noundef %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmt(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB5_6WriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber19record_follows_from(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5event(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber6record(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_span(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = load i64, ptr %1, align 8, !range !13, !noundef !6
  switch i64 %i.c, label %bb.b [
end_hunk_0
begin_hunk_1_@_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10RightParenINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10RightParenINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DictElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression16ComparisonTargetINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression16SubscriptElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression22FormattedStringContentINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression22TemplatedStringContentINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression3ArgINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression5ParamINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6CompIfINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7ElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace9EmptyLineINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement11ImportAliasINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement12AssignTargetINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13ExceptHandlerINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14MatchOrElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14SmallStatementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17ExceptStarHandlerINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19MatchKeywordElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19MatchMappingElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20MatchSequenceElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement29StarrableMatchSequenceElementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement8NameItemINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement8WithItemINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9DecoratorINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9MatchCaseINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9StatementINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement9TypeParamINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5ScopeINtNtNtB1i_5layer7layered7LayeredINtNtNtB1i_3fmt9fmt_layer5LayerIB26_NtNtNtB1i_6filter3env9EnvFilterNtNtB1g_7sharded8RegistryENtNtB2H_6format13DefaultFieldsNtB49_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEB37_EENtB4_13SpecAdvanceBy15spec_advance_byCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher18set_global_default(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCshrKEl6z2Syk_11tracing_log10log_tracerNtB6_7Builder14with_max_levelNtCsdxG2AMukdbL_3log11LevelFilterECshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef range(i64 0, 6)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCshrKEl6z2Syk_11tracing_log10log_tracerNtB5_7Builder4init(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_CsdxG2AMukdbL_3logNtB5_14SetLoggerErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB2_21SetGlobalDefaultErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB4_21SetGlobalDefaultErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs3pBv9WGWlWf_12tracing_core5fieldNtB2_8HexBytesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { "function-inline-cost-multiplier"="2" }
attributes #28 = { nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!6 = !{}
!7 = !{i64 -3, i64 -9223372036854775808}
!8 = !{i64 8}
!9 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEECshFZivb7RUAJ_8ruff_dev}
!10 = !{i64 -1, i64 30}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{i64 -2, i64 -9223372036854775808}
!13 = !{i64 0, i64 3}
!14 = !{i64 -2, i64 30}
!15 = !{i64 -1, i64 6}
!16 = !{i64 0, i64 -9223372036854775804}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{i64 0, i64 30}
!20 = !{i64 0, i64 2}
!21 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEECshFZivb7RUAJ_8ruff_dev}
!22 = !{i64 0, i64 6}
!23 = !{i64 0, i64 13}
!24 = !{i64 0, i64 10}
!25 = !{i64 0, i64 -9223372036854775806}
!26 = !{i64 0, i64 -9223372036854775801}
!27 = !{i64 0, i64 5}
!28 = !{i8 0, i8 2}
!29 = !{i64 1, i64 536870913}
!30 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!31 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!32 = !{!"branch_weights", i32 2000, i32 2002}
!33 = !{i64 -1, i64 5}
!34 = !{i8 0, i8 3}
!35 = !{i64 1, i64 0}
!36 = !{i32 0, i32 2}
!37 = !{i8 0, i8 8}
!38 = !{i64 0, i64 -9223372036854775807}
!39 = distinct !{!39, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev"}
!40 = distinct !{!40, !39, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev: argument 0"}
!41 = distinct !{!41, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev"}
!42 = distinct !{!42, !41, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!43 = distinct !{!43, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!44 = distinct !{!44, !43, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!45 = distinct !{!45, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev"}
!46 = distinct !{!46, !45, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev: argument 0"}
!47 = distinct !{!47, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev"}
!48 = distinct !{!48, !47, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!49 = distinct !{!49, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!50 = distinct !{!50, !49, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!51 = !{!40}
!52 = !{!42}
!53 = !{!44}
!54 = !{!44, !42, !40}
!55 = !{!46}
!56 = !{!48}
!57 = !{!50}
!58 = !{!50, !48, !46}
!59 = distinct !{!59, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!60 = distinct !{!60, !59, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!63 = distinct !{!63, !62, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEECshFZivb7RUAJ_8ruff_dev"}
!66 = distinct !{!66, !65, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!67 = !{!66}
!68 = distinct !{!68, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6OrElseECshFZivb7RUAJ_8ruff_dev"}
!69 = distinct !{!69, !68, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6OrElseECshFZivb7RUAJ_8ruff_dev: argument 0"}
!70 = distinct !{!70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6OrElseEECshFZivb7RUAJ_8ruff_dev"}
!71 = distinct !{!71, !70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6OrElseEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!72 = distinct !{null, null, null}
!73 = distinct !{null, null}
!74 = !{!69}
!75 = !{!71}
!76 = distinct !{!76, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif12progress_bar11ProgressBarECshFZivb7RUAJ_8ruff_dev"}
!77 = distinct !{!77, !76, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif12progress_bar11ProgressBarECshFZivb7RUAJ_8ruff_dev: argument 0"}
!78 = distinct !{!78, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEECshFZivb7RUAJ_8ruff_dev"}
!79 = distinct !{!79, !78, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!80 = distinct !{!80, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!81 = distinct !{!81, !80, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!82 = distinct !{!82, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionEECshFZivb7RUAJ_8ruff_dev"}
!83 = distinct !{!83, !82, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!84 = distinct !{!84, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!85 = distinct !{!85, !84, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!86 = distinct !{!86, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionEECshFZivb7RUAJ_8ruff_dev"}
!87 = distinct !{!87, !86, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!88 = distinct !{!88, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!89 = distinct !{!89, !88, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs1UvybGPDVxf_9indicatif5state14AtomicPositionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!90 = distinct !{!90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEEECshFZivb7RUAJ_8ruff_dev"}
!91 = distinct !{!91, !90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!92 = distinct !{!92, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEENtNtNtB1z_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!93 = distinct !{!93, !92, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEENtNtNtB1z_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!94 = distinct !{!94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEEECshFZivb7RUAJ_8ruff_dev"}
!95 = distinct !{!95, !94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!96 = distinct !{!96, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEENtNtNtB1z_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!97 = distinct !{!97, !96, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs1UvybGPDVxf_9indicatif12progress_bar6TickerEEENtNtNtB1z_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!98 = !{!77}
!99 = !{!81, !79, !77}
!100 = !{!83}
!101 = !{!85}
!102 = !{!85, !83, !77}
!103 = !{!85, !83}
!104 = !{!87}
!105 = !{!89}
!106 = !{!89, !87, !77}
!107 = !{!89, !87}
!108 = !{!91}
!109 = !{!93}
!110 = !{!93, !91, !77}
!111 = !{!93, !91}
!112 = !{!95}
!113 = !{!97}
!114 = !{!97, !95, !77}
!115 = !{!97, !95}
!116 = distinct !{!116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ParamSlashECshFZivb7RUAJ_8ruff_dev"}
!117 = distinct !{!117, !116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ParamSlashECshFZivb7RUAJ_8ruff_dev: argument 0"}
!118 = distinct !{!118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op5CommaEECshFZivb7RUAJ_8ruff_dev"}
!119 = distinct !{!119, !118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op5CommaEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!120 = distinct !{!120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!121 = distinct !{!121, !120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!122 = !{!119, !117}
!123 = !{!121, !117}
!124 = distinct !{!124, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECshFZivb7RUAJ_8ruff_dev"}
!125 = distinct !{!125, !124, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15NameOrAttributeECshFZivb7RUAJ_8ruff_dev: argument 0"}
!126 = !{!125}
!127 = distinct !{null}
!128 = distinct !{!128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4FromECshFZivb7RUAJ_8ruff_dev"}
!129 = distinct !{!129, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4FromECshFZivb7RUAJ_8ruff_dev: argument 0"}
!130 = distinct !{!130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceEECshFZivb7RUAJ_8ruff_dev"}
!131 = distinct !{!131, !130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!132 = distinct !{!132, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!133 = distinct !{!133, !132, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!134 = !{!131, !129}
!135 = !{!133, !129}
!136 = distinct !{!136, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11AssignEqualECshFZivb7RUAJ_8ruff_dev"}
!137 = distinct !{!137, !136, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11AssignEqualECshFZivb7RUAJ_8ruff_dev: argument 0"}
!138 = distinct !{!138, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!139 = distinct !{!139, !138, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!140 = !{!139, !137}
!141 = distinct !{!141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op9SemicolonECshFZivb7RUAJ_8ruff_dev"}
!142 = distinct !{!142, !141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op9SemicolonECshFZivb7RUAJ_8ruff_dev: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!144 = distinct !{!144, !143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!145 = !{!144, !142}
!146 = distinct !{!146, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14TypeParametersECshFZivb7RUAJ_8ruff_dev"}
!147 = distinct !{!147, !146, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14TypeParametersECshFZivb7RUAJ_8ruff_dev: argument 0"}
!148 = distinct !{!148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17LeftSquareBracketECshFZivb7RUAJ_8ruff_dev"}
!149 = distinct !{!149, !148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17LeftSquareBracketECshFZivb7RUAJ_8ruff_dev: argument 0"}
!150 = distinct !{!150, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!151 = distinct !{!151, !150, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!152 = distinct !{!152, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18RightSquareBracketECshFZivb7RUAJ_8ruff_dev"}
!153 = distinct !{!153, !152, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18RightSquareBracketECshFZivb7RUAJ_8ruff_dev: argument 0"}
!154 = distinct !{!154, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!155 = distinct !{!155, !154, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!156 = !{!151, !149, !147}
!157 = !{!155, !153, !147}
!158 = distinct !{!158, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameECshFZivb7RUAJ_8ruff_dev"}
!159 = distinct !{!159, !158, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement6AsNameECshFZivb7RUAJ_8ruff_dev: argument 0"}
!160 = distinct !{!160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!161 = distinct !{!161, !160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!162 = distinct !{!162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!163 = distinct !{!163, !162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!164 = !{!161, !159}
!165 = !{!163, !159}
!166 = distinct !{!166, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev"}
!167 = distinct !{!167, !166, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!168 = distinct !{!168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEEECshFZivb7RUAJ_8ruff_dev"}
!169 = distinct !{!169, !168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!170 = !{!167}
!171 = !{!169}
!172 = distinct !{!172, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4ListECshFZivb7RUAJ_8ruff_dev"}
!173 = distinct !{!173, !172, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4ListECshFZivb7RUAJ_8ruff_dev: argument 0"}
!174 = distinct !{!174, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17LeftSquareBracketECshFZivb7RUAJ_8ruff_dev"}
!175 = distinct !{!175, !174, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17LeftSquareBracketECshFZivb7RUAJ_8ruff_dev: argument 0"}
!176 = distinct !{!176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!177 = distinct !{!177, !176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!178 = distinct !{!178, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18RightSquareBracketECshFZivb7RUAJ_8ruff_dev"}
!179 = distinct !{!179, !178, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18RightSquareBracketECshFZivb7RUAJ_8ruff_dev: argument 0"}
!180 = distinct !{!180, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev"}
!181 = distinct !{!181, !180, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10whitespace25ParenthesizableWhitespaceECshFZivb7RUAJ_8ruff_dev: argument 0"}
!182 = !{!177, !175, !173}
!183 = !{!181, !179, !173}
!184 = distinct !{!184, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6StringECshFZivb7RUAJ_8ruff_dev"}
!185 = distinct !{!185, !184, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6StringECshFZivb7RUAJ_8ruff_dev: argument 0"}
!186 = distinct !{null}
!187 = !{!185}
!188 = distinct !{!188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1O_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB2E_INtNtNtB1O_3fmt9fmt_layer5LayerIB2E_NtNtNtB1O_6filter3env9EnvFilterNtNtB1M_7sharded8RegistryENtNtB4a_6format13DefaultFieldsNtB5C_6FormatNtNtB3d_6writer15IndicatifWriterEB4A_EEB40_EEj10_EEECshFZivb7RUAJ_8ruff_dev"}
!189 = distinct !{!189, !188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1O_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB2E_INtNtNtB1O_3fmt9fmt_layer5LayerIB2E_NtNtNtB1O_6filter3env9EnvFilterNtNtB1M_7sharded8RegistryENtNtB4a_6format13DefaultFieldsNtB5C_6FormatNtNtB3d_6writer15IndicatifWriterEB4A_EEB40_EEj10_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!190 = distinct !{!190, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1g_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB26_INtNtNtB1g_3fmt9fmt_layer5LayerIB26_NtNtNtB1g_6filter3env9EnvFilterNtNtB1e_7sharded8RegistryENtNtB3C_6format13DefaultFieldsNtB54_6FormatNtNtB2F_6writer15IndicatifWriterEB42_EEB3s_EEj10_EECshFZivb7RUAJ_8ruff_dev"}
!191 = distinct !{!191, !190, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1g_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB26_INtNtNtB1g_3fmt9fmt_layer5LayerIB26_NtNtNtB1g_6filter3env9EnvFilterNtNtB1e_7sharded8RegistryENtNtB3C_6format13DefaultFieldsNtB54_6FormatNtNtB2F_6writer15IndicatifWriterEB42_EEB3s_EEj10_EECshFZivb7RUAJ_8ruff_dev: argument 0"}
!192 = distinct !{!192, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!193 = distinct !{!193, !192, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!194 = distinct !{!194, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E6tripleCshFZivb7RUAJ_8ruff_dev"}
!195 = distinct !{!195, !194, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E6tripleCshFZivb7RUAJ_8ruff_dev: argument 1"}
!196 = distinct !{!196, !194, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1D_INtNtNtBN_3fmt9fmt_layer5LayerIB1D_NtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryENtNtB38_6format13DefaultFieldsNtB4x_6FormatNtNtB2b_6writer15IndicatifWriterEB3x_EEB2Y_EEj10_E6tripleCshFZivb7RUAJ_8ruff_dev: argument 0"}
!197 = !{!189}
!198 = !{!191}
!199 = !{!193}
!200 = !{!193, !191, !189}
!201 = !{!195, !193, !191, !189}
!202 = !{!196}
!203 = !{!191, !189}
!204 = distinct !{!204, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1O_5layer7layered7LayeredNtNtNtB1O_6filter3env9EnvFilterNtNtB1M_7sharded8RegistryEEj10_EEECshFZivb7RUAJ_8ruff_dev"}
!205 = distinct !{!205, !204, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1O_5layer7layered7LayeredNtNtNtB1O_6filter3env9EnvFilterNtNtB1M_7sharded8RegistryEEj10_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!206 = distinct !{!206, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1g_5layer7layered7LayeredNtNtNtB1g_6filter3env9EnvFilterNtNtB1e_7sharded8RegistryEEj10_EECshFZivb7RUAJ_8ruff_dev"}
!207 = distinct !{!207, !206, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtB1g_5layer7layered7LayeredNtNtNtB1g_6filter3env9EnvFilterNtNtB1e_7sharded8RegistryEEj10_EECshFZivb7RUAJ_8ruff_dev: argument 0"}
!208 = distinct !{!208, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!209 = distinct !{!209, !208, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!210 = distinct !{!210, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCshFZivb7RUAJ_8ruff_dev"}
!211 = distinct !{!211, !210, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCshFZivb7RUAJ_8ruff_dev: argument 1"}
!212 = distinct !{!212, !210, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEj10_E6tripleCshFZivb7RUAJ_8ruff_dev: argument 0"}
!213 = !{!205}
!214 = !{!207}
!215 = !{!209}
!216 = !{!209, !207, !205}
!217 = !{!211, !209, !207, !205}
!218 = !{!212}
!219 = !{!207, !205}
!220 = distinct !{!220, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev"}
!221 = distinct !{!221, !220, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev: argument 0"}
!222 = distinct !{!222, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev"}
!223 = distinct !{!223, !222, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!224 = distinct !{!224, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!225 = distinct !{!225, !224, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!226 = distinct !{!226, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB1y_3fmt9fmt_layer5LayerIB1s_NtNtNtB1y_6filter3env9EnvFilterNtNtNtB1y_8registry7sharded8RegistryENtNtB2x_6format13DefaultFieldsNtB4a_6FormatNtNtBE_6writer15IndicatifWriterEB2X_EEECshFZivb7RUAJ_8ruff_dev"}
!227 = distinct !{!227, !226, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB1y_3fmt9fmt_layer5LayerIB1s_NtNtNtB1y_6filter3env9EnvFilterNtNtNtB1y_8registry7sharded8RegistryENtNtB2x_6format13DefaultFieldsNtB4a_6FormatNtNtBE_6writer15IndicatifWriterEB2X_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!228 = distinct !{!228, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev"}
!229 = distinct !{!229, !228, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1UvybGPDVxf_9indicatif5multi13MultiProgressECshFZivb7RUAJ_8ruff_dev: argument 0"}
!230 = distinct !{!230, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev"}
!231 = distinct !{!231, !230, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!232 = distinct !{!232, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
end_hunk_1
