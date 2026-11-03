Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14get_value_hint:bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !4996
  unreachable

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_10value_hint9ValueHintEB7_.exit: ; preds = %bb.e
  %i.ac = load i8, ptr %i.y, align 1, !range !4999, !noundef !10
  br label %bb.l

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.04.0.copyload = load i64, ptr %i.ad, align 8
  %i.ae = trunc nuw i64 %.sroa.04.0.copyload to i1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.not8 = icmp eq i64 %.sroa.55.0.copyload, 0
  %or.cond = select i1 %i.ae, i1 %.not8, i1 false
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !24, !noundef !10
  %.not9 = icmp eq i64 %i.ag, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT. = select i1 %.not9, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5000)
  %i.ah = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., align 8, !range !47, !alias.scope !5000, !noundef !10
  switch i64 %i.ah, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit

bb.i:                                             ; preds = %bb.g
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit

bb.j:                                             ; preds = %bb.g
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit

bb.k:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !5000, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !5000, !nonnull !10, !align !16, !noundef !10
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.6.0.i = phi ptr [ %i.al, %bb.k ], [ @256, %bb.h ], [ @257, %bb.i ], [ @258, %bb.j ], [ @255, %bb.g ]
  %.sroa.0.0.i10 = phi ptr [ %i.aj, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !10, !noalias !5001, !nonnull !10
  call void %i.an(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %.sroa.0.0.i10) #45, !noalias !5000, !inline_history !5002
  %.sroa.07.0.copyload = load i128, ptr %i.b, align 16
  %i.ao = icmp eq i128 %.sroa.07.0.copyload, -101730151472106805946896305096694197864
  %.sroa.0.1 = select i1 %i.ao, i8 2, i8 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_10value_hint9ValueHintEB7_.exit
  %.sroa.0.2 = phi i8 [ %i.ac, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_10value_hint9ValueHintEB7_.exit ], [ %.sroa.0.1, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser7type_id.exit ], [ 0, %._crit_edge ]
  ret i8 %.sroa.0.2
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(600) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.0.copyload = load i64, ptr %i.a, align 8
  %i.b = trunc nuw i64 %.sroa.03.0.copyload to i1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.54.0.copyload, 0
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !24, !noundef !10
  %.not6 = icmp eq i64 %i.d, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT. = select i1 %.not6, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.c ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5005)
  %i.e = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., align 8, !range !47, !alias.scope !5005, !noundef !10
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit

bb.d:                                             ; preds = %bb.b
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit

bb.e:                                             ; preds = %bb.b
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5005, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT., i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5005, !nonnull !10, !align !16, !noundef !10
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.6.0.i = phi ptr [ %i.i, %bb.f ], [ @256, %bb.c ], [ @257, %bb.d ], [ @258, %bb.e ], [ @255, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !10, !noalias !5005, !nonnull !10
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef nonnull %.sroa.0.0.i) #45, !noalias !5005, !inline_history !5006 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.j, %bb.g
  ret void

bb.i:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  tail call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #43
  br label %bb.h

bb.j:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit
  store i64 0, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command22get_arg_conflicts_with(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(600) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.e = load i32, ptr %i.d, align 8, !noundef !10
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val8 = load i64, ptr %i.p, align 8, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val8, 600
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %i.r = icmp eq i64 %.val8, 0                    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val9 = load ptr, ptr %i.s, align 8, !nonnull !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val10 = load i64, ptr %i.t, align 8
  %.val10.fr = freeze i64 %.val10                 ; 2 uses
  %.idx.i12 = mul nuw nsw i64 %.val10.fr, 96
  %i.u = getelementptr inbounds nuw i8, ptr %.val9, i64 %.idx.i12
  %i.v = icmp eq i64 %.val10.fr, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br i1 %i.v, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us
  %i.y = phi ptr [ %i.ap, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us ], [ inttoptr (i64 8 to ptr), %.lr.ph.split.us ]
  %i.z = phi i64 [ %i.ar, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.sroa.0.036.us = phi ptr [ %i.aa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us ], [ %i.j, %.lr.ph.split.us ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.036.us, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.036.us, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !5121, !noalias !5122, !noundef !10 ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.036.us, align 8, !alias.scope !5121, !nonnull !10
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.i.i.us
  %i.ae = phi ptr [ %.val, %.lr.ph.i.i.us ], [ %i.af, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 600 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !5123, !noundef !10
  %i.ai = icmp eq i64 %i.ah, %i.ac
  br i1 %i.ai, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !5123, !nonnull !10, !noundef !10
  %bcmp.i.i.i.us = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.ad, i64 %i.ac), !noalias !5123
  %i.al = icmp eq i32 %bcmp.i.i.i.us, 0
  br i1 %i.al, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.us, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, %bb.c
  %i.am = icmp eq ptr %i.af, %i.q
  br i1 %i.am, label %.loopexit, label %bb.c

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.us: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.an = load i64, ptr %i.c, align 8, !range !11, !alias.scope !5124, !noundef !10
  %i.ao = icmp eq i64 %i.z, %i.an
  br i1 %i.ao, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us

bb.d:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #42, !noalias !5125
  %.pre57 = load ptr, ptr %i.g, align 8, !alias.scope !5124
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us: ; preds = %bb.d, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  %i.ap = phi ptr [ %.pre57, %bb.d ], [ %i.y, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.z
  store ptr %i.ae, ptr %i.aq, align 8, !noalias !5126, !captures !21
  %i.ar = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ar, ptr %i.h, align 8, !alias.scope !5124
  %i.as = icmp eq ptr %i.aa, %i.m
  br i1 %i.as, label %._crit_edge, label %.lr.ph.i.i.us

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5129)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !5129, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5129, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  %i.ax = shl nuw nsw i64 %i.aw, 3                ; 2 uses
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command29get_global_arg_conflicts_with.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5131
  %i.az = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ax, i64 noundef range(i64 1, 9) 8) #43, !noalias !5131 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ax) #46, !noalias !5132
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = load ptr, ptr %i.bb, align 8, !alias.scope !5128, !noalias !5133, !nonnull !10, !noundef !10 ; 2 uses
  %i.bg = load i64, ptr %i.bc, align 8, !alias.scope !5128, !noalias !5133, !noundef !10 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bg, 600
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.bi = icmp eq i64 %i.bg, 0
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.g
  %i.bj = phi i64 [ 0, %bb.g ], [ %i.cu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bj ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !5134 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !noalias !5134 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5135
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command26get_subcommands_containing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2) #43, !noalias !5136
  %i.bm = load ptr, ptr %i.bd, align 8, !noalias !5135, !nonnull !10, !noundef !10 ; 3 uses
  %i.bn = load i64, ptr %i.be, align 8, !noalias !5135, !noundef !10 ; 2 uses
  %.idx14.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx14.i.i.i.i.i.i.i.i.i
  br i1 %i.bi, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = phi ptr [ %i.bq, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 600 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 544
  %i.bs = load i64, ptr %i.br, align 8, !noalias !5137, !noundef !10
  %i.bt = icmp eq i64 %i.bs, %.val12.i.i.i.i.i.i.i
  br i1 %i.bt, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 536
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !5137, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull readonly %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i), !noalias !5137
  %i.bw = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = icmp eq ptr %i.bq, %i.bh
  br i1 %i.bx, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.by = icmp eq i64 %i.bn, 0
  br i1 %i.by, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtNtB7_7flatten7FlatMapIB11_RNtNtB1u_7command7CommandEB10_NCNCNvMs2_B2L_B2J_29get_global_arg_conflicts_with00EENtNtNtB9_6traits8iterator8Iterator4findNCB3e_s_0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.ca, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !5138, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !5138, !nonnull !10, !noundef !10 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 144
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !5138, !noundef !10 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.ce, 600
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.ci, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 600 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5140)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 544
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !5141, !noalias !5142, !noundef !10
  %i.cl = icmp eq i64 %i.ck, %.val12.i.i.i.i.i.i.i
  br i1 %i.cl, label %_RNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 536
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !5141, !noalias !5142, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.cn, ptr nonnull readonly %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i), !noalias !5143
  %bcmp.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.co, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp eq ptr %i.ci, %i.cf
  br i1 %i.cp, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cq = icmp eq ptr %i.ca, %i.bo
  br i1 %i.cq, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtNtB7_7flatten7FlatMapIB11_RNtNtB1u_7command7CommandEB10_NCNCNvMs2_B2L_B2J_29get_global_arg_conflicts_with00EENtNtNtB9_6traits8iterator8Iterator4findNCB3e_s_0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i3.i.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_RNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !5135, !noundef !10 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.thread.i.i.i.i.i.i.i.i.i
  %i.cs = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5135
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtNtB7_7flatten7FlatMapIB11_RNtNtB1u_7command7CommandEB10_NCNCNvMs2_B2L_B2J_29get_global_arg_conflicts_with00EENtNtNtB9_6traits8iterator8Iterator4findNCB3e_s_0EB1w_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #44, !noalias !5135
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandINtNtNtBa_5slice4iter4IterNtNtB15_3arg3ArgEuINtNtNtBa_3ops12control_flow11ControlFlowRB2n_ENCNCNvMs2_B13_B11_29get_global_arg_conflicts_with00NCINvNvMsg_NtB6_7flattenINtB4q_13FlattenCompatppE13iter_try_fold7flattenB1X_uB2F_NCINvNvXsi_B4q_B4D_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1X_uB2F_NCINvNvB5R_4find5checkB3k_NCB3s_s_0E0E0E0E0B17_.exit.i.i.i.i.i.i.i.i.i.i.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5135
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bj
  store ptr %.sroa.0.0.i3.i.ph.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !noalias !5144, !captures !21
  %i.cu = add nuw i64 %i.bj, 1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, %i.aw
  br i1 %i.cv, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command29get_global_arg_conflicts_with.exit, label %bb.h

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command29get_global_arg_conflicts_with.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.e
  %.sroa.10.0.i29.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.az, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command29get_global_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i.i.i.i ]
  store i64 %i.aw, ptr %0, align 8, !alias.scope !5145
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i29.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5145
  %.sroa.6.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx16.i.i, align 8, !alias.scope !5145
  br label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %i.cw = phi ptr [ %i.dw, %bb.k ], [ inttoptr (i64 8 to ptr), %.lr.ph ]
  %i.cx = phi i64 [ %i.dx, %bb.k ], [ 0, %.lr.ph ] ; 7 uses
  %.sroa.0.036 = phi ptr [ %i.cy, %bb.k ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  %.sroa.0.0.val.pre = load ptr, ptr %.sroa.0.036, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.sroa.0.036, i64 8
  %.sroa.0.0.val11.pre = load i64, ptr %.phi.trans.insert, align 8 ; 4 uses
  br i1 %i.r, label %.lr.ph.i.i13.preheader, label %.lr.ph.i.i

.lr.ph.i.i13.preheader:                           ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.lr.ph.split
  br label %.lr.ph.i.i13

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.cz = phi ptr [ %i.da, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ], [ %.val, %.lr.ph.split ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 600 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 544
  %i.dc = load i64, ptr %i.db, align 8, !noalias !5123, !noundef !10
  %i.dd = icmp eq i64 %i.dc, %.sroa.0.0.val11.pre
  br i1 %i.dd, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 536
  %i.df = load ptr, ptr %i.de, align 8, !noalias !5123, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.df, ptr nonnull %.sroa.0.0.val.pre, i64 %.sroa.0.0.val11.pre), !noalias !5123
  %i.dg = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dg, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i
  %i.dh = icmp eq ptr %i.da, %i.q
  br i1 %i.dh, label %.lr.ph.i.i13.preheader, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.k, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.di = load i64, ptr %i.c, align 8, !range !11, !alias.scope !5124, !noundef !10
  %i.dj = icmp eq i64 %i.cx, %i.di
  br i1 %i.dj, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit

bb.j:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #42, !noalias !5125
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !5124
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, %bb.j
  %i.dk = phi ptr [ %i.cw, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %.pre, %bb.j ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.cx
  store ptr %i.cz, ptr %i.dl, align 8, !noalias !5126, !captures !21
  %i.dm = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.dm, ptr %i.h, align 8, !alias.scope !5124
  br label %bb.k

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i
  %i.dn = phi ptr [ %i.do, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i ], [ %.val9, %.lr.ph.i.i13.preheader ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !5146, !noundef !10
  %i.dr = icmp eq i64 %i.dq, %.sroa.0.0.val11.pre
  br i1 %i.dr, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i: ; preds = %.lr.ph.i.i13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !5146, !nonnull !10, !noundef !10
  %bcmp.i.i.i15 = tail call i32 @bcmp(ptr nonnull %i.dt, ptr nonnull readonly %.sroa.0.0.val.pre, i64 %.sroa.0.0.val11.pre), !noalias !5146
  %i.du = icmp eq i32 %bcmp.i.i.i15, 0
  br i1 %i.du, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, %.lr.ph.i.i13
  %i.dv = icmp eq ptr %i.do, %i.u
  br i1 %i.dv, label %.loopexit, label %.lr.ph.i.i13

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit
  %i.dw = phi ptr [ %i.fa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit ], [ %i.dk, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit ]
  %i.dx = phi i64 [ %storemerge.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit ], [ %i.dm, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBM_.exit ]
  %i.dy = icmp eq ptr %i.cy, %i.m
  br i1 %i.dy, label %._crit_edge, label %.lr.ph.split

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz) #43
  %i.ea = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.eb = load i64, ptr %i.x, align 8, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5147)
  %i.ec = load i64, ptr %i.c, align 8, !range !11, !alias.scope !5148, !noundef !10
  %i.ed = sub i64 %i.ec, %i.cx
  %i.ee = icmp ugt i64 %i.eb, %i.ed
  br i1 %i.ee, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.thread, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.thread: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cx, i64 noundef %i.eb, i64 noundef 8, i64 noundef 8) #43, !noalias !5149
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !5147
  %i.ef = load ptr, ptr %i.g, align 8, !alias.scope !5147, !nonnull !10, !noundef !10
  br label %.preheader

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  %i.eg = load ptr, ptr %i.g, align 8, !alias.scope !5147, !nonnull !10, !noundef !10 ; 2 uses
  %i.eh = icmp eq i64 %i.eb, 0
  br i1 %i.eh, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_.exit, label %.preheader

.preheader:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.thread, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i
  %i.ei = phi ptr [ %i.ef, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.thread ], [ %i.eg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i ] ; 2 uses
  %i.ej = phi i64 [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.thread ], [ %i.cx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i ]
  br i1 %i.r, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i
  %i.ek = phi i64 [ %i.ex, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i ], [ %i.ej, %.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ey, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i ], [ 0, %.preheader ] ; 2 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val11.i.i.i.i = load ptr, ptr %i.el, align 8, !noalias !5150
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !5150 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i
  %i.en = phi ptr [ %i.eo, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i ], [ %.val, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 600 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 544
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !5151, !noundef !10
  %i.er = icmp eq i64 %i.eq, %.val12.i.i.i.i
  br i1 %i.er, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 536
  %i.et = load ptr, ptr %i.es, align 8, !noalias !5151, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.et, ptr nonnull readonly %.val11.i.i.i.i, i64 %.val12.i.i.i.i), !noalias !5151
  %i.eu = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eu, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ev = icmp eq ptr %i.eo, %i.q
  br i1 %i.ev, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.preheader, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #44, !noalias !5152
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek
  store ptr %i.en, ptr %i.ew, align 8, !noalias !5153, !captures !21
  %i.ex = add i64 %i.ek, 1                        ; 2 uses
  %i.ey = add nuw i64 %.sroa.01.0.i.i.i.i, 1      ; 2 uses
  %i.ez = icmp eq i64 %i.ey, %i.eb
  br i1 %i.ez, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i
  %i.fa = phi ptr [ %i.eg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i ], [ %i.ei, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.cx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i ], [ %i.ex, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtB11_7builder3arg3ArguNCNvMs2_NtB1J_7commandNtB2e_7Command22get_arg_conflicts_with0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4b_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B11_.exit.i.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %i.h, align 8, !alias.scope !5147, !noalias !5154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5155)
  %.val.i16 = load i64, ptr %i.b, align 8, !range !11, !alias.scope !5155, !noundef !10 ; 2 uses
  %i.fb = icmp eq i64 %.val.i16, 0
  br i1 %i.fb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_.exit
  %i.fc = shl nuw i64 %.val.i16, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5155
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @77, ptr noundef nonnull inttoptr (i64 177 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #44
  unreachable

bb.m:                                             ; preds = %._crit_edge, %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command29get_global_arg_conflicts_with.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command26get_subcommands_containing(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 3 uses
  %i.g = icmp ult i64 %i.f, 12954174209065697
  tail call void @llvm.assume(i1 %i.g)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 536
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.p = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.ae, %.loopexit ] ; 3 uses
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.af, %.loopexit ] ; 5 uses
  %.sroa.01.08 = phi i64 [ 0, %.lr.ph ], [ %i.r, %.loopexit ] ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.01.08, 1          ; 2 uses
  %i.s = getelementptr inbounds nuw [712 x i8], ptr %i.i, i64 %.sroa.01.08 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 600
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i
  %i.y = phi ptr [ %i.z, %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i ], [ %i.u, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 600 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 544
  %.val3.i = load i64, ptr %i.aa, align 8, !noalias !5166, !noundef !10
  %i.ab = icmp eq i64 %.val3.i, %i.k
  br i1 %i.ab, label %.split.i, label %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.y, i64 536
  %.val2.i = load ptr, ptr %i.ac, align 8, !noalias !5166, !nonnull !10, !noundef !10
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull %i.m, i64 %i.k), !noalias !5166
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs2_NtBU_7commandNtB2w_7Command26get_subcommands_containing0EBW_.exit, label %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i

_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not7.i = icmp eq ptr %i.z, %i.x
  br i1 %.not7.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit
  %i.ae = phi ptr [ %i.ax, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit ], [ %i.p, %bb.b ], [ %i.p, %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i ]
  %i.af = phi i64 [ %i.az, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit ], [ %i.q, %bb.b ], [ %i.q, %_RNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command26get_subcommands_containing0Bb_.exit.backedge.i ]
  %exitcond.not = icmp eq i64 %i.r, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs2_NtBU_7commandNtB2w_7Command26get_subcommands_containing0EBW_.exit: ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5167)
  %i.ag = load i64, ptr %i.b, align 8, !range !11, !alias.scope !5167, !noundef !10
  %i.ah = icmp eq i64 %i.q, %i.ag
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs2_NtBU_7commandNtB2w_7Command26get_subcommands_containing0EBW_.exit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !5168
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !5167
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs2_NtBU_7commandNtB2w_7Command26get_subcommands_containing0EBW_.exit
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.p, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs2_NtBU_7commandNtB2w_7Command26get_subcommands_containing0EBW_.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.q
  store ptr %i.s, ptr %i.aj, align 8, !noalias !5169, !captures !21
  %i.ak = add i64 %i.q, 1                         ; 6 uses
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !5167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command26get_subcommands_containing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %2) #43
  %i.al = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = load i64, ptr %i.o, align 8, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5170)
  %i.an = load i64, ptr %i.b, align 8, !range !11, !alias.scope !5171, !noundef !10
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.thread.i: ; preds = %bb.d
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ak, i64 noundef %i.am, i64 noundef 8, i64 noundef 8) #43
  %i.aq = load i64, ptr %i.d, align 8, !alias.scope !5170, !noundef !10 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ar)
  br label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i: ; preds = %bb.d
  %i.as = icmp ult i64 %i.ak, 1152921504606846976
  tail call void @llvm.assume(i1 %i.as)
  %.not.i6 = icmp eq i64 %i.am, 0
  br i1 %.not.i6, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.thread.i
  %i.at = phi i64 [ %i.aq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.thread.i ], [ %i.ak, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i ] ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8, !alias.scope !5170, !nonnull !10, !noundef !10 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %i.al, i64 %i.aw, i1 false), !noalias !5170
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i, %bb.e
  %i.ax = phi ptr [ %i.au, %bb.e ], [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i ]
  %i.ay = phi i64 [ %i.at, %bb.e ], [ %i.ak, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i ]
  %i.az = add i64 %i.ay, %i.am                    ; 2 uses
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !5170
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !10 ; 2 uses
  %i.ba = icmp eq i64 %.val, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit
  %i.bb = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command28get_name_and_visible_aliases(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.g = load i64, ptr %i.f, align 8, !noundef !10
  store ptr %i.e, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !noundef !10
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5180)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.p = phi ptr [ %i.b, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.ab, %bb.g ]
  %i.q = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.t, %bb.g ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = phi ptr [ %i.t, %bb.e ], [ %.sroa.0.0.i, %bb.c ] ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB16_6filter6FilterINtNtNtB1a_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEENCNvMs2_NtB2I_7commandNtB3D_7Command19get_visible_aliases0ENCB3x_s_0EEB2K_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !33, !noalias !5181, !noundef !10
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.d
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage23get_required_usage_from:bb.a
  %.sroa.5180.0.copyload = load ptr, ptr %.sroa.5180.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7694)
  %.idx.i121 = mul nuw nsw i64 %i.jx, 24
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx.i121
  %i.nn = icmp eq i64 %i.jx, 0
  br i1 %i.nn, label %._crit_edge.i, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.at, %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i
  %.sroa.03.09.i = phi ptr [ %i.ns, %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.jy, %bb.at ] ; 3 uses
  %i.no = getelementptr i8, ptr %.sroa.03.09.i, i64 16
  %.sroa.03.0.val5.i = load i64, ptr %i.no, align 8, !noalias !7695, !noundef !10
  %i.np = icmp eq i64 %.sroa.03.0.val5.i, %.sroa.6.0.copyload
  br i1 %i.np, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i: ; preds = %.lr.ph.i122
  %i.nq = getelementptr i8, ptr %.sroa.03.09.i, i64 8
  %.sroa.03.0.val.i = load ptr, ptr %i.nq, align 8, !noalias !7695, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5180.0.copyload) ]
  %bcmp.i.i.i.i125 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i, ptr nonnull readonly %.sroa.5180.0.copyload, i64 %.sroa.6.0.copyload), !noalias !7695
  %i.nr = icmp eq i32 %bcmp.i.i.i.i125, 0
  br i1 %i.nr, label %bb.au, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i, %.lr.ph.i122
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 24 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.nm
  br i1 %i.nt, label %._crit_edge.i, label %.lr.ph.i122

bb.au:                                            ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i
  %i.nu = icmp eq i64 %.sroa.0178.0.copyload, 0
  br i1 %i.nu, label %.backedge.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5180.0.copyload, i64 noundef %.sroa.0178.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !7696
  br label %.backedge.backedge

._crit_edge.i:                                    ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7697)
  %i.nv = load i64, ptr %i.k, align 8, !range !11, !alias.scope !7698, !noundef !10
  %i.nw = icmp eq i64 %i.jx, %i.nv
  br i1 %i.nw, label %bb.aw, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i

bb.aw:                                            ; preds = %._crit_edge.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #42, !noalias !7699
  %.pre.i124 = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !alias.scope !7698
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i: ; preds = %bb.aw, %._crit_edge.i
  %i.nx = phi ptr [ %i.jy, %._crit_edge.i ], [ %.pre.i124, %bb.aw ] ; 2 uses
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.jx ; 3 uses
  store i64 %.sroa.0178.0.copyload, ptr %i.ny, align 8, !noalias !7698
  %.sroa.5180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store ptr %.sroa.5180.0.copyload, ptr %.sroa.5180.0..sroa_idx181, align 8, !noalias !7698
  %.sroa.6.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx183, align 8, !noalias !7698
  %i.nz = add i64 %i.jx, 1                        ; 2 uses
  store i64 %i.nz, ptr %.sroa.536.0..sroa_idx, align 8, !alias.scope !7698
  br label %.backedge.backedge

bb.ax:                                            ; preds = %bb.as
  %i.oa = add i64 %i.nk, 1                        ; 2 uses
  %i.ob = load i64, ptr %i.jo, align 8, !noundef !10 ; 3 uses
  %i.oc = icmp ult i64 %i.ob, 384307168202282326
  tail call void @llvm.assume(i1 %i.oc)
  %i.od = icmp ult i64 %i.ob, %i.oa
  br i1 %i.od, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 -1, ptr %i.i, align 8
  call fastcc void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE6resizeB1n_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, i64 noundef %i.oa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.pre376 = load i64, ptr %i.jo, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.oe = phi i64 [ %i.ob, %bb.ax ], [ %.pre376, %bb.ay ] ; 2 uses
  %i.of = icmp ult i64 %i.nk, %i.oe
  br i1 %i.of, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.og = load ptr, ptr %i.jn, align 8, !nonnull !10, !noundef !10
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %i.nk ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7700)
  %i.oi = load i64, ptr %i.oh, align 8, !range !12, !alias.scope !7700, !noundef !10 ; 3 uses
  %i.oj = icmp eq i64 %i.oi, -1
  br i1 %i.oj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7702)
  %i.ok = icmp eq i64 %i.oi, 0
  br i1 %i.ok, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ol, align 8, !alias.scope !7703, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.oi, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !7703
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit: ; preds = %bb.ba, %bb.bb, %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, %bb.au, %bb.av, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i, %bb.ar, %bb.ae
  %.be = phi i64 [ %i.jx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit ], [ %i.jx, %bb.ae ], [ %i.jx, %bb.ar ], [ %i.jx, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i ], [ %i.nz, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i ], [ %i.jx, %bb.av ], [ %i.jx, %bb.au ], [ %i.jx, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ]
  %.be61 = phi ptr [ %i.jy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit ], [ %i.jy, %bb.ae ], [ %i.jy, %bb.ar ], [ %i.jy, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i ], [ %i.nx, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i ], [ %i.jy, %bb.av ], [ %i.jy, %bb.au ], [ %i.jy, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ]
  br label %.backedge

bb.bd:                                            ; preds = %bb.az
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef %i.oe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #44
  unreachable

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.pre364.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i87.ph) #43
  br i1 %.not66, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread, label %bb.be

.backedge244.sink.split:                          ; preds = %bb.bo, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit
  %.pre11.i374.ph = phi i64 [ %.pre11.i373, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit ], [ %.val77.ph, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit ], [ %.val77.ph, %bb.bo ]
  %.pre.i145369.ph = phi ptr [ %.pre.i145368, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit ], [ %.pre.i145.ph, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit ], [ %.pre.i145.ph, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge244.outer

.backedge244.outer:                               ; preds = %.backedge244.sink.split, %._crit_edge298
  %.val77.ph = phi i64 [ %.pre11.i374.ph, %.backedge244.sink.split ], [ 0, %._crit_edge298 ] ; 7 uses
  %.pre.i145.ph = phi ptr [ %.pre.i145369.ph, %.backedge244.sink.split ], [ inttoptr (i64 8 to ptr), %._crit_edge298 ] ; 5 uses
  %.sroa.7166.0.ph = phi ptr [ %.sroa.7166.1.ph, %.backedge244.sink.split ], [ %2, %._crit_edge298 ]
  %.sroa.0164.0.ph = phi ptr [ %.sroa.0164.1207.ph, %.backedge244.sink.split ], [ %i.hl, %._crit_edge298 ]
  br label %.backedge244

bb.be:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  %i.om = load ptr, ptr %i.hq, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.on = load i64, ptr %i.hr, align 8, !noundef !10 ; 2 uses
  %.idx305 = shl nuw nsw i64 %i.on, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %.idx305
  %.not.not.not.i.not299 = icmp eq i64 %i.on, 0
  br i1 %.not.not.not.i.not299, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.be
  %i.op = load ptr, ptr %i.hs, align 8, !alias.scope !7704, !noalias !7705, !nonnull !10, !noundef !10 ; 2 uses
  %i.oq = load i64, ptr %i.ht, align 8, !alias.scope !7704, !noalias !7705, !noundef !10 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.oq, 4
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i.i.i
  %i.os = icmp eq i64 %i.oq, 0
  %i.ot = load i64, ptr %i.hu, align 8            ; 2 uses
  %i.ou = load ptr, ptr %i.hv, align 8, !nonnull !10
  br i1 %i.os, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread, label %.lr.ph.i.i.i153.preheader

.lr.ph.i.i.i153.preheader:                        ; preds = %.lr.ph301, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit
  %i.ov = phi ptr [ %i.ow, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit ], [ %i.om, %.lr.ph301 ] ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.ov, align 8, !noalias !7706 ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ov, i64 8
  %.val3.i127 = load i64, ptr %i.ox, align 8, !noalias !7706 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7708), !noalias !7705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7709), !noalias !7705
  br label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %.lr.ph.i.i.i153.preheader, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %i.oy, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.op, %.lr.ph.i.i.i153.preheader ] ; 3 uses
  %.sroa.8.08.i.i.i = phi i64 [ %i.oz, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %.lr.ph.i.i.i153.preheader ] ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 16 ; 2 uses
  %i.oz = add nuw nsw i64 %.sroa.8.08.i.i.i, 1
  %i.pa = getelementptr i8, ptr %.sroa.0.019.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.pa, align 8, !noalias !7710, !noundef !10
  %i.pb = icmp eq i64 %.val7.i.i.i, %.val3.i127
  br i1 %i.pb, label %.split.i.i.i155, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i155:                                  ; preds = %.lr.ph.i.i.i153
  %.val.i.i.i156 = load ptr, ptr %.sroa.0.019.i.i.i, align 8, !noalias !7710, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ], !noalias !7705
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i156, ptr nonnull readonly %.val2.i, i64 %.val3.i127), !noalias !7710
  %i.pc = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.pc, label %bb.bf, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i155, %.lr.ph.i.i.i153
  %i.pd = icmp eq ptr %i.oy, %i.or
  br i1 %i.pd, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit, label %.lr.ph.i.i.i153

bb.bf:                                            ; preds = %.split.i.i.i155
  %i.pe = icmp ult i64 %.sroa.8.08.i.i.i, %i.ot
  br i1 %i.pe, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i, i64 noundef %i.ot, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !7710
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.pf = getelementptr inbounds nuw [104 x i8], ptr %i.ou, i64 %.sroa.8.08.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 97
  %i.ph = load i8, ptr %i.pg, align 1, !range !38, !alias.scope !7711, !noalias !7712, !noundef !10
  %cond.i.i = icmp eq i8 %i.ph, 0
  br i1 %cond.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.bh
  %.not.not.not.i.not = icmp eq ptr %i.ow, %i.oo
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread, label %.lr.ph.i.i.i153.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit, %bb.be, %.lr.ph301, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command12format_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.pre364.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i87.ph) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7714)
  %i.pi = load ptr, ptr %.sroa.432.0..sroa_idx, align 8, !alias.scope !7713, !nonnull !10, !noundef !10 ; 3 uses
  %i.pj = load i64, ptr %.sroa.533.0..sroa_idx, align 8, !alias.scope !7713, !noundef !10 ; 5 uses
  %.idx.i128 = mul nuw nsw i64 %i.pj, 24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.idx.i128
  %i.pl = icmp eq i64 %i.pj, 0
  br i1 %i.pl, label %._crit_edge.i135, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread
  %.val.i130 = load ptr, ptr %i.hw, align 8, !alias.scope !7714 ; 3 uses
  %.val6.i131 = load i64, ptr %i.hx, align 8, !alias.scope !7714, !noundef !10 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134, %.lr.ph.i129
  %.sroa.03.09.i132 = phi ptr [ %i.pi, %.lr.ph.i129 ], [ %i.pq, %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134 ] ; 3 uses
  %i.pm = getelementptr i8, ptr %.sroa.03.09.i132, i64 16
  %.sroa.03.0.val5.i133 = load i64, ptr %i.pm, align 8, !noalias !7715, !noundef !10
  %i.pn = icmp eq i64 %.sroa.03.0.val5.i133, %.val6.i131
  br i1 %i.pn, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i138, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134

_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i138: ; preds = %bb.bi
  %i.po = getelementptr i8, ptr %.sroa.03.09.i132, i64 8
  %.sroa.03.0.val.i139 = load ptr, ptr %i.po, align 8, !noalias !7715, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i130) ]
  %bcmp.i.i.i.i140 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i139, ptr nonnull readonly %.val.i130, i64 %.val6.i131), !noalias !7715
  %i.pp = icmp eq i32 %bcmp.i.i.i.i140, 0
  br i1 %i.pp, label %bb.bj, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134

_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134: ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i138, %bb.bi
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i132, i64 24 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.pk
  br i1 %i.pr, label %._crit_edge.i135, label %bb.bi

bb.bj:                                            ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7717)
  %.val.i.i.i141 = load i64, ptr %i.l, align 8, !range !11, !alias.scope !7718, !noundef !10 ; 2 uses
  %i.ps = icmp eq i64 %.val.i.i.i141, 0
  br i1 %i.ps, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i130, i64 noundef %.val.i.i.i141, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !7719
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142

._crit_edge.i135:                                 ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i134, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7720)
  %i.pt = load i64, ptr %i.n, align 8, !range !11, !alias.scope !7721, !noundef !10
  %i.pu = icmp eq i64 %i.pj, %i.pt
  br i1 %i.pu, label %bb.bl, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i136

bb.bl:                                            ; preds = %._crit_edge.i135
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #42, !noalias !7722
  %.pre.i137 = load ptr, ptr %.sroa.432.0..sroa_idx, align 8, !alias.scope !7721
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i136

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i136: ; preds = %bb.bl, %._crit_edge.i135
  %i.pv = phi ptr [ %i.pi, %._crit_edge.i135 ], [ %.pre.i137, %bb.bl ]
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %i.pv, i64 %i.pj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !7721
  %i.px = add i64 %i.pj, 1
  store i64 %i.px, ptr %.sroa.533.0..sroa_idx, align 8, !alias.scope !7721
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142: ; preds = %bb.bj, %bb.bk, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i136
  %.sroa.0167.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.4168.0.copyload = load ptr, ptr %i.hq, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.5169.0.copyload = load i64, ptr %i.hr, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7723)
  %i.py = icmp ult i64 %.sroa.5169.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.py)
  %.idx.i143 = shl nuw nsw i64 %.sroa.5169.0.copyload, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.4168.0.copyload, i64 %.idx.i143
  %i.qa = icmp eq i64 %.sroa.5169.0.copyload, 0
  br i1 %i.qa, label %._crit_edge.i148, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i
  %.pre11.i372.a = phi i64 [ %.pre11.i371, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ], [ %.val77.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ]
  %.pre.i145367.a = phi ptr [ %.pre.i145365, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ], [ %.pre.i145.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ] ; 2 uses
  %i.qb = phi i64 [ %i.qu, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ], [ %.val77.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ] ; 6 uses
  %i.qc = phi ptr [ %i.qv, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ], [ %.pre.i145.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ] ; 4 uses
  %.sroa.45.010.i = phi ptr [ %i.qd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ], [ %.sroa.4168.0.copyload, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.45.010.i, i64 16 ; 2 uses
  %i.qe = load ptr, ptr %.sroa.45.010.i, align 8, !noalias !7724, !nonnull !10, !noundef !10 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.45.010.i, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !7724, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7725)
  %.idx.i.i146 = shl nuw nsw i64 %i.qb, 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.idx.i.i146
  %i.qi = icmp eq i64 %i.qb, 0
  br i1 %i.qi, label %._crit_edge.i.i, label %.lr.ph.i.i147

.lr.ph.i.i147:                                    ; preds = %.lr.ph.i144, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i
  %.sroa.03.09.i.i = phi ptr [ %i.qm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.qc, %.lr.ph.i144 ] ; 3 uses
  %i.qj = getelementptr i8, ptr %.sroa.03.09.i.i, i64 8
  %.sroa.03.0.val5.i.i = load i64, ptr %i.qj, align 8, !noalias !7726, !noundef !10
  %i.qk = icmp eq i64 %.sroa.03.0.val5.i.i, %i.qg
  br i1 %i.qk, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %.lr.ph.i.i147
  %.sroa.03.0.val.i.i = load ptr, ptr %.sroa.03.09.i.i, align 8, !noalias !7726, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i149 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i.i, ptr nonnull readonly %i.qe, i64 %i.qg), !noalias !7727
  %i.ql = icmp eq i32 %bcmp.i.i.i.i149, 0
  br i1 %i.ql, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i, %.lr.ph.i.i147
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.qh
  br i1 %i.qn, label %._crit_edge.i.i, label %.lr.ph.i.i147

._crit_edge.i.i:                                  ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i, %.lr.ph.i144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7728)
  %i.qo = load i64, ptr %i.o, align 8, !range !11, !alias.scope !7729, !noundef !10
  %i.qp = icmp eq i64 %i.qb, %i.qo
  br i1 %i.qp, label %bb.bm, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

bb.bm:                                            ; preds = %._crit_edge.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #42, !noalias !7730
  %.pre.i.i = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !7729 ; 2 uses
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i: ; preds = %bb.bm, %._crit_edge.i.i
  %.pre.i145366 = phi ptr [ %.pre.i145367.a, %._crit_edge.i.i ], [ %.pre.i.i, %bb.bm ]
  %i.qq = phi ptr [ %i.qc, %._crit_edge.i.i ], [ %.pre.i.i, %bb.bm ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %i.qb ; 2 uses
  store ptr %i.qe, ptr %i.qr, align 8, !noalias !7731
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i64 %i.qg, ptr %i.qs, align 8, !noalias !7732
  %i.qt = add i64 %i.qb, 1                        ; 3 uses
  store i64 %i.qt, ptr %.sroa.530.0..sroa_idx, align 8, !alias.scope !7729
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i
  %.pre11.i371 = phi i64 [ %i.qt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %.pre11.i372.a, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i ] ; 2 uses
  %.pre.i145365 = phi ptr [ %.pre.i145366, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %.pre.i145367.a, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i ] ; 2 uses
  %i.qu = phi i64 [ %i.qt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.qb, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i ]
  %i.qv = phi ptr [ %i.qq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.qc, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i ]
  %i.qw = icmp eq ptr %i.qd, %i.pz
  br i1 %i.qw, label %._crit_edge.i148, label %.lr.ph.i144

._crit_edge.i148:                                 ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142
  %.pre11.i373 = phi i64 [ %.val77.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ], [ %.pre11.i371, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ]
  %.pre.i145368 = phi ptr [ %.pre.i145.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtNtB6_7builder10styled_str9StyledStrE6insertB6_.exit142 ], [ %.pre.i145365, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i ]
  %i.qx = icmp eq i64 %.sroa.0167.0.copyload, 0
  br i1 %i.qx, label %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i148
  %i.qy = shl nuw i64 %.sroa.0167.0.copyload, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4168.0.copyload, i64 noundef %i.qy, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !7733
  br label %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit

_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit: ; preds = %._crit_edge.i148, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.backedge244.sink.split

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit: ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7734)
  %.val.i150 = load i64, ptr %i.m, align 8, !range !11, !alias.scope !7734, !noundef !10 ; 2 uses
  %i.qz = icmp eq i64 %.val.i150, 0
  br i1 %i.qz, label %.backedge244.sink.split, label %bb.bo

bb.bo:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs_NtNtBW_6output5usageNtB2s_5Usage23get_required_usage_froms_00EBW_.exit
  %i.ra = shl nuw i64 %.val.i150, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef %i.ra, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !7734
  br label %.backedge244.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser12add_defaults(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 136
  %.val = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 144
  %.val5 = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %.val5, 600
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.j = icmp eq i64 %.val5, 0
  br i1 %i.j, label %.loopexit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.03.027 = phi ptr [ %.val, %.lr.ph ], [ %i.dl, %.loopexit ] ; 11 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
bb.se:                                            ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error25missing_required_argumentB4_.exit.i.i.i
  %i.del = shl nuw i64 %.sroa.017.0.copyload.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.0.copyload.i.i.i, i64 noundef %i.del, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10773
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.i

bb.sf:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10774)
  %.val.i111.i.i = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !10774, !noalias !10659, !noundef !10 ; 2 uses
  %i.dem = icmp eq i64 %.val.i111.i.i, 0
  br i1 %i.dem, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.thread.i, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %.val1.i.i.i = load ptr, ptr %i.cqa, align 8, !alias.scope !10774, !noalias !10659, !nonnull !10, !noundef !10
  %i.den = shl nuw i64 %.val.i111.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.den, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10775
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.thread.i

.lr.ph.i.i.i113.preheader.i.i:                    ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i
  %.sroa.021.0490.i.i = phi i1 [ %i.dgm, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i ], [ false, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i ] ; 4 uses
  %.sroa.022.0489.i.i = phi ptr [ %i.deo, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i ], [ %i.cuu, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i ] ; 5 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %.sroa.022.0489.i.i, i64 32 ; 2 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %.sroa.022.0489.i.i, i64 16
  %.val77.i.i = load ptr, ptr %i.dep, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 3 uses
  %i.deq = getelementptr i8, ptr %.sroa.022.0489.i.i, i64 24
  %.val78.i.i = load i64, ptr %i.deq, align 8, !noalias !10662, !noundef !10 ; 5 uses
  %.sroa.022.0.val.i.i = load ptr, ptr %.sroa.022.0489.i.i, align 8, !noalias !10662 ; 2 uses
  %i.der = getelementptr i8, ptr %.sroa.022.0489.i.i, i64 8
  %.sroa.022.0.val60.i.i = load i64, ptr %i.der, align 8, !noalias !10662 ; 2 uses
  br label %.lr.ph.i.i.i113.i.i

.lr.ph.i.i.i113.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i, %.lr.ph.i.i.i113.preheader.i.i
  %.sroa.0.019.i.i.i.i.i = phi ptr [ %i.des, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i ], [ %i.ccn, %.lr.ph.i.i.i113.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i.i.i = phi i64 [ %i.det, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i113.preheader.i.i ] ; 4 uses
  %i.des = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i.i.i, i64 16 ; 2 uses
  %i.det = add nuw nsw i64 %.sroa.8.08.i.i.i.i.i, 1
  %i.deu = getelementptr i8, ptr %.sroa.0.019.i.i.i.i.i, i64 8
  %.val7.i.i.i114.i.i = load i64, ptr %i.deu, align 8, !noalias !10776, !noundef !10
  %i.dev = icmp eq i64 %.val7.i.i.i114.i.i, %.sroa.022.0.val60.i.i
  br i1 %i.dev, label %.split.i.i.i.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i113.i.i
  %.val.i.i.i116.i.i = load ptr, ptr %.sroa.0.019.i.i.i.i.i, align 8, !noalias !10776, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.val.i.i) ]
  %bcmp.i.i.i.i.i117.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i116.i.i, ptr nonnull readonly %.sroa.022.0.val.i.i, i64 %.sroa.022.0.val60.i.i), !noalias !10776
  %i.dew = icmp eq i32 %bcmp.i.i.i.i.i117.i.i, 0
  br i1 %i.dew, label %bb.sh, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i113.i.i
  %i.dex = icmp eq ptr %i.des, %i.ccq
  br i1 %i.dex, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %.lr.ph.i.i.i113.i.i

bb.sh:                                            ; preds = %.split.i.i.i.i.i
  %i.dey = icmp ult i64 %.sroa.8.08.i.i.i.i.i, %i.ccu
  br i1 %i.dey, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %bb.sh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10776
  unreachable

bb.sj:                                            ; preds = %bb.sh
  %i.dez = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10777)
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 97
  %i.dfb = load i8, ptr %i.dfa, align 1, !range !38, !alias.scope !10777, !noalias !10778, !noundef !10
  %cond.i.i.i.i = icmp eq i8 %i.dfb, 0
  br i1 %cond.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dez, i64 80
  %i.dfd = load ptr, ptr %i.dfc, align 8, !alias.scope !10777, !noalias !10778, !nonnull !10, !noundef !10 ; 2 uses
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dez, i64 88
  %i.dff = load i64, ptr %i.dfe, align 8, !alias.scope !10777, !noalias !10778, !noundef !10 ; 2 uses
  %.idx511.i.i = mul nuw nsw i64 %i.dff, 24
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dfd, i64 %.idx511.i.i
  %.not.not.not.i.not.not.i.i.i.i487.i.i = icmp eq i64 %i.dff, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i487.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %.lr.ph488.i.i

.lr.ph488.i.i:                                    ; preds = %bb.sk
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dez, i64 96 ; 2 uses
  br label %bb.sl

bb.sl:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i, %.lr.ph488.i.i
  %i.dfi = phi ptr [ %i.dfd, %.lr.ph488.i.i ], [ %i.dfj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i ] ; 3 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 24 ; 2 uses
  %i.dfk = getelementptr i8, ptr %i.dfi, i64 8
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.dfk, align 8, !noalias !10779, !nonnull !10, !noundef !10 ; 3 uses
  %i.dfl = getelementptr i8, ptr %i.dfi, i64 16
  %.val7.i.i.i.i.i.i.i = load i64, ptr %i.dfl, align 8, !noalias !10779, !noundef !10 ; 2 uses
  %.idx332.i.i = mul nuw nsw i64 %.val7.i.i.i.i.i.i.i, 24
  %i.dfm = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i, i64 %.idx332.i.i ; 2 uses
  %.not.i.i187.i.i = icmp eq i64 %.val7.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i187.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i, label %.lr.ph.i.i188.i.i

.lr.ph.i.i188.i.i:                                ; preds = %bb.sl
  %i.dfn = load i8, ptr %i.dfh, align 8, !range !33, !noalias !10780, !noundef !10
  %i.dfo = trunc nuw i8 %i.dfn to i1
  br i1 %i.dfo, label %.lr.ph.split.i.i189.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i188.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i
  %i.dfp = phi ptr [ %i.dfq, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i ], [ %.val6.i.i.i.i.i.i.i, %.lr.ph.i.i188.i.i ] ; 3 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfp, i64 24 ; 2 uses
  %i.dfr = getelementptr i8, ptr %i.dfp, i64 16
  %.val6.us.i.i.i.i = load i64, ptr %i.dfr, align 8, !noalias !10780
  %i.dfs = icmp eq i64 %.val6.us.i.i.i.i, %.val78.i.i
  br i1 %i.dfs, label %.split.us.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i.i
  %i.dft = getelementptr i8, ptr %i.dfp, i64 8
  %.val5.us.i.i.i.i = load ptr, ptr %i.dft, align 8, !noalias !10780, !nonnull !10, !noundef !10
  %bcmp.i.i.i.us.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.us.i.i.i.i, ptr nonnull %.val77.i.i, i64 %.val78.i.i), !noalias !10780
  %i.dfu = icmp eq i32 %bcmp.i.i.i.us.i.i.i.i, 0
  br i1 %i.dfu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i: ; preds = %.split.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.not17.i.i.i.i = icmp eq ptr %i.dfq, %i.dfm
  br i1 %.not17.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.i.i189.i.i:                          ; preds = %.lr.ph.i.i188.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i
  %i.dfv = phi ptr [ %i.dfw, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i ], [ %.val6.i.i.i.i.i.i.i, %.lr.ph.i.i188.i.i ] ; 3 uses
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 24 ; 2 uses
  %i.dfx = getelementptr i8, ptr %i.dfv, i64 8
  %.val5.i.i190.i.i = load ptr, ptr %i.dfx, align 8, !noalias !10780 ; 4 uses
  %i.dfy = getelementptr i8, ptr %i.dfv, i64 16
  %.val6.i.i.i.i = load i64, ptr %i.dfy, align 8, !noalias !10780 ; 2 uses
  %i.dfz = load i8, ptr %i.dfh, align 8, !range !33, !noalias !10780, !noundef !10
  %i.dga = trunc nuw i8 %i.dfz to i1
  br i1 %i.dga, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %.lr.ph.split.i.i189.i.i
  %i.dgb = icmp eq i64 %.val6.i.i.i.i, %.val78.i.i
  br i1 %i.dgb, label %.split.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i

bb.sn:                                            ; preds = %.lr.ph.split.i.i189.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !10781
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i190.i.i) ], !noalias !10782
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i.i190.i.i, i64 noundef %.val6.i.i.i.i) #43, !noalias !10780
  %i.dgc = load i64, ptr %i.dh, align 8, !range !12, !noalias !10781, !noundef !10 ; 2 uses
  %i.dgd = load ptr, ptr %i.ctv, align 8, !noalias !10781 ; 2 uses
  %i.dge = load i64, ptr %i.ctw, align 8, !noalias !10781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !10781
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val77.i.i, i64 noundef %.val78.i.i) #43, !noalias !10780
  %i.dgf = load i64, ptr %i.dg, align 8, !range !12, !noalias !10781, !noundef !10 ; 2 uses
  %i.dgg = load ptr, ptr %i.ctx, align 8, !noalias !10781 ; 2 uses
  %i.dgh = load i64, ptr %i.cty, align 8, !noalias !10781
  %i.dgi = call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dgd, i64 noundef %i.dge, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dgg, i64 noundef %i.dgh) #43, !noalias !10780
  %i.dgj = icmp sgt i64 %i.dgf, 0
  br i1 %i.dgj, label %bb.so, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i

bb.so:                                            ; preds = %bb.sn
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dgg, i64 noundef %i.dgf, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10783
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i: ; preds = %bb.so, %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !10781
  %i.dgk = icmp sgt i64 %i.dgc, 0
  br i1 %i.dgk, label %bb.sp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i

bb.sp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dgd, i64 noundef %i.dgc, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10784
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i: ; preds = %bb.sp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !10781
  br i1 %i.dgi, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i, %bb.sm
  %.not18.i.i.i.i = icmp eq ptr %i.dfw, %i.dfm
  br i1 %.not18.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i, label %.lr.ph.split.i.i189.i.i, !llvm.loop !1

.split.i.i.i.i:                                   ; preds = %bb.sm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i190.i.i) ], !noalias !10782
  %bcmp.i.i.i.i.i191.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.i.i190.i.i, ptr nonnull %.val77.i.i, i64 %.val78.i.i), !noalias !10780
  %i.dgl = icmp eq i32 %bcmp.i.i.i.i.i191.i.i, 0
  br i1 %i.dgl, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.i, %bb.sl
  %.not.not.not.i.not.not.i.i.i.i.i.i = icmp eq ptr %i.dfj, %i.dfg
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, label %bb.sl

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i, %.split.us.i.i.i.i, %.split.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i, %bb.sk, %bb.sj
  %i.dgm = phi i1 [ true, %.split.i.i.i.i ], [ %.sroa.021.0490.i.i, %bb.sk ], [ %.sroa.021.0490.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i ], [ %.sroa.021.0490.i.i, %bb.sj ], [ true, %.split.us.i.i.i.i ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.i ], [ %.sroa.021.0490.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i ] ; 2 uses
  %i.dgn = icmp eq ptr %i.deo, %i.cux
  br i1 %i.dgn, label %._crit_edge.i.i, label %.lr.ph.i.i.i113.preheader.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i
  %.sroa.021.0.lcssa.i.i = phi i1 [ false, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i ], [ %i.dgm, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit.thread.i.i ] ; 6 uses
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.cue, i64 232
  %i.dgp = load ptr, ptr %i.dgo, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.cue, i64 240 ; 2 uses
  %i.dgr = load i64, ptr %i.dgq, align 8, !noalias !10662, !noundef !10 ; 2 uses
  %.idx512.i.i = shl nuw nsw i64 %i.dgr, 5
  %i.dgs = getelementptr inbounds nuw i8, ptr %i.dgp, i64 %.idx512.i.i
  %i.dgt = icmp eq i64 %i.dgr, 0
  br i1 %i.dgt, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i, label %.lr.ph.i.i.i193.preheader.i.i

._crit_edge.i.thread.i:                           ; preds = %.split483.us.i.i
  %i.dgu = getelementptr inbounds nuw i8, ptr %.sroa.0281.0.i.i, i64 600 ; 2 uses
  %i.dgv = getelementptr inbounds nuw i8, ptr %.sroa.0281.0.i.i, i64 240
  %i.dgw = load i64, ptr %i.dgv, align 8, !noalias !10662, !noundef !10
  %i.dgx = icmp eq i64 %i.dgw, 0
  br i1 %i.dgx, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i

.lr.ph.i.i.i193.preheader.i.i:                    ; preds = %._crit_edge.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i
  %i.dgy = phi ptr [ %i.dgz, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i ], [ %i.dgp, %._crit_edge.i.i ] ; 5 uses
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dgy, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10785)
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgy, i64 16
  %i.dhb = load ptr, ptr %i.dha, align 8, !alias.scope !10785, !noalias !10786, !nonnull !10, !noundef !10 ; 3 uses
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgy, i64 24
  %i.dhd = load i64, ptr %i.dhc, align 8, !alias.scope !10785, !noalias !10786, !noundef !10 ; 5 uses
  %.val.i.i124.i.i = load ptr, ptr %i.dgy, align 8, !alias.scope !10785, !noalias !10786 ; 2 uses
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dgy, i64 8
  %.val1.i.i.i51.i = load i64, ptr %i.dhe, align 8, !alias.scope !10785, !noalias !10786 ; 2 uses
  br label %.lr.ph.i.i.i193.i.i

.lr.ph.i.i.i193.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i, %.lr.ph.i.i.i193.preheader.i.i
  %.sroa.0.019.i.i.i194.i.i = phi ptr [ %i.dhf, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i ], [ %i.ccn, %.lr.ph.i.i.i193.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i195.i.i = phi i64 [ %i.dhg, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i ], [ 0, %.lr.ph.i.i.i193.preheader.i.i ] ; 4 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i194.i.i, i64 16 ; 2 uses
  %i.dhg = add nuw nsw i64 %.sroa.8.08.i.i.i195.i.i, 1
  %i.dhh = getelementptr i8, ptr %.sroa.0.019.i.i.i194.i.i, i64 8
  %.val7.i.i.i196.i.i = load i64, ptr %i.dhh, align 8, !noalias !10787, !noundef !10
  %i.dhi = icmp eq i64 %.val7.i.i.i196.i.i, %.val1.i.i.i51.i
  br i1 %i.dhi, label %.split.i.i.i199.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i

.split.i.i.i199.i.i:                              ; preds = %.lr.ph.i.i.i193.i.i
  %.val.i.i.i200.i.i = load ptr, ptr %.sroa.0.019.i.i.i194.i.i, align 8, !noalias !10787, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i124.i.i) ], !noalias !10788
  %bcmp.i.i.i.i.i201.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i200.i.i, ptr nonnull readonly %.val.i.i124.i.i, i64 %.val1.i.i.i51.i), !noalias !10787
  %i.dhj = icmp eq i32 %bcmp.i.i.i.i.i201.i.i, 0
  br i1 %i.dhj, label %bb.sq, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i: ; preds = %.split.i.i.i199.i.i, %.lr.ph.i.i.i193.i.i
  %i.dhk = icmp eq ptr %i.dhf, %i.ccq
  br i1 %i.dhk, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i, label %.lr.ph.i.i.i193.i.i

bb.sq:                                            ; preds = %.split.i.i.i199.i.i
  %i.dhl = icmp ult i64 %.sroa.8.08.i.i.i195.i.i, %i.ccu
  br i1 %i.dhl, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i195.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10787
  unreachable

bb.ss:                                            ; preds = %bb.sq
  %i.dhm = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i195.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10789), !noalias !10788
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhm, i64 97
  %i.dho = load i8, ptr %i.dhn, align 1, !range !38, !alias.scope !10789, !noalias !10790, !noundef !10
  %cond.i.i202.i.i = icmp eq i8 %i.dho, 0
  br i1 %cond.i.i202.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhm, i64 80
  %i.dhq = load ptr, ptr %i.dhp, align 8, !alias.scope !10789, !noalias !10790, !nonnull !10, !noundef !10 ; 2 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhm, i64 88
  %i.dhs = load i64, ptr %i.dhr, align 8, !alias.scope !10789, !noalias !10790, !noundef !10 ; 2 uses
  %.idx513.i.i = mul nuw nsw i64 %i.dhs, 24
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dhq, i64 %.idx513.i.i
  %.not.not.not.i.not.not.i.i.i.i207493.i.i = icmp eq i64 %i.dhs, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i207493.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i, label %.lr.ph495.i.i

.lr.ph495.i.i:                                    ; preds = %bb.st
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dhm, i64 96 ; 2 uses
  br label %bb.su

bb.su:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i, %.lr.ph495.i.i
  %i.dhv = phi ptr [ %i.dhq, %.lr.ph495.i.i ], [ %i.dhw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i ] ; 3 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhv, i64 24 ; 2 uses
  %i.dhx = getelementptr i8, ptr %i.dhv, i64 8
  %.val6.i.i.i.i.i208.i.i = load ptr, ptr %i.dhx, align 8, !noalias !10791, !nonnull !10, !noundef !10 ; 3 uses
  %i.dhy = getelementptr i8, ptr %i.dhv, i64 16
  %.val7.i.i.i.i.i209.i.i = load i64, ptr %i.dhy, align 8, !noalias !10791, !noundef !10 ; 2 uses
  %.idx333.i.i = mul nuw nsw i64 %.val7.i.i.i.i.i209.i.i, 24
  %i.dhz = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i208.i.i, i64 %.idx333.i.i ; 2 uses
  %.not.i.i253.i.i = icmp eq i64 %.val7.i.i.i.i.i209.i.i, 0
  br i1 %.not.i.i253.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i, label %.lr.ph.i.i254.i.i

.lr.ph.i.i254.i.i:                                ; preds = %bb.su
  %i.dia = load i8, ptr %i.dhu, align 8, !range !33, !noalias !10792, !noundef !10
  %i.dib = trunc nuw i8 %i.dia to i1
  br i1 %i.dib, label %.lr.ph.split.i.i265.i.i, label %.lr.ph.split.us.i.i255.i.i

.lr.ph.split.us.i.i255.i.i:                       ; preds = %.lr.ph.i.i254.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i
  %i.dic = phi ptr [ %i.did, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i ], [ %.val6.i.i.i.i.i208.i.i, %.lr.ph.i.i254.i.i ] ; 3 uses
  %i.did = getelementptr inbounds nuw i8, ptr %i.dic, i64 24 ; 2 uses
  %i.die = getelementptr i8, ptr %i.dic, i64 16
  %.val6.us.i.i256.i.i = load i64, ptr %i.die, align 8, !noalias !10792
  %i.dif = icmp eq i64 %.val6.us.i.i256.i.i, %i.dhd
  br i1 %i.dif, label %.split.us.i.i262.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i

.split.us.i.i262.i.i:                             ; preds = %.lr.ph.split.us.i.i255.i.i
  %i.dig = getelementptr i8, ptr %i.dic, i64 8
  %.val5.us.i.i263.i.i = load ptr, ptr %i.dig, align 8, !noalias !10792, !nonnull !10, !noundef !10
  %bcmp.i.i.i.us.i.i264.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.us.i.i263.i.i, ptr nonnull %i.dhb, i64 %i.dhd), !noalias !10792
  %i.dih = icmp eq i32 %bcmp.i.i.i.us.i.i264.i.i, 0
  br i1 %i.dih, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i: ; preds = %.split.us.i.i262.i.i, %.lr.ph.split.us.i.i255.i.i
  %.not17.i.i258.i.i = icmp eq ptr %i.did, %i.dhz
  br i1 %.not17.i.i258.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i, label %.lr.ph.split.us.i.i255.i.i

.lr.ph.split.i.i265.i.i:                          ; preds = %.lr.ph.i.i254.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i
  %i.dii = phi ptr [ %i.dij, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i ], [ %.val6.i.i.i.i.i208.i.i, %.lr.ph.i.i254.i.i ] ; 3 uses
  %i.dij = getelementptr inbounds nuw i8, ptr %i.dii, i64 24 ; 2 uses
  %i.dik = getelementptr i8, ptr %i.dii, i64 8
  %.val5.i.i266.i.i = load ptr, ptr %i.dik, align 8, !noalias !10792 ; 4 uses
  %i.dil = getelementptr i8, ptr %i.dii, i64 16
  %.val6.i.i267.i.i = load i64, ptr %i.dil, align 8, !noalias !10792 ; 2 uses
  %i.dim = load i8, ptr %i.dhu, align 8, !range !33, !noalias !10792, !noundef !10
  %i.din = trunc nuw i8 %i.dim to i1
  br i1 %i.din, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %.lr.ph.split.i.i265.i.i
  %i.dio = icmp eq i64 %.val6.i.i267.i.i, %i.dhd
  br i1 %i.dio, label %.split.i.i270.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i

bb.sw:                                            ; preds = %.lr.ph.split.i.i265.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !10793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i266.i.i) ], !noalias !10794
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i.i266.i.i, i64 noundef %.val6.i.i267.i.i) #43, !noalias !10792
  %i.dip = load i64, ptr %i.df, align 8, !range !12, !noalias !10793, !noundef !10 ; 2 uses
  %i.diq = load ptr, ptr %i.ctz, align 8, !noalias !10793 ; 2 uses
  %i.dir = load i64, ptr %i.cua, align 8, !noalias !10793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !10793
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dhb, i64 noundef %i.dhd) #43, !noalias !10792
  %i.dis = load i64, ptr %i.de, align 8, !range !12, !noalias !10793, !noundef !10 ; 2 uses
  %i.dit = load ptr, ptr %i.cub, align 8, !noalias !10793 ; 2 uses
  %i.diu = load i64, ptr %i.cuc, align 8, !noalias !10793
  %i.div = call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.diq, i64 noundef %i.dir, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dit, i64 noundef %i.diu) #43, !noalias !10792
  %i.diw = icmp sgt i64 %i.dis, 0
  br i1 %i.diw, label %bb.sx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i272.i.i

bb.sx:                                            ; preds = %bb.sw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dit, i64 noundef %i.dis, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10795
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i272.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i272.i.i: ; preds = %bb.sx, %bb.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !10793
  %i.dix = icmp sgt i64 %i.dip, 0
  br i1 %i.dix, label %bb.sy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i273.i.i

bb.sy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i272.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.diq, i64 noundef %i.dip, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10796
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i273.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i273.i.i: ; preds = %bb.sy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i272.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !10793
  br i1 %i.div, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i: ; preds = %.split.i.i270.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i273.i.i, %bb.sv
  %.not18.i.i269.i.i = icmp eq ptr %i.dij, %i.dhz
  br i1 %.not18.i.i269.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i, label %.lr.ph.split.i.i265.i.i, !llvm.loop !1

.split.i.i270.i.i:                                ; preds = %bb.sv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i266.i.i) ], !noalias !10794
  %bcmp.i.i.i.i.i271.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.i.i266.i.i, ptr nonnull %i.dhb, i64 %i.dhd), !noalias !10792
  %i.diy = icmp eq i32 %bcmp.i.i.i.i.i271.i.i, 0
  br i1 %i.diy, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i257.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i268.i.i, %bb.su
  %.not.not.not.i.not.not.i.i.i.i207.i.i = icmp eq ptr %i.dhw, %i.dht
  br i1 %.not.not.not.i.not.not.i.i.i.i207.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i, label %bb.su

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i: ; preds = %.split.us.i.i262.i.i, %.split.i.i270.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i273.i.i
  %i.diz = icmp eq ptr %i.dgz, %i.dgs
  br i1 %i.diz, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i193.preheader.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i: ; preds = %bb.st, %bb.ss, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i, %._crit_edge.i.thread.i
  %i.dja = phi ptr [ %i.dji, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i ], [ %i.cug, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i ], [ %i.cug, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i ], [ %i.dgu, %._crit_edge.i.thread.i ], [ %i.cug, %bb.ss ], [ %i.cug, %bb.st ] ; 2 uses
  %i.djb = phi ptr [ %i.djj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i ], [ %i.cue, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i ], [ %i.cue, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i ], [ %.sroa.0281.0.i.i, %._crit_edge.i.thread.i ], [ %i.cue, %bb.ss ], [ %i.cue, %bb.st ] ; 9 uses
  %.sroa.021.2.i.i = phi i1 [ %spec.select.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i ], [ %.sroa.021.0.lcssa.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i197.i.i ], [ %.sroa.021.0.lcssa.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i259.backedge.i.i ], [ false, %._crit_edge.i.thread.i ], [ %.sroa.021.0.lcssa.i.i, %bb.ss ], [ %.sroa.021.0.lcssa.i.i, %bb.st ]
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 264
  %i.djd = load i64, ptr %i.djc, align 8, !noalias !10662, !noundef !10 ; 3 uses
  %i.dje = icmp ult i64 %i.djd, 576460752303423488
  call void @llvm.assume(i1 %i.dje)
  %i.djf = icmp eq i64 %i.djd, 0                  ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djb, i64 288
  %i.djh = load i64, ptr %i.djg, align 8, !noalias !10662 ; 6 uses
  br i1 %i.djf, label %bb.tg, label %bb.sz

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit215.i.i
  %.pre672.i.i = load i64, ptr %i.dgq, align 8, !noalias !10662
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.i.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i, %._crit_edge.i.thread.i, %._crit_edge.i.i
  %.sroa.021.0.lcssa.i151.i = phi i1 [ %.sroa.021.0.lcssa.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i ], [ %.sroa.021.0.lcssa.i.i, %._crit_edge.i.i ], [ false, %._crit_edge.i.thread.i ]
  %i.dji = phi ptr [ %i.cug, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i ], [ %i.cug, %._crit_edge.i.i ], [ %i.dgu, %._crit_edge.i.thread.i ]
  %i.djj = phi ptr [ %i.cue, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i ], [ %i.cue, %._crit_edge.i.i ], [ %.sroa.0281.0.i.i, %._crit_edge.i.thread.i ]
  %i.djk = phi i64 [ %.pre672.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.thread.loopexit.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %._crit_edge.i.thread.i ] ; 2 uses
  %i.djl = icmp ult i64 %i.djk, 288230376151711744
  call void @llvm.assume(i1 %i.djl)
  %i.djm = icmp ne i64 %i.djk, 0
  %spec.select.i.i = select i1 %i.djm, i1 true, i1 %.sroa.021.0.lcssa.i151.i
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i

bb.sz:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10797)
  %i.djn = icmp ult i64 %i.djh, 576460752303423488
  call void @llvm.assume(i1 %i.djn)
  %i.djo = icmp eq i64 %i.djh, 0
  br i1 %i.djo, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.tg, %bb.sz
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djb, i64 280
  %i.djq = load ptr, ptr %i.djp, align 8, !alias.scope !10797, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %.idx514.i.i = shl nuw nsw i64 %i.djh, 4
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djq, i64 %.idx514.i.i
  br i1 %.not24.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader: ; preds = %.thread.i.i
  %i.djs = icmp eq i64 %i.djh, 0
  br i1 %i.djs, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.lr.ph.i.i.i229.preheader.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i: ; preds = %bb.tc
  %i.djt = icmp eq ptr %i.djv, %i.djr
  br i1 %i.djt, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.lr.ph.i.i.i229.preheader.i.i

.lr.ph.i.i.i229.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i
  %i.dju = phi ptr [ %i.djv, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i ], [ %i.djq, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader ] ; 3 uses
  %i.djv = getelementptr inbounds nuw i8, ptr %i.dju, i64 16 ; 2 uses
  %.val2.i.i.i52.i = load ptr, ptr %i.dju, align 8, !noalias !10798 ; 2 uses
  %i.djw = getelementptr i8, ptr %i.dju, i64 8
  %.val3.i.i.i53.i = load i64, ptr %i.djw, align 8, !noalias !10798 ; 2 uses
  br label %.lr.ph.i.i.i229.i.i

.lr.ph.i.i.i229.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i, %.lr.ph.i.i.i229.preheader.i.i
  %.sroa.0.019.i.i.i230.i.i = phi ptr [ %i.djx, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i ], [ %i.ccn, %.lr.ph.i.i.i229.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i231.i.i = phi i64 [ %i.djy, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i ], [ 0, %.lr.ph.i.i.i229.preheader.i.i ] ; 4 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i230.i.i, i64 16 ; 2 uses
  %i.djy = add nuw nsw i64 %.sroa.8.08.i.i.i231.i.i, 1
  %i.djz = getelementptr i8, ptr %.sroa.0.019.i.i.i230.i.i, i64 8
  %.val7.i.i.i232.i.i = load i64, ptr %i.djz, align 8, !noalias !10799, !noundef !10
  %i.dka = icmp eq i64 %.val7.i.i.i232.i.i, %.val3.i.i.i53.i
  br i1 %i.dka, label %.split.i.i.i235.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i

.split.i.i.i235.i.i:                              ; preds = %.lr.ph.i.i.i229.i.i
  %.val.i.i.i236.i.i = load ptr, ptr %.sroa.0.019.i.i.i230.i.i, align 8, !noalias !10799, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i52.i) ], !noalias !10800
  %bcmp.i.i.i.i.i237.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i236.i.i, ptr nonnull readonly %.val2.i.i.i52.i, i64 %.val3.i.i.i53.i), !noalias !10799
  %i.dkb = icmp eq i32 %bcmp.i.i.i.i.i237.i.i, 0
  br i1 %i.dkb, label %bb.ta, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i: ; preds = %.split.i.i.i235.i.i, %.lr.ph.i.i.i229.i.i
  %i.dkc = icmp eq ptr %i.djx, %i.ccq
  br i1 %i.dkc, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %.lr.ph.i.i.i229.i.i

bb.ta:                                            ; preds = %.split.i.i.i235.i.i
  %i.dkd = icmp ult i64 %.sroa.8.08.i.i.i231.i.i, %i.ccu
  br i1 %i.dkd, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i231.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10799
  unreachable

bb.tc:                                            ; preds = %bb.ta
  %i.dke = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i231.i.i
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dke, i64 97
  %i.dkg = load i8, ptr %i.dkf, align 1, !range !38, !alias.scope !10801, !noalias !10802, !noundef !10
  %cond.i.i238.i.i = icmp eq i8 %i.dkg, 0
  br i1 %cond.i.i238.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i: ; preds = %bb.tc, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i, %bb.sz
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.djb, i64 256
  %i.dki = load ptr, ptr %i.dkh, align 8, !alias.scope !10797, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %.idx515.i.i = shl nuw nsw i64 %i.djd, 4
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dki, i64 %.idx515.i.i
  %brmerge.i.i = or i1 %.not24.i.i.i, %i.djf
  br i1 %brmerge.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %.lr.ph.i.i.i217.preheader.i.i

.lr.ph.i.i.i217.preheader.i.i:                    ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i
  %i.dkk = phi ptr [ %i.dkl, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i ], [ %i.dki, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i ] ; 3 uses
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkk, i64 16 ; 2 uses
  %.val2.i2.i.i.i = load ptr, ptr %i.dkk, align 8, !noalias !10803 ; 2 uses
  %i.dkm = getelementptr i8, ptr %i.dkk, i64 8
  %.val3.i3.i.i.i = load i64, ptr %i.dkm, align 8, !noalias !10803 ; 2 uses
  br label %.lr.ph.i.i.i217.i.i

.lr.ph.i.i.i217.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i, %.lr.ph.i.i.i217.preheader.i.i
  %.sroa.0.019.i.i.i218.i.i = phi ptr [ %i.dkn, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i ], [ %i.ccn, %.lr.ph.i.i.i217.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i219.i.i = phi i64 [ %i.dko, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i ], [ 0, %.lr.ph.i.i.i217.preheader.i.i ] ; 4 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i218.i.i, i64 16 ; 2 uses
  %i.dko = add nuw nsw i64 %.sroa.8.08.i.i.i219.i.i, 1
  %i.dkp = getelementptr i8, ptr %.sroa.0.019.i.i.i218.i.i, i64 8
  %.val7.i.i.i220.i.i = load i64, ptr %i.dkp, align 8, !noalias !10804, !noundef !10
  %i.dkq = icmp eq i64 %.val7.i.i.i220.i.i, %.val3.i3.i.i.i
  br i1 %i.dkq, label %.split.i.i.i223.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i

.split.i.i.i223.i.i:                              ; preds = %.lr.ph.i.i.i217.i.i
  %.val.i.i.i224.i.i = load ptr, ptr %.sroa.0.019.i.i.i218.i.i, align 8, !noalias !10804, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i2.i.i.i) ], !noalias !10805
  %bcmp.i.i.i.i.i225.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i224.i.i, ptr nonnull readonly %.val2.i2.i.i.i, i64 %.val3.i3.i.i.i), !noalias !10804
  %i.dkr = icmp eq i32 %bcmp.i.i.i.i.i225.i.i, 0
  br i1 %i.dkr, label %bb.td, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i: ; preds = %.split.i.i.i223.i.i, %.lr.ph.i.i.i217.i.i
  %i.dks = icmp eq ptr %i.dkn, %i.ccq
  br i1 %i.dks, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, label %.lr.ph.i.i.i217.i.i

bb.td:                                            ; preds = %.split.i.i.i223.i.i
  %i.dkt = icmp ult i64 %.sroa.8.08.i.i.i219.i.i, %i.ccu
  br i1 %i.dkt, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %bb.td
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i219.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10804
  unreachable

bb.tf:                                            ; preds = %bb.td
  %i.dku = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i219.i.i
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dku, i64 97
  %i.dkw = load i8, ptr %i.dkv, align 1, !range !38, !alias.scope !10806, !noalias !10807, !noundef !10
  %cond.i.i226.i.i = icmp eq i8 %i.dkw, 0
  br i1 %cond.i.i226.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i, %bb.tf
  %.not.not.not.i.not.i.i.i = icmp eq ptr %i.dkl, %i.dkj
  br i1 %.not.not.not.i.not.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %.lr.ph.i.i.i217.preheader.i.i

bb.tg:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i
  %i.dkx = icmp ult i64 %i.djh, 576460752303423488
  call void @llvm.assume(i1 %i.dkx)
  %i.dky = icmp eq i64 %i.djh, 0
  br i1 %i.dky, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.thread.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i, %bb.tf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader, %bb.tg
  %or.cond.i.i = select i1 %.not.i50.i, i1 %.sroa.021.2.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.th, label %.backedge4674

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, %.thread.i.i
  br i1 %.lcssa15.i.i.i, label %.backedge4674, label %bb.th

bb.th:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.djb, i64 536
  %.val55.i.i = load ptr, ptr %i.dkz, align 8, !noalias !10662, !nonnull !10, !noundef !10
  %i.dla = getelementptr i8, ptr %i.djb, i64 544
  %.val56.i.i = load i64, ptr %i.dla, align 8, !noalias !10662, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10808)
  %i.dlb = load i64, ptr %i.cqb, align 8, !alias.scope !10808, !noalias !10659, !noundef !10 ; 3 uses
  %i.dlc = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !10808, !noalias !10659, !noundef !10
  %i.dld = icmp eq i64 %i.dlb, %i.dlc
  br i1 %i.dld, label %bb.ti, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i

bb.ti:                                            ; preds = %bb.th
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed) #42, !noalias !10809
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i: ; preds = %bb.ti, %bb.th
  %i.dle = load ptr, ptr %i.cqa, align 8, !alias.scope !10808, !noalias !10659, !nonnull !10, !noundef !10
  %i.dlf = getelementptr inbounds nuw [16 x i8], ptr %i.dle, i64 %i.dlb ; 2 uses
  store ptr %.val55.i.i, ptr %i.dlf, align 8, !noalias !10810
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 8
  store i64 %.val56.i.i, ptr %i.dlg, align 8, !noalias !10811
  %i.dlh = add i64 %i.dlb, 1
  store i64 %i.dlh, ptr %i.cqb, align 8, !alias.scope !10808, !noalias !10659
  %i.dli = getelementptr i8, ptr %i.djb, i64 592
  %.val68.i.i = load i32, ptr %i.dli, align 8, !noalias !10662, !noundef !10
  %i.dlj = and i32 %.val68.i.i, 256
  %.not334.i.i = icmp eq i32 %i.dlj, 0
  br i1 %.not334.i.i, label %bb.tj, label %.backedge4674

.backedge4674:                                    ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i
  br label %bb.qj

bb.tj:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i
  %i.dlk = getelementptr i8, ptr %i.djb, i64 40
  %.val73.i.i = load i64, ptr %i.dlk, align 8, !range !13, !noalias !10662, !noundef !10
  %i.dll = getelementptr i8, ptr %i.djb, i64 48
  %.val74.i.i = load i64, ptr %i.dll, align 8, !noalias !10662
  %i.dlm = trunc nuw i64 %.val73.i.i to i1
  %i.dln = call i64 @llvm.umax.i64(i64 %.val74.i.i, i64 %.sroa.04.1.i.i.ph)
  %..i.i.i = select i1 %i.dlm, i64 %i.dln, i64 %.sroa.04.1.i.i.ph
  br label %.outer
end_hunk_2
