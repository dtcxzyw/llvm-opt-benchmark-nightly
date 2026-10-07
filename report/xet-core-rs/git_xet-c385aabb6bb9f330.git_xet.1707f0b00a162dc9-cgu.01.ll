Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.01?download=true
inline.NumInlined: 326
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet:bb.a
bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !732
  tail call void @_RINvXsi_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !743, !noalias !741, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !743, !noalias !741
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !742, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !744
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !741
  %i.g = load i64, ptr %i.a, align 8, !range !4, !noalias !744, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !744 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !741, !noalias !742
  store i8 -1, ptr %0, align 8, !alias.scope !741, !noalias !742
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !744 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !745, !noalias !746
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !745, !noalias !746
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !745, !noalias !746
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !744
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !847, !noalias !848, !noundef !5 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !849, !noalias !850 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !847, !noalias !848, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !852, !noundef !5
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !22

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !853, !noalias !850
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !845
  store i64 3, ptr %i.o, align 8, !noalias !845
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !845
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !845
  store i64 6, ptr %i.p, align 8, !noalias !845
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !845
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !854
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !859
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !861, !noundef !5 ; 3 uses
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
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !862, !noalias !863
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !859
  store i64 5, ptr %i.n, align 8, !noalias !859
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !867, !noundef !5
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !868, !noalias !869
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !871, !noundef !5
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !872, !noalias !869
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !874, !noundef !5
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !875, !noalias !869
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !876
  store i64 5, ptr %i.f, align 8, !noalias !876
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !876
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !876
  store i64 9, ptr %i.e, align 8, !noalias !876
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !876
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !881, !noundef !5
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !882, !noalias !883
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !23

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !885, !noundef !5
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !886, !noalias !883
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !23

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !888, !noundef !5
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !889, !noalias !883
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !890
  store i64 5, ptr %i.d, align 8, !noalias !890
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !890
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !890
  store i64 9, ptr %i.c, align 8, !noalias !890
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !890
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !895, !noundef !5
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !896, !noalias !897
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !899, !noundef !5
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !900, !noalias !897
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !902, !noundef !5
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !903, !noalias !897
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !23

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !905, !noundef !5
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !906, !noalias !897
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !907
  store i64 5, ptr %i.b, align 8, !noalias !907
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !907
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !907
  store i64 9, ptr %i.a, align 8, !noalias !907
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !907
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !909
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !910
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !911, !noundef !5
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !911
  br label %bb.ag

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !859, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !912, !noalias !913, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !914, !noalias !915 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !859
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !912, !noalias !913, !nonnull !5, !noundef !5 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !916, !alias.scope !859
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !859, !nonnull !5
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !859
  store i64 10, ptr %i.m, align 8, !noalias !859
  %i.co = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !859
  %i.cr = load i64, ptr %.0.val, align 8, !range !916, !alias.scope !859, !noundef !5
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !859, !nonnull !5, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !5
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !919, !noundef !5
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !920, !noalias !915
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !859
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !859
  %i.db = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !16

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dd, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.de = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.de, ptr %i.q, align 8, !alias.scope !921
end_hunk_0
begin_hunk_1_@_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet:bb.a
.lr.ph.i82.i.i.i.i.i:                             ; preds = %bb.aw, %bb.ax
  %i.do = phi i64 [ %i.dr, %bb.ax ], [ %.promoted.i80.i.i.i.i.i, %bb.aw ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !924, !noundef !5
  switch i8 %i.dq, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 34, label %bb.ay
  ], !prof !22

bb.ax:                                            ; preds = %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i
  %i.dr = add i64 %i.do, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.q, align 8, !alias.scope !925, !noalias !926
  %exitcond.not.i83.i.i.i.i.i = icmp eq i64 %i.dr, %i.cj
  br i1 %exitcond.not.i83.i.i.i.i.i, label %.loopexit125.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i

.loopexit125.i.i.i.i.i:                           ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !859
  store i64 3, ptr %i.i, align 8, !noalias !859
  %i.ds = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ay:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  %i.dt = add i64 %i.do, 1
  store i64 %i.dt, ptr %i.q, align 8, !alias.scope !927
  %i.du = tail call noundef align 8 ptr @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not50.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not50.i.i.i.i.i, label %bb.ba, label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.az:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !859
  store i64 17, ptr %i.j, align 8, !noalias !859
  %i.dv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.dw = load i64, ptr %i.r, align 8, !alias.scope !929, !noalias !930, !noundef !5 ; 3 uses
  %.promoted.i87.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !931, !noalias !932 ; 2 uses
  %i.dx = icmp ult i64 %.promoted.i87.i.i.i.i.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i89.i.i.i.i.i, label %.loopexit124.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.ba
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !929, !noalias !930, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i89.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i87.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !934, !noundef !5
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !22

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ec = add i64 %i.dz, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !935, !noalias !932
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !859
  store i64 3, ptr %i.g, align 8, !noalias !859
  %i.ed = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ee = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !alias.scope !936
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !859
  store i64 6, ptr %i.h, align 8, !noalias !859
  %i.ef = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.l, align 8, !noalias !859
  %i.ej = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, %.loopexit239.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, %.loopexit232.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit232.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit125.i.i.i.i.i ], [ %i.db, %bb.ao ], [ %i.bl, %.loopexit239.i.i.i.i.i ], [ %i.az, %.loopexit246.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.co, %bb.ah ], [ %i.bz, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i ], [ %i.bk, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cp, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1024, !noalias !1025, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !1026, !noalias !1027 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1024, !noalias !1025, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1030, !noundef !5 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1031, !noalias !1027
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1032
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1032
  store i64 5, ptr %i.r, align 8, !noalias !1032
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1032
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !19

bb.e:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !1033, !noalias !1021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !1037, !noundef !5
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1038, !noalias !1039
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !23

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1042, !noundef !5
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !1043, !noalias !1039
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !23

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !1046, !noundef !5
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !1047, !noalias !1039
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i, label %bb.k, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1048
  store i64 5, ptr %i.f, align 8, !noalias !1048
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1048
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1048
  store i64 9, ptr %i.e, align 8, !noalias !1048
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1048
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !1050, !noalias !1021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1054, !noundef !5
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !1055, !noalias !1056
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1059, !noundef !5
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !1060, !noalias !1056
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !23

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !1063, !noundef !5
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !1064, !noalias !1056
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit50.i, label %bb.r, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1065
  store i64 5, ptr %i.d, align 8, !noalias !1065
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1065
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1065
  store i64 9, ptr %i.c, align 8, !noalias !1065
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1065
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !1067, !noalias !1021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1071, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !1072, !noalias !1073
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1076, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !1077, !noalias !1073
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1080, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !1081, !noalias !1073
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1084, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !1085, !noalias !1073
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit59.i, label %bb.aa, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1086
  store i64 5, ptr %i.b, align 8, !noalias !1086
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1086
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1086
  store i64 9, ptr %i.a, align 8, !noalias !1086
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1086
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !1088, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1032
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1021
  %i.bt = load i64, ptr %i.p, align 8, !range !18, !noalias !1032, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !1089, !noalias !1021
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1032
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1021
  %i.by = load i64, ptr %i.n, align 8, !range !4, !noalias !1032, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1032 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !16

bb.ae:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !16

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !1090, !noalias !1032
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !1032
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !1091

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1032
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1032
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !1092, !noalias !1032
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1092, !noalias !1032
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !1093, !noalias !1032
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !1093, !noalias !1032
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1032
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !1032
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !1094, !noalias !1095
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1032
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1032
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1032 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !1021
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !1096, !noalias !1097
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_1
begin_hunk_2_@_RINvYQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet:bb.a

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.thread87.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l), !noalias !1021
  br label %.thread87.i

bb.ax:                                            ; preds = %bb.bb, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !1021
  unreachable

.thread87.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1032
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.cx), !noalias !1021
  br label %.thread87.i

bb.az:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1032
  store i64 24, ptr %i.j, align 8, !noalias !1032
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1032
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

bb.ba:                                            ; preds = %bb.ae
  %i.dj = add i64 %i.y, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !1099, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1032
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB24_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1021
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1032
  %i.dm = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !1021 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #14
          to label %bb.bm unwind label %bb.ax, !noalias !1021

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1032
  %i.dp = load i8, ptr %i.i, align 8, !range !7, !noalias !1032, !noundef !5
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1032
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !1021
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1032
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.dm), !noalias !1021
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1032
  store i64 10, ptr %i.g, align 8, !noalias !1032
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1032
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1032
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1021
  %i.dw = load i64, ptr %i.o, align 8, !range !18, !noalias !1032, !noundef !5 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1YANDSn9Kib_7git_xet(ptr noalias noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !1021
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1032
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !1032
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !1100, !noalias !1101
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !1100, !noalias !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1032
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit59.i, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit50.i, %bb.ag, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !1022
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1032
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.f)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1110, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1111, !noalias !1112
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !13

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12fix_positionCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1YANDSn9Kib_7git_xet(ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1137, !noalias !1138, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1137, !noalias !1138, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1137, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !1139, !noundef !5
  switch i8 %i.o, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1142, !noalias !1140
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1143, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1144
  store i64 13, ptr %i.d, align 8, !noalias !1144
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1140, !noalias !1141
  store i64 1, ptr %i.f, align 8, !alias.scope !1140, !noalias !1141
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs1YANDSn9Kib_7git_xet.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1144
  store i64 5, ptr %i.c, align 8, !noalias !1144
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !1140, !noalias !1141
  store i64 1, ptr %i.f, align 8, !alias.scope !1140, !noalias !1141
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs1YANDSn9Kib_7git_xet.exit

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsiWcPrHiWZDL_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !1146, !noundef !5 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1146
  store i64 14, ptr %i.a, align 8, !noalias !1146
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1146
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !1147, !noalias !1148
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !1147, !noalias !1148
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit.i
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCs1YANDSn9Kib_7git_xet:bb.a

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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsiWcPrHiWZDL_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !1217, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1217
  store i64 14, ptr %i.a, align 8, !noalias !1217
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1217
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !1216, !noalias !1218
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !1216, !noalias !1218
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1217
  store i64 14, ptr %i.b, align 8, !noalias !1217
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1217
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1216, !noalias !1218
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1216, !noalias !1218
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1227, !noalias !1228, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1227, !noalias !1228, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !1228, !noalias !1227
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !1228, !noalias !1227
  br label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !1228, !noalias !1227
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1233, !noundef !5 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !1234
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !1228, !noalias !1227
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1294, !noalias !1295, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1294, !noalias !1295, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !1294, !noalias !1295, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !1296, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !24

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread26, !prof !23

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !1297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !1298, !noalias !1299, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1302, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !1303, !noalias !1304
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1307, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !1308, !noalias !1304
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !23

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1311, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !1312, !noalias !1304
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit, label %bb.j, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1313
  store i64 5, ptr %i.f, align 8, !noalias !1313
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1313
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1313
  store i64 9, ptr %i.e, align 8, !noalias !1313
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1313
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !1314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !1315, !noalias !1316, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1319, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !1320, !noalias !1321
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1324, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !1325, !noalias !1321
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !23

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1328, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !1329, !noalias !1321
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30, label %bb.q, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1330
  store i64 5, ptr %i.d, align 8, !noalias !1330
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1330
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1330
  store i64 9, ptr %i.c, align 8, !noalias !1330
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1330
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !1331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !1332, !noalias !1333, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1336, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !1337, !noalias !1338
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !23

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !1341, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !1342, !noalias !1338
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !23

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !1345, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !1346, !noalias !1338
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !23

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !1349, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !1350, !noalias !1338
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38, label %bb.z, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1351
  store i64 5, ptr %i.b, align 8, !noalias !1351
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1351
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1351
  store i64 9, ptr %i.a, align 8, !noalias !1351
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1351
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !1352
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !18, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !13

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !1353
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !4, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !13

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread26, %bb.ai, %bb.ag, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread26 ], [ %i.cb, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit ], [ %i.ce, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30 ], [ %i.cg, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1YANDSn9Kib_7git_xet(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !11, !noundef !5
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread26:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !18, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !11, !noundef !5
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread: ; preds = %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCs1YANDSn9Kib_7git_xet:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1572, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1573
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsiWcPrHiWZDL_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !1575, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1575
  store i64 14, ptr %i.a, align 8, !noalias !1575
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1575
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !1574, !noalias !1576
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !1574, !noalias !1576
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1575
  store i64 14, ptr %i.b, align 8, !noalias !1575
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1575
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1574, !noalias !1576
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1574, !noalias !1576
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1YANDSn9Kib_7git_xet.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1615, !noalias !1616, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1615, !noalias !1616, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !1615, !noalias !1616, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !1617, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !24

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !23

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !1618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !1619, !noalias !1620, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1622, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !1623, !noalias !1624
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1626, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !1627, !noalias !1624
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !23

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1629, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !1630, !noalias !1624
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit, label %bb.j, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1631
  store i64 5, ptr %i.f, align 8, !noalias !1631
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1631
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1631
  store i64 9, ptr %i.e, align 8, !noalias !1631
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !1632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !1633, !noalias !1634, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1636, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !1637, !noalias !1638
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1640, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !1641, !noalias !1638
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !23

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1643, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !1644, !noalias !1638
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30, label %bb.q, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1645
  store i64 5, ptr %i.d, align 8, !noalias !1645
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1645
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1645
  store i64 9, ptr %i.c, align 8, !noalias !1645
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1645
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !1646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !1647, !noalias !1648, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1650, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !1651, !noalias !1652
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !23

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !1654, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !1655, !noalias !1652
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !23

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !1657, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !1658, !noalias !1652
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !23

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !1660, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !1661, !noalias !1652
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38, label %bb.z, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1662
  store i64 5, ptr %i.b, align 8, !noalias !1662
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1662
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1662
  store i64 9, ptr %i.a, align 8, !noalias !1662
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1662
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !1663
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !18, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !13

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !1664
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !4, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !13

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit ], [ %i.ce, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30 ], [ %i.cg, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs1YANDSn9Kib_7git_xet(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !11, !noundef !5
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !18, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !11, !noundef !5
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.thread: ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

end_hunk_4
