Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.11?download=true
inline.NumInlined: 516
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNCNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression32format_with_parentheses_commentss0_0B5_:bb.a
bb.y:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ca, ptr %i.m, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression17expr_none_literalNtB2_21FormatExprNoneLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, ptr noundef nonnull align 4 %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ai

bb.z:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.cc, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression21expr_ellipsis_literalNtB2_25FormatExprEllipsisLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated19ExprEllipsisLiteralE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, ptr noundef nonnull align 4 %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ai

bb.aa:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !87
  store i32 3, ptr %i.k, align 8, !alias.scope !87
  call void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_attributeNtB4_19FormatExprAttributeINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull align 8 %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

bb.ab:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !90
  store i32 3, ptr %i.j, align 8, !alias.scope !90
  call void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_subscriptNtB4_19FormatExprSubscriptINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull align 8 %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ai

bb.ac:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ci, ptr %i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_starredNtB2_17FormatExprStarredINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, ptr noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ai

bb.ad:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ck, ptr %i.h, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_nameNtB2_14FormatExprNameINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cl, ptr noundef nonnull align 8 %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.cm, ptr %i.g, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_listNtB2_14FormatExprListINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprListE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cn, ptr noundef nonnull align 8 %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ai

bb.af:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.co, ptr %i.f, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i8 0, ptr %i.cp, align 8
  call void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_tupleNtB4_15FormatExprTupleINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.cp, ptr noundef nonnull align 8 %i.co, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.cq, ptr %i.e, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_sliceNtB2_15FormatExprSliceINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprSliceE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, ptr noundef nonnull align 8 %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cs, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression23expr_ipy_escape_commandNtB2_26FormatExprIpyEscapeCommandINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, ptr noundef nonnull align 8 %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferINtB5_9VecBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE13with_capacityB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(88) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !93, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !94, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.j, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtB17_3map5EntryNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtBY_3map5EntryEE3newB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitor19visit_subexpression(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !71, !noundef !3
  switch i32 %i.a, label %default.unreachable8 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %switch.lookup
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
    i32 9, label %bb.h
    i32 10, label %bb.h
    i32 11, label %bb.i
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 14, label %bb.f
    i32 15, label %bb.j
    i32 16, label %bb.k
    i32 17, label %bb.p
    i32 18, label %bb.p
    i32 19, label %bb.p
    i32 20, label %bb.p
    i32 21, label %bb.p
    i32 22, label %bb.p
    i32 23, label %bb.p
    i32 24, label %bb.p
    i32 25, label %bb.q
    i32 26, label %bb.w
    i32 27, label %bb.f
    i32 28, label %bb.p
    i32 29, label %bb.h
    i32 30, label %bb.ab
    i32 31, label %bb.p
    i32 32, label %bb.p
  ]

default.unreachable8:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread, %bb.ag, %switch.lookup, %bb.j, %bb.g, %bb.c
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp ult i64 %i.c, 128102389400760776
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1)
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !96, !noundef !3
  %i.i = tail call i8 @llvm.ucmp.i8.i8(i8 %i.h, i8 11)
  switch i8 %i.i, label %bb.b [
    i8 -1, label %bb.ac
    i8 0, label %bb.ad
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %switch.lookup, %bb.ae, %bb.af, %bb.f, %bb.at, %bb.j, %bb.ao, %bb.ap, %bb.i, %bb.g, %bb.al, %bb.am, %bb.aj, %bb.ak, %bb.c, %bb.ac, %bb.ad, %bb.ab, %bb.a
  tail call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_exprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression33CanOmitOptionalParenthesesVisitorEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %1)
  br label %bb.p

switch.lookup:                                    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i8, ptr %i.j, align 4, !range !96, !noundef !3
  %i.l = zext nneg i8 %i.k to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitor19visit_subexpression, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !96, !noundef !3
  %i.o = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %switch.load)
  switch i8 %i.o, label %bb.b [
    i8 -1, label %bb.ae
    i8 0, label %bb.af
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !97, !noundef !3
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.ag, label %bb.aj

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.s = load i64, ptr %0, align 8, !range !16, !noundef !3
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.at, label %bb.d

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !96, !noundef !3
  %i.w = tail call i8 @llvm.ucmp.i8.i8(i8 %i.v, i8 12)
  switch i8 %i.w, label %bb.b [
    i8 -1, label %bb.al
    i8 0, label %bb.am
    i8 1, label %bb.d
  ]

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.x, align 4
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i8, ptr %i.y, align 4, !range !98, !noundef !3
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.an, label %bb.d

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !96, !noundef !3
  %i.ag = tail call i8 @llvm.ucmp.i8.i8(i8 %i.af, i8 10)
  switch i8 %i.ag, label %bb.b [
    i8 -1, label %bb.ao
    i8 0, label %bb.ap
    i8 1, label %bb.d
  ]

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i8 1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !99
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !99, !nonnull !3, !align !6, !noundef !3
  %i.an = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.aj), !noalias !99, !inline_history !102 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  %i.aq = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.am, i64 noundef %i.ao, ptr noundef %i.ap), !noalias !99, !inline_history !102
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitor19visit_subexpression(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.aj), !inline_history !102
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr %i.ah, align 4, !alias.scope !99
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = load i64, ptr %0, align 8, !range !16, !alias.scope !99, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.o, label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %0, align 8, !alias.scope !99
  store ptr %i.aj, ptr %i.at, align 8, !alias.scope !99
  br label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit

_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit: ; preds = %bb.n, %bb.o
  store ptr %1, ptr %i.ak, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.au, %bb.as, %bb.an, %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit4, %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit, %bb.h, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.q:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !3, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !103
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !103, !nonnull !3, !align !6, !noundef !3
  %i.az = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.av), !noalias !103, !inline_history !102 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ay, i64 noundef %i.ba, ptr noundef %i.bb), !noalias !103, !inline_history !102
  br i1 %i.bc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitor19visit_subexpression(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.av), !inline_history !102
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.bd, align 4, !alias.scope !103
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = load i64, ptr %0, align 8, !range !16, !alias.scope !103, !noundef !3
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.u, label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit3

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %0, align 8, !alias.scope !103
  store ptr %i.av, ptr %i.bg, align 8, !alias.scope !103
  br label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit3

_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit3: ; preds = %bb.t, %bb.u
  %i.bh = load ptr, ptr %i.au, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bi = load ptr, ptr %i.ax, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.bj = tail call noundef i8 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19has_own_parentheses(ptr noundef nonnull align 8 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bi) ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 1
  br i1 %i.bk, label %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit3
  %i.bl = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.bh) ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bi, i64 noundef %i.bm, ptr noundef %i.bn)
  %.not = icmp ne i8 %i.bj, 2
  %or.cond.not = or i1 %.not, %i.bo
  br i1 %or.cond.not, label %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread, label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i8 1, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !106
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !106, !nonnull !3, !align !6, !noundef !3
  %i.bv = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.br), !noalias !106, !inline_history !102 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0
  %i.bx = extractvalue { i64, ptr } %i.bv, 1
  %i.by = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bu, i64 noundef %i.bw, ptr noundef %i.bx), !noalias !106, !inline_history !102
  br i1 %i.by, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitor19visit_subexpression(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.br), !inline_history !102
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i8 1, ptr %i.bp, align 4, !alias.scope !106
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = load i64, ptr %0, align 8, !range !16, !alias.scope !106, !noundef !3
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.aa, label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit4

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %0, align 8, !alias.scope !106
  store ptr %i.br, ptr %i.cb, align 8, !alias.scope !106
  br label %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit4

_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit4: ; preds = %bb.z, %bb.aa
  store ptr %1, ptr %i.bs, align 8
  br label %bb.p

bb.ab:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cd = load i8, ptr %i.cc, align 4, !range !98, !noundef !3
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.au, label %bb.d

bb.ac:                                            ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.cf, align 8
  store i8 11, ptr %i.g, align 1
  br label %bb.d

bb.ad:                                            ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !noundef !3
  %i.ci = add i32 %i.ch, %i.f
  store i32 %i.ci, ptr %i.cg, align 8
  br label %bb.d

bb.ae:                                            ; preds = %switch.lookup
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.cj, align 8
  store i8 %switch.load, ptr %i.m, align 1
  br label %bb.d

bb.af:                                            ; preds = %switch.lookup
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !noundef !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8
  br label %bb.d

bb.ag:                                            ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !range !96, !noundef !3
  %i.cp = tail call i8 @llvm.ucmp.i8.i8(i8 %i.co, i8 3)
  switch i8 %i.cp, label %bb.b [
    i8 -1, label %bb.ah
    i8 0, label %bb.ai
    i8 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.cq, align 8
  store i8 3, ptr %i.cn, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !noundef !3
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.e
  %i.cu = load i64, ptr %0, align 8, !range !16, !noundef !3
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %bb.d

bb.ak:                                            ; preds = %bb.aj
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.al:                                            ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.cw, align 8
  store i8 12, ptr %i.u, align 1
  br label %bb.d

bb.am:                                            ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !noundef !3
  %i.cz = add i32 %i.cy, 2
  store i32 %i.cz, ptr %i.cx, align 8
  br label %bb.d

bb.an:                                            ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.da, align 4
  br label %bb.p

bb.ao:                                            ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ad, ptr %i.db, align 8
  store i8 10, ptr %i.ae, align 1
  br label %bb.d

bb.ap:                                            ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !noundef !3
  %i.de = add i32 %i.dd, %i.ad
  store i32 %i.de, ptr %i.dc, align 8
  br label %bb.d

_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread: ; preds = %bb.v, %_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr.exit3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !96, !noundef !3
  %i.dh = tail call i8 @llvm.ucmp.i8.i8(i8 %i.dg, i8 1)
  switch i8 %i.dh, label %bb.b [
    i8 -1, label %bb.aq
    i8 0, label %bb.ar
    i8 1, label %bb.as
  ]

bb.aq:                                            ; preds = %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.di, align 8
  store i8 1, ptr %i.df, align 1
  br label %bb.as

bb.ar:                                            ; preds = %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !noundef !3
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.v, %_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses.exit.thread, %bb.aq, %bb.ar
  store ptr %1, ptr %i.aw, align 8
  br label %bb.p

bb.at:                                            ; preds = %bb.f
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.au:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.dm, align 4
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs7_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_15CallChainLayout15from_expression(i64 noundef range(i64 0, 33) %0, ptr noundef captures(address, read_provenance) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.a
  %.sroa.07.0.ph = phi i32 [ %.sroa.07.1, %bb.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.05.0.ph = phi i32 [ %.sroa.05.0, %bb.i ], [ 0, %bb.a ]
  %.sroa.4.0.ph = phi ptr [ %i.y, %bb.i ], [ %1, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.x, %bb.i ], [ %0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.g
  %.sroa.05.0 = phi i32 [ %.sroa.05.1, %bb.g ], [ %.sroa.05.0.ph, %.outer ] ; 4 uses
  %.sroa.4.0 = phi ptr [ %i.t, %bb.g ], [ %.sroa.4.0.ph, %.outer ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %i.s, %bb.g ], [ %.sroa.0.0.ph, %.outer ]
  switch i64 %.sroa.0.0, label %.loopexit [
    i64 16, label %bb.d
    i64 25, label %bb.c
    i64 26, label %bb.d
  ]

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.09.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.a = add i32 %.sroa.09.0, %.sroa.05.0
  %i.b = icmp ult i32 %i.a, 2                     ; 2 uses
  %i.c = add i32 %.sroa.09.0, %.sroa.07.0.ph
  %.sroa.3.0 = select i1 %i.b, i32 undef, i32 %i.c
  %.sroa.04.0 = select i1 %i.b, i32 5, i32 0
  %i.d = insertvalue { i32, i32 } poison, i32 %.sroa.04.0, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 32 ; 2 uses
  %i.g = tail call { i64, ptr } @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10expressionNtNtB4_9generated7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtBN_4ExprEE4from(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, i64 noundef %i.h, ptr noundef %i.i)
  br i1 %i.j, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0) ]
  %i.k = tail call { i64, ptr } @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10expressionNtNtB4_9generated7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtBN_4ExprEE4from(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  %i.n = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, i64 noundef %i.l, ptr noundef %i.m)
  br i1 %i.n, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !71, !noundef !3
  switch i32 %i.p, label %bb.g [
    i32 16, label %bb.f
    i32 26, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.q = add i32 %.sroa.05.0, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.05.1 = phi i32 [ %.sroa.05.0, %bb.e ], [ %i.q, %bb.f ]
  %i.r = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  br label %bb.b

bb.h:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %.sroa.4.0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !range !71, !noundef !3
  switch i32 %i.v, label %bb.j [
    i32 16, label %bb.i
    i32 26, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.j
  %.sroa.07.1 = phi i32 [ %.sroa.07.0.ph, %bb.h ], [ %.sroa.07.0.ph, %bb.h ], [ %i.z, %bb.j ]
  %i.w = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.u) ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1
  br label %.outer

bb.j:                                             ; preds = %bb.h
  %i.z = add i32 %.sroa.07.0.ph, 1
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs7Ma6rQP8bRy_14ruff_formatter17format_extensionsINtB4_8MemoizedINtNtB6_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB1F_9statement11stmt_assignNtB2N_30FormatStatementsLastExpressionINtB6_6FormatB1B_E3fmts0_0EB1B_E7inspectB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 24)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB57_9statement11stmt_assignNtB6f_30FormatStatementsLastExpressionINtB1B_6FormatB53_E3fmts0_0EB53_E7inspect0E0zEB57_(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %1) ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !93, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 8, !range !24, !noundef !3
  switch i8 %i.f, label %bb.g [
    i8 -1, label %bb.d
    i8 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.o, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.q, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs7Ma6rQP8bRy_14ruff_formatter17format_extensionsINtB4_8MemoizedINtNtB6_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB1F_9statement11stmt_assignNtB2N_30FormatStatementsLastExpressionINtB6_6FormatB1B_E3fmts5_0EB1B_E7inspectB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 24)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB57_9statement11stmt_assignNtB6f_30FormatStatementsLastExpressionINtB1B_6FormatB53_E3fmts5_0EB53_E7inspect0E0zEB57_(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %1) ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !93, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 8, !range !24, !noundef !3
  switch i8 %i.f, label %bb.g [
    i8 -1, label %bb.d
    i8 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement16stmt_import_from20FormatStmtImportFromINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated14StmtImportFromE3fmtB8_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.ay = load ptr, ptr %i.j, align 8, !alias.scope !1452, !nonnull !3, !noundef !3 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1452, !noundef !3
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !noalias !1452
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split: ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit, %bb.v
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !1462, !nonnull !3, !noundef !3 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1462, !noundef !3
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !noalias !1462
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

bb.w:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs4NRVxsYgnAr_4core3anyNtB5_6TypeIdNtNtB7_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_13WithNodeLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator0INtB7_5FnMutTRRNtBU_5TokenEE8call_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterators0_0INtB7_5FnMutTRRNtBU_5TokenEE8call_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression13expr_unary_opNtB2_17FormatExprUnaryOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprUnaryOpE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression7expr_ifNtB4_12FormatExprIfINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated6ExprIfE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_dictNtB2_14FormatExprDictINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprDictE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression8expr_setNtB2_13FormatExprSetINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprSetE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_list_compNtB2_18FormatExprListCompINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprListCompE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression13expr_set_compNtB2_17FormatExprSetCompINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprSetCompE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_dict_compNtB2_18FormatExprDictCompINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_generatorNtB4_19FormatExprGeneratorINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_awaitNtB2_15FormatExprAwaitINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprAwaitE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_yieldNtB5_15FormatExprYieldINtB9_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprYieldE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15expr_yield_fromNtB2_19FormatExprYieldFromINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprYieldFromE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_callNtB4_14FormatExprCallINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression13expr_f_stringNtB2_17FormatExprFStringINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprFStringE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression13expr_t_stringNtB2_17FormatExprTStringINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprTStringE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19expr_string_literalNtB4_23FormatExprStringLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprStringLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression18expr_bytes_literalNtB2_22FormatExprBytesLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated16ExprBytesLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19expr_number_literalNtB2_23FormatExprNumberLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprNumberLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression20expr_boolean_literalNtB2_24FormatExprBooleanLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated18ExprBooleanLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression17expr_none_literalNtB2_21FormatExprNoneLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression21expr_ellipsis_literalNtB2_25FormatExprEllipsisLiteralINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated19ExprEllipsisLiteralE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_attributeNtB4_19FormatExprAttributeINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_subscriptNtB4_19FormatExprSubscriptINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_starredNtB2_17FormatExprStarredINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_nameNtB2_14FormatExprNameINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_listNtB2_14FormatExprListINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprListE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_tupleNtB4_15FormatExprTupleINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_sliceNtB2_15FormatExprSliceINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprSliceE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression23expr_ipy_escape_commandNtB2_26FormatExprIpyEscapeCommandINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB6_25JoinCommaSeparatedBuilder7entriesRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterB1x_ENCNCNvXNtNtB8_9statement16stmt_import_fromNtB3J_20FormatStmtImportFromINtB8_14FormatNodeRuleNtNtB1B_9generated14StmtImportFromE10fmt_fields00EINtCs7Ma6rQP8bRy_14ruff_formatter17FormatRefWithRuleB1x_NtNtNtB8_5other5alias11FormatAliasNtNtB8_7context15PyFormatContextEEB8_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB5_25JoinCommaSeparatedBuilder6finish(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8node_key18NodeRefEqualityKeyNtNtBY_3map5EntryEE3newB10_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_exprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression33CanOmitOptionalParenthesesVisitorEB1b_(ptr noalias noundef align 8 dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10expressionNtNtB4_9generated7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtBN_4ExprEE4from(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef range(i64 0, 33), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtB1B_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10FormatExprNtNtB5R_7context15PyFormatContextEB6Q_E7inspect0E0zEB5R_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB57_9statement11stmt_assignNtB6f_30FormatStatementsLastExpressionINtB1B_6FormatB53_E3fmts0_0EB53_E7inspect0E0zEB57_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB57_9statement11stmt_assignNtB6f_30FormatStatementsLastExpressionINtB1B_6FormatB53_E3fmts5_0EB53_E7inspect0E0zEB57_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB57_9statement11stmt_assignNtB6f_30FormatStatementsLastExpressionINtB1B_6FormatB53_E3fmtsc_0EB53_E7inspect0E0zEB57_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtB1B_17format_extensionsINtB3U_8MemoizedRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign17AnyBeforeOperatorNtNtB4G_7context15PyFormatContextE7inspect0E0zEB4G_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer8elementsB15_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), i64 noundef range(i64 0, 33), ptr noundef, i64 noundef range(i64 -1, 94), ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceComment15partition_pointNCNvNtBz_10expression32format_with_parentheses_comments0EBz_(ptr noundef nonnull align 4, i64 noundef range(i64 0, 768614336404564651), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceComment15partition_pointNCNvNtBz_10expression32format_with_parentheses_commentss_0EBz_(ptr noundef nonnull align 4, i64 noundef range(i64 0, 768614336404564651), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_19FormatParenthesizedINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10type_param19type_param_type_var22FormatTypeParamTypeVarINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated16TypeParamTypeVarE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10type_param25type_param_type_var_tuple27FormatTypeParamTypeVarTupleINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated21TypeParamTypeVarTupleE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10type_param21type_param_param_spec24FormatTypeParamParamSpecINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprNamedEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_26InParenthesesOnlyLineBreakINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_5GroupNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBW_E3fmtB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB4_4LineINtB6_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceComment15partition_pointNCNvXNtNtBz_10expression11expr_lambdaNtB1U_16FormatExprLambdaINtBz_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaE10fmt_fields0EBz_(ptr noundef nonnull align 4, i64 noundef range(i64 0, 768614336404564651), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB5_8Comments17contains_comments(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer5stateB15_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer8snapshotB15_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer16restore_snapshotB15_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXs1_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB5_11parentheses16NeedsParentheses17needs_parentheses(ptr noundef nonnull align 8, i64 noundef range(i64 0, 94), ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_12FitsExpandedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB14_E3fmtB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtMatchEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement6clauseNtB5_18FormatClauseHeaderINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_13WithNodeLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEE3newB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_11BlockIndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB13_E3fmtB17_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format33leading_alternate_branch_commentsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 4, i64 noundef range(i64 0, 768614336404564651), ptr noundef align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB4_36FormatLeadingAlternateBranchCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_30FormatStatementsLastExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB6_30FormatStatementsLastExpression13left_to_rightRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13StmtTypeAliasEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other10identifier22DotDelimitedIdentifierEINtB5_6FormatNtNtB1h_7context15PyFormatContextE3fmtB1h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated14StmtImportFromEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB4_21ParenthesizeIfExpandsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtB1B_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10FormatExprNtNtB5S_7context15PyFormatContextEB6R_EINtB1B_6FormatB6R_E3fmt0E0zEB5S_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB58_9statement11stmt_assignNtB6g_30FormatStatementsLastExpressionINtB1B_6FormatB54_E3fmts0_0EB54_EIB7o_B54_E3fmt0E0zEB58_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB58_9statement11stmt_assignNtB6g_30FormatStatementsLastExpressionINtB1B_6FormatB54_E3fmts5_0EB54_EIB7o_B54_E3fmt0E0zEB58_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB58_9statement11stmt_assignNtB6g_30FormatStatementsLastExpressionINtB1B_6FormatB54_E3fmtsc_0EB54_EIB7o_B54_E3fmt0E0zEB58_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB58_9statement11stmt_assignNtB6g_30FormatStatementsLastExpressionINtB1B_6FormatB54_E3fmtsg_0EB54_EIB7o_B54_E3fmt0E0zEB58_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedINtNtB1B_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB58_9statement11stmt_assignNtB6g_30FormatStatementsLastExpressionINtB1B_6FormatB54_E3fmtsk_0EB54_EIB7o_B54_E3fmt0E0zEB58_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1B_11diagnostics11FormatErrorEE15get_or_try_initNCINvB2_11get_or_initNCNvXs0_NtB1B_17format_extensionsINtB3V_8MemoizedRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign17AnyBeforeOperatorNtNtB4H_7context15PyFormatContextEINtB1B_6FormatB5Y_E3fmt0E0zEB4H_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB8_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_25FormatOptionalParenthesesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 1, 0) i32 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE8group_idB12_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_19BestFitParenthesizeNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB1b_E3fmtB1f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression8expr_set13FormatExprSetINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprSetE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_1
begin_hunk_2_@_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19expr_number_literal23FormatExprNumberLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprNumberLiteralE3fmtB8_
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19expr_number_literal23FormatExprNumberLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprNumberLiteralE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression20expr_boolean_literal24FormatExprBooleanLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated18ExprBooleanLiteralE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression17expr_none_literal21FormatExprNoneLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression21expr_ellipsis_literal25FormatExprEllipsisLiteralINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated19ExprEllipsisLiteralE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 4, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_attribute19FormatExprAttributeINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_subscript19FormatExprSubscriptINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other10parameters16FormatParametersINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4, ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter6bufferNtB2_14BufferSnapshot15unwrap_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE8truncateCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10type_param11type_params16FormatTypeParamsINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtCs7Ma6rQP8bRy_14ruff_formatter6buffer14clean_interned(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsb_NtCs7Ma6rQP8bRy_14ruff_formatter14format_elementNtB5_19BestFittingVariants9most_flat(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_24MaybeParenthesizePatternINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB5_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNCNvXs_NtNtB1I_5other10match_caseNtB2R_15FormatMatchCaseINtB1I_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseE10fmt_fields00EEINtB5_6FormatB1E_E3fmtB1I_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement6clauseNtB5_12FormatClauseINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementE9drop_slowBH_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order27walk_parameter_with_defaultNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression33CanOmitOptionalParenthesesVisitorEB1u_(ptr noalias noundef align 8 dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB8_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprNamedNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_14SourcePositionINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1m_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprNamedNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders14SourcePositionEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1Z_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtMatchNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtMatchNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtContinueNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtContinueNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated13StmtTypeAliasNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated13StmtTypeAliasNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated14StmtImportFromNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated14StmtImportFromNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn }
attributes #23 = { nounwind }
attributes #24 = { "function-inline-cost-multiplier"="2" }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i64 8}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1Q_11diagnostics11FormatErrorEEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!9 = distinct !{!9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1Q_11diagnostics11FormatErrorEEECs8CpBcHC8tKo_21ruff_python_formatter"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB11_NtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1R_11diagnostics11FormatErrorEEEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!12 = distinct !{!12, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB11_NtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1R_11diagnostics11FormatErrorEEEECs8CpBcHC8tKo_21ruff_python_formatter"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBC_NtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1r_11diagnostics11FormatErrorEEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBC_NtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1r_11diagnostics11FormatErrorEEECs8CpBcHC8tKo_21ruff_python_formatter"}
!16 = !{i64 0, i64 3}
!17 = !{!14, !11, !8}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1n_11diagnostics11FormatErrorEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!20 = distinct !{!20, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtB1n_11diagnostics11FormatErrorEECs8CpBcHC8tKo_21ruff_python_formatter"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter"}
!24 = !{i8 -1, i8 11}
!25 = !{!22, !19, !14, !11, !8}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!28 = distinct !{!28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter"}
!29 = !{!27, !22, !19, !14, !11, !8}
!30 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!36 = distinct !{!36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!39 = distinct !{!39, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter"}
!40 = !{!38, !35, !32, !27, !22, !19, !14, !11, !8}
!41 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter, null}
!42 = !{i64 0, i64 -9223372036854775808}
!43 = !{i64 1, i64 536870913}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!46 = distinct !{!46, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter"}
!47 = !{i8 0, i8 11}
!48 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementECs8CpBcHC8tKo_21ruff_python_formatter, null}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!51 = distinct !{!51, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!54 = distinct !{!54, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!57 = distinct !{!57, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter"}
!58 = !{!56, !53, !50, !45}
!59 = distinct !{null}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!62 = distinct !{!62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedECs8CpBcHC8tKo_21ruff_python_formatter"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!65 = distinct !{!65, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter: argument 0"}
!68 = distinct !{!68, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcSNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter"}
!69 = !{!67, !64, !61}
!70 = distinct !{null}
!71 = !{i32 0, i32 33}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_bool_opNtB2_16FormatExprBoolOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpE10fmt_fields: argument 0"}
!74 = distinct !{!74, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_bool_opNtB2_16FormatExprBoolOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpE10fmt_fields"}
!75 = distinct !{!75, !74, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_bool_opNtB2_16FormatExprBoolOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpE10fmt_fields: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11expr_bin_opNtB2_15FormatExprBinOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpE10fmt_fields: argument 0"}
!78 = distinct !{!78, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11expr_bin_opNtB2_15FormatExprBinOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpE10fmt_fields"}
!79 = distinct !{!79, !78, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11expr_bin_opNtB2_15FormatExprBinOpINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpE10fmt_fields: argument 1"}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_compareNtB2_17FormatExprCompareINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareE10fmt_fields: argument 0"}
!82 = distinct !{!82, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_compareNtB2_17FormatExprCompareINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareE10fmt_fields"}
!83 = distinct !{!83, !82, !"_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_compareNtB2_17FormatExprCompareINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareE10fmt_fields: argument 1"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RNvXs24_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format: argument 0"}
!86 = distinct !{!86, !"_RNvXs24_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvXs2v_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format: argument 0"}
!89 = distinct !{!89, !"_RNvXs2v_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvXs2y_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format: argument 0"}
!92 = distinct !{!92, !"_RNvXs2y_NtCs8CpBcHC8tKo_21ruff_python_formatter9generatedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptINtNtB8_13shared_traits8AsFormatNtNtB8_7context15PyFormatContextE6format"}
!93 = !{i64 0, i64 2}
!94 = !{i64 0, i64 -9223372036854775807}
!95 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!96 = !{i8 0, i8 13}
!97 = !{i8 0, i8 4}
!98 = !{i8 0, i8 2}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr: argument 0"}
!101 = distinct !{!101, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr"}
!102 = !{ptr @_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr: argument 0"}
!105 = distinct !{!105, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr: argument 0"}
!108 = distinct !{!108, !"_RNvXs5_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_33CanOmitOptionalParenthesesVisitorNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_expr"}
!109 = !{i64 -2, i64 -9223372036854775808}
!110 = !{i64 -1, i64 -9223372036854775808}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29can_omit_optional_parentheses16is_parenthesized: argument 0"}
!113 = distinct !{!113, !"_RNvNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29can_omit_optional_parentheses16is_parenthesized"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RNvNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29can_omit_optional_parentheses16is_parenthesized: argument 0"}
!116 = distinct !{!116, !"_RNvNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29can_omit_optional_parentheses16is_parenthesized"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataEEB19_: argument 0"}
!122 = distinct !{!122, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataEEB19_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_: argument 0"}
!125 = distinct !{!125, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_"}
!126 = !{!124, !121, !118}
!127 = !{!128, !130, !131}
!128 = distinct !{!128, !129, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 0"}
!129 = distinct !{!129, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_"}
!130 = distinct !{!130, !129, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 1"}
!131 = distinct !{!131, !129, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 2"}
!132 = !{ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_}
!133 = !{i32 -1, i32 4}
!134 = !{!135, !137, !138}
!135 = distinct !{!135, !136, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 0"}
!136 = distinct !{!136, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_"}
!137 = distinct !{!137, !136, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 1"}
!138 = distinct !{!138, !136, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 2"}
!139 = !{!140, !142, !143}
!140 = distinct !{!140, !141, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 0"}
!141 = distinct !{!141, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_"}
!142 = distinct !{!142, !141, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 1"}
!143 = distinct !{!143, !141, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 2"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 0"}
!146 = distinct !{!146, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_"}
!147 = !{!145, !148, !149}
!148 = distinct !{!148, !146, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 1"}
!149 = distinct !{!149, !146, !"_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_: argument 2"}
!150 = !{ptr @_RNvXsr_Cs7Ma6rQP8bRy_14ruff_formatterINtB5_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10FormatExprNtNtB1Q_7context15PyFormatContextEINtB5_6FormatB2P_E3fmtB1Q_, ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_}
!151 = !{!148, !149}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_: argument 0"}
!154 = distinct !{!154, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataEEB19_: argument 0"}
!157 = distinct !{!157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataEEB19_"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RNvXsw_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_: argument 0"}
end_hunk_2
