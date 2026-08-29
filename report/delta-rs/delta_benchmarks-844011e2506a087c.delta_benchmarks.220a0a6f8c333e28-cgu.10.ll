Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.10?download=true
inline.NumInlined: 5210
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  tail call void @llvm.trap()
  unreachable

.sink.split:                                      ; preds = %bb.g, %bb.n
  %.sink18 = phi i64 [ 24, %bb.n ], [ 8, %bb.g ]
  %.sink16 = phi ptr [ %i.s, %bb.n ], [ %i.c, %bb.g ]
  %.sink15 = phi i64 [ 32, %bb.n ], [ 16, %bb.g ]
  %.sink13 = phi i64 [ %i.u, %bb.n ], [ %i.e, %bb.g ]
  %.sink12.ph = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  store ptr %.sink16, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sink12 = phi i64 [ 8, %bb.b ], [ %.sink12.ph, %.sink.split ]
  %.sink10 = phi ptr [ %i.c, %bb.b ], [ %.sink10.ph, %.sink.split ]
  %.sink9 = phi i64 [ 16, %bb.b ], [ %.sink9.ph, %.sink.split ]
  %.sink7 = phi i64 [ %i.e, %bb.b ], [ %.sink7.ph, %.sink.split ]
  %.sink = phi i64 [ 0, %bb.b ], [ %i.a, %.sink.split ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store ptr %.sink10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i64 %.sink7, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !8
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !8
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.ae, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_12MergeMetricsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.n, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @181, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @181, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @181, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @181, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @181, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @181, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @181, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @181, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @181, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @181, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @337, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.m, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @337, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.a, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @321, ptr %i.am, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @351, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsf_NtNtCs4s1dLWtJWRF_12clap_builder7builder10resettableINtNtB7_12value_parser15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindEINtB5_14IntoResettableNtBY_11ValueParserE15into_resettableB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @191, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsf_NtNtCs4s1dLWtJWRF_12clap_builder7builder10resettableNtNtB7_12value_parser11ValueParserINtB5_14IntoResettableBV_E15into_resettableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsf_NtNtCs4s1dLWtJWRF_12clap_builder7builder10resettableNtNtB7_12value_parser21__AnonymousValueParserINtB5_14IntoResettableNtBX_11ValueParserE15into_resettableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9454)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9454, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9460, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !9454 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val13.i.i.i = load <16 x i8>, ptr %.pre.i, align 16, !noalias !9461
  %i.g = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.i = bitcast <16 x i1> %i.g to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.86.018.i.i = phi i16 [ %i.i, %bb.c ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.017.i.i = phi i64 [ %i.e, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.k = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.j, align 16, !noalias !9464
  %i.l = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -640 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.l to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.m, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i.i
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.s ; 3 uses
  %i.u = add i64 %.sroa.107.017.i.i, -1           ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.e, !noalias !9460

bb.e:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.body.i.i.i unwind label %bb.f, !noalias !9460

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9460
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.g, !noalias !9460

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9476)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9479, !noalias !9460, !nonnull !8, !noundef !8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !9482
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.h:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.j, !noalias !9460

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9492)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !9495, !noalias !9460, !nonnull !8, !noundef !8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !9496
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad) #41, !noalias !9460
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9460
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.h, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ai = icmp eq i64 %i.u, 0
  br i1 %i.ai, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %1 = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %1)
  %i.aj = mul i64 %i.b, 40
  %i.ak = and i64 %i.aj, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 48                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = sub i64 -48, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !9454
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9497)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9497, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9500)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9503, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !9497 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val13.i.i.i = load <16 x i8>, ptr %.pre.i, align 16, !noalias !9504
  %i.g = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.i = bitcast <16 x i1> %i.g to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.86.018.i.i = phi i16 [ %i.i, %bb.c ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.017.i.i = phi i64 [ %i.e, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.k = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.j, align 16, !noalias !9507
  %i.l = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -640 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.l to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.m, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i.i
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.s ; 3 uses
  %i.u = add i64 %.sroa.107.017.i.i, -1           ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.e, !noalias !9503

bb.e:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.body.i.i.i unwind label %bb.f, !noalias !9503

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9503
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.g, !noalias !9503

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9519)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9522, !noalias !9503, !nonnull !8, !noundef !8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !9525
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.h:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.j, !noalias !9503

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !9538, !noalias !9503, !nonnull !8, !noundef !8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !9539
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad) #41, !noalias !9503
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9503
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.h, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ai = icmp eq i64 %i.u, 0
  br i1 %i.ai, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %1 = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %1)
  %i.aj = mul i64 %i.b, 40
  %i.ak = and i64 %i.aj, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 48                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = sub i64 -48, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !9497
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i128, ptr %1, align 16, !range !2557, !noundef !8 ; 3 uses
  %i.s = icmp ne i128 %i.r, 10
  tail call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw nsw i128 %i.r to i64
  %i.u = add nsw i64 %i.t, -2
  %i.v = icmp samesign ugt i128 %i.r, 1
  %i.w = select i1 %i.v, i64 %i.u, i64 8
  switch i64 %i.w, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
    i64 44, label %bb.au
    i64 45, label %bb.av
    i64 46, label %bb.aw
    i64 47, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i128 2, ptr %0, align 16
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i8, ptr %i.x, align 16, !range !48, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.y, ptr %i.z, align 16
  store i128 3, ptr %0, align 16
  br label %bb.ba

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x i16>, ptr %i.aa, align 16
  store <2 x i16> %i.ac, ptr %i.ab, align 16
  store i128 4, ptr %0, align 16
  br label %bb.ba

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 16, !range !49, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ae, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ag, ptr %i.ai, align 4
  store i128 5, ptr %0, align 16
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 16, !range !17, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.an, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.am, ptr %i.ao, align 8
  store i128 6, ptr %0, align 16
  br label %bb.ba

bb.h:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.at = load i8, ptr %i.as, align 1, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load <2 x i32>, ptr %i.ap, align 16
  store <2 x i32> %i.av, ptr %i.au, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ar, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.at, ptr %i.ax, align 1
  store i128 7, ptr %0, align 16
  br label %bb.ba

bb.i:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i8, ptr %i.az, align 16, !noundef !8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load <2 x i64>, ptr %i.ay, align 16
  store <2 x i64> %i.be, ptr %i.bd, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.ba, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.bc, ptr %i.bg, align 1
  store i128 8, ptr %0, align 16
  br label %bb.ba

bb.j:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i128, ptr %i.bh, align 16, !range !9540, !noundef !8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i128, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load i8, ptr %i.bl, align 16, !noundef !8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.bi, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %i.bk, ptr %i.bq, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.bm, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.bo, ptr %i.bs, align 1
  store i128 9, ptr %0, align 16
  br label %bb.ba

bb.k:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = load i8, ptr %i.bt, align 16, !noundef !8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.bu, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 49
end_hunk_0
