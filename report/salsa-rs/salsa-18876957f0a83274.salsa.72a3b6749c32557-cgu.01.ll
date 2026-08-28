Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.01?download=true
inline.NumInlined: 295
inline.NumDeleted: 129
begin_hunk_0_@_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly captures(none) dereferenceable(13) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !noundef !4    ; 4 uses
  %i.b = and i8 %i.a, 3                           ; 2 uses
  switch i8 %i.b, label %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39 [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ], !prof !269

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 8
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.g = load ptr, ptr %i.e, align 1, !nonnull !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %.sroa.3.0.in = select i1 %i.d, ptr %i.f, ptr %i.i
  %.sroa.0.0.in = select i1 %i.d, ptr %i.e, ptr %i.h
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 1, !range !402, !noundef !4
  %.sroa.3.0 = load i32, ptr %.sroa.3.0.in, align 1, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load i32, ptr %i.j, align 1, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0, ptr %i.l, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.k, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.d

_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.n = load i32, ptr %i.m, align 1, !noundef !4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load ptr, ptr %i.p, align 1, !nonnull !4, !noundef !4
  %i.r = and i8 %i.a, 8
  %i.s = icmp eq i8 %i.r, 0
  %spec.select.idx = select i1 %i.s, i64 0, i64 56
  %spec.select = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.idx
  %.sroa.07.0.in.in = lshr i8 %i.a, 2
  %.sroa.07.0.in = and i8 %.sroa.07.0.in.in, 1
  %.sroa.07.0 = zext nneg i8 %.sroa.07.0.in to i64
  %i.t = icmp eq i8 %i.b, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.select, ptr %.sroa.6.0..sroa_idx18, align 8
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %.sroa.7.0..sroa_idx26, align 8
  %. = select i1 %i.t, i32 2, i32 1, !prof !275
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39, %bb.c
  %.sink = phi i32 [ %., %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39 ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE6layoutB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp samesign ugt i64 %1, 1152921504606846968
  br i1 %.not.i, label %bb.d, label %_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable

_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit: ; preds = %bb.c
  %i.b = shl nuw nsw i64 %1, 3
  %i.c = add nuw nsw i64 %i.b, 56
  store i64 8, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 56, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE6layoutB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp samesign ugt i64 %1, 768614336404564645
  br i1 %.not.i, label %bb.d, label %_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable

_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit: ; preds = %bb.c
  %i.b = mul nuw nsw i64 %1, 12
  %i.c = add nuw nsw i64 %i.b, 56
  store i64 8, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 56, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
  unreachable

_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit: ; preds = %bb.a
  %i.b = shl nuw nsw i64 %1, 3
  store i64 4, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
  unreachable

_RNvMNtNtCs4NRVxsYgnAr_4core5alloc6layoutNtB2_6Layout6extend.exit: ; preds = %bb.a
  %i.b = mul nuw nsw i64 %1, 12
  store i64 4, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard14seed_iteration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !range !216, !noundef !4
  %i.d = load i64, ptr %1, align 8, !range !345, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.f = load i8, ptr %i.e, align 8, !alias.scope !403, !noalias !406, !noundef !4 ; 4 uses
  %i.g = and i8 %i.f, 3                           ; 2 uses
  switch i8 %i.g, label %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i [
    i8 0, label %bb.b
    i8 1, label %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge
  ], !prof !269

._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge: ; preds = %bb.a
  %.pre = and i8 %i.f, 8
  br label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27, !noalias !408
  unreachable

_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i32, ptr %i.h, align 1, !alias.scope !403, !noalias !406, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load ptr, ptr %i.j, align 1, !alias.scope !403, !noalias !406, !nonnull !4, !noundef !4
  %i.l = and i8 %i.f, 8                           ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  %spec.select.idx.i = select i1 %i.m, i64 0, i64 56
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.idx.i
  %.sroa.07.0.in.in.i = lshr i8 %i.f, 2
  %.sroa.07.0.in.i = and i8 %.sroa.07.0.in.in.i, 1
  %i.n = zext nneg i8 %.sroa.07.0.in.i to i64
  %i.o = zext i32 %i.i to i64
  br label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit

_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit: ; preds = %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge, %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i
  %.pre-phi = phi i8 [ %.pre, %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge ], [ %i.l, %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i ]
  %.sroa.9.0.shrunk = phi i64 [ 0, %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge ], [ %i.o, %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i ]
  %.sroa.6.0 = phi ptr [ inttoptr (i64 4 to ptr), %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge ], [ %spec.select.i, %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i ]
  %.sroa.9.0.shrunk.a = phi i64 [ 1, %._RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit_crit_edge ], [ %i.n, %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit39.i ]
  %i.p = icmp eq i8 %i.g, 2
  %i.q = icmp eq i8 %.pre-phi, 0
  br i1 %i.q, label %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.s = load ptr, ptr %i.r, align 1, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids.exit

_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids.exit: ; preds = %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit, %bb.c
  %.sroa.3.0.i2 = phi i64 [ %i.w, %bb.c ], [ 0, %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit ]
  %.sroa.0.0.i3 = phi ptr [ %i.u, %bb.c ], [ inttoptr (i64 8 to ptr), %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra20is_derived_untracked.exit ]
  %i.x = load ptr, ptr %0, align 8, !nonnull !4, !align !173, !noundef !4 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store i64 -1, ptr %i.y, align 8, !noalias !409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !412, !noalias !415, !noundef !4 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !412, !noalias !415, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !412, !noalias !415, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.aa, %i.ae
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !335

bb.d:                                             ; preds = %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids.exit
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions18tracked_struct_ids.exit
  %.not2.i = icmp eq i64 %i.aa, 0
  br i1 %.not2.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr [184 x i8], ptr %i.ac, i64 %i.aa
  %i.ag = getelementptr i8, ptr %i.af, i64 -184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  store i64 %.sroa.9.0.shrunk.a, ptr %i.a, align 8, !noalias !417
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !417
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.9.0.shrunk, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !417
  invoke void @_RNvMNtCsC8CapfvpQ1_5salsa12active_queryNtB2_11ActiveQuery14seed_iteration(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ag, i8 noundef %i.c, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i3, i64 noundef %.sroa.3.0.i2)
          to label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvMst_B5_NtB5_16ActiveQueryGuard14seed_iteration0EB7_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load i64, ptr %i.y, align 8, !noundef !4
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.y, align 8
  resume { ptr, i32 } %i.ah

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvMst_B5_NtB5_16ActiveQueryGuard14seed_iteration0EB7_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  %i.ak = load i64, ptr %i.y, align 8, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.y, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard16take_cycle_heads(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !173, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 -1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !418, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !418, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !418, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.h
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !335

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not4.i = icmp eq i64 %i.d, 0
  br i1 %.not4.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr [184 x i8], ptr %i.f, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 -184
  %i.k = invoke noundef i64 @_RNvMNtCsC8CapfvpQ1_5salsa12active_queryNtB2_11ActiveQuery16take_cycle_heads(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.j)
          to label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutNtNtB7_5cycle10CycleHeadsNCNvMst_B5_NtB5_16ActiveQueryGuard16take_cycle_heads0EB7_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i64, ptr %i.b, align 8, !noundef !4
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.b, align 8
  resume { ptr, i32 } %i.l

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutNtNtB7_5cycle10CycleHeadsNCNvMst_B5_NtB5_16ActiveQueryGuard16take_cycle_heads0EB7_.exit: ; preds = %bb.e
  %i.o = load i64, ptr %i.b, align 8, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.b, align 8
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard23seed_tracked_struct_ids(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !173, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 -1, ptr %i.b, align 8, !noalias !421
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !424, !noalias !427, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !424, !noalias !427, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !424, !noalias !427, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.h
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !335

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not2.i = icmp eq i64 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #27
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr [184 x i8], ptr %i.f, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 -88
  invoke void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap4seed(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2)
          to label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvMst_B5_NtB5_16ActiveQueryGuard23seed_tracked_struct_ids0EB7_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.b, align 8, !noundef !4
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.b, align 8
  resume { ptr, i32 } %i.k

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvMst_B5_NtB5_16ActiveQueryGuard23seed_tracked_struct_ids0EB7_.exit: ; preds = %bb.e
  %i.n = load i64, ptr %i.b, align 8, !noundef !4
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard6detach(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !align !173, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i64 -1, ptr %i.c, align 8, !noalias !429
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !432, !noalias !435, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !432, !noalias !435, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !432, !noalias !435, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.i
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !335

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not2.i = icmp eq i64 %i.e, 0
  br i1 %.not2.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc2 unwind label %.body

.noexc2:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr [184 x i8], ptr %i.g, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -184
  invoke void @_RNvMNtCsC8CapfvpQ1_5salsa12active_queryNtB2_11ActiveQuery20detach_input_outputs(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.k)
          to label %bb.f unwind label %.body

.body:                                            ; preds = %bb.b, %bb.d, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i64, ptr %i.c, align 8, !noundef !4
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.c, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard8complete(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i16 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
