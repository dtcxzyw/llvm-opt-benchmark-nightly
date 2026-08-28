Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.10?download=true
inline.NumInlined: 194
inline.NumDeleted: 89
begin_hunk_0_@_RINvNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitor5visitINtNtB4_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB6_:bb.a
  br i1 %i.o, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitorNtB2_11HeapVisitor6induct.exit.i, label %bb.g, !dbg !4851

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitorNtB2_11HeapVisitor6induct.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.p = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0149.i)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit, !dbg !4852

.noexc5:                                          ; preds = %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitorNtB2_11HeapVisitor6induct.exit.i
    #dbg_value(i1 %i.p, !4681, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4853)
  br i1 %i.p, label %.loopexit12, label %.preheader.i, !dbg !4855

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i, i64 8, !dbg !4856
    #dbg_value(i64 0, !4563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4857)
    #dbg_value(ptr %i.q, !4563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4857)
    #dbg_value(ptr undef, !4563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4857)
    #dbg_value(i64 undef, !4563, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4857)
    #dbg_value(ptr undef, !4506, !DIExpression(), !4590)
    #dbg_value(ptr %i.q, !4513, !DIExpression(), !4858)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i, i64 16, !dbg !4859
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4859, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.s, !4565, !DIExpression(), !4860)
  br label %bb.h, !dbg !4861

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i, i64 8, !dbg !4862 ; 2 uses
    #dbg_value(i64 1, !4563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4857)
    #dbg_value(ptr %i.t, !4563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4857)
    #dbg_value(ptr undef, !4563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4857)
    #dbg_value(i64 undef, !4563, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4857)
    #dbg_value(ptr undef, !4506, !DIExpression(), !4590)
    #dbg_value(ptr %i.t, !4515, !DIExpression(), !4863)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !4864, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.u, !4565, !DIExpression(), !4860)
  br label %bb.h, !dbg !4865

bb.f:                                             ; preds = %bb.b
    #dbg_value(ptr %.sroa.0.0149.i, !4731, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4866)
    #dbg_value(ptr %.sroa.0.0149.i, !4746, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4867)
    #dbg_value(ptr %.sroa.0.0149.i, !4868, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4874)
    #dbg_value(ptr %.sroa.0.0149.i, !4876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4880)
    #dbg_value(ptr %.sroa.0.0149.i, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4885)
    #dbg_value(ptr %.sroa.0.0149.i, !4759, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4887)
    #dbg_value(ptr %.sroa.0.0149.i, !4868, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4888)
    #dbg_value(ptr %.sroa.0.0149.i, !4876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4890)
    #dbg_value(ptr %.sroa.0.0149.i, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4893)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i, i64 16, !dbg !4896
  %i.w = load ptr, ptr %i.v, align 8, !dbg !4896, !alias.scope !4818, !noalias !4821, !nonnull !199, !noundef !199 ; 3 uses
    #dbg_value(ptr %i.w, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
    #dbg_value(ptr %i.w, !4787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4792)
    #dbg_value(ptr %i.w, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4802)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4778)
    #dbg_value(i64 %i.i, !4787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4792)
    #dbg_value(i64 %i.i, !4800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4802)
  %i.x = add nsw i64 %i.i, -1, !dbg !4903
    #dbg_value(i64 %i.x, !4788, !DIExpression(), !4904)
    #dbg_value(i64 %i.x, !4801, !DIExpression(), !4802)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48, !dbg !4905
    #dbg_value(i64 2, !4563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4857)
    #dbg_value(ptr %i.w, !4563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4857)
    #dbg_value(ptr %i.y, !4563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4857)
    #dbg_value(i64 %i.x, !4563, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4857)
    #dbg_value(ptr undef, !4506, !DIExpression(), !4590)
    #dbg_value(ptr %i.w, !4565, !DIExpression(), !4860)
  br label %bb.h, !dbg !4906

bb.g:                                             ; preds = %bb.c
    #dbg_value(ptr %.sroa.0.0149.i, !4736, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4907)
    #dbg_value(ptr %.sroa.0.0149.i, !4746, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4908)
    #dbg_value(ptr %.sroa.0.0149.i, !4868, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4909)
    #dbg_value(ptr %.sroa.0.0149.i, !4876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4912)
    #dbg_value(ptr %.sroa.0.0149.i, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4915)
    #dbg_value(ptr %.sroa.0.0149.i, !4759, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4918)
    #dbg_value(ptr %.sroa.0.0149.i, !4868, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4919)
    #dbg_value(ptr %.sroa.0.0149.i, !4876, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4921)
    #dbg_value(ptr %.sroa.0.0149.i, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4924)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i, i64 16, !dbg !4927
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !4927, !alias.scope !4818, !noalias !4821, !nonnull !199, !noundef !199 ; 3 uses
    #dbg_value(ptr %i.aa, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4808)
    #dbg_value(ptr %i.aa, !4787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4811)
    #dbg_value(ptr %i.aa, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4814)
    #dbg_value(i64 %i.m, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4808)
    #dbg_value(i64 %i.m, !4787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4811)
    #dbg_value(i64 %i.m, !4800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4814)
  %i.ab = add nsw i64 %i.m, -1, !dbg !4934
    #dbg_value(i64 %i.ab, !4790, !DIExpression(), !4935)
    #dbg_value(i64 %i.ab, !4801, !DIExpression(), !4814)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !4936
    #dbg_value(i64 3, !4563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4857)
    #dbg_value(ptr %i.aa, !4563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4857)
    #dbg_value(ptr %i.ac, !4563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4857)
    #dbg_value(i64 %i.ab, !4563, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4857)
    #dbg_value(ptr undef, !4506, !DIExpression(), !4590)
    #dbg_value(ptr %i.aa, !4565, !DIExpression(), !4860)
  br label %bb.h, !dbg !4937

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.074.ph94.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ] ; 2 uses
  %.sroa.12.0.ph92.i = phi ptr [ %i.q, %bb.d ], [ %i.t, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.17.0.ph90.i = phi ptr [ undef, %bb.d ], [ undef, %bb.e ], [ %i.y, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %.sroa.20.0.ph88.i = phi i64 [ undef, %bb.d ], [ undef, %bb.e ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %.sroa.015.0.i = phi ptr [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], !dbg !4938 ; 2 uses
    #dbg_value(ptr %.sroa.015.0.i, !4565, !DIExpression(), !4860)
    #dbg_value(ptr %i.b, !4939, !DIExpression(), !4946)
    #dbg_value(ptr %.sroa.0.0149.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(ptr %.sroa.0.0149.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4961)
    #dbg_value(ptr %.sroa.0.0149.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4969)
    #dbg_value(i64 %.sroa.0.074.ph94.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %.sroa.0.074.ph94.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4961)
    #dbg_value(i64 %.sroa.0.074.ph94.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4969)
    #dbg_value(ptr %.sroa.12.0.ph92.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
    #dbg_value(ptr %.sroa.12.0.ph92.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4961)
    #dbg_value(ptr %.sroa.12.0.ph92.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4969)
    #dbg_value(ptr %.sroa.17.0.ph90.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4946)
    #dbg_value(ptr %.sroa.17.0.ph90.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4961)
    #dbg_value(ptr %.sroa.17.0.ph90.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4969)
    #dbg_value(i64 %.sroa.20.0.ph88.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4946)
    #dbg_value(i64 %.sroa.20.0.ph88.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4961)
    #dbg_value(i64 %.sroa.20.0.ph88.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4969)
    #dbg_value(ptr %i.b, !4955, !DIExpression(), !4961)
    #dbg_value(ptr %i.b, !4971, !DIExpression(), !4977)
    #dbg_value(i64 40, !4979, !DIExpression(), !4983)
  %i.ad = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4989, !alias.scope !4990, !noalias !4993, !noundef !199 ; 3 uses
    #dbg_value(i64 %i.ad, !4956, !DIExpression(), !4995)
    #dbg_value(i64 %i.ad, !4996, !DIExpression(), !5002)
    #dbg_value(ptr %i.b, !4987, !DIExpression(), !5004)
  %i.ae = load i64, ptr %i.b, align 8, !dbg !5005, !range !5006, !alias.scope !4990, !noalias !4993, !noundef !199
  %i.af = icmp eq i64 %i.ad, %i.ae, !dbg !5007
  br i1 %i.af, label %bb.i, label %.backedge.i, !dbg !5007

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit, !dbg !5008

.backedge.i:                                      ; preds = %bb.q, %bb.i, %bb.p, %.thread.i, %bb.h
  %.sink199.i = phi i64 [ %i.ad, %bb.i ], [ %i.an, %.thread.i ], [ %.pre.i, %bb.p ], [ %i.ad, %bb.h ], [ %.pre.i, %bb.q ] ; 2 uses
  %.sroa.0.0149.sink.i = phi ptr [ %.sroa.0.0149.i, %bb.i ], [ %.sroa.035.0.copyload.i, %.thread.i ], [ %.sroa.035.0.copyload.i, %bb.p ], [ %.sroa.0.0149.i, %bb.h ], [ %.sroa.035.0.copyload.i, %bb.q ]
  %.sroa.0.074.ph94.sink.i = phi i64 [ %.sroa.0.074.ph94.i, %bb.i ], [ 2, %.thread.i ], [ 3, %bb.p ], [ %.sroa.0.074.ph94.i, %bb.h ], [ 3, %bb.q ]
  %.sroa.12.0.ph92.sink.i = phi ptr [ %.sroa.12.0.ph92.i, %bb.i ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.4.sroa.5.0.copyload.i, %bb.p ], [ %.sroa.12.0.ph92.i, %bb.h ], [ %.sroa.4.sroa.5.0.copyload.i, %bb.q ]
  %.sroa.17.0.ph90.sink.i = phi ptr [ %.sroa.17.0.ph90.i, %bb.i ], [ %.sroa.15.0126172.i, %.thread.i ], [ %.sroa.15.0126.i, %bb.p ], [ %.sroa.17.0.ph90.i, %bb.h ], [ %.sroa.15.0126.i, %bb.q ]
  %.sroa.20.0.ph88.sink.i = phi i64 [ %.sroa.20.0.ph88.i, %bb.i ], [ %.sroa.18.0124171.i, %.thread.i ], [ %.sroa.18.0124.i, %bb.p ], [ %.sroa.20.0.ph88.i, %bb.h ], [ %.sroa.18.0124.i, %bb.q ]
  %.sroa.0.0.be.i = phi ptr [ %.sroa.015.0.i, %bb.i ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.4.sroa.5.0.copyload.i, %bb.p ], [ %.sroa.015.0.i, %bb.h ], [ %.sroa.4.sroa.5.0.copyload.i, %bb.q ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5009, !alias.scope !4502, !noalias !4655, !nonnull !199, !noundef !199
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %.sink199.i, !dbg !5033 ; 5 uses
  store ptr %.sroa.0.0149.sink.i, ptr %i.ah, align 8, !dbg !5035
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !5035
  store i64 %.sroa.0.074.ph94.sink.i, ptr %.sroa.458.0..sroa_idx.i, align 8, !dbg !5035
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !5035
  store ptr %.sroa.12.0.ph92.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5035
  %.sroa.6.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !5035
  store ptr %.sroa.17.0.ph90.sink.i, ptr %.sroa.6.0..sroa_idx59.i, align 8, !dbg !5035
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !5035
  store i64 %.sroa.20.0.ph88.sink.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !5035
  %storemerge.i = add i64 %.sink199.i, 1, !dbg !5037
  store i64 %storemerge.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5037, !alias.scope !4502, !noalias !4655
    #dbg_value(ptr %.sroa.0.0.be.i, !4539, !DIExpression(), !4592)
  %i.ai = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.be.i)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit, !dbg !4656

.noexc7:                                          ; preds = %.backedge.i
    #dbg_value(i1 %i.ai, !4681, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5038)
  br i1 %i.ai, label %.loopexit12, label %.lr.ph.i, !dbg !4657

.preheader.i:                                     ; preds = %.noexc5, %.noexc9
    #dbg_value(ptr %i.b, !4638, !DIExpression(), !5039)
    #dbg_value(ptr %i.b, !4620, !DIExpression(), !5040)
    #dbg_value(ptr %i.b, !5041, !DIExpression(), !5047)
    #dbg_value(ptr %i.b, !5049, !DIExpression(), !5053)
  %i.aj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5055, !alias.scope !4502, !noalias !4655, !noundef !199 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !5055
  br i1 %i.ak, label %bb.j, label %bb.k, !dbg !5055

bb.j:                                             ; preds = %.preheader.i
  %i.al = load ptr, ptr %i.a, align 8, !dbg !5056, !noalias !4593, !nonnull !199, !align !5057, !noundef !199
  %i.am = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor6finishB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.loopexit12 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !5058

bb.k:                                             ; preds = %.preheader.i
  %i.an = add nsw i64 %i.aj, -1, !dbg !5059       ; 4 uses
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5059, !alias.scope !4502, !noalias !4655
  %i.ao = load i64, ptr %i.b, align 8, !dbg !5060, !range !5006, !alias.scope !4502, !noalias !4655, !noundef !199
  %i.ap = icmp samesign ult i64 %i.an, %i.ao, !dbg !5061
    #dbg_value(i1 true, !5062, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5069)
  call void @llvm.assume(i1 %i.ap), !dbg !5071
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5072, !alias.scope !4502, !noalias !4655, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.aq, !5081, !DIExpression(), !5087)
    #dbg_value(i64 %i.an, !5086, !DIExpression(), !5087)
  %i.ar = icmp ult i64 %i.aj, 230584300921369397, !dbg !5089
  call void @llvm.assume(i1 %i.ar), !dbg !5090
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.an, !dbg !5091 ; 4 uses
    #dbg_value(ptr %i.as, !5092, !DIExpression(), !5097)
  %.sroa.035.0.copyload.i = load ptr, ptr %i.as, align 8, !dbg !5099, !nonnull !199, !noundef !199 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !5099
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5099
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !5099
  %.sroa.4.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !5099 ; 10 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32, !dbg !5099
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !5099 ; 4 uses
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4571, !DIExpression(), !5100)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5100)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !5101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5113)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4572, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5100)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5101, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5113)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !4572, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5100)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5101, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5113)
    #dbg_value(ptr %i.b, !5108, !DIExpression(), !5113)
    #dbg_value(i64 1, !5115, !DIExpression(), !5119)
    #dbg_value(i64 1, !5121, !DIExpression(), !5129)
    #dbg_value(i64 1, !5131, !DIExpression(), !5136)
    #dbg_value(i64 1, !5115, !DIExpression(), !5138)
    #dbg_value(i64 1, !5121, !DIExpression(), !5140)
    #dbg_value(i64 1, !5131, !DIExpression(), !5143)
  switch i64 %.sroa.4.sroa.0.0.copyload.i, label %default.unreachable19.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.n
    i64 2, label %bb.l
    i64 3, label %bb.m
  ], !dbg !5146

default.unreachable19.i.i:                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !5109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5147)
    #dbg_value(ptr poison, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5119)
    #dbg_value(ptr poison, !5124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5129)
    #dbg_value(ptr poison, !5134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5136)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5147)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5119)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5129)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5136)
  %i.at = icmp eq i64 %.sroa.4.sroa.6.0.copyload.i, 0, !dbg !5148
  br i1 %i.at, label %bb.n, label %.thread.i, !dbg !5148

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !5111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5149)
    #dbg_value(ptr poison, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(ptr poison, !5124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5140)
    #dbg_value(ptr poison, !5134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5143)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5149)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5140)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5143)
  %i.au = icmp eq i64 %.sroa.4.sroa.6.0.copyload.i, 0, !dbg !5150
  br i1 %i.au, label %bb.n, label %bb.o, !dbg !5150

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  %i.av = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.035.0.copyload.i)
          to label %.noexc9 unwind label %.loopexit, !dbg !5151

.noexc9:                                          ; preds = %bb.n
    #dbg_value(i1 %i.av, !4681, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5152)
  br i1 %i.av, label %.loopexit12, label %.preheader.i, !dbg !5154

.thread.i:                                        ; preds = %bb.l
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5147)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5119)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5129)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5136)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5135, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5136)
    #dbg_value(i64 2, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5155)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5155)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4576, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5155)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !4576, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !5155)
    #dbg_value(i8 0, !4681, !DIExpression(), !5156)
    #dbg_value(ptr undef, !4506, !DIExpression(), !4529)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4539, !DIExpression(), !4592)
  %.sroa.18.0124171.i = add i64 %.sroa.4.sroa.6.0.copyload.i, -1, !dbg !5158
  %.sroa.15.0126172.i = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload.i, i64 48, !dbg !5161
    #dbg_value(ptr %i.b, !4939, !DIExpression(), !5163)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5163)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5165)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5167)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5163)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5165)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5167)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5163)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5165)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5167)
    #dbg_value(ptr %.sroa.15.0126172.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5163)
    #dbg_value(ptr %.sroa.15.0126172.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5165)
    #dbg_value(ptr %.sroa.15.0126172.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5167)
    #dbg_value(i64 %.sroa.18.0124171.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5163)
    #dbg_value(i64 %.sroa.18.0124171.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5165)
    #dbg_value(i64 %.sroa.18.0124171.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5167)
    #dbg_value(ptr %i.b, !4955, !DIExpression(), !5165)
    #dbg_value(ptr %i.b, !4971, !DIExpression(), !5169)
    #dbg_value(i64 40, !4979, !DIExpression(), !5171)
    #dbg_value(i64 %i.an, !4956, !DIExpression(), !5174)
    #dbg_value(i64 %i.an, !4996, !DIExpression(), !5175)
    #dbg_value(ptr %i.b, !4987, !DIExpression(), !5177)
  br label %.backedge.i, !dbg !5178

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5149)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5140)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !5134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5143)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !5135, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5143)
    #dbg_value(i64 3, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5155)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5155)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4576, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5155)
    #dbg_value(i64 %.sroa.4.sroa.6.0.copyload.i, !4576, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !5155)
  %i.aw = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor20visit_alternation_inB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit, !dbg !5179

.noexc10:                                         ; preds = %bb.o
    #dbg_value(i1 %i.aw, !4681, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5180)
  br i1 %i.aw, label %.loopexit12, label %bb.p, !dbg !5182

bb.p:                                             ; preds = %.noexc10
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5183, !alias.scope !5184, !noalias !5187 ; 3 uses
  %.pre168.i = load i64, ptr %i.b, align 8, !dbg !5189, !range !5006, !alias.scope !5184, !noalias !5187
  %i.ax = icmp eq i64 %.pre.i, %.pre168.i, !dbg !5178
  %.sroa.18.0124.i = add i64 %.sroa.4.sroa.6.0.copyload.i, -1, !dbg !5158 ; 2 uses
  %.sroa.15.0126.i = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload.i, i64 48, !dbg !5161 ; 2 uses
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4539, !DIExpression(), !4592)
    #dbg_value(ptr %i.b, !4939, !DIExpression(), !5163)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5163)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5165)
    #dbg_value(ptr %.sroa.035.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5167)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5163)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5165)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5167)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5163)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5165)
    #dbg_value(ptr %.sroa.4.sroa.5.0.copyload.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5167)
    #dbg_value(ptr %.sroa.15.0126.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5163)
    #dbg_value(ptr %.sroa.15.0126.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5165)
    #dbg_value(ptr %.sroa.15.0126.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5167)
    #dbg_value(i64 %.sroa.18.0124.i, !4945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5163)
    #dbg_value(i64 %.sroa.18.0124.i, !4948, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5165)
    #dbg_value(i64 %.sroa.18.0124.i, !4963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5167)
    #dbg_value(ptr %i.b, !4955, !DIExpression(), !5165)
    #dbg_value(ptr %i.b, !4971, !DIExpression(), !5169)
    #dbg_value(i64 40, !4979, !DIExpression(), !5171)
    #dbg_value(i64 %.pre.i, !4956, !DIExpression(), !5174)
    #dbg_value(i64 %.pre.i, !4996, !DIExpression(), !5175)
    #dbg_value(ptr %i.b, !4987, !DIExpression(), !5177)
  br i1 %i.ax, label %bb.q, label %.backedge.i, !dbg !5178

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit, !dbg !5190

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.q, %bb.o, %.backedge.i, %bb.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitorNtB2_11HeapVisitor6induct.exit.i
  %lpad.loopexit13 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j, %bb.a
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit13, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitor11HeapVisitorEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %common.resume unwind label %bb.t, !dbg !5191

.loopexit12:                                      ; preds = %.noexc10, %.noexc7, %.noexc5, %.noexc9, %.noexc, %bb.j
  %.sroa.04.0.i = phi i1 [ true, %.noexc9 ], [ true, %.noexc ], [ %i.am, %bb.j ], [ true, %.noexc5 ], [ true, %.noexc7 ], [ true, %.noexc10 ], !dbg !4592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5192
    #dbg_value(ptr %i.b, !4409, !DIExpression(), !5193)
    #dbg_value(ptr %i.b, !4413, !DIExpression(), !5195)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtNtBJ_7visitor5FrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitor11HeapVisitorEBH_.exit unwind label %bb.r, !dbg !5197

bb.r:                                             ; preds = %.loopexit12
  %i.ay = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4424, !DIExpression(), !5198)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtNtBQ_7visitor5FrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.s, !dbg !5200

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !5197
  unreachable, !dbg !5197

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op, !dbg !4495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitor11HeapVisitorEBH_.exit: ; preds = %.loopexit12
    #dbg_value(ptr %i.b, !4424, !DIExpression(), !5201)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtNtBQ_7visitor5FrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !5203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5191
  ret i1 %.sroa.04.0.i, !dbg !5204

bb.t:                                             ; preds = %.loopexit.split-lp
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
