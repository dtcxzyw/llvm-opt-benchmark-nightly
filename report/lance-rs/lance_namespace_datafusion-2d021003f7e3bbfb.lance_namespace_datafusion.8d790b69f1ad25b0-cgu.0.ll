Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1K_6offset3utc3UtcEEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3u_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23705)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23706, !noalias !23707, !noundef !111 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !23708, !noalias !23709 ; 3 uses
  %i.k = icmp ult i64 %.promoted.i.i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23706, !noalias !23707, !nonnull !111, !noundef !111 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.n = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23711)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !23712, !noundef !111
  switch i8 %i.p, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !23713, !noalias !23709
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23718)
  %i.r = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.j
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !23719, !noalias !23720, !nonnull !111, !noundef !111
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23722)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !23723, !noundef !111
  switch i8 %i.w, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 34, label %bb.f
  ], !prof !240

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.h, align 8, !alias.scope !23724, !noalias !23725
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.x, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23726
  store i64 5, ptr %i.g, align 8, !noalias !23726
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !23727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23726
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.u, 1
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !23728, !noalias !23727
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.aa, align 8, !alias.scope !23729, !noalias !23727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23726
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !23727
  %i.ab = load i64, ptr %i.f, align 8, !range !124, !noalias !23726, !noundef !111 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !23726 ; 4 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !23727
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23726
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !23726 ; 2 uses
  %i.ag = trunc nuw i64 %i.ab to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23730
  call void @_RNvXNtNtCsjDo0Ci2kbYz_6chrono6format5parseINtNtB6_8datetime8DateTimeNtNtNtB6_6offset5fixed11FixedOffsetENtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i), !noalias !23731
  %i.ah = load i32, ptr %i.e, align 4, !noalias !23730, !noundef !111 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load i8, ptr %i.aj, align 4, !range !187, !noalias !23730, !noundef !111
  %i.al = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCsjDo0Ci2kbYz_6chrono6format10ParseErrorECsc93vp1BCDlY_26lance_namespace_datafusion(i8 noundef %i.ak), !noalias !23731
  br label %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %.sroa.10.0.copyload14.i.i.i.i.i = load i32, ptr %i.aj, align 4, !noalias !23732
  %.sroa.1017.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1017.0.copyload19.i.i.i.i.i = load ptr, ptr %.sroa.1017.0..sroa_idx18.i.i.i.i.i, align 4, !noalias !23732
  br label %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.1.i.i.i.i.i = phi i32 [ undef, %bb.k ], [ %.sroa.10.0.copyload14.i.i.i.i.i, %bb.l ]
  %.sroa.1017.2.i.i.i.i.i = phi ptr [ %i.al, %bb.k ], [ %.sroa.1017.0.copyload19.i.i.i.i.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23730
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23733
  call void @_RNvXNtNtCsjDo0Ci2kbYz_6chrono6format5parseINtNtB6_8datetime8DateTimeNtNtNtB6_6offset5fixed11FixedOffsetENtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i), !noalias !23734
  %i.am = load i32, ptr %i.d, align 4, !noalias !23733, !noundef !111 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 4, !range !187, !noalias !23733, !noundef !111
  %i.aq = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCsjDo0Ci2kbYz_6chrono6format10ParseErrorECsc93vp1BCDlY_26lance_namespace_datafusion(i8 noundef %i.ap), !noalias !23734
  br label %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %.sroa.10.0.copyload16.i.i.i.i.i = load i32, ptr %i.ao, align 4, !noalias !23735
  %.sroa.1017.0..sroa_idx20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1017.0.copyload21.i.i.i.i.i = load ptr, ptr %.sroa.1017.0..sroa_idx20.i.i.i.i.i, align 4, !noalias !23735
  br label %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.10.2.i.i.i.i.i = phi i32 [ undef, %bb.n ], [ %.sroa.10.0.copyload16.i.i.i.i.i, %bb.o ]
  %.sroa.1017.3.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.1017.0.copyload21.i.i.i.i.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23733
  br label %bb.p

bb.p:                                             ; preds = %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi i32 [ %.sroa.10.1.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ %.sroa.10.2.i.i.i.i.i, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ah, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ %i.am, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.1017.0.i.i.i.i.i = phi ptr [ %.sroa.1017.2.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ %.sroa.1017.3.i.i.i.i.i, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23726
  %i.ar = icmp eq i32 %.sroa.010.0.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.q, label %bb.s, !prof !114

bb.q:                                             ; preds = %bb.p, %bb.g
  %.sroa.1017.1.i.i.i.i.i = phi ptr [ %.sroa.1017.0.i.i.i.i.i, %bb.p ], [ %i.af, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1017.1.i.i.i.i.i) ]
  %i.as = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 %.sroa.1017.1.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !23727
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %.loopexit.i.i.i.i.i
  %.sroa.6.0.ph.i.i.i = phi ptr [ %i.as, %bb.q ], [ %i.y, %.loopexit.i.i.i.i.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.ph.i.i.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.i.i.i, ptr %i.at, align 8, !alias.scope !23736, !noalias !23737
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.s:                                             ; preds = %bb.p
  %i.au = ptrtoint ptr %.sroa.1017.0.i.i.i.i.i to i64
  %.sroa.6.8.insert.ext.i.i.i = zext i32 %.sroa.10.0.i.i.i.i.i to i64
  %.sroa.6.12.insert.ext.i.i.i = shl i64 %i.au, 32
  %.sroa.6.12.insert.insert.i.i.i = or disjoint i64 %.sroa.6.12.insert.ext.i.i.i, %.sroa.6.8.insert.ext.i.i.i
  %i.av = inttoptr i64 %.sroa.6.12.insert.insert.i.i.i to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.010.0.i.i.i.i.i, ptr %i.aw, align 4, !alias.scope !23736, !noalias !23737
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !23736, !noalias !23737
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.t:                                             ; preds = %bb.b
  %i.ax = add i64 %i.n, 1                         ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !alias.scope !23738, !noalias !23739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23740)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.ax) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23742)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ax, %i.j
  br i1 %exitcond.not.i9.not.i.i, label %bb.u, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !23743, !noundef !111
  %i.ba = add i64 %i.n, 2                         ; 3 uses
  store i64 %i.ba, ptr %i.h, align 8, !alias.scope !23744, !noalias !23745
  %.not.i.i.i = icmp eq i8 %i.az, 117
  br i1 %.not.i.i.i, label %bb.v, label %bb.z, !prof !241

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23747)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.ba, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !23748, !noundef !111
  %i.bd = add i64 %i.n, 3                         ; 3 uses
  store i64 %i.bd, ptr %i.h, align 8, !alias.scope !23749, !noalias !23745
  %.not.i.1.i.i = icmp eq i8 %i.bc, 108
  br i1 %.not.i.1.i.i, label %bb.x, label %bb.z, !prof !241

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23751)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.bd, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !23752, !noundef !111
  %i.bg = add i64 %i.n, 4
  store i64 %i.bg, ptr %i.h, align 8, !alias.scope !23753, !noalias !23745
  %.not.i.2.i.i = icmp eq i8 %i.bf, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.z, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23754
  store i64 5, ptr %i.c, align 8, !noalias !23754
  %i.bh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !23755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23754
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23754
  store i64 9, ptr %i.b, align 8, !noalias !23754
  %i.bi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !23755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23754
  br label %bb.aa

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4, !alias.scope !23756, !noalias !23757
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.aa:                                            ; preds = %bb.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.bh, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.bi, %bb.z ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.bk, align 8, !alias.scope !23739, !noalias !23757
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.r, %bb.s, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.aa
  %.sink.i.i = phi i32 [ 0, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ 1, %bb.aa ], [ 0, %bb.s ], [ 1, %bb.r ]
  store i32 %.sink.i.i, ptr %0, align 8, !alias.scope !23739, !noalias !23757
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23799)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !23800, !noalias !23801, !noundef !111 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !23802, !noalias !23803 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !23800, !noalias !23801, !nonnull !111, !noundef !111 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23805)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !23806, !noundef !111
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !23807, !noalias !23803
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23809
  call fastcc void @_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !23810
  %i.n = load i64, ptr %i.c, align 8, !range !113, !noalias !23809, !noundef !111
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !23809, !nonnull !111, !align !127, !noundef !111
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !23810, !noalias !23811
  store i64 -2, ptr %0, align 8, !alias.scope !23810, !noalias !23811
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !23811
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23809
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !23812, !noalias !23813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23814)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23816)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !23817, !noundef !111
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !23818, !noalias !23819
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !241

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23821)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !23822, !noundef !111
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !23823, !noalias !23819
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !241

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23825)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !23826, !noundef !111
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !23827, !noalias !23819
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.l, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23828
  store i64 5, ptr %i.b, align 8, !noalias !23828
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !23829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23828
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23828
  store i64 9, ptr %i.a, align 8, !noalias !23828
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !23829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23828
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !23830, !noalias !23831
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !23813, !noalias !23831
  store i64 -2, ptr %0, align 8, !alias.scope !23813, !noalias !23831
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB2e_EENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3B_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.15.i.i.i = alloca [24 x i8], align 8     ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.7.i.i = alloca [32 x i8], align 8        ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23933)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !23934, !noalias !23935, !noundef !111 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !23936, !noalias !23937 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !23934, !noalias !23935, !nonnull !111, !noundef !111
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23939)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !23940, !noundef !111
  switch i8 %i.w, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !240

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !23941, !noalias !23937
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !23942
  store i64 5, ptr %i.n, align 8, !noalias !23942
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !23943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23942
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !23943, !noalias !23944
  store ptr null, ptr %0, align 8, !alias.scope !23943, !noalias !23944
  br label %_RINvXs3g_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1F_ENtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2X_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 8, !alias.scope !23944, !noalias !23943, !noundef !111
  %i.ac = add i8 %i.ab, -1                        ; 2 uses
  store i8 %i.ac, ptr %i.aa, align 8, !alias.scope !23944, !noalias !23943
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !114

bb.e:                                             ; preds = %bb.b
  %i.ae = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87), !noalias !23943
  br label %bb.am

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23942
  store i64 24, ptr %i.m, align 8, !noalias !23942
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !23943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23942
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !23943, !noalias !23944
  store ptr null, ptr %0, align 8, !alias.scope !23943, !noalias !23944
  br label %_RINvXs3g_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1F_ENtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2X_4read7StrReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.g:                                             ; preds = %bb.d
  %i.ah = add i64 %i.u, 1
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !23945, !noalias !23943
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i), !noalias !23942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23942
  store ptr %1, ptr %i.j, align 8, !noalias !23946
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 1, ptr %i.ai, align 8, !noalias !23946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23946
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !115, !noalias !23947, !noundef !111
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, !prof !116

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.g
  %.pre.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !23948
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !23948
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.an = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !23949 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !noalias !23950
  store i8 1, ptr %i.ak, align 8, !noalias !23950
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i.i

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi123.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i.i.i.i.i.i ], [ %i.ap, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ]
  %i.ar = phi i64 [ %.pre.i.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit_crit_edge.i.i.i.i.i.i ], [ %i.ao, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ] ; 2 uses
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aj, align 8, !noalias !23948
  store ptr @53, ptr %i.i, align 8, !noalias !23946
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !noalias !23946
  store i64 %i.ar, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !23946
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
end_hunk_0
begin_hunk_1_@_RNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB7_4Tags3get0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.tx = zext i1 %i.tw to i32
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.gs, label %bb.gu

bb.gl:                                            ; preds = %bb.gf
  %i.tz = load i64, ptr %i.sb, align 1
  %i.ua = icmp ne i64 %i.tz, 7022344802737087853
  %i.ub = zext i1 %i.ua to i32
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %bb.gt, label %bb.gu

bb.gm:                                            ; preds = %.noexc169.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.le, %bb.ld, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i.i.i.i, %.loopexit.i49.i.i.i.i.i.i
  %.sroa.0.01735.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.ld ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.le ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.i49.i.i.i.i.i.i ], [ %.sroa.0.01736.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.ph.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0118.1.ph.i.i.i.i.i.i.i = phi i8 [ %.sroa.0118.4.i.i.i.i.i.i.i, %bb.ld ], [ %.sroa.0118.4.i.i.i.i.i.i.i, %bb.le ], [ 1, %.loopexit.i49.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i.i.i.i ]
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.adb, %bb.ld ], [ %i.adb, %bb.le ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i49.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp339.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i ], [ %lpad.loopexit1967.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !31637
  %.not156.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i, null
  br i1 %.not156.i.i.i.i.i.i.i, label %bb.lr, label %.thread.i.i.i.i.i.i.i

.loopexit.i49.i.i.i.i.i.i:                        ; preds = %bb.is, %bb.id, %bb.hz, %bb.hx, %bb.hw
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.kx, %bb.kp, %bb.kn, %.loopexit.i.i.i239.i.i.i.i.i.i.i, %bb.kg, %bb.jy, %bb.jq, %bb.jo, %.loopexit.i.i.i205.i.i.i.i.i.i.i, %bb.jh, %bb.ge, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs40k4W9msRzi_5alloc6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  %.sroa.0.0.lcssa.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i45.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs40k4W9msRzi_5alloc6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.ge ], [ -2, %bb.jh ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.i.i.i205.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jo ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jq ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jy ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kg ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.i.i.i239.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kn ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kp ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kx ]
  %lpad.loopexit1967.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i.i.i.i: ; preds = %bb.kf, %.loopexit.i.i.i227.i.i.i.i.i.i.i, %bb.jx, %.loopexit.i.i.i216.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i: ; preds = %.invoke, %bb.kw, %.loopexit.i.i.i251.i.i.i.i.i.i.i, %bb.ks, %bb.kj, %bb.kb, %bb.jt, %bb.jk, %bb.jg, %.loopexit.i.i.i195.i.i.i.i.i.i.i, %bb.jc, %bb.jb, %bb.iy, %.loopexit124.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.it, %.loopexit125.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ii, %bb.ic, %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gx, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01736.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kw ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.i.i.i251.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.ks ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kj ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.kb ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jt ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jk ], [ -2, %bb.jg ], [ -2, %.loopexit.i.i.i195.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jc ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.jb ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.invoke ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.iy ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit124.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.it ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit125.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.ii ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.ic ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i45.i.i.i.i.i.i, %bb.gx ]
  %lpad.loopexit.split-lp339.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gd
  %.not150.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i45.i.i.i.i.i.i, -2
  br i1 %.not150.i.i.i.i.i.i.i, label %bb.la, label %bb.lb

bb.go:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not154.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i45.i.i.i.i.i.i, -2
  br i1 %.not154.i.i.i.i.i.i.i, label %bb.jd, label %bb.jc, !prof !116

bb.gp:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not3994 = icmp eq i64 %.sroa.025.0.i.i.i.i.i.i.i, 0
  br i1 %.not3994, label %bb.jl, label %bb.jk, !prof !116

bb.gq:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not3993 = icmp eq i32 %.sroa.033.0.i.i.i.i.i.i.i, 0
  br i1 %.not3993, label %bb.ju, label %bb.jt, !prof !116

bb.gr:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not3992 = icmp eq i32 %.sroa.044.0.i.i.i.i.i.i.i, 0
  br i1 %.not3992, label %bb.kc, label %bb.kb, !prof !116

bb.gs:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not = icmp eq i64 %.sroa.055.0.i.i.i.i.i.i.i, 0
  br i1 %.not, label %bb.kk, label %bb.kj, !prof !116

bb.gt:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  %.not153.i.i.i.i.i.i.i = icmp eq ptr %i.rm, null
  br i1 %.not153.i.i.i.i.i.i.i, label %bb.kt, label %bb.ks, !prof !116

bb.gu:                                            ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gh, %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !31651
  call void @llvm.experimental.noalias.scope.decl(metadata !31652)
  call void @llvm.experimental.noalias.scope.decl(metadata !31653)
  %i.ud = getelementptr inbounds nuw i8, ptr %i.rt, i64 32 ; 3 uses
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !31654, !noalias !31655, !noundef !111 ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rv, align 8, !alias.scope !31656, !noalias !31657 ; 2 uses
  %i.uf = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.ue
  br i1 %i.uf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gu
  %i.ug = load ptr, ptr %i.ru, align 8, !alias.scope !31654, !noalias !31655, !nonnull !111, !noundef !111 ; 2 uses
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.uh = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uk, %bb.gw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31658)
  call void @llvm.experimental.noalias.scope.decl(metadata !31659)
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !noalias !31660, !noundef !111
  switch i8 %i.uj, label %bb.gx [
    i8 32, label %bb.gw
    i8 10, label %bb.gw
    i8 9, label %bb.gw
    i8 13, label %bb.gw
    i8 58, label %bb.gy
  ], !prof !240

bb.gw:                                            ; preds = %bb.gv, %bb.gv, %bb.gv, %bb.gv
  %i.uk = add i64 %i.uh, 1                        ; 3 uses
  store i64 %i.uk, ptr %i.rv, align 8, !alias.scope !31661, !noalias !31657
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.uk, %i.ue
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.gv

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.gu, %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !31662
  store i64 3, ptr %i.as, align 8, !noalias !31662
  %i.ul = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as)
          to label %.noexc170.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc170.i.i.i.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !31662
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !31662
  store i64 6, ptr %i.at, align 8, !noalias !31662
  %i.um = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at)
          to label %.noexc171.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc171.i.i.i.i.i.i.i:                          ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !31662
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gv
  %i.un = add i64 %i.uh, 1                        ; 3 uses
  store i64 %i.un, ptr %i.rv, align 8, !alias.scope !31663, !noalias !31641
  call void @llvm.experimental.noalias.scope.decl(metadata !31664)
  call void @llvm.experimental.noalias.scope.decl(metadata !31665)
  call void @llvm.experimental.noalias.scope.decl(metadata !31666)
  call void @llvm.experimental.noalias.scope.decl(metadata !31667)
  store i64 0, ptr %i.ry, align 8, !alias.scope !31668, !noalias !31641
  %i.uo = icmp ult i64 %i.un, %i.ue
  br i1 %i.uo, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.gy
  %i.up = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.iz, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uq = phi ptr [ %i.ug, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.za, %bb.iz ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.un, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iz ]
  %i.ur = phi i64 [ %i.ue, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yz, %bb.iz ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iz ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.iz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31669)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.ha, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.us = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uv, %bb.ha ] ; 17 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !noalias !31670, !noundef !111 ; 3 uses
  switch i8 %i.uu, label %bb.hb [
    i8 32, label %bb.ha
    i8 10, label %bb.ha
    i8 9, label %bb.ha
    i8 13, label %bb.ha
    i8 110, label %bb.hc
    i8 116, label %bb.hi
    i8 102, label %bb.ho
    i8 45, label %bb.hw
    i8 34, label %bb.hx
    i8 91, label %bb.hy
    i8 123, label %bb.hy
  ]

bb.ha:                                            ; preds = %bb.gz, %bb.gz, %bb.gz, %bb.gz
  %i.uv = add i64 %i.us, 1                        ; 3 uses
  store i64 %i.uv, ptr %i.rv, align 8, !alias.scope !31671, !noalias !31672
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.uv, %i.ur
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gz

.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.gy, %bb.iz, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !31673
  store i64 5, ptr %i.ar, align 8, !noalias !31673
  %i.uw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %.noexc172.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc172.i.i.i.i.i.i.i:                          ; preds = %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !31673
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.ux = add i8 %i.uu, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ux, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.id, label %bb.ic, !prof !175

bb.hc:                                            ; preds = %bb.gz
  %i.uy = add i64 %i.us, 1                        ; 4 uses
  store i64 %i.uy, ptr %i.rv, align 8, !alias.scope !31674, !noalias !31641
  call void @llvm.experimental.noalias.scope.decl(metadata !31675)
  %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ur, i64 %i.uy) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31676)
  call void @llvm.experimental.noalias.scope.decl(metadata !31677)
  %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.uy, %i.ur
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hd, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !noalias !31678, !noundef !111
  %i.vb = add i64 %i.us, 2                        ; 3 uses
  store i64 %i.vb, ptr %i.rv, align 8, !alias.scope !31679, !noalias !31680
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.va, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.he, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.he:                                            ; preds = %bb.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !31681)
  call void @llvm.experimental.noalias.scope.decl(metadata !31682)
  %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vb, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !31683, !noundef !111
  %i.ve = add i64 %i.us, 3                        ; 3 uses
  store i64 %i.ve, ptr %i.rv, align 8, !alias.scope !31684, !noalias !31680
  %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vd, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hg, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !31685)
  call void @llvm.experimental.noalias.scope.decl(metadata !31686)
  %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ve, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !noalias !31687, !noundef !111
  %i.vh = add i64 %i.us, 4
  store i64 %i.vh, ptr %i.rv, align 8, !alias.scope !31688, !noalias !31680
  %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vg, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hg, %bb.he, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !31689
  store i64 5, ptr %i.aj, align 8, !noalias !31689
  %i.vi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.noexc173.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc173.i.i.i.i.i.i.i:                          ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !31689
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hh, %bb.hf, %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !31689
  store i64 9, ptr %i.ai, align 8, !noalias !31689
  %i.vj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc174.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc174.i.i.i.i.i.i.i:                          ; preds = %.loopexit233.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !31689
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.hi:                                            ; preds = %bb.gz
  %i.vk = add i64 %i.us, 1                        ; 4 uses
  store i64 %i.vk, ptr %i.rv, align 8, !alias.scope !31690, !noalias !31641
  call void @llvm.experimental.noalias.scope.decl(metadata !31691)
  %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ur, i64 %i.vk) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31692)
  call void @llvm.experimental.noalias.scope.decl(metadata !31693)
  %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.vk, %i.ur
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hj, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hj:                                            ; preds = %bb.hi
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !noalias !31694, !noundef !111
  %i.vn = add i64 %i.us, 2                        ; 3 uses
  store i64 %i.vn, ptr %i.rv, align 8, !alias.scope !31695, !noalias !31696
  %.not.i59.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vm, 114
  br i1 %.not.i59.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hk, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.experimental.noalias.scope.decl(metadata !31697)
  call void @llvm.experimental.noalias.scope.decl(metadata !31698)
  %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vn, %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !noalias !31699, !noundef !111
  %i.vq = add i64 %i.us, 3                        ; 3 uses
  store i64 %i.vq, ptr %i.rv, align 8, !alias.scope !31700, !noalias !31696
  %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vp, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hm, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !31701)
  call void @llvm.experimental.noalias.scope.decl(metadata !31702)
  %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vq, %umax.i56.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !noalias !31703, !noundef !111
  %i.vt = add i64 %i.us, 4
  store i64 %i.vt, ptr %i.rv, align 8, !alias.scope !31704, !noalias !31696
  %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vs, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hm, %bb.hk, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !31705
  store i64 5, ptr %i.ah, align 8, !noalias !31705
  %i.vu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc175.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc175.i.i.i.i.i.i.i:                          ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !31705
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hn, %bb.hl, %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !31705
  store i64 9, ptr %i.ag, align 8, !noalias !31705
  %i.vv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %.noexc176.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc176.i.i.i.i.i.i.i:                          ; preds = %.loopexit226.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !31705
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.gz
  %i.vw = add i64 %i.us, 1                        ; 4 uses
  store i64 %i.vw, ptr %i.rv, align 8, !alias.scope !31706, !noalias !31641
  call void @llvm.experimental.noalias.scope.decl(metadata !31707)
  %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ur, i64 %i.vw) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31708)
  call void @llvm.experimental.noalias.scope.decl(metadata !31709)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.vw, %i.ur
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hp, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hp:                                            ; preds = %bb.ho
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !noalias !31710, !noundef !111
  %i.vz = add i64 %i.us, 2                        ; 3 uses
  store i64 %i.vz, ptr %i.rv, align 8, !alias.scope !31711, !noalias !31712
  %.not.i68.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.vy, 97
  br i1 %.not.i68.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hq, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.experimental.noalias.scope.decl(metadata !31713)
  call void @llvm.experimental.noalias.scope.decl(metadata !31714)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vz, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !noalias !31715, !noundef !111
  %i.wc = add i64 %i.us, 3                        ; 3 uses
  store i64 %i.wc, ptr %i.rv, align 8, !alias.scope !31716, !noalias !31712
  %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.wb, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hs, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.experimental.noalias.scope.decl(metadata !31717)
  call void @llvm.experimental.noalias.scope.decl(metadata !31718)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wc, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !noalias !31719, !noundef !111
  %i.wf = add i64 %i.us, 4                        ; 3 uses
  store i64 %i.wf, ptr %i.rv, align 8, !alias.scope !31720, !noalias !31712
  %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.we, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hu, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !31721)
  call void @llvm.experimental.noalias.scope.decl(metadata !31722)
  %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wf, %umax.i65.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !noalias !31723, !noundef !111
  %i.wi = add i64 %i.us, 5
  store i64 %i.wi, ptr %i.rv, align 8, !alias.scope !31724, !noalias !31712
  %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.wh, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hu, %bb.hs, %bb.hq, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !31725
  store i64 5, ptr %i.af, align 8, !noalias !31725
  %i.wj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
          to label %.noexc177.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc177.i.i.i.i.i.i.i:                          ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !31725
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hv, %bb.ht, %bb.hr, %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !31725
  store i64 9, ptr %i.ae, align 8, !noalias !31725
  %i.wk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc178.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc178.i.i.i.i.i.i.i:                          ; preds = %.loopexit219.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !31725
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.gz
  %i.wl = add i64 %i.us, 1
  store i64 %i.wl, ptr %i.rv, align 8, !alias.scope !31726, !noalias !31641
  %i.wm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.rt)
          to label %.noexc179.i.i.i.i.i.i.i unwind label %.loopexit.i49.i.i.i.i.i.i, !noalias !31641 ; 2 uses

.noexc179.i.i.i.i.i.i.i:                          ; preds = %bb.hw
  %.not45.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wm, null
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.hx:                                            ; preds = %bb.gz
  %i.wn = add i64 %i.us, 1
  store i64 %i.wn, ptr %i.rv, align 8, !alias.scope !31727, !noalias !31641
  %i.wo = invoke noundef align 8 ptr @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ru)
          to label %.noexc180.i.i.i.i.i.i.i unwind label %.loopexit.i49.i.i.i.i.i.i, !noalias !31641 ; 2 uses

.noexc180.i.i.i.i.i.i.i:                          ; preds = %bb.hx
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.hy:                                            ; preds = %bb.gz, %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !31728)
  %i.wp = zext i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.wq = load i64, ptr %i.ry, align 8, !alias.scope !31729, !noalias !31641, !noundef !111 ; 3 uses
  %i.wr = load i64, ptr %i.rt, align 8, !range !129, !alias.scope !31729, !noalias !31641, !noundef !111
  %i.ws = sub i64 %i.wr, %i.wq
  %i.wt = icmp ult i64 %i.ws, %i.wp
  br i1 %i.wt, label %bb.hz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !114

bb.hz:                                            ; preds = %bb.hy
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.rt, i64 noundef %i.wq, i64 noundef %i.wp, i64 noundef 1, i64 noundef 1)
          to label %.noexc181.i.i.i.i.i.i.i unwind label %.loopexit.i49.i.i.i.i.i.i, !noalias !31641

.noexc181.i.i.i.i.i.i.i:                          ; preds = %bb.hz
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ry, align 8, !alias.scope !31730, !noalias !31641
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc181.i.i.i.i.i.i.i, %bb.hy
  %i.wu = phi i64 [ %i.wq, %bb.hy ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc181.i.i.i.i.i.i.i ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wv = load ptr, ptr %i.up, align 8, !alias.scope !31730, !noalias !31641, !nonnull !111, !noundef !111
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  store i8 %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ww, align 1, !noalias !31731
  %i.wx = add i64 %i.wu, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ry, align 8, !alias.scope !31730, !noalias !31732
  %i.wy = load i64, ptr %i.rv, align 8, !alias.scope !31733, !noalias !31641, !noundef !111
  %i.wz = add i64 %i.wy, 1
  store i64 %i.wz, ptr %i.rv, align 8, !alias.scope !31733, !noalias !31641
  br label %bb.ib

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc183.i.i.i.i.i.i.i, %.noexc180.i.i.i.i.i.i.i, %.noexc179.i.i.i.i.i.i.i, %bb.hv, %bb.hn, %bb.hh
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xa = load i64, ptr %i.ry, align 8, !alias.scope !31668, !noalias !31641, !noundef !111 ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 0
  br i1 %i.xb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs40k4W9msRzi_5alloc6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.backedge, label %bb.ie

bb.ib:                                            ; preds = %bb.ie, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.uu, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xm, %bb.ie ], [ %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ie ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.xc = load i64, ptr %i.ud, align 8, !alias.scope !31734, !noalias !31735, !noundef !111 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rv, align 8, !alias.scope !31736, !noalias !31737 ; 2 uses
  %i.xd = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.xc
  br i1 %i.xd, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.ib
  %i.xe = load ptr, ptr %i.ru, align 8, !alias.scope !31734, !noalias !31735, !nonnull !111, !noundef !111 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !31673
  store i64 10, ptr %i.aq, align 8, !noalias !31673
  %i.xf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %.noexc182.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !31641

.noexc182.i.i.i.i.i.i.i:                          ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !31673
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.hb
  %i.xg = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.rt)
          to label %.noexc183.i.i.i.i.i.i.i unwind label %.loopexit.i49.i.i.i.i.i.i, !noalias !31641 ; 2 uses

.noexc183.i.i.i.i.i.i.i:                          ; preds = %bb.id
  %.not49.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xg, null
  br i1 %.not49.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit260.i.i.i.i.i.i.i

bb.ie:                                            ; preds = %bb.ia
  %i.xh = add i64 %i.xa, -1                       ; 3 uses
  store i64 %i.xh, ptr %i.ry, align 8, !alias.scope !31668, !noalias !31641
  %i.xi = load i64, ptr %i.rt, align 8, !range !129, !alias.scope !31668, !noalias !31641, !noundef !111
  %i.xj = icmp ult i64 %i.xh, %i.xi
  call void @llvm.assume(i1 %i.xj)
  %i.xk = load ptr, ptr %i.up, align 8, !alias.scope !31668, !noalias !31641, !nonnull !111, !noundef !111
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xh
  %i.xm = load i8, ptr %i.xl, align 1, !noalias !31641, !noundef !111
  br label %bb.ib

.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.io, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xw, %bb.io ]
  %.sroa.042.2164.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.io ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ye, %bb.io ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31738)
  br label %bb.if

bb.if:                                            ; preds = %bb.ig, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xn = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xq, %bb.ig ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31739)
  call void @llvm.experimental.noalias.scope.decl(metadata !31740)
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !noalias !31741, !noundef !111
  switch i8 %i.xp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.ig
    i8 10, label %bb.ig
    i8 9, label %bb.ig
    i8 13, label %bb.ig
    i8 44, label %bb.ij
    i8 93, label %bb.ik
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
bb.gz:                                            ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !35031
  store i64 17, ptr %i.ae, align 8, !noalias !35031
  %i.yu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc24.i.i:                                     ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !35031
  br label %bb.he

bb.ha:                                            ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !35031
  store i64 21, ptr %i.af, align 8, !noalias !35031
  %i.yv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc25.i.i:                                     ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !35031
  br label %bb.he

bb.hb:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !35031
  store i64 17, ptr %i.ag, align 8, !noalias !35031
  %i.yw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc26.i.i:                                     ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !35031
  br label %bb.he

.loopexit.i.i.i31.i.i.i.i:                        ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i, %bb.gv
  %i.yx = phi i64 [ %i.yf, %bb.gv ], [ %i.yo, %.lr.ph.i7.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !35038)
  call void @llvm.experimental.noalias.scope.decl(metadata !35039)
  call void @llvm.experimental.noalias.scope.decl(metadata !35040)
  call void @llvm.experimental.noalias.scope.decl(metadata !35041)
  %i.yy = add i64 %i.yx, 1
  store i64 %i.yy, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35042, !noalias !35043
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35044, !noalias !35043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !35045
  invoke void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wb, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !34996

.noexc27.i.i:                                     ; preds = %.loopexit.i.i.i31.i.i.i.i
  %i.yz = load i64, ptr %i.ab, align 8, !range !124, !noalias !35045, !noundef !111
  %i.za = icmp eq i64 %i.yz, -1
  %i.zb = load ptr, ptr %i.yc, align 8, !noalias !35045 ; 5 uses
  br i1 %i.za, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.noexc27.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !35045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zb) ]
  %i.zc = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.zc, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i.i.i.i.i: ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !35045
  br label %bb.hf

bb.hd:                                            ; preds = %.noexc27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !35045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zb) ]
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.noexc26.i.i, %.noexc25.i.i, %.noexc24.i.i, %.noexc23.i.i, %.noexc22.i.i, %.noexc21.i.i
  %.sroa.837.0.ph.i.i.i.i.i = phi ptr [ %i.yu, %.noexc24.i.i ], [ %i.yt, %.noexc23.i.i ], [ %i.yv, %.noexc25.i.i ], [ %i.ys, %.noexc22.i.i ], [ %i.yj, %.noexc21.i.i ], [ %i.yw, %.noexc26.i.i ], [ %i.zb, %bb.hd ]
  %i.zd = ptrtoint ptr %.sroa.837.0.ph.i.i.i.i.i to i64
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.hc
  %i.ze = load i32, ptr %i.zb, align 1
  %i.zf = xor i32 %i.ze, 1936876918
  %i.zg = getelementptr i8, ptr %i.zb, i64 3
  %i.zh = load i32, ptr %i.zg, align 1
  %i.zi = xor i32 %i.zh, 1852795251
  %i.zj = or i32 %i.zf, %i.zi
  %i.zk = icmp ne i32 %i.zj, 0
  %i.zl = zext i1 %i.zk to i32
  %.not.i.i.i.i.i57 = icmp eq i32 %i.zl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !35045
  br i1 %.not.i.i.i.i.i57, label %bb.jn, label %bb.hf

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread45.i.i.i.i.i: ; preds = %bb.gr
  %i.zm = trunc nuw i64 %.sroa.05.0235.i.i.i.i.i to i1
  br i1 %i.zm, label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, label %bb.jv

bb.hf:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35046)
  call void @llvm.experimental.noalias.scope.decl(metadata !35047)
  %i.zn = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35048, !noalias !35049, !noundef !111 ; 4 uses
  %.promoted.i.i.i.i28.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35050, !noalias !35051 ; 2 uses
  %i.zo = icmp ult i64 %.promoted.i.i.i.i28.i.i.i.i.i, %i.zn
  br i1 %i.zo, label %.lr.ph.i.i.i.i30.i.i.i.i.i, label %.loopexit.i.i.i29.i.i.i.i.i

.lr.ph.i.i.i.i30.i.i.i.i.i:                       ; preds = %bb.hf
  %i.zp = load ptr, ptr %i.wb, align 8, !alias.scope !35048, !noalias !35049, !nonnull !111, !noundef !111 ; 2 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hh, %.lr.ph.i.i.i.i30.i.i.i.i.i
  %i.zq = phi i64 [ %.promoted.i.i.i.i28.i.i.i.i.i, %.lr.ph.i.i.i.i30.i.i.i.i.i ], [ %i.zt, %bb.hh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35052)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1, !noalias !35053, !noundef !111
  switch i8 %i.zs, label %bb.hi [
    i8 32, label %bb.hh
    i8 10, label %bb.hh
    i8 9, label %bb.hh
    i8 13, label %bb.hh
    i8 58, label %bb.hj
  ], !prof !240

bb.hh:                                            ; preds = %bb.hg, %bb.hg, %bb.hg, %bb.hg
  %i.zt = add i64 %i.zq, 1                        ; 3 uses
  store i64 %i.zt, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35054, !noalias !35051
  %exitcond.not.i.i.i.i31.i.i.i.i.i = icmp eq i64 %i.zt, %i.zn
  br i1 %exitcond.not.i.i.i.i31.i.i.i.i.i, label %.loopexit.i.i.i29.i.i.i.i.i, label %bb.hg

.loopexit.i.i.i29.i.i.i.i.i:                      ; preds = %bb.hf, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !35055
  store i64 3, ptr %i.z, align 8, !noalias !35055
  %i.zu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc28.i.i:                                     ; preds = %.loopexit.i.i.i29.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !35055
  br label %.loopexit.i32.i.i.i.i

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !35055
  store i64 6, ptr %i.aa, align 8, !noalias !35055
  %i.zv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc29.i.i:                                     ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !35055
  br label %.loopexit.i32.i.i.i.i

bb.hj:                                            ; preds = %bb.hg
  %i.zw = add i64 %i.zq, 1                        ; 3 uses
  store i64 %i.zw, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35056, !noalias !34987
  call void @llvm.experimental.noalias.scope.decl(metadata !35057)
  call void @llvm.experimental.noalias.scope.decl(metadata !35058)
  call void @llvm.experimental.noalias.scope.decl(metadata !35059)
  call void @llvm.experimental.noalias.scope.decl(metadata !35060)
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35061, !noalias !34987
  %i.zx = icmp ult i64 %i.zw, %i.zn
  br i1 %i.zx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.hj, %bb.jk
  %i.zy = phi ptr [ %i.aei, %bb.jk ], [ %i.zp, %bb.hj ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jk ], [ %i.zw, %bb.hj ]
  %i.zz = phi i64 [ %i.aeh, %bb.jk ], [ %i.zn, %bb.hj ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i, %bb.jk ], [ undef, %bb.hj ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.jk ], [ false, %bb.hj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35062)
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aaa = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aad, %bb.hl ] ; 17 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !noalias !35063, !noundef !111 ; 3 uses
  switch i8 %i.aac, label %bb.hm [
    i8 32, label %bb.hl
    i8 10, label %bb.hl
    i8 9, label %bb.hl
    i8 13, label %bb.hl
    i8 110, label %bb.hn
    i8 116, label %bb.ht
    i8 102, label %bb.hz
    i8 45, label %bb.ih
    i8 34, label %bb.ii
    i8 91, label %bb.ij
    i8 123, label %bb.ij
  ]

bb.hl:                                            ; preds = %bb.hk, %bb.hk, %bb.hk, %bb.hk
  %i.aad = add i64 %i.aaa, 1                      ; 3 uses
  store i64 %i.aad, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35064, !noalias !35065
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aad, %i.zz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i, label %bb.hk

.loopexit130.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hj, %bb.jk, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !35066
  store i64 5, ptr %i.y, align 8, !noalias !35066
  %i.aae = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc30.i.i:                                     ; preds = %.loopexit130.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !35066
  br label %.loopexit.i32.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.aaf = add i8 %i.aac, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aaf, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.io, label %bb.in, !prof !175

bb.hn:                                            ; preds = %bb.hk
  %i.aag = add i64 %i.aaa, 1                      ; 4 uses
  store i64 %i.aag, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35067, !noalias !34987
  call void @llvm.experimental.noalias.scope.decl(metadata !35068)
  %umax.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.zz, i64 %i.aag) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35069)
  %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aag, %i.zz
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ho, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hn
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !noalias !35070, !noundef !111
  %i.aaj = add i64 %i.aaa, 2                      ; 3 uses
  store i64 %i.aaj, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35071, !noalias !35072
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aai, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hp, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.experimental.noalias.scope.decl(metadata !35073)
  %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aaj, %umax.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !noalias !35074, !noundef !111
  %i.aam = add i64 %i.aaa, 3                      ; 3 uses
  store i64 %i.aam, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35075, !noalias !35072
  %.not.i.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aal, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !35076)
  %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aam, %umax.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aam
  %i.aao = load i8, ptr %i.aan, align 1, !noalias !35077, !noundef !111
  %i.aap = add i64 %i.aaa, 4
  store i64 %i.aap, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35078, !noalias !35072
  %.not.i.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aao, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %bb.hp, %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35079
  store i64 5, ptr %i.q, align 8, !noalias !35079
  %i.aaq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc31.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35079
  br label %.loopexit.i32.i.i.i.i

.loopexit233.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hs, %bb.hq, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35079
  store i64 9, ptr %i.p, align 8, !noalias !35079
  %i.aar = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc32.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc32.i.i:                                     ; preds = %.loopexit233.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35079
  br label %.loopexit.i32.i.i.i.i

bb.ht:                                            ; preds = %bb.hk
  %i.aas = add i64 %i.aaa, 1                      ; 4 uses
  store i64 %i.aas, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35080, !noalias !34987
  call void @llvm.experimental.noalias.scope.decl(metadata !35081)
  %umax.i56.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.zz, i64 %i.aas) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35082)
  %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aas, %i.zz
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.hu, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.ht
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !noalias !35083, !noundef !111
  %i.aav = add i64 %i.aaa, 2                      ; 3 uses
  store i64 %i.aav, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35084, !noalias !35085
  %.not.i59.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aau, 114
  br i1 %.not.i59.i.i.i.i.i.i.i.i.i.i.i, label %bb.hv, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !35086)
  %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aav, %umax.i56.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !noalias !35087, !noundef !111
  %i.aay = add i64 %i.aaa, 3                      ; 3 uses
  store i64 %i.aay, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35088, !noalias !35085
  %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aax, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.hx, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !35089)
  %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aay, %umax.i56.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !noalias !35090, !noundef !111
  %i.abb = add i64 %i.aaa, 4
  store i64 %i.abb, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35091, !noalias !35085
  %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aba, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hx, %bb.hv, %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35092
  store i64 5, ptr %i.o, align 8, !noalias !35092
  %i.abc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc33.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc33.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !35092
  br label %.loopexit.i32.i.i.i.i

.loopexit226.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hy, %bb.hw, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35092
  store i64 9, ptr %i.n, align 8, !noalias !35092
  %i.abd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc34.i.i:                                     ; preds = %.loopexit226.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35092
  br label %.loopexit.i32.i.i.i.i

bb.hz:                                            ; preds = %bb.hk
  %i.abe = add i64 %i.aaa, 1                      ; 4 uses
  store i64 %i.abe, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35093, !noalias !34987
  call void @llvm.experimental.noalias.scope.decl(metadata !35094)
  %umax.i65.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.zz, i64 %i.abe) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35095)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.abe, %i.zz
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i

bb.ia:                                            ; preds = %bb.hz
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !noalias !35096, !noundef !111
  %i.abh = add i64 %i.aaa, 2                      ; 3 uses
  store i64 %i.abh, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35097, !noalias !35098
  %.not.i68.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abg, 97
  br i1 %.not.i68.i.i.i.i.i.i.i.i.i.i.i, label %bb.ib, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.experimental.noalias.scope.decl(metadata !35099)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abh, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !noalias !35100, !noundef !111
  %i.abk = add i64 %i.aaa, 3                      ; 3 uses
  store i64 %i.abk, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35101, !noalias !35098
  %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abj, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.id, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.id:                                            ; preds = %bb.ic
  call void @llvm.experimental.noalias.scope.decl(metadata !35102)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abk, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.abl = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !noalias !35103, !noundef !111
  %i.abn = add i64 %i.aaa, 4                      ; 3 uses
  store i64 %i.abn, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35104, !noalias !35098
  %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abm, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i, label %bb.if, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !241

bb.if:                                            ; preds = %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !35105)
  %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abn, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !noalias !35106, !noundef !111
  %i.abq = add i64 %i.aaa, 5
  store i64 %i.abq, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35107, !noalias !35098
  %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abp, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.if, %bb.id, %bb.ib, %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35108
  store i64 5, ptr %i.m, align 8, !noalias !35108
  %i.abr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc35.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35108
  br label %.loopexit.i32.i.i.i.i

.loopexit219.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ig, %bb.ie, %bb.ic, %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35108
  store i64 9, ptr %i.l, align 8, !noalias !35108
  %i.abs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc36.i.i:                                     ; preds = %.loopexit219.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35108
  br label %.loopexit.i32.i.i.i.i

bb.ih:                                            ; preds = %bb.hk
  %i.abt = add i64 %i.aaa, 1
  store i64 %i.abt, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35109, !noalias !34987
  %i.abu = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %.noexc37.i.i unwind label %.loopexit66.i.i, !noalias !34996 ; 2 uses

.noexc37.i.i:                                     ; preds = %bb.ih
  %.not45.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abu, null
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i32.i.i.i.i

bb.ii:                                            ; preds = %bb.hk
  %i.abv = add i64 %i.aaa, 1
  store i64 %i.abv, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35110, !noalias !34987
  %i.abw = invoke noundef align 8 ptr @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wb)
          to label %.noexc38.i.i unwind label %.loopexit66.i.i, !noalias !34996 ; 2 uses

.noexc38.i.i:                                     ; preds = %bb.ii
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i32.i.i.i.i

bb.ij:                                            ; preds = %bb.hk, %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !35111)
  %i.abx = zext i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aby = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35112, !noalias !34987, !noundef !111 ; 3 uses
  %i.abz = load i64, ptr %i.ao, align 8, !range !129, !alias.scope !35112, !noalias !34987, !noundef !111
  %i.aca = sub i64 %i.abz, %i.aby
  %i.acb = icmp ult i64 %i.aca, %i.abx
  br i1 %i.acb, label %bb.ik, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !114

bb.ik:                                            ; preds = %bb.ij
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao, i64 noundef %i.aby, i64 noundef %i.abx, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i.i unwind label %.loopexit66.i.i, !noalias !34996

.noexc39.i.i:                                     ; preds = %bb.ik
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35113, !noalias !34987
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc39.i.i, %bb.ij
  %i.acc = phi i64 [ %i.aby, %bb.ij ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc39.i.i ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35113, !noalias !34987, !nonnull !111, !noundef !111
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acc
  store i8 %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ace, align 1, !noalias !35114
  %i.acf = add i64 %i.acc, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35113, !noalias !35115
  %i.acg = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35116, !noalias !34987, !noundef !111
  %i.ach = add i64 %i.acg, 1
  store i64 %i.ach, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35116, !noalias !34987
  br label %bb.im

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc41.i.i, %.noexc38.i.i, %.noexc37.i.i, %bb.ig, %bb.hy, %bb.hs
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aci = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35061, !noalias !34987, !noundef !111 ; 2 uses
  %i.acj = icmp eq i64 %i.aci, 0
  br i1 %i.acj, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, label %bb.ip

bb.im:                                            ; preds = %bb.ip, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.aac, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acw, %bb.ip ], [ %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ip ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ack = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35117, !noalias !35118, !noundef !111 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35119, !noalias !35120 ; 2 uses
  %i.acl = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i, %i.ack
  br i1 %i.acl, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.im
  %i.acm = load ptr, ptr %i.wb, align 8, !alias.scope !35117, !noalias !35118, !nonnull !111, !noundef !111 ; 3 uses
  %.sroa.57.0..sroa_idx.promoted.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !34987
  %i.acn = load i64, ptr %i.ao, align 8, !range !129, !noalias !34987
  %i.aco = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !34987, !nonnull !111
  br label %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i

bb.in:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !35066
  store i64 10, ptr %i.x, align 8, !noalias !35066
  %i.acp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc40.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34996

.noexc40.i.i:                                     ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35066
  br label %.loopexit.i32.i.i.i.i

bb.io:                                            ; preds = %bb.hm
  %i.acq = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %.noexc41.i.i unwind label %.loopexit66.i.i, !noalias !34996 ; 2 uses

.noexc41.i.i:                                     ; preds = %bb.io
  %.not49.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acq, null
  br i1 %.not49.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i32.i.i.i.i

bb.ip:                                            ; preds = %bb.il
  %i.acr = add i64 %i.aci, -1                     ; 3 uses
  store i64 %i.acr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !35061, !noalias !34987
  %i.acs = load i64, ptr %i.ao, align 8, !range !129, !alias.scope !35061, !noalias !34987, !noundef !111
  %i.act = icmp ult i64 %i.acr, %i.acs
  call void @llvm.assume(i1 %i.act)
  %i.acu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35061, !noalias !34987, !nonnull !111, !noundef !111
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.acr
  %i.acw = load i8, ptr %i.acv, align 1, !noalias !34996, !noundef !111
  br label %bb.im

.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.iz, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.acx = phi i64 [ %.sroa.57.0..sroa_idx.promoted.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adj, %bb.iz ] ; 2 uses
  %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adh, %bb.iz ]
  %.sroa.042.2164.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.iz ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adm, %bb.iz ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35121)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ir, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i
  %i.acy = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adb, %bb.ir ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35122)
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !noalias !35123, !noundef !111
  switch i8 %i.ada, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.ir
    i8 10, label %bb.ir
    i8 9, label %bb.ir
    i8 13, label %bb.ir
    i8 44, label %bb.iu
    i8 93, label %bb.iv
    i8 125, label %bb.iw
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !37184, !noundef !111
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !37185
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37186)
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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !37187, !noundef !111 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !114

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37187
  store i64 14, ptr %i.a, align 8, !noalias !37187
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !37186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37187
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !37186, !noalias !37188
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !37186, !noalias !37188
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !114

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37187
  store i64 14, ptr %i.b, align 8, !noalias !37187
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !37186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37187
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !37186, !noalias !37188
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !37186, !noalias !37188
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !248

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
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37247)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !37248, !noalias !37249, !noundef !111 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !37248, !noalias !37249, !noundef !111 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !37248, !noalias !37249, !nonnull !111, !noundef !111
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !37250, !noundef !111 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !255

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !241

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !37251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37252)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !37252, !noalias !37253, !nonnull !111 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37255)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !37256, !noundef !111
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !37257, !noalias !37258
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !241

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37260)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !37261, !noundef !111
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !37262, !noalias !37258
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !241

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37264)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !37265, !noundef !111
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !37266, !noalias !37258
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.j, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37267
  store i64 5, ptr %i.f, align 8, !noalias !37267
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !37253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37267
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37267
  store i64 9, ptr %i.e, align 8, !noalias !37267
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !37253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37267
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !37268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37269)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !37269, !noalias !37270, !nonnull !111 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37272)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !37273, !noundef !111
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !37274, !noalias !37275
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !241

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37277)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !37278, !noundef !111
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !37279, !noalias !37275
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !241

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37281)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !37282, !noundef !111
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !37283, !noalias !37275
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30, label %bb.q, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37284
  store i64 5, ptr %i.d, align 8, !noalias !37284
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !37270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37284
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37284
  store i64 9, ptr %i.c, align 8, !noalias !37284
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !37270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37284
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !37285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37286)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !37286, !noalias !37287, !nonnull !111 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37289)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !37290, !noundef !111
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !37291, !noalias !37292
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !241

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37294)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !37295, !noundef !111
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !37296, !noalias !37292
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !241

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37298)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !37299, !noundef !111
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !37300, !noalias !37292
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !241

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37302)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !37303, !noundef !111
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !37304, !noalias !37292
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38, label %bb.z, !prof !241

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37305
  store i64 5, ptr %i.b, align 8, !noalias !37305
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !37287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37305
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37305
  store i64 9, ptr %i.a, align 8, !noalias !37305
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !37287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37305
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !37306
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !141, !noundef !111
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !116

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !37307
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !124, !noundef !111
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !111, !noundef !111 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !116

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

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !111, !align !127, !noundef !111
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

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
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !141, !noundef !111
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !116

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !111, !align !127, !noundef !111
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !37485, !noundef !111
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !37486
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37487)
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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !37488, !noundef !111 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !114

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37488
  store i64 14, ptr %i.a, align 8, !noalias !37488
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !37487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37488
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !37487, !noalias !37489
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !37487, !noalias !37489
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !114

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37488
  store i64 14, ptr %i.b, align 8, !noalias !37488
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !37487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37488
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !37487, !noalias !37489
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !37487, !noalias !37489
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !248

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
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37528)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !37528, !noalias !37529, !noundef !111 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !37528, !noalias !37529, !noundef !111 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !37528, !noalias !37529, !nonnull !111, !noundef !111
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !37530, !noundef !111 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !255

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !241

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !37531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37532)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !37532, !noalias !37533, !nonnull !111 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37534)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !37535, !noundef !111
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !37536, !noalias !37537
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !241

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37538)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !37539, !noundef !111
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !37540, !noalias !37537
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !241

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37541)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !37542, !noundef !111
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !37543, !noalias !37537
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.j, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37544
  store i64 5, ptr %i.f, align 8, !noalias !37544
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !37533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37544
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37544
  store i64 9, ptr %i.e, align 8, !noalias !37544
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !37533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37544
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !37545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37546)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !37546, !noalias !37547, !nonnull !111 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37548)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !37549, !noundef !111
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !37550, !noalias !37551
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !241

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37552)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !37553, !noundef !111
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !37554, !noalias !37551
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !241

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37555)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !37556, !noundef !111
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !37557, !noalias !37551
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30, label %bb.q, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37558
  store i64 5, ptr %i.d, align 8, !noalias !37558
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !37547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37558
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37558
  store i64 9, ptr %i.c, align 8, !noalias !37558
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !37547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37558
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !37559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37560)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !37560, !noalias !37561, !nonnull !111 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37562)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !37563, !noundef !111
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !37564, !noalias !37565
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !241

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37566)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !37567, !noundef !111
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !37568, !noalias !37565
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !241

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37569)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !37570, !noundef !111
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !37571, !noalias !37565
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !241

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37572)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !37573, !noundef !111
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !37574, !noalias !37565
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38, label %bb.z, !prof !241

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37575
  store i64 5, ptr %i.b, align 8, !noalias !37575
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !37561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37575
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37575
  store i64 9, ptr %i.a, align 8, !noalias !37575
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !37561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37575
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !37576
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !141, !noundef !111
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !116

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !37577
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !124, !noundef !111
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !111, !noundef !111 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !116

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

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !111, !align !127, !noundef !111
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

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
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !141, !noundef !111
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !116

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !111, !align !127, !noundef !111
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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

end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !118, !noundef !111 ; 2 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = load i64, ptr %1, align 8, !range !118, !noundef !111
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !119, !noalias !41561, !noundef !111
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #48, !noalias !41561
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #48, !noalias !41561
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 1, ptr %i.c, align 8, !noalias !41561
  store i64 0, ptr %1, align 8, !noalias !41562
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !118, !noundef !111 ; 2 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core6future5readyINtB4_5ReadyuENtNtB6_6future6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias nofree noundef captures(none) dereferenceable(1) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !115, !noundef !111
  %i.b = trunc nuw i8 %i.a to i1
  store i8 0, ptr %0, align 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !116

bb.b:                                             ; preds = %bb.a
  ret i1 false

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @913, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @915) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCseXbohGRa9jr_5tokio4sync9once_cellINtB4_8OnceCelljENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @916, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i8, ptr %i.c acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  %. = select i1 %i.e, ptr null, ptr %0
  store ptr %., ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @917)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscI6d9CVNmLh_4core6option6OptionINtCsdWqgeKPIYK7_4slab4SlabIB1m_NtNtNtB1q_4task4wake5WakerEEEEENtNtB1q_3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2d_4sync4WeakNtB2N_11ObjectStoreEEEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB4_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB23_16CachedReaderDataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !115, !noundef !111
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !41579, !noalias !41580
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !41579, !noalias !41580, !nonnull !111 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !41579, !noalias !41580, !nonnull !111, !align !127 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !alias.scope !41579, !noalias !41580
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.c:                                             ; preds = %.preheader, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4
  %i.s = phi i64 [ %.promoted, %.preheader ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41581)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ %i.v, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.w, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41582)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.u) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.v = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 6 uses
  %i.x = load i64, ptr %1, align 8, !range !113, !alias.scope !41579, !noalias !41580, !noundef !111 ; 4 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !41583, !noalias !41580, !noundef !111 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i: ; preds = %bb.d
  %exitcond.not.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %exitcond.not9.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not9.i.i, label %bb.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41584
  %i.aa = load ptr, ptr %i.p, align 8, !invariant.load !111, !noalias !41584, !nonnull !111
  call void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !41584, !inline_history !41570
  call void @llvm.experimental.noalias.scope.decl(metadata !41585)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41584
  %i.ab = load ptr, ptr %i.p, align 8, !invariant.load !111, !noalias !41584, !nonnull !111
  call void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !41584, !inline_history !41570
  call void @llvm.experimental.noalias.scope.decl(metadata !41586)
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !41587, !noalias !41580, !nonnull !111, !noundef !111
  %i.ad = mul nuw i64 %i.x, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !41588
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.f, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !41580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41584
  %i.ae = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !41579, !noalias !41580
  br label %bb.d

_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.af = add nsw i64 %.val.i.i.i, -1             ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !41581, !noalias !41580
  %i.ag = icmp samesign ult i64 %i.af, %i.x
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.q, align 8, !alias.scope !41581, !noalias !41580, !nonnull !111, !noundef !111
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af ; 3 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !41589 ; 6 uses
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload.i, -1
  br i1 %.not3.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !41589
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !41589 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.010.0.copyload.i, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.r, align 8, !invariant.load !111, !nonnull !111
  invoke void %i.aj(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  store i8 1, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41590
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.c, align 8, !range !113, !noundef !111
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
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41591
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandlerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 29, ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @919)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifestNtB4_35LanceNamespaceExternalManifestStoreNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @926, i64 noundef 35, ptr noalias noundef nonnull readonly captures(address, read_provenance) @927, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @923, ptr noalias noundef nonnull readonly captures(address, read_provenance) @928, i64 noundef 8, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @924, ptr noalias noundef nonnull readonly captures(address, read_provenance) @929, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @925)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @930, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @931, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41597
  %i.c = mul nuw nsw i64 %.16.val, 24             ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !41597
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !41597
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !41598
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #44, !noalias !41598 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #48, !noalias !41597
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %.16.val, ptr %i.b, align 8, !noalias !41597
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !41597
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
end_hunk_5
