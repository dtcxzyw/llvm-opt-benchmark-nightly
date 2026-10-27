Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/bytecheck_derive-bdc67c3bae031cdb.bytecheck_derive.879b704bd8435860-cgu.1?download=true
inline.NumInlined: 71
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB5_4Repr10from_attrs:bb.a
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [1 x i8], align 1                 ; 3 uses
  %i.u = alloca [1 x i8], align 1                 ; 3 uses
  store i8 0, ptr %i.u, align 1
  store i8 0, ptr %i.t, align 1
  store i8 -1, ptr %i.s, align 1
  store i64 2, ptr %i.r, align 16
  %i.v = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCslNEiUQgeYIG_3syn4attr9Attribute4iterBy_(ptr align 8 %1, i64 %2) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.2.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.1 = phi ptr [ %i.w, %bb.a ], [ %i.ab, %.backedge ] ; 12 uses
  %i.aa = icmp eq ptr %.sroa.0.1, %i.x
  br i1 %i.aa, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 256
  %i.ac = call align 8 ptr @_RNvMs_NtCslNEiUQgeYIG_3syn4attrNtB4_4Meta4path(ptr align 8 %.sroa.0.1)
  %i.ad = call zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.ac, ptr nonnull @15, i64 4)
  br i1 %i.ad, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit, label %.backedge

.backedge:                                        ; preds = %bb.c, %_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit
  br label %bb.b

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit: ; preds = %bb.c
  %.not = icmp eq ptr %.sroa.0.1, null
  br i1 %.not, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42
  %i.ae = load i64, ptr %.sroa.0.1, align 8, !noalias !43 ; 2 uses
  %i.af = add i64 %i.ae, -40
  %i.ag = icmp ugt i64 %i.ae, 39
  %i.ah = select i1 %i.ag, i64 %i.af, i64 2
  switch i64 %i.ah, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %i.aj = call align 8 ptr @_RNvMNtCslNEiUQgeYIG_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstB4_(ptr nonnull align 8 %i.ai), !noalias !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @1) #19, !noalias !43
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = call i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.ak), !noalias !43
  %i.am = call align 8 ptr @_RNvMNtCslNEiUQgeYIG_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr nonnull align 8 %i.ai), !noalias !43 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i2.i.i, label %bb.h, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @2) #19, !noalias !43
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = call i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.an), !noalias !43
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 232
  store ptr %i.ap, ptr %i.k, align 8, !noalias !43
  store ptr %i.ai, ptr %i.j, align 8, !noalias !43
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCslNEiUQgeYIG_3syn4attr7parsing11DisplayPathEB14_(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.j), !noalias !43
  store ptr %i.k, ptr %i.i, align 8, !noalias !43
  store ptr @_RNvXs1_NtNtCslNEiUQgeYIG_3syn4attr7parsingNtB5_16DisplayAttrStyleNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !43
  %i.aq = call { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj3a_Kj2_ECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull @3, ptr nonnull align 8 %i.i), !noalias !43 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  call void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr %i.ar, ptr %i.as), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !43
  call void @_RINvNtCslNEiUQgeYIG_3syn5error4new2NtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr nonnull sret([24 x i8]) align 8 %i.n, i32 %i.al, i32 %i.ao, ptr nonnull align 8 %i.m), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  br label %_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  store ptr %i.u, ptr %i.b, align 8, !noalias !42
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx14, align 8, !noalias !42
  store ptr %i.s, ptr %.sroa.315.0..sroa_idx, align 8, !noalias !42
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 88
  %i.au = call align 4 ptr @_RNvMNtCslNEiUQgeYIG_3syn3macNtB2_14MacroDelimiter4span(ptr nonnull align 4 %i.at), !noalias !44
  %i.av = call i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan5close(ptr align 4 %i.au), !noalias !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 56
  call void @_RNvXsK_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.aw), !noalias !44
  call void @_RINvNtCslNEiUQgeYIG_3syn5parse12parse_scopedNCINvNtB4_4meta6parserNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB1a_4Repr10from_attrss_0E0EB1c_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.b, i32 %i.av, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  br label %_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit

bb.j:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 224
  %i.ay = call align 4 ptr @_RNvXseM_NtCslNEiUQgeYIG_3syn5tokenNtB6_2EqNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr nonnull align 4 %i.ax), !noalias !43
  %i.az = load i32, ptr %i.ay, align 4, !noalias !43
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 232
  store ptr %i.ba, ptr %i.f, align 8, !noalias !43
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 176
  store ptr %i.bb, ptr %i.e, align 8, !noalias !43
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCslNEiUQgeYIG_3syn4attr7parsing11DisplayPathEB14_(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e), !noalias !43
  store ptr %i.f, ptr %i.d, align 8, !noalias !43
  store ptr @_RNvXs1_NtNtCslNEiUQgeYIG_3syn4attr7parsingNtB5_16DisplayAttrStyleNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !43
  %i.bc = call { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj23_Kj2_ECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull @4, ptr nonnull align 8 %i.d), !noalias !43 ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0
  %i.be = extractvalue { ptr, ptr } %i.bc, 1
  call void @_RINvMNtCslNEiUQgeYIG_3syn5errorNtB3_5Error3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEB5_(ptr nonnull sret([24 x i8]) align 8 %i.g, i32 %i.az, ptr %i.bd, ptr %i.be), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit

_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p)
  %i.bf = load i64, ptr %i.q, align 8
  %.not12 = icmp eq i64 %i.bf, -1
  br i1 %.not12, label %.backedge, label %bb.r

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit.thread: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit, %bb.b
  %i.bg = load i8, ptr %i.u, align 1
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit.thread
  %i.bi = load i8, ptr %i.t, align 1
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB2c_4Repr10from_attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit.thread
  %i.bk = load i8, ptr %i.s, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load <2 x i64>, ptr %i.r, align 16
  store <2 x i64> %i.bm, ptr %i.bl, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bk, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.s, align 1              ; 2 uses
  %.not11 = icmp eq i8 %i.bn, -1
  br i1 %.not11, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.bo, align 8
  store i64 0, ptr %0, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.bp, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bn, ptr %.sroa.26.0..sroa_idx, align 8
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bq, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load <2 x i64>, ptr %i.r, align 16
  store <2 x i64> %i.br, ptr %.sroa.29.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.p
  store i64 0, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.r, %bb.n, %bb.l
  ret void

bb.r:                                             ; preds = %_RINvMNtCslNEiUQgeYIG_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB18_4Repr10from_attrss_0EB1a_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr4ReprNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1u_EE13from_residualBO_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.o, ptr nonnull align 8 @51)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbDPHjAM0yJM_16bytecheck_derive10attributesNtB4_15FieldAttributes5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 3 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  call void @_RNvXs7_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCslNEiUQgeYIG_3syn4path4PathENtNtB7_7default7Default7defaultCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([48 x i8]) align 8 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.t = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nonnull align 8 %i.s)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc19, %.noexc18, %.noexc17, %bb.o, %.noexc15, %.noexc14, %.noexc13, %bb.n, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i, %.noexc5, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i, %bb.m, %bb.p, %bb.i, %bb.f, %.backedge, %.invoke, %bb.r, %bb.c, %bb.b, %bb.a
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbDPHjAM0yJM_16bytecheck_derive10attributes15FieldAttributesEBF_(ptr nonnull align 8 %i.r) #17
          to label %bb.u unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCslNEiUQgeYIG_3syn4attr9Attribute4iterBy_(ptr align 8 %i.u, i64 %i.v)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENtB2_12IntoIterator9into_iterB1f_(ptr %i.x, ptr %i.y)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, ptr } %i.z, 0
  %i.ab = extractvalue { ptr, ptr } %i.z, 1
  store ptr %i.aa, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.d
  %i.af = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCslNEiUQgeYIG_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.q)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.e:                                             ; preds = %.backedge
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke align 8 ptr @_RNvMNtCslNEiUQgeYIG_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.af)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ah = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.ag, ptr nonnull @12, i64 9)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.j, %bb.q
  br label %.backedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !49
  %i.ai = load i64, ptr %i.af, align 8, !noalias !50 ; 2 uses
  %i.aj = add i64 %i.ai, -40
  %i.ak = icmp ugt i64 %i.ai, 39
  %i.al = select i1 %i.ak, i64 %i.aj, i64 2
  switch i64 %i.al, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.an = invoke align 8 ptr @_RNvMNtCslNEiUQgeYIG_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstB4_(ptr nonnull align 8 %i.am)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.m
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.invoke, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i: ; preds = %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.ao)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i
  %i.aq = invoke align 8 ptr @_RNvMNtCslNEiUQgeYIG_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr nonnull align 8 %i.am)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %.not.i2.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i, label %.invoke, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i

.invoke:                                          ; preds = %.noexc6, %.noexc
  %i.ar = phi ptr [ @1, %.noexc ], [ @2, %.noexc6 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 %i.ar) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i: ; preds = %.noexc6
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.at = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.as)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCslNEiUQgeYIG_3syn4path11PathSegmentE6unwrapCsbDPHjAM0yJM_16bytecheck_derive.exit3.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  store ptr %i.au, ptr %i.j, align 8, !noalias !50
  store ptr %i.am, ptr %i.i, align 8, !noalias !50
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCslNEiUQgeYIG_3syn4attr7parsing11DisplayPathEB14_(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.i)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  store ptr %i.j, ptr %i.h, align 8, !noalias !50
  store ptr @_RNvXs1_NtNtCslNEiUQgeYIG_3syn4attr7parsingNtB5_16DisplayAttrStyleNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !50
  %i.av = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj3a_Kj2_ECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull @3, ptr nonnull align 8 %i.h)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.aw = extractvalue { ptr, ptr } %i.av, 0
  %i.ax = extractvalue { ptr, ptr } %i.av, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr %i.aw, ptr %i.ax)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.noexc10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !50
  invoke void @_RINvNtCslNEiUQgeYIG_3syn5error4new2NtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr nonnull sret([24 x i8]) align 8 %i.m, i32 %i.ap, i32 %i.at, ptr nonnull align 8 %i.l)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.az = invoke align 4 ptr @_RNvMNtCslNEiUQgeYIG_3syn3macNtB2_14MacroDelimiter4span(ptr nonnull align 4 %i.ay)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.n
  %i.ba = invoke i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan5close(ptr align 4 %i.az)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  invoke void @_RNvXsK_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.bb)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14
  invoke void @_RINvNtCslNEiUQgeYIG_3syn5parse12parse_scopedNCINvNtB4_4meta6parserNCNvMs_NtCsbDPHjAM0yJM_16bytecheck_derive10attributesNtB19_15FieldAttributes5parse0E0EB1b_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.r, i32 %i.ba, ptr nonnull align 8 %i.a)
end_hunk_0
