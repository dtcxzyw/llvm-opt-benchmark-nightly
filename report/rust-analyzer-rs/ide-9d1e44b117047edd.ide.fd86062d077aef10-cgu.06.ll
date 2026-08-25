Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RINvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB3_10SyntaxText5sliceINtNtNtCshzWfHUSfYae_4core3ops5range7RangeToNtNtCsuAhG64lL82_9text_size4size8TextSizeEECslLuZgPVt6hg_3ide:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.j, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1G_NtCshzWfHUSfYae_4core3fmtTINtNtB8_6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEBw_ENtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.f, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.g, ptr %i.l, align 4
  %i.m = load i32, ptr %i.k, align 4, !noundef !19
  %.not31 = icmp ugt i32 %i.g, %i.m
  br i1 %.not31, label %bb.d, label %bb.e, !prof !169

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.n, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !19 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.f, !prof !167

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 4
  store ptr %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %i.u, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB3_10SyntaxText5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromNtNtCsuAhG64lL82_9text_size4size8TextSizeEECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !noundef !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !noundef !19 ; 4 uses
  %i.i = sub i32 %i.h, %i.f
  %.not = icmp ugt i32 %2, %i.i
  br i1 %.not, label %bb.b, label %bb.c, !prof !167

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = add i32 %i.f, %2                         ; 4 uses
  %.not29 = icmp ugt i32 %i.j, %i.h
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 1, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %2, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1G_NtCshzWfHUSfYae_4core3fmtTINtNtB8_6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEBw_ENtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.j, ptr %i.b, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.h, ptr %i.n, align 4
  %.not32 = icmp ugt i32 %i.f, %i.j
  br i1 %.not32, label %bb.f, label %bb.g, !prof !169

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !19 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.h, !prof !167

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.q, align 4
  store ptr %i.p, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.v, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !170, !noundef !19 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !170, !noundef !19
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !170, !noundef !19
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !170, !noundef !19
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
    i32 13, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
    i32 12, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
    i32 11, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
    i32 10, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
    i32 9, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !184, !noundef !19
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !184, !noundef !19
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit: ; preds = %bb.e, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.021 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.019 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.021, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !185, !noundef !19 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.021, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !185, !noundef !19 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.021, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !185, !noundef !19 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.021, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !185, !noundef !19
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslLuZgPVt6hg_3ide.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !199, !noundef !19
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !199, !noundef !19
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.021, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslLuZgPVt6hg_3ide.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.021 to i64
  %i.dp = sub i64 %.sroa.14.019, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i, %bb.t, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslLuZgPVt6hg_3ide.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB1N_9generated6tokens7CStringNtB1L_8IsString8unescapeQNCNvYB2o_B2X_19escaped_char_ranges0E0ECslLuZgPVt6hg_3ide:bb.a

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i45.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i43.i.i.i
  %i.dv = icmp ne ptr %i.dt, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i8 %i.dq, -17
  %spec.select.v = select i1 %i.dw, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.039.7.a, i64 %spec.select.v
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit

bb.n:                                             ; preds = %bb.h
  %.not.i.i37.i.i = icmp eq ptr %.sroa.039.3, %.sroa.43.0.ph76
  br i1 %.not.i.i37.i.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.039.3, i64 1 ; 3 uses
  %i.dy = load i8, ptr %.sroa.039.3, align 1, !noalias !1002, !noundef !19 ; 5 uses
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i: ; preds = %bb.o
  %i.ea = and i8 %i.dy, 31
  %i.eb = zext nneg i8 %i.ea to i32               ; 3 uses
  %i.ec = icmp ne ptr %i.dx, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.039.3, i64 2 ; 3 uses
  %i.ee = load i8, ptr %i.dx, align 1, !noalias !1002, !noundef !19
  %i.ef = shl nuw nsw i32 %i.eb, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32               ; 2 uses
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = icmp samesign ugt i8 %i.dy, -33
  br i1 %i.ej, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ek = zext nneg i8 %i.dy to i32
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i
  %i.el = icmp ne ptr %i.ed, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.039.3, i64 3 ; 3 uses
  %i.en = load i8, ptr %i.ed, align 1, !noalias !1002, !noundef !19
  %i.eo = shl nuw nsw i32 %i.eh, 6
  %i.ep = and i8 %i.en, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq            ; 2 uses
  %i.es = shl nuw nsw i32 %i.eb, 12
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = icmp samesign ugt i8 %i.dy, -17
  br i1 %i.eu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i41.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i41.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i
  %i.ev = icmp ne ptr %i.em, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.039.3, i64 4
  %i.ex = load i8, ptr %i.em, align 1, !noalias !1002, !noundef !19
  %i.ey = shl nuw nsw i32 %i.eb, 18
  %i.ez = and i32 %i.ey, 1835008
  %i.fa = shl nuw nsw i32 %i.er, 6
  %i.fb = and i8 %i.ex, 63
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.ez
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i41.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i
  %.sroa.039.4 = phi ptr [ %i.dx, %bb.p ], [ %i.ew, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i41.i.i ], [ %i.em, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i ], [ %i.ed, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i ] ; 7 uses
  %spec.select.i.i.i.i = phi i32 [ %i.ek, %bb.p ], [ %i.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i41.i.i ], [ %i.et, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i40.i.i ], [ %i.ei, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i38.i.i ]
  %cond.i.i.i = icmp ne i32 %spec.select.i.i.i.i, 123
  %.not.i45.i.i.i = icmp eq ptr %.sroa.039.4, %.sroa.43.0.ph76
  %or.cond63 = select i1 %cond.i.i.i, i1 true, i1 %.not.i45.i.i.i
  br i1 %or.cond63, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.039.4, i64 1 ; 3 uses
  %i.fg = load i8, ptr %.sroa.039.4, align 1, !noalias !1009, !noundef !19 ; 5 uses
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i: ; preds = %bb.q
  %i.fi = and i8 %i.fg, 31
  %i.fj = zext nneg i8 %i.fi to i32               ; 3 uses
  %i.fk = icmp ne ptr %i.ff, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.039.4, i64 2 ; 3 uses
  %i.fm = load i8, ptr %i.ff, align 1, !noalias !1009, !noundef !19
  %i.fn = shl nuw nsw i32 %i.fj, 6
  %i.fo = and i8 %i.fm, 63
  %i.fp = zext nneg i8 %i.fo to i32               ; 2 uses
  %i.fq = or disjoint i32 %i.fn, %i.fp
  %i.fr = icmp samesign ugt i8 %i.fg, -33
  br i1 %i.fr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.fs = zext nneg i8 %i.fg to i32
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i
  %i.ft = icmp ne ptr %i.fl, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.039.4, i64 3 ; 3 uses
  %i.fv = load i8, ptr %i.fl, align 1, !noalias !1009, !noundef !19
  %i.fw = shl nuw nsw i32 %i.fp, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fw, %i.fy            ; 2 uses
  %i.ga = shl nuw nsw i32 %i.fj, 12
  %i.gb = or disjoint i32 %i.fz, %i.ga
  %i.gc = icmp samesign ugt i8 %i.fg, -17
  br i1 %i.gc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i49.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i49.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i
  %i.gd = icmp ne ptr %i.fu, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.039.4, i64 4
  %i.gf = load i8, ptr %i.fu, align 1, !noalias !1009, !noundef !19
  %i.gg = shl nuw nsw i32 %i.fj, 18
  %i.gh = and i32 %i.gg, 1835008
  %i.gi = shl nuw nsw i32 %i.fz, 6
  %i.gj = and i8 %i.gf, 63
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = or disjoint i32 %i.gi, %i.gk
  %i.gm = or disjoint i32 %i.gl, %i.gh
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i

_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i49.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i, %bb.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i
  %.sroa.039.6 = phi ptr [ %i.ff, %bb.r ], [ %i.ge, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i49.i.i.i ], [ %i.fu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i ], [ %i.fl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i ] ; 5 uses
  %spec.select.i47.i.i.i = phi i32 [ %i.fs, %bb.r ], [ %i.gm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i49.i.i.i ], [ %i.gb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i48.i.i.i ], [ %i.fq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i46.i.i.i ] ; 4 uses
  switch i32 %spec.select.i47.i.i.i, label %bb.s [
    i32 125, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit
    i32 95, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit
  ]

bb.s:                                             ; preds = %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i
  %i.gn = icmp samesign ugt i32 %spec.select.i47.i.i.i, 57
  %i.go = add nsw i32 %spec.select.i47.i.i.i, -65
  %i.gp = and i32 %i.go, -34
  %i.gq = add nuw nsw i32 %i.gp, 10
  %i.gr = add nsw i32 %spec.select.i47.i.i.i, -48
  %.sroa.02.0.i.i39.i.i = select i1 %i.gn, i32 %i.gq, i32 %i.gr
  %i.gs = icmp ugt i32 %.sroa.02.0.i.i39.i.i, 15
  %.not.i516677.i.i.i = icmp eq ptr %.sroa.039.6, %.sroa.43.0.ph76
  %or.cond64 = select i1 %i.gs, i1 true, i1 %.not.i516677.i.i.i
  br i1 %or.cond64, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i.backedge
  %.sroa.025.067.i.i.i = phi i32 [ %.sroa.025.067.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ 1, %bb.s ] ; 2 uses
  %i.gt = phi ptr [ %i.ic, %.lr.ph.i.i.i.backedge ], [ %.sroa.039.6, %bb.s ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  %i.gv = load i8, ptr %i.gt, align 1, !noalias !1014, !noundef !19 ; 5 uses
  %i.gw = icmp sgt i8 %i.gv, -1
  br i1 %i.gw, label %bb.t, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gx = and i8 %i.gv, 31
  %i.gy = zext nneg i8 %i.gx to i32               ; 3 uses
  %i.gz = icmp ne ptr %i.gu, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  %i.hb = load i8, ptr %i.gu, align 1, !noalias !1014, !noundef !19
  %i.hc = shl nuw nsw i32 %i.gy, 6
  %i.hd = and i8 %i.hb, 63
  %i.he = zext nneg i8 %i.hd to i32               ; 2 uses
  %i.hf = or disjoint i32 %i.hc, %i.he
  %i.hg = icmp samesign ugt i8 %i.gv, -33
  br i1 %i.hg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.hh = zext nneg i8 %i.gv to i32
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i
  %i.hi = icmp ne ptr %i.ha, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 3 uses
  %i.hk = load i8, ptr %i.ha, align 1, !noalias !1014, !noundef !19
  %i.hl = shl nuw nsw i32 %i.he, 6
  %i.hm = and i8 %i.hk, 63
  %i.hn = zext nneg i8 %i.hm to i32
  %i.ho = or disjoint i32 %i.hl, %i.hn            ; 2 uses
  %i.hp = shl nuw nsw i32 %i.gy, 12
  %i.hq = or disjoint i32 %i.ho, %i.hp
  %i.hr = icmp samesign ugt i8 %i.gv, -17
  br i1 %i.hr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i55.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i55.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i
  %i.hs = icmp ne ptr %i.hj, %.sroa.43.0.ph76
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hu = load i8, ptr %i.hj, align 1, !noalias !1014, !noundef !19
  %i.hv = shl nuw nsw i32 %i.gy, 18
  %i.hw = and i32 %i.hv, 1835008
  %i.hx = shl nuw nsw i32 %i.ho, 6
  %i.hy = and i8 %i.hu, 63
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hx, %i.hz
  %i.ib = or disjoint i32 %i.ia, %i.hw
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i55.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i, %bb.t, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i
  %i.ic = phi ptr [ %i.gu, %bb.t ], [ %i.ha, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i ], [ %i.ht, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i55.i.i.i ], [ %i.hj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i ] ; 7 uses
  %spec.select.i53.i.i.i = phi i32 [ %i.hh, %bb.t ], [ %i.hf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i52.i.i.i ], [ %i.ib, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i55.i.i.i ], [ %i.hq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i54.i.i.i ] ; 4 uses
  switch i32 %spec.select.i53.i.i.i, label %bb.u [
    i32 125, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit
    i32 95, label %bb.v
  ]

bb.u:                                             ; preds = %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i
  %i.id = icmp samesign ugt i32 %spec.select.i53.i.i.i, 57
  %i.ie = add nsw i32 %spec.select.i53.i.i.i, -65
  %i.if = and i32 %i.ie, -34
  %i.ig = add nuw nsw i32 %i.if, 10
  %i.ih = add nsw i32 %spec.select.i53.i.i.i, -48
  %.sroa.02.0.i57.i.i.i = select i1 %i.id, i32 %i.ig, i32 %i.ih
  %i.ii = icmp ult i32 %.sroa.02.0.i57.i.i.i, 16
  br i1 %i.ii, label %bb.w, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit

bb.v:                                             ; preds = %bb.w, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i
  %.sroa.025.1.i.i.i = phi i32 [ %i.ij, %bb.w ], [ %.sroa.025.067.i.i.i, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i ]
  %.not.i51.i.i.i = icmp eq ptr %i.ic, %.sroa.43.0.ph76
  br i1 %.not.i51.i.i.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %bb.v, %.outer.i.i.i
  %.sroa.025.067.i.i.i.be = phi i32 [ %.sroa.025.1.i.i.i, %bb.v ], [ %i.ij, %.outer.i.i.i ]
  br label %.lr.ph.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ij = add i32 %.sroa.025.067.i.i.i, 1         ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 6
  br i1 %i.ik, label %bb.v, label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.w
  %.not.i5166.i.i.i = icmp eq ptr %i.ic, %.sroa.43.0.ph76
  br i1 %.not.i5166.i.i.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit, label %.lr.ph.i.i.i.backedge

_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide.exit32: ; preds = %bb.e
  %i.il = ptrtoint ptr %i.at to i64
  %i.im = sub nuw i64 %i.c, %i.il                 ; 6 uses
  %i.in = icmp eq ptr %i.at, %.sroa.43.0.ph76
  br i1 %i.in, label %.preheader.i.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide.exit32, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i
  %i.io = phi ptr [ %i.iq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i ], [ %i.at, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide.exit32 ] ; 2 uses
  %i.ip = phi i64 [ %i.ir, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i ], [ 0, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide.exit32 ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.io, align 1, !noalias !1019, !noundef !19
  switch i8 %.val6.i.i, label %.loopexit.i [
    i8 32, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i
    i8 9, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i
    i8 10, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i
    i8 13, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i
  ]

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 2 uses
  %i.ir = add nuw i64 %i.ip, 1
  %i.is = icmp eq ptr %i.iq, %.sroa.43.0.ph76
  br i1 %i.is, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i, %.lr.ph.i.i
  %.sroa.09.0.i = phi i64 [ %i.ip, %.lr.ph.i.i ], [ %i.im, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtBa_3ffi5c_str4CStrNtB2M_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB4N_9generated6tokens7CStringNtB4L_8IsString8unescapeQNCNvYB5o_B5X_19escaped_char_ranges0E0E0E0E0E0CslLuZgPVt6hg_3ide.exit.i.i ] ; 11 uses
  %i.it = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %i.it, label %.preheader.i.i.thread.i, label %bb.x

.preheader.i.i.thread.i:                          ; preds = %.loopexit.i, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide.exit32
  %i.iu = add i64 %.reass134, 2
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.x:                                             ; preds = %.loopexit.i
  %.not.i.i33 = icmp ult i64 %.sroa.09.0.i, %i.im
  br i1 %.not.i.i33, label %bb.y, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.x
  %i.iv = icmp eq i64 %.sroa.09.0.i, %i.im
  br i1 %i.iv, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.iw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.09.0.i
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !1026, !noalias !1029, !noundef !19
  %i.iy = icmp sgt i8 %i.ix, -65
  br i1 %i.iy, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, label %bb.aa

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i: ; preds = %bb.y, %.split3.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.09.0.i ; 3 uses
  %i.ja = sub i64 %i.im, %.sroa.09.0.i            ; 3 uses
  %i.jb = add i64 %.reass134, 2
  %i.jc = add i64 %i.jb, %.sroa.09.0.i            ; 4 uses
  %i.jd = icmp samesign ult i64 %.sroa.09.0.i, 16
  br i1 %i.jd, label %.lr.ph.i.i.i38, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i

.lr.ph.i.i.i38:                                   ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, %bb.z
  %.sroa.01.05.i.i.i = phi i64 [ %i.jh, %bb.z ], [ 0, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.01.05.i.i.i
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !1031, !noalias !1036, !noundef !19
  %i.jg = icmp eq i8 %i.jf, 10
  br i1 %i.jg, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i38
  %i.jh = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jh, %.sroa.09.0.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i38

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i
  %i.ji = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef range(i64 0, -9223372036854775808) %.sroa.09.0.i), !noalias !1036
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.aa:                                            ; preds = %bb.y, %.split3.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.im, i64 noundef 0, i64 noundef %.sroa.09.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35, !noalias !1036
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %bb.z, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.preheader.i.i.thread.i
  %.sroa.7.03749.i = phi ptr [ %i.iz, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.iz, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i ], [ %i.at, %.preheader.i.i.thread.i ], [ %i.iz, %bb.z ] ; 7 uses
  %.sroa.9.04048.i = phi i64 [ %i.ja, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.ja, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i ], [ %i.im, %.preheader.i.i.thread.i ], [ %i.ja, %bb.z ] ; 5 uses
  %i.jl = phi i64 [ %i.jc, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.jc, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i ], [ %i.iu, %.preheader.i.i.thread.i ], [ %i.jc, %bb.z ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.7.03749.i, i64 %.sroa.9.04048.i
  %i.jn = icmp samesign eq i64 %.sroa.9.04048.i, 0
  br i1 %i.jn, label %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtB2_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB2i_9generated6tokens7CStringNtB2g_8IsString8unescapeQNCNvYB2T_B3s_19escaped_char_ranges0E0E0ECslLuZgPVt6hg_3ide.exit.thread, label %bb.ab

_RINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtB2_8Unescape8unescapeNCINvXs7_NtNtCsjJXvCMGntp8_6syntax3ast9token_extNtNtNtB2i_9generated6tokens7CStringNtB2g_8IsString8unescapeQNCNvYB2T_B3s_19escaped_char_ranges0E0E0ECslLuZgPVt6hg_3ide.exit.thread: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.03749.i) ]
  br label %.outer._crit_edge

bb.ab:                                            ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  %i.jo = load i8, ptr %.sroa.7.03749.i, align 1, !noalias !1037, !noundef !19 ; 5 uses
  %i.jp = icmp sgt i8 %i.jo, -1
  br i1 %i.jp, label %bb.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i34

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i34: ; preds = %bb.ab
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.7.03749.i, i64 1
  %i.jr = and i8 %i.jo, 31
  %i.js = zext nneg i8 %i.jr to i32               ; 3 uses
  %i.jt = icmp samesign ne i64 %.sroa.9.04048.i, 1
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = load i8, ptr %i.jq, align 1, !noalias !1037, !noundef !19
  %i.jv = shl nuw nsw i32 %i.js, 6
  %i.jw = and i8 %i.ju, 63
  %i.jx = zext nneg i8 %i.jw to i32               ; 2 uses
  %i.jy = or disjoint i32 %i.jv, %i.jx
  %i.jz = icmp samesign ugt i8 %i.jo, -33
  br i1 %i.jz, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i36, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ka = zext nneg i8 %i.jo to i32
  br label %bb.ad

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i36: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i34
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.7.03749.i, i64 2
  %i.kc = icmp samesign ne i64 %.sroa.9.04048.i, 2
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = load i8, ptr %i.kb, align 1, !noalias !1037, !noundef !19
  %i.ke = shl nuw nsw i32 %i.jx, 6
  %i.kf = and i8 %i.kd, 63
  %i.kg = zext nneg i8 %i.kf to i32
  %i.kh = or disjoint i32 %i.ke, %i.kg            ; 2 uses
  %i.ki = shl nuw nsw i32 %i.js, 12
  %i.kj = or disjoint i32 %i.kh, %i.ki
  %i.kk = icmp samesign ugt i8 %i.jo, -17
  br i1 %i.kk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i37, label %bb.ad

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i37: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i36
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.7.03749.i, i64 3
  %i.km = icmp samesign ne i64 %.sroa.9.04048.i, 3
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = load i8, ptr %i.kl, align 1, !noalias !1037, !noundef !19
  %i.ko = shl nuw nsw i32 %i.js, 18
  %i.kp = and i32 %i.ko, 1835008
  %i.kq = shl nuw nsw i32 %i.kh, 6
  %i.kr = and i8 %i.kn, 63
  %i.ks = zext nneg i8 %i.kr to i32
  %i.kt = or disjoint i32 %i.kq, %i.ks
  %i.ku = or disjoint i32 %i.kt, %i.kp
  br label %bb.ad

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread50.i: ; preds = %.lr.ph.i.i.i38, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  tail call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CStringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.reass134, i64 noundef %i.jc, i64 408021893120), !noalias !1036
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.ad:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i37, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i36, %bb.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i34
  %.sroa.4.0.i.ph.i35 = phi i32 [ %i.kj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i36 ], [ %i.ku, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i37 ], [ %i.jy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i34 ], [ %i.ka, %bb.ac ] ; 10 uses
  %i.kv = icmp samesign ult i32 %.sroa.4.0.i.ph.i35, 1114112
  tail call void @llvm.assume(i1 %i.kv)
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph.i35, -9 ; 2 uses
  %i.kw = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond142 = select i1 %i.kw, i1 %switch.lobit, i1 false
  br i1 %or.cond142, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kx = icmp samesign ult i32 %.sroa.4.0.i.ph.i35, 133
  br i1 %i.kx, label %.lr.ph.backedge, label %bb.af

.lr.ph.backedge:                                  ; preds = %bb.ae, %bb.af, %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i, %.thread.i
  br label %.lr.ph

bb.af:                                            ; preds = %bb.ae
  %i.ky = lshr i32 %.sroa.4.0.i.ph.i35, 8
  switch i32 %i.ky, label %.lr.ph.backedge [
    i32 0, label %bb.ai
    i32 22, label %bb.ag
    i32 32, label %bb.aj
    i32 48, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kz = icmp eq i32 %.sroa.4.0.i.ph.i35, 5760
  %i.la = zext i1 %i.kz to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.lb = icmp eq i32 %.sroa.4.0.i.ph.i35, 12288
  %i.lc = zext i1 %i.lb to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.ld = and i32 %.sroa.4.0.i.ph.i35, 255
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !1036, !noundef !19
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.aj:                                            ; preds = %bb.af
  %i.lh = and i32 %.sroa.4.0.i.ph.i35, 255
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !1036, !noundef !19
  %i.ll = lshr i8 %i.lk, 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i20.i = phi i8 [ %i.lc, %bb.ah ], [ %i.lg, %bb.ai ], [ %i.la, %bb.ag ], [ %i.ll, %bb.aj ]
  %i.lm = trunc i8 %.sroa.0.0.i20.i to i1
  br i1 %i.lm, label %bb.ak, label %.lr.ph.backedge

bb.ak:                                            ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i
  %i.ln = icmp samesign ult i32 %.sroa.4.0.i.ph.i35, 2048
  br i1 %i.ln, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lo = icmp samesign ult i32 %.sroa.4.0.i.ph.i35, 65536
  %..i = select i1 %i.lo, i64 3, i64 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ad, %bb.al, %bb.ak
  %.sroa.08.0.i = phi i64 [ 2, %bb.ak ], [ %..i, %bb.al ], [ 1, %bb.ad ]
  %i.lp = add i64 %.sroa.08.0.i, %i.jl
  tail call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CStringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.reass134, i64 noundef %i.lp, i64 408021893120), !noalias !1036
  br label %.lr.ph.backedge

_RNvYNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1CslLuZgPVt6hg_3ide.exit: ; preds = %.outer.i.i.i, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i, %bb.v, %bb.u, %.thread114, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i45.i.i.i, %bb.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i43.i.i.i, %bb.d, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i, %bb.h, %bb.s, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.n, %bb.l, %bb.i
  %i.lq = phi i64 [ %.reass134, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ %.reass134, %bb.d ], [ %i.aq, %.thread114 ], [ %.reass134, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ %.reass134, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i43.i.i.i ], [ %.reass134, %bb.m ], [ %.reass134, %bb.i ], [ %.reass134, %bb.s ], [ %.reass134, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ %.reass134, %bb.n ], [ %.reass134, %bb.l ], [ %.reass134, %bb.h ], [ %.reass134, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i45.i.i.i ], [ %.reass134, %bb.u ], [ %.reass134, %bb.v ], [ %.reass134, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i ], [ %.reass134, %.outer.i.i.i ]
  %.sroa.039.1 = phi ptr [ %.sroa.039.6, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ %.sroa.039.2.ph60, %bb.d ], [ %.sroa.039.2.ph, %.thread114 ], [ %.sroa.039.4, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ %i.dt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i43.i.i.i ], [ %i.dp, %bb.m ], [ %.sroa.039.3, %bb.i ], [ %.sroa.039.6, %bb.s ], [ %.sroa.039.6, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ %.sroa.039.3, %bb.n ], [ %.sroa.039.7.a, %bb.l ], [ %.sroa.039.3, %bb.h ], [ %spec.select, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i45.i.i.i ], [ %i.ic, %bb.u ], [ %i.ic, %bb.v ], [ %i.ic, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i ], [ %i.ic, %.outer.i.i.i ] ; 3 uses
  %i.lr = ptrtoint ptr %.sroa.039.1 to i64
  %i.ls = add i64 %.neg26, %i.lr
  tail call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CStringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.lq, i64 noundef %i.ls, i64 408021893120)
  %i.lt = icmp eq ptr %.sroa.039.1, %.sroa.43.0.ph76
  br i1 %i.lt, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6escape23highlight_escape_stringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens10ByteStringE0B8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, %i.f
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !1040, !noundef !19
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split.i, %bb.a
  %i.l = sub nuw i64 %i.e, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 92, ptr %i.a, align 4
  %i.n = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.n, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c, %.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = trunc i64 %3 to i1
  %. = select i1 %i.o, i8 9, i8 7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !align !449, !noundef !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !19, !align !449, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !19, !align !1043, !noundef !19
  %i.v = load i32, ptr %i.u, align 4, !noundef !19 ; 2 uses
  %i.w = add i32 %i.v, %1                         ; 2 uses
  %i.x = icmp ult i32 %i.w, %1
  br i1 %i.x, label %bb.i, label %bb.g, !prof !167

bb.g:                                             ; preds = %bb.f
  %i.y = add i32 %i.v, %2                         ; 2 uses
  %i.z = icmp ult i32 %i.y, %2
  br i1 %i.z, label %bb.i, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit, !prof !167

bb.h:                                             ; preds = %bb.d, %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit
  ret void

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.y, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %., ptr %.sroa.4.0..sroa_idx, align 4
  store i64 0, ptr %i.b, align 8
  call void @_RNvMNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlightsNtB2_10Highlights8add_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6escape23highlight_escape_stringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringE0B8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, %i.f
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !1044, !noundef !19
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split.i, %bb.a
  %i.l = sub nuw i64 %i.e, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 92, ptr %i.a, align 4
  %i.n = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.n, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c, %.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = trunc i64 %3 to i1
  %. = select i1 %i.o, i8 9, i8 7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !align !449, !noundef !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !19, !align !449, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !19, !align !1043, !noundef !19
  %i.v = load i32, ptr %i.u, align 4, !noundef !19 ; 2 uses
  %i.w = add i32 %i.v, %1                         ; 2 uses
  %i.x = icmp ult i32 %i.w, %1
  br i1 %i.x, label %bb.i, label %bb.g, !prof !167

bb.g:                                             ; preds = %bb.f
  %i.y = add i32 %i.v, %2                         ; 2 uses
  %i.z = icmp ult i32 %i.y, %2
  br i1 %i.z, label %bb.i, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit, !prof !167

bb.h:                                             ; preds = %bb.d, %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit
  ret void

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.y, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %., ptr %.sroa.4.0..sroa_idx, align 4
  store i64 0, ptr %i.b, align 8
  call void @_RNvMNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlightsNtB2_10Highlights8add_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6escape23highlight_escape_stringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CStringE0B8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, %i.f
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !1047, !noundef !19
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split.i, %bb.a
  %i.l = sub nuw i64 %i.e, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 92, ptr %i.a, align 4
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.rn = invoke noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.rn, label %.loopexit423, label %.thread410

._crit_edge674:                                   ; preds = %bb.dm, %bb.dl
  %i.ro = icmp ugt i64 %.sroa.013.0, %i.pk
  %or.cond4 = and i1 %i.v, %i.ro
  br i1 %or.cond4, label %bb.dp, label %.thread410

bb.dl:                                            ; preds = %bb.di
  %i.rp = extractvalue { ptr, i64 } %i.rm, 0      ; 3 uses
  %i.rq = extractvalue { ptr, i64 } %i.rm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rp) ]
  %i.rr = icmp samesign eq i64 %i.rq, 0
  br i1 %i.rr, label %._crit_edge674, label %.lr.ph673

.lr.ph673:                                        ; preds = %bb.dl
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rq
  br label %bb.dn

bb.dm:                                            ; preds = %bb.do
  %i.rt = icmp eq ptr %i.rp, %i.ru
  br i1 %i.rt, label %._crit_edge674, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph673, %bb.dm
  %.sroa.5.0671 = phi ptr [ %i.rs, %.lr.ph673 ], [ %i.ru, %bb.dm ]
  %i.ru = getelementptr inbounds i8, ptr %.sroa.5.0671, i64 -1 ; 3 uses
  %i.rv = load i8, ptr %i.ru, align 1, !noundef !19
  %i.rw = zext i8 %i.rv to i32
  %i.rx = invoke noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.rw)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit

bb.do:                                            ; preds = %bb.dn
  br i1 %i.rx, label %.loopexit423, label %bb.dm

.thread410:                                       ; preds = %bb.dq, %bb.dp, %bb.dk, %._crit_edge674
  %. = select i1 %i.v, i32 101, i32 69
  %i.ry = invoke noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %._crit_edge674
  %i.rz = add nuw nsw i64 %.sroa.013.0, 1         ; 2 uses
  %i.sa = sub i64 %i.rz, %.sink10.i287
  %exitcond534.not675 = icmp eq i64 %i.rz, %.sink10.i287
  br i1 %exitcond534.not675, label %.thread410, label %.lr.ph678

bb.dq:                                            ; preds = %bb.dr
  %i.sb = add i64 %.sroa.0143.0676, 1             ; 2 uses
  %exitcond534.not = icmp eq i64 %i.sb, %i.sa
  br i1 %exitcond534.not, label %.thread410, label %.lr.ph678

.lr.ph678:                                        ; preds = %bb.dp, %bb.dq
  %.sroa.0143.0676 = phi i64 [ %i.sb, %bb.dq ], [ 0, %bb.dp ]
  %i.sc = invoke noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
          to label %bb.dr unwind label %.loopexit

bb.dr:                                            ; preds = %.lr.ph678
  br i1 %i.sc, label %.loopexit423, label %bb.dq

bb.ds:                                            ; preds = %.thread410
  br i1 %i.ry, label %.loopexit423, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.v, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.se = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.sf = load ptr, ptr %i.sd, align 8, !nonnull !19, !align !449, !noundef !19
  %i.sg = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.se, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sf, ptr noundef nonnull @152, ptr noundef nonnull %i.c)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.sh = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.si = load ptr, ptr %i.sd, align 8, !nonnull !19, !align !449, !noundef !19
  %i.sj = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.sh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.si, ptr noundef nonnull @153, ptr noundef nonnull %i.d)
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit423

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit423

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAhj40_EECslLuZgPVt6hg_3ide.exit313: ; preds = %.loopexit423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit464

bb.dy:                                            ; preds = %bb.bo
  unreachable

bb.dz:                                            ; preds = %bb.e
  %i.sk = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 45)
  br i1 %i.sk, label %.loopexit464, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.e
  %i.sl = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.sl, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.v, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.sm = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
  br i1 %i.sm, label %.loopexit464, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.sn = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 6)
  br i1 %i.sn, label %.loopexit464, label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  %i.so = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 3)
  br i1 %i.so, label %.loopexit464, label %bb.eg

bb.ef:                                            ; preds = %bb.ec, %.loopexit463, %bb.ed
  br label %.loopexit464

bb.eg:                                            ; preds = %bb.ee
  %i.sp = load i32, ptr %i.n, align 8, !noundef !19
  %i.sq = and i32 %i.sp, 268435456
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.loopexit463, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.st = load i16, ptr %i.ss, align 2, !noundef !19 ; 2 uses
  %i.su = tail call i16 @llvm.umax.i16(i16 %i.st, i16 1)
  %umax = zext i16 %i.su to i64
  %exitcond.not643 = icmp ult i16 %i.st, 2
  br i1 %exitcond.not643, label %.loopexit463, label %.lr.ph646

.loopexit463:                                     ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.sv = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 4)
  br i1 %i.sv, label %.loopexit464, label %bb.ef

bb.ei:                                            ; preds = %.lr.ph646
  %i.sw = add nuw nsw i64 %.sroa.0141.0644, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.sw, %umax
  br i1 %exitcond.not, label %.loopexit463, label %.lr.ph646

.lr.ph646:                                        ; preds = %bb.eh, %bb.ei
  %.sroa.0141.0644 = phi i64 [ %i.sw, %bb.ei ], [ 1, %bb.eh ]
  %i.sx = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
  br i1 %i.sx, label %.loopexit464, label %bb.ei
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #12 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @28, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 10 uses
  %i.k = alloca [32 x i8], align 16               ; 8 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [48 x i8], align 16               ; 10 uses
  %i.q = alloca [48 x i8], align 16               ; 12 uses
  %i.r = alloca [48 x i8], align 16               ; 12 uses
  %i.s = alloca [48 x i8], align 16               ; 12 uses
  %i.t = alloca [48 x i8], align 16               ; 15 uses
  %i.u = alloca [48 x i8], align 16               ; 25 uses
  %i.v = alloca [48 x i8], align 16               ; 12 uses
  %i.w = alloca [48 x i8], align 16               ; 9 uses
  %i.x = alloca [32 x i8], align 16               ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 14 uses
  %.sroa.9 = alloca [10 x i8], align 2            ; 6 uses
  %i.z = alloca [32 x i8], align 16               ; 6 uses
  %.sroa.9140 = alloca [10 x i8], align 2         ; 3 uses
  %i.aa = alloca [48 x i8], align 16              ; 17 uses
  %.sroa.14 = alloca [10 x i8], align 2           ; 3 uses
  %i.ab = icmp eq i64 %2, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 1) ; 6 uses
  %.sroa.0130.0 = zext i1 %i.ac to i8             ; 2 uses
  %i.ad = sext i1 %i.ac to i64
  %.sroa.18.0 = add i64 %2, %i.ad                 ; 7 uses
  %.sroa.0.0.idx = zext i1 %i.ac to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 9 uses
  %i.ae = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.18.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 1) ; 2 uses
  %i.af = xor i1 %i.ae, true
  %i.ag = or i1 %i.ac, %i.af                      ; 4 uses
  %not. = xor i1 %i.ag, true                      ; 2 uses
  %i.ah = sext i1 %not. to i64
  %.sroa.18.1 = add i64 %.sroa.18.0, %i.ah        ; 23 uses
  %.sroa.0.1.idx = zext i1 %not. to i64
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.0.1.idx ; 24 uses
  switch i64 %.sroa.18.1, label %bb.i [
    i64 3, label %bb.d
    i64 8, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  store ptr @166, ptr %0, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.aj, align 1
  br label %bb.ha

bb.d:                                             ; preds = %bb.b
  %i.ak = load i16, ptr %.sroa.0.1, align 1
  %i.al = xor i16 %i.ak, 28233
  %i.am = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i16
  %i.ap = xor i16 %i.ao, 102
  %i.aq = or i16 %i.al, %i.ap
  %i.ar = icmp ne i16 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.p, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.au = load i16, ptr %.sroa.0.1, align 1
  %i.av = xor i16 %i.au, 28265
  %i.aw = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  %i.az = xor i16 %i.ay, 102
  %i.ba = or i16 %i.av, %i.az
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.o, label %.thread272

bb.h:                                             ; preds = %bb.b
  %i.be = load i64, ptr %.sroa.0.1, align 1
  %i.bf = icmp ne i64 %i.be, 6436850368004902473
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.h
  br i1 %i.ag, label %bb.k, label %bb.aa

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.o, label %.thread272

bb.k:                                             ; preds = %bb.i
  %i.bi = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %i.bi, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.k
  %i.bj = ptrtoint ptr %.sroa.0.0 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %i.bl = load i8, ptr %.sroa.0.0, align 1, !alias.scope !2313, !noalias !2316, !noundef !19 ; 5 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i: ; preds = %.thread
  %i.bn = and i8 %i.bl, 31
  %i.bo = zext nneg i8 %i.bn to i32               ; 3 uses
  %i.bp = icmp samesign ne i64 %.sroa.18.0, 1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 2 uses
  %i.br = load i8, ptr %i.bk, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.bs = shl nuw nsw i32 %i.bo, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32               ; 2 uses
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = icmp samesign ugt i8 %i.bl, -33
  br i1 %i.bw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

bb.l:                                             ; preds = %.thread
  %i.bx = zext nneg i8 %i.bl to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.by = icmp samesign ne i64 %.sroa.18.0, 2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 2 uses
  %i.ca = load i8, ptr %i.bq, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.cb = shl nuw nsw i32 %i.bu, 6
  %i.cc = and i8 %i.ca, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = shl nuw nsw i32 %i.bo, 12
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bl, -17
  br i1 %i.ch, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i
  %i.ci = icmp samesign ne i64 %.sroa.18.0, 3
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.ck = load i8, ptr %i.bz, align 1, !alias.scope !2313, !noalias !2316, !noundef !19
  %i.cl = shl nuw nsw i32 %i.bo, 18
  %i.cm = and i32 %i.cl, 1835008
  %i.cn = shl nuw nsw i32 %i.ce, 6
  %i.co = and i8 %i.ck, 63
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.cm
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.cs = phi ptr [ %i.bz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bk, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.cg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bx, %bb.l ] ; 2 uses
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ct)
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit [
    i32 115, label %bb.m
    i32 83, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.cu, %i.bj                    ; 2 uses
  %i.cw = sub nuw i64 %.sroa.18.0, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.cv
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %bb.m
  %.sroa.7210.0 = phi i64 [ %i.cw, %bb.m ], [ %.sroa.18.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.18.1, %bb.k ] ; 5 uses
  %.sroa.5209.0 = phi ptr [ %i.cx, %bb.m ], [ %.sroa.0.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %.sroa.0208.0 = phi i1 [ true, %bb.m ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ false, %bb.k ] ; 2 uses
  %i.cy = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 3)
  %i.cz = add i64 %.sroa.7210.0, -3               ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 3 ; 3 uses
  br i1 %i.cy, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  %i.db = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3), !noalias !2324
  br i1 %i.db, label %select.unfold, label %bb.aa

bb.o:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

select.unfold:                                    ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5HalfSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
end_hunk_2
begin_hunk_3_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
  %i.abn = icmp eq i64 %i.abm, 0
  br i1 %i.abn, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abo = add i64 %i.abm, -1
  store i64 %i.abo, ptr %.sink9.i356.i, align 8, !noalias !2381
  %.pre704.i = load i64, ptr %i.rr, align 16, !alias.scope !2534, !noalias !2537
  %.pre705.i = load i64, ptr %i.se, align 8, !alias.scope !2534, !noalias !2537
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.abp = phi i64 [ %i.abe, %bb.em ], [ %.pre705.i, %bb.en ] ; 2 uses
  %i.abq = phi i64 [ %i.abf, %bb.em ], [ %.pre704.i, %bb.en ] ; 3 uses
  %i.abr = icmp ugt i64 %i.abq, 2                 ; 2 uses
  %.sink10.i352.i = select i1 %i.abr, i64 %i.abp, i64 %i.abq ; 2 uses
  %.not202.i = icmp eq i64 %.sink10.i352.i, 0
  br i1 %.not202.i, label %.critedge218.i, label %bb.ek

bb.ep:                                            ; preds = %bb.ef
  %.sink9.i328.i = select i1 %i.zv, ptr %i.sb, ptr %i.rm ; 2 uses
  %i.abs = load i64, ptr %.sink9.i328.i, align 8, !noalias !2381, !noundef !19 ; 2 uses
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.abu = add i64 %i.abs, -1
  store i64 %i.abu, ptr %.sink9.i328.i, align 8, !noalias !2381
  %.pre.i = load i64, ptr %i.rm, align 16, !alias.scope !2504, !noalias !2507
  %.pre703.i = load i64, ptr %i.sb, align 8, !alias.scope !2504, !noalias !2507
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.abv = phi i64 [ %i.zt, %bb.ep ], [ %.pre703.i, %bb.eq ] ; 2 uses
  %i.abw = phi i64 [ %i.zu, %bb.ep ], [ %.pre.i, %bb.eq ] ; 3 uses
  %i.abx = icmp ugt i64 %i.abw, 2                 ; 2 uses
  %.sink10.i324.i = select i1 %i.abx, i64 %i.abv, i64 %i.abw ; 2 uses
  %.not201.i = icmp eq i64 %.sink10.i324.i, 0
  br i1 %.not201.i, label %.critedge.i, label %bb.ef

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i: ; preds = %.body251.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.r)
          to label %.body.i unwind label %bb.ea, !noalias !2367

bb.es:                                            ; preds = %.thread514.i
  %i.aby = extractvalue { ptr, ptr } %i.rq, 0     ; 3 uses
  %i.abz = extractvalue { ptr, ptr } %i.rq, 1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aby) ]
  %i.aca = icmp eq ptr %i.aby, %i.abz
  br i1 %i.aca, label %._crit_edge.i, label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %bb.es, %bb.et
  %.sroa.049.2628.i = phi i128 [ %i.aci, %bb.et ], [ %.sroa.049.1520.i, %bb.es ]
  %.sroa.062.0627.i = phi ptr [ %i.acc, %bb.et ], [ %i.aby, %bb.es ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2381
  %i.acb = load i128, ptr %.sroa.062.0627.i, align 16, !noalias !2367, !noundef !19
  invoke fastcc void @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12widening_mul(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.x, i128 noundef %i.acb, i128 noundef %.sroa.053.1519.i)
          to label %bb.et unwind label %.loopexit543.i, !noalias !2367

._crit_edge.i:                                    ; preds = %bb.et, %bb.es
  %.sroa.049.2.lcssa.i = phi i128 [ %.sroa.049.1520.i, %bb.es ], [ %i.aci, %bb.et ] ; 2 uses
  %.not190.i = icmp eq i128 %.sroa.049.2.lcssa.i, 0
  br i1 %.not190.i, label %.outer.i.backedge, label %bb.eu

bb.et:                                            ; preds = %.lr.ph629.i
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.062.0627.i, i64 16 ; 2 uses
  %i.acd = load i128, ptr %i.x, align 16, !noalias !2381, !noundef !19 ; 2 uses
  %i.ace = load i128, ptr %i.pp, align 16, !noalias !2381, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2381
  %i.acf = add i128 %i.acd, %.sroa.049.2628.i     ; 2 uses
  %i.acg = icmp ult i128 %i.acf, %i.acd
  %i.ach = zext i1 %i.acg to i128
  %i.aci = add i128 %i.ace, %i.ach                ; 2 uses
  store i128 %i.acf, ptr %.sroa.062.0627.i, align 16, !noalias !2367
  %i.acj = icmp eq ptr %i.acc, %i.abz
  br i1 %i.acj, label %._crit_edge.i, label %.lr.ph629.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.ack = load i64, ptr %i.pq, align 16, !alias.scope !2539, !noalias !2544, !noundef !19 ; 2 uses
  %i.acl = icmp ugt i64 %i.ack, 2                 ; 2 uses
  %i.acm = load ptr, ptr %i.y, align 16, !alias.scope !2539, !noalias !2544, !nonnull !19
  %.sink10.i.i.i = select i1 %i.acl, ptr %i.acm, ptr %i.y
  %.sink9.i.i.i = select i1 %i.acl, ptr %i.pr, ptr %i.pq ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.ack, i64 2)
  %i.acn = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !2546, !noalias !2381, !noundef !19 ; 2 uses
  %i.aco = icmp eq i64 %i.acn, %.sink.i.i.i
  br i1 %i.aco, label %bb.ev, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %.noexc.i unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2367

.noexc.i:                                         ; preds = %bb.ev
  %i.acp = load ptr, ptr %i.y, align 16, !alias.scope !2546, !noalias !2381, !nonnull !19, !noundef !19
  %.pre.i.i = load i64, ptr %i.pr, align 8, !alias.scope !2546, !noalias !2381
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i: ; preds = %.noexc.i, %bb.eu
  %i.acq = phi i64 [ %.pre.i.i, %.noexc.i ], [ %i.acn, %bb.eu ]
  %.sroa.01.0.i.i = phi ptr [ %i.pr, %.noexc.i ], [ %.sink9.i.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0.i359.i = phi ptr [ %i.acp, %.noexc.i ], [ %.sink10.i.i.i, %bb.eu ]
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i359.i, i64 %i.acq
  store i128 %.sroa.049.2.lcssa.i, ptr %i.acr, align 16, !noalias !2367
  %i.acs = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2546, !noalias !2381, !noundef !19
  %i.act = add i64 %i.acs, 1
  store i64 %i.act, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2546, !noalias !2381
  br label %.outer.i.backedge

bb.ew:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @66, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ex:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @77, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ey:                                            ; preds = %bb.ay
  %i.acu = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ma, i32 10) ; 2 uses
  %i.acv = extractvalue { i32, i1 } %i.acu, 0
  %i.acw = extractvalue { i32, i1 } %i.acu, 1
  br i1 %i.acw, label %bb.ez, label %.peel.next.i, !prof !167

bb.ez:                                            ; preds = %bb.ey
  %i.acx = icmp sgt i32 %i.ma, -1
  %.219.i = select i1 %i.acx, i32 2147483647, i32 -2147483648
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ez, %bb.ey
  %.sroa.0127.0.i = phi i32 [ %i.acv, %bb.ey ], [ %.219.i, %bb.ez ]
  %i.acy = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.0127.0.i, i32 %i.nk) ; 2 uses
  %i.acz = icmp eq ptr %.sroa.0370.2.ph.i, %i.ha
  br i1 %i.acz, label %.loopexit775.i, label %.lr.ph414, !llvm.loop !2547

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2381
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y), !noalias !2367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2381
  %i.ada = icmp eq i8 %.sroa.24.0.copyload, 2
  br i1 %i.ada, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.fa:                                            ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157
  %i.adb = ptrtoint ptr %i.gy to i64
  %i.adc = sub i64 %i.adb, %i.fo                  ; 2 uses
  %i.add = sub nuw i64 %i.fm, %i.adc              ; 12 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.adc ; 4 uses
  %i.adf = icmp eq i64 %i.add, 0
  br i1 %i.adf, label %bb.gx, label %bb.fc

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.ag, %bb.ay, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, %bb.ak, %bb.am, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.0.0283 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ ptrtoint (ptr @79 to i64), %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ ptrtoint (ptr @64 to i64), %bb.am ], [ ptrtoint (ptr @64 to i64), %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ ptrtoint (ptr @79 to i64), %bb.ay ], [ ptrtoint (ptr @80 to i64), %bb.ak ], [ ptrtoint (ptr @63 to i64), %bb.ag ]
  %.sroa.0214.sroa.14.0282 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ 25, %bb.am ], [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 29, %bb.ay ], [ 32, %bb.ak ], [ 29, %bb.ag ]
  %i.adg = inttoptr i64 %.sroa.0214.sroa.0.0283 to ptr
  store ptr %i.adg, ptr %0, align 16
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0214.sroa.14.0282, ptr %i.adh, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.adi, align 1
  br label %bb.ha

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287: ; preds = %bb.ba, %.thread.i, %bb.ex, %bb.ew, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.21.0299 = phi i32 [ %.sroa.21.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ -15, %bb.ba ], [ %.210.i, %.thread.i ], [ -14, %bb.ex ], [ -15, %bb.ew ]
  %.sroa.23.0298 = phi i8 [ %.sroa.23.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 3, %bb.ba ], [ %.211.i, %.thread.i ], [ 2, %bb.ex ], [ 3, %bb.ew ]
  %.sroa.24.0297 = phi i8 [ %.sroa.24.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ 0, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.34.0296 = phi i8 [ %.sroa.34.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.213.i, %.thread.i ], [ 24, %bb.ex ], [ 24, %bb.ew ]
  %.sroa.0214.sroa.0.0295 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.sroa.0214.sroa.0.0.extract.trunc, %.thread.i ], [ 1, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.0214.sroa.14.0294 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ 0, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %i.adj = inttoptr i64 %.sroa.0214.sroa.0.0295 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, i64 10, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.gz, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287
  %.sroa.5138.sroa.0.0 = phi i32 [ %.sroa.21.0299, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.0.0.copyload, %bb.gz ]
  %.sroa.5138.sroa.3.0 = phi i8 [ %.sroa.23.0298, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.4.0.copyload, %bb.gz ]
  %.sroa.0136.0 = phi i8 [ %.sroa.34.0296, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.8.0.copyload, %bb.gz ]
  %.sroa.0137.0 = phi ptr [ %i.adj, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.0117.0.copyload, %bb.gz ]
  %.sroa.3.0 = phi i64 [ %.sroa.0214.sroa.14.0294, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.4118.0.copyload, %bb.gz ]
  %.sroa.7139.0 = phi i8 [ %.sroa.24.0297, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %i.app, %bb.gz ]
  %spec.select.i172 = xor i8 %.sroa.7139.0, %.sroa.0130.0
  store ptr %.sroa.0137.0, ptr %0, align 16
  %.sroa.096.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.096.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5138.sroa.0.0, ptr %.sroa.096.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.5138.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.096.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select.i172, ptr %.sroa.096.sroa.4.0..sroa_idx, align 1
  %.sroa.096.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.096.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, i64 10, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0136.0, ptr %.sroa.497.0..sroa_idx, align 16
  br label %bb.ha

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.adk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.adl = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 2, ptr %i.adl, align 4, !noalias !2554
  %i.adm = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 0, ptr %i.adm, align 1, !noalias !2554
  %i.adn = getelementptr i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 20 uses
  br label %.outer.i173

.outer.i173:                                      ; preds = %.outer.i173.backedge, %bb.fc
  %4 = phi i128 [ 0, %bb.fc ], [ %.be, %.outer.i173.backedge ] ; 9 uses
  %i.ado = phi i128 [ 0, %bb.fc ], [ %.be856, %.outer.i173.backedge ] ; 9 uses
  %.sroa.11.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.11.0.ph.i.be, %.outer.i173.backedge ] ; 6 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.ade, %bb.fc ], [ %.sroa.0.0.ph.i.be, %.outer.i173.backedge ] ; 12 uses
  %.sroa.025.0.ph.i = phi i8 [ -1, %bb.fc ], [ %.sroa.025.0.ph.i.be, %.outer.i173.backedge ] ; 9 uses
  %.sroa.4.0.ph.i = phi i64 [ undef, %bb.fc ], [ %.sroa.4.0.ph.i.be, %.outer.i173.backedge ] ; 5 uses
  %.sroa.021.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.021.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.010.0.ph.i = phi i64 [ %i.add, %bb.fc ], [ %.sroa.010.0.ph.i.be, %.outer.i173.backedge ] ; 11 uses
  %.sroa.07.0.ph.i = phi i64 [ 128, %bb.fc ], [ %.sroa.07.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.03.0.ph.i = phi i8 [ 0, %bb.fc ], [ %.sroa.03.0.ph.i.be, %.outer.i173.backedge ] ; 4 uses
  %.not89.i.not = icmp ne i64 %.sroa.021.0.ph.i, 0 ; 2 uses
  %i.adp = ptrtoint ptr %.sroa.0.0.ph.i to i64    ; 2 uses
  %i.adq = icmp eq ptr %.sroa.0.0.ph.i, %i.adn    ; 2 uses
  br i1 %.not89.i.not, label %.outer.split.us.i, label %.outer.split.preheader.i

.outer.split.preheader.i:                         ; preds = %.outer.i173
  br i1 %i.adq, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fd

bb.fd:                                            ; preds = %.outer.split.preheader.i
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.ads = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.adt = icmp sgt i8 %i.ads, -1
  br i1 %i.adt, label %bb.fe, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i: ; preds = %bb.fd
  %i.adu = and i8 %i.ads, 31
  %i.adv = zext nneg i8 %i.adu to i32             ; 3 uses
  %i.adw = icmp ne ptr %i.adr, %i.adn
  tail call void @llvm.assume(i1 %i.adw)
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.ady = load i8, ptr %i.adr, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.adz = shl nuw nsw i32 %i.adv, 6
  %i.aea = and i8 %i.ady, 63
  %i.aeb = zext nneg i8 %i.aea to i32             ; 2 uses
  %i.aec = or disjoint i32 %i.adz, %i.aeb
  %i.aed = icmp samesign ugt i8 %i.ads, -33
  br i1 %i.aed, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %i.aee = icmp ne ptr %i.adx, %i.adn
  tail call void @llvm.assume(i1 %i.aee)
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aeg = load i8, ptr %i.adx, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aeh = shl nuw nsw i32 %i.aeb, 6
  %i.aei = and i8 %i.aeg, 63
  %i.aej = zext nneg i8 %i.aei to i32
  %i.aek = or disjoint i32 %i.aeh, %i.aej         ; 2 uses
  %i.ael = shl nuw nsw i32 %i.adv, 12
  %i.aem = or disjoint i32 %i.aek, %i.ael
  %i.aen = icmp samesign ugt i8 %i.ads, -17
  br i1 %i.aen, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i
  %i.aeo = icmp ne ptr %i.aef, %i.adn
  tail call void @llvm.assume(i1 %i.aeo)
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.aeq = load i8, ptr %i.aef, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aer = shl nuw nsw i32 %i.adv, 18
  %i.aes = and i32 %i.aer, 1835008
  %i.aet = shl nuw nsw i32 %i.aek, 6
  %i.aeu = and i8 %i.aeq, 63
  %i.aev = zext nneg i8 %i.aeu to i32
  %i.aew = or disjoint i32 %i.aet, %i.aev
  %i.aex = or disjoint i32 %i.aew, %i.aes
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aey = zext nneg i8 %i.ads to i32
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %.sroa.0.1.peel.i = phi ptr [ %i.adr, %bb.fe ], [ %i.aep, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aef, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.adx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.peel.i = phi i32 [ %i.aey, %bb.fe ], [ %i.aex, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aem, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.aec, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 6 uses
  %i.aez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.aez)
  %i.afa = ptrtoint ptr %.sroa.0.1.peel.i to i64
  %i.afb = sub i64 %.sroa.11.0.ph.i, %i.adp
  %i.afc = add i64 %i.afb, %i.afa                 ; 3 uses
  %i.afd = icmp eq i32 %.sroa.4.0.i.ph.i.peel.i, 46
  br i1 %i.afd, label %.split.us.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.afe = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.peel.i, 57
  %i.aff = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -65
  %i.afg = and i32 %i.aff, -33
  %i.afh = add nuw nsw i32 %i.afg, 10
  %i.afi = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -48
  %.sroa.02.0.i.peel.i = select i1 %i.afe, i32 %i.afh, i32 %i.afi ; 3 uses
  %i.afj = icmp ult i32 %.sroa.02.0.i.peel.i, 16
  br i1 %i.afj, label %bb.fh, label %.split194.us.i.loopexit306

bb.fh:                                            ; preds = %bb.fg
  %i.afk = icmp eq i32 %.sroa.02.0.i.peel.i, 0
  br i1 %i.afk, label %.outer.split.i, label %.split203.us.i

.outer.split.us.i:                                ; preds = %.outer.i173
  br i1 %i.adq, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fi

bb.fi:                                            ; preds = %.outer.split.us.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.afm = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.afn = icmp sgt i8 %i.afm, -1
  br i1 %i.afn, label %bb.fj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i: ; preds = %bb.fi
  %i.afo = and i8 %i.afm, 31
  %i.afp = zext nneg i8 %i.afo to i32             ; 3 uses
  %i.afq = icmp ne ptr %i.afl, %i.adn
  tail call void @llvm.assume(i1 %i.afq)
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.afs = load i8, ptr %i.afl, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aft = shl nuw nsw i32 %i.afp, 6
  %i.afu = and i8 %i.afs, 63
  %i.afv = zext nneg i8 %i.afu to i32             ; 2 uses
  %i.afw = or disjoint i32 %i.aft, %i.afv
  %i.afx = icmp samesign ugt i8 %i.afm, -33
  br i1 %i.afx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %i.afy = icmp ne ptr %i.afr, %i.adn
  tail call void @llvm.assume(i1 %i.afy)
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aga = load i8, ptr %i.afr, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.agb = shl nuw nsw i32 %i.afv, 6
  %i.agc = and i8 %i.aga, 63
  %i.agd = zext nneg i8 %i.agc to i32
  %i.age = or disjoint i32 %i.agb, %i.agd         ; 2 uses
  %i.agf = shl nuw nsw i32 %i.afp, 12
  %i.agg = or disjoint i32 %i.age, %i.agf
  %i.agh = icmp samesign ugt i8 %i.afm, -17
  br i1 %i.agh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i
  %i.agi = icmp ne ptr %i.afz, %i.adn
  tail call void @llvm.assume(i1 %i.agi)
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.agk = load i8, ptr %i.afz, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.agl = shl nuw nsw i32 %i.afp, 18
  %i.agm = and i32 %i.agl, 1835008
  %i.agn = shl nuw nsw i32 %i.age, 6
  %i.ago = and i8 %i.agk, 63
  %i.agp = zext nneg i8 %i.ago to i32
  %i.agq = or disjoint i32 %i.agn, %i.agp
  %i.agr = or disjoint i32 %i.agq, %i.agm
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ags = zext nneg i8 %i.afm to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %.sroa.0.1.us.i = phi ptr [ %i.afl, %bb.fj ], [ %i.agj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.afz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.us.i = phi i32 [ %i.ags, %bb.fj ], [ %i.agr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.agg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 6 uses
  %i.agt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i, 1114112
  tail call void @llvm.assume(i1 %i.agt)
  %i.agu = ptrtoint ptr %.sroa.0.1.us.i to i64
  %i.agv = sub i64 %.sroa.11.0.ph.i, %i.adp
  %i.agw = add i64 %i.agv, %i.agu                 ; 2 uses
  %i.agx = icmp eq i32 %.sroa.4.0.i.ph.i.us.i, 46
  br i1 %i.agx, label %.split.us.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agy = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.us.i, 57
  %i.agz = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -65
  %i.aha = and i32 %i.agz, -33
  %i.ahb = add nuw nsw i32 %i.aha, 10
  %i.ahc = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -48
  %.sroa.02.0.i.us.i = select i1 %i.agy, i32 %i.ahb, i32 %i.ahc ; 2 uses
  %i.ahd = icmp ult i32 %.sroa.02.0.i.us.i, 16
  br i1 %i.ahd, label %.split203.us.i, label %.split194.us.i.loopexit306

.outer.split.i:                                   ; preds = %bb.fh, %bb.fq
  %.sroa.11.0.i = phi i64 [ %i.air, %bb.fq ], [ %i.afc, %bb.fh ] ; 4 uses
  %.sroa.0.0.i188 = phi ptr [ %.sroa.0.1.i190, %bb.fq ], [ %.sroa.0.1.peel.i, %bb.fh ] ; 7 uses
  %i.ahe = ptrtoint ptr %.sroa.0.0.i188 to i64
  %i.ahf = icmp eq ptr %.sroa.0.0.i188, %i.adn
  br i1 %i.ahf, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %bb.fm

bb.fm:                                            ; preds = %.outer.split.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 1 ; 3 uses
  %i.ahh = load i8, ptr %.sroa.0.0.i188, align 1, !alias.scope !2552, !noalias !2555, !noundef !19 ; 5 uses
  %i.ahi = icmp sgt i8 %i.ahh, -1
  br i1 %i.ahi, label %bb.fn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189: ; preds = %bb.fm
  %i.ahj = and i8 %i.ahh, 31
  %i.ahk = zext nneg i8 %i.ahj to i32             ; 3 uses
  %i.ahl = icmp ne ptr %i.ahg, %i.adn
  tail call void @llvm.assume(i1 %i.ahl)
  %i.ahm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 2 ; 3 uses
  %i.ahn = load i8, ptr %i.ahg, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aho = shl nuw nsw i32 %i.ahk, 6
  %i.ahp = and i8 %i.ahn, 63
  %i.ahq = zext nneg i8 %i.ahp to i32             ; 2 uses
  %i.ahr = or disjoint i32 %i.aho, %i.ahq
  %i.ahs = icmp samesign ugt i8 %i.ahh, -33
  br i1 %i.ahs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aht = zext nneg i8 %i.ahh to i32
  br label %bb.fo

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189
  %i.ahu = icmp ne ptr %i.ahm, %i.adn
  tail call void @llvm.assume(i1 %i.ahu)
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 3 ; 3 uses
  %i.ahw = load i8, ptr %i.ahm, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.ahx = shl nuw nsw i32 %i.ahq, 6
  %i.ahy = and i8 %i.ahw, 63
  %i.ahz = zext nneg i8 %i.ahy to i32
  %i.aia = or disjoint i32 %i.ahx, %i.ahz         ; 2 uses
  %i.aib = shl nuw nsw i32 %i.ahk, 12
  %i.aic = or disjoint i32 %i.aia, %i.aib
  %i.aid = icmp samesign ugt i8 %i.ahh, -17
  br i1 %i.aid, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193, label %bb.fo

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192
  %i.aie = icmp ne ptr %i.ahv, %i.adn
  tail call void @llvm.assume(i1 %i.aie)
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 4
  %i.aig = load i8, ptr %i.ahv, align 1, !alias.scope !2552, !noalias !2555, !noundef !19
  %i.aih = shl nuw nsw i32 %i.ahk, 18
  %i.aii = and i32 %i.aih, 1835008
  %i.aij = shl nuw nsw i32 %i.aia, 6
  %i.aik = and i8 %i.aig, 63
  %i.ail = zext nneg i8 %i.aik to i32
  %i.aim = or disjoint i32 %i.aij, %i.ail
  %i.ain = or disjoint i32 %i.aim, %i.aii
  br label %bb.fo

bb.fo:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192, %bb.fn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189
  %.sroa.0.1.i190 = phi ptr [ %i.ahg, %bb.fn ], [ %i.aif, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193 ], [ %i.ahv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192 ], [ %i.ahm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189 ] ; 4 uses
  %.sroa.4.0.i.ph.i.i191 = phi i32 [ %i.aht, %bb.fn ], [ %i.ain, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193 ], [ %i.aic, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192 ], [ %i.ahr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189 ] ; 6 uses
  %i.aio = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i191, 1114112
  tail call void @llvm.assume(i1 %i.aio)
  %i.aip = ptrtoint ptr %.sroa.0.1.i190 to i64
  %i.aiq = sub i64 %.sroa.11.0.i, %i.ahe
  %i.air = add i64 %i.aiq, %i.aip                 ; 3 uses
  %i.ais = icmp eq i32 %.sroa.4.0.i.ph.i.i191, 46
  br i1 %i.ais, label %.split.us.i, label %bb.fp

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195: ; preds = %.outer.split.us.i, %.outer.split.preheader.i
  %i.ait = trunc nuw i8 %.sroa.03.0.ph.i to i1
  br i1 %i.ait, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.thread.i182:                                     ; preds = %.peel.next.i181, %.peel.next.i181.preheader
  %.lcssa409 = phi i32 [ %i.ams, %.peel.next.i181.preheader ], [ %i.apa, %.peel.next.i181 ] ; 2 uses
  %i.aiu = sub i32 0, %.lcssa409
  %.sroa.040.0.i = select i1 %.sroa.031.3300.i, i32 %i.aiu, i32 %.lcssa409
  br i1 %.not89.i374, label %bb.go, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595

.split.us.i:                                      ; preds = %bb.fo, %bb.fk, %bb.ff
  %.us-phi189.i = phi ptr [ %.sroa.0.1.us.i, %bb.fk ], [ %.sroa.0.1.peel.i, %bb.ff ], [ %.sroa.0.1.i190, %bb.fo ]
  %.us-phi190.i = phi i64 [ %i.agw, %bb.fk ], [ %i.afc, %bb.ff ], [ %i.air, %bb.fo ]
  %.us-phi191.i = phi i64 [ %.sroa.11.0.ph.i, %bb.fk ], [ %.sroa.11.0.ph.i, %bb.ff ], [ %.sroa.11.0.i, %bb.fo ]
  %.us-phi192.i = phi i8 [ %.sroa.03.0.ph.i, %bb.fk ], [ %.sroa.03.0.ph.i, %bb.ff ], [ 1, %bb.fo ]
  %.not91.i = icmp eq i64 %.sroa.010.0.ph.i, %i.add
  br i1 %.not91.i, label %.outer.i173.backedge, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.fp:                                            ; preds = %bb.fo
  %i.aiv = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i191, 57
  %i.aiw = add nsw i32 %.sroa.4.0.i.ph.i.i191, -65
  %i.aix = and i32 %i.aiw, -33
  %i.aiy = add nuw nsw i32 %i.aix, 10
  %i.aiz = add nsw i32 %.sroa.4.0.i.ph.i.i191, -48
  %.sroa.02.0.i.i = select i1 %i.aiv, i32 %i.aiy, i32 %i.aiz ; 3 uses
  %i.aja = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.aja, label %bb.fq, label %.split194.us.i

bb.fq:                                            ; preds = %bb.fp
  %i.ajb = icmp eq i32 %.sroa.02.0.i.i, 0
  br i1 %i.ajb, label %.outer.split.i, label %.split203.us.i, !llvm.loop !2560

.split194.us.i.loopexit306:                       ; preds = %bb.fg, %bb.fl
  %.us-phi199.i.ph = phi i32 [ %.sroa.4.0.i.ph.i.peel.i, %bb.fg ], [ %.sroa.4.0.i.ph.i.us.i, %bb.fl ]
  %i.ajc = trunc nuw i8 %.sroa.03.0.ph.i to i1
  br label %.split194.us.i

.split194.us.i:                                   ; preds = %bb.fp, %.split194.us.i.loopexit306
  %.not89.i374 = phi i1 [ %.not89.i.not, %.split194.us.i.loopexit306 ], [ false, %bb.fp ]
  %.us-phi199.i = phi i32 [ %.us-phi199.i.ph, %.split194.us.i.loopexit306 ], [ %.sroa.4.0.i.ph.i.i191, %bb.fp ]
  %.us-phi200.i = phi i64 [ %.sroa.11.0.ph.i, %.split194.us.i.loopexit306 ], [ %.sroa.11.0.i, %bb.fp ] ; 5 uses
  %.us-phi201.i = phi i1 [ %i.ajc, %.split194.us.i.loopexit306 ], [ true, %bb.fp ]
  store i128 %4, ptr %i.c, align 16
  switch i32 %.us-phi199.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread [
    i32 112, label %bb.gb
    i32 80, label %bb.gb
  ]

.split203.us.i:                                   ; preds = %bb.fq, %bb.fl, %bb.fh
  %.us-phi204.i = phi i32 [ %.sroa.02.0.i.us.i, %bb.fl ], [ %.sroa.02.0.i.peel.i, %bb.fh ], [ %.sroa.02.0.i.i, %bb.fq ] ; 5 uses
  %.us-phi205.i = phi ptr [ %.sroa.0.1.us.i, %bb.fl ], [ %.sroa.0.1.peel.i, %bb.fh ], [ %.sroa.0.1.i190, %bb.fq ] ; 8 uses
  %.us-phi206.i = phi i64 [ %i.agw, %bb.fl ], [ %i.afc, %bb.fh ], [ %i.air, %bb.fq ] ; 8 uses
  %.us-phi207.i = phi i64 [ %.sroa.4.0.ph.i, %bb.fl ], [ %.sroa.11.0.ph.i, %bb.fh ], [ %.sroa.11.0.i, %bb.fq ] ; 8 uses
  %i.ajd = add i64 %.sroa.07.0.ph.i, -4           ; 10 uses
  %i.aje = icmp sgt i64 %i.ajd, -1
  br i1 %i.aje, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.split203.us.i
  %.not90.i = icmp eq i8 %.sroa.025.0.ph.i, -1
  br i1 %.not90.i, label %bb.fu, label %bb.ft

bb.fs:                                            ; preds = %.split203.us.i
  %i.ajf = zext nneg i32 %.us-phi204.i to i128
  %i.ajg = and i64 %i.ajd, 127
  %i.ajh = zext nneg i64 %i.ajg to i128
  %i.aji = shl i128 %i.ajf, %i.ajh
  %i.ajj = or i128 %i.aji, %i.ado                 ; 2 uses
  br label %.outer.i173.backedge

bb.ft:                                            ; preds = %bb.fr
  %i.ajk = icmp eq i32 %.us-phi204.i, 0
  br i1 %i.ajk, label %.outer.i173.backedge, label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  switch i32 %.us-phi204.i, label %bb.fx [
    i32 0, label %.outer.i173.backedge
    i32 8, label %bb.fy
  ]

bb.fv:                                            ; preds = %bb.ft
  %i.ajl = icmp eq i8 %.sroa.025.0.ph.i, 0
  br i1 %i.ajl, label %.outer.i173.backedge, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ajm = icmp eq i8 %.sroa.025.0.ph.i, 2
  %spec.store.select.i186 = select i1 %i.ajm, i8 3, i8 %.sroa.025.0.ph.i
  br label %.outer.i173.backedge

bb.fx:                                            ; preds = %bb.fu
  %i.ajn = add nsw i32 %.us-phi204.i, -1
  %or.cond.i = icmp ult i32 %i.ajn, 7
  br i1 %or.cond.i, label %.outer.i173.backedge, label %bb.fz

bb.fy:                                            ; preds = %bb.fu
  br label %.outer.i173.backedge

bb.fz:                                            ; preds = %bb.fx
  %i.ajo = icmp samesign ugt i32 %.us-phi204.i, 8
  br i1 %i.ajo, label %.outer.i173.backedge, label %bb.ga, !prof !168

.outer.i173.backedge:                             ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %.split.us.i
  %.be = phi i128 [ %4, %.split.us.i ], [ %i.ajj, %bb.fs ], [ %4, %bb.ft ], [ %4, %bb.fv ], [ %4, %bb.fw ], [ %4, %bb.fu ], [ %4, %bb.fx ], [ %4, %bb.fy ], [ %4, %bb.fz ]
  %.be856 = phi i128 [ %i.ado, %.split.us.i ], [ %i.ajj, %bb.fs ], [ %i.ado, %bb.ft ], [ %i.ado, %bb.fv ], [ %i.ado, %bb.fw ], [ %i.ado, %bb.fu ], [ %i.ado, %bb.fx ], [ %i.ado, %bb.fy ], [ %i.ado, %bb.fz ]
  %.sroa.11.0.ph.i.be = phi i64 [ %.us-phi190.i, %.split.us.i ], [ %.us-phi206.i, %bb.fs ], [ %.us-phi206.i, %bb.ft ], [ %.us-phi206.i, %bb.fv ], [ %.us-phi206.i, %bb.fw ], [ %.us-phi206.i, %bb.fu ], [ %.us-phi206.i, %bb.fx ], [ %.us-phi206.i, %bb.fy ], [ %.us-phi206.i, %bb.fz ]
  %.sroa.0.0.ph.i.be = phi ptr [ %.us-phi189.i, %.split.us.i ], [ %.us-phi205.i, %bb.fs ], [ %.us-phi205.i, %bb.ft ], [ %.us-phi205.i, %bb.fv ], [ %.us-phi205.i, %bb.fw ], [ %.us-phi205.i, %bb.fu ], [ %.us-phi205.i, %bb.fx ], [ %.us-phi205.i, %bb.fy ], [ %.us-phi205.i, %bb.fz ]
  %.sroa.025.0.ph.i.be = phi i8 [ %.sroa.025.0.ph.i, %.split.us.i ], [ %.sroa.025.0.ph.i, %bb.fs ], [ %.sroa.025.0.ph.i, %bb.ft ], [ 1, %bb.fv ], [ %spec.store.select.i186, %bb.fw ], [ 0, %bb.fu ], [ 1, %bb.fx ], [ 2, %bb.fy ], [ 3, %bb.fz ]
  %.sroa.4.0.ph.i.be = phi i64 [ %.sroa.4.0.ph.i, %.split.us.i ], [ %.us-phi207.i, %bb.fs ], [ %.us-phi207.i, %bb.ft ], [ %.us-phi207.i, %bb.fv ], [ %.us-phi207.i, %bb.fw ], [ %.us-phi207.i, %bb.fu ], [ %.us-phi207.i, %bb.fx ], [ %.us-phi207.i, %bb.fy ], [ %.us-phi207.i, %bb.fz ]
  %.sroa.021.0.ph.i.be = phi i64 [ %.sroa.021.0.ph.i, %.split.us.i ], [ 1, %bb.fs ], [ 1, %bb.ft ], [ 1, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %bb.fx ], [ 1, %bb.fy ], [ 1, %bb.fz ]
  %.sroa.010.0.ph.i.be = phi i64 [ %.us-phi191.i, %.split.us.i ], [ %.sroa.010.0.ph.i, %bb.fs ], [ %.sroa.010.0.ph.i, %bb.ft ], [ %.sroa.010.0.ph.i, %bb.fv ], [ %.sroa.010.0.ph.i, %bb.fw ], [ %.sroa.010.0.ph.i, %bb.fu ], [ %.sroa.010.0.ph.i, %bb.fx ], [ %.sroa.010.0.ph.i, %bb.fy ], [ %.sroa.010.0.ph.i, %bb.fz ]
  %.sroa.07.0.ph.i.be = phi i64 [ %.sroa.07.0.ph.i, %.split.us.i ], [ %i.ajd, %bb.fs ], [ %i.ajd, %bb.ft ], [ %i.ajd, %bb.fv ], [ %i.ajd, %bb.fw ], [ %i.ajd, %bb.fu ], [ %i.ajd, %bb.fx ], [ %i.ajd, %bb.fy ], [ %i.ajd, %bb.fz ]
  %.sroa.03.0.ph.i.be = phi i8 [ %.us-phi192.i, %.split.us.i ], [ 1, %bb.fs ], [ 1, %bb.ft ], [ 1, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %bb.fx ], [ 1, %bb.fy ], [ 1, %bb.fz ]
  br label %.outer.i173

bb.ga:                                            ; preds = %bb.fz
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #35, !noalias !2549
  unreachable

bb.gb:                                            ; preds = %.split194.us.i, %.split194.us.i
  br i1 %.us-phi201.i, label %bb.gc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.gc:                                            ; preds = %bb.gb
  %i.ajp = icmp eq i64 %.sroa.010.0.ph.i, %i.add
  %spec.store.select2.i = select i1 %i.ajp, i64 %.us-phi200.i, i64 %.sroa.010.0.ph.i ; 3 uses
  %i.ajq = add i64 %.us-phi200.i, 1               ; 7 uses
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %.not.i.i174 = icmp ult i64 %i.ajq, %i.add
  br i1 %.not.i.i174, label %bb.ge, label %.split.i.i175

.split.i.i175:                                    ; preds = %bb.gd
  %i.ajs = icmp eq i64 %i.ajq, %i.add
  br i1 %i.ajs, label %bb.gf, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.ajq
  %i.aju = load i8, ptr %i.ajt, align 1, !alias.scope !2561, !noalias !2549, !noundef !19
  %i.ajv = icmp sgt i8 %i.aju, -65
  br i1 %i.ajv, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge, %.split.i.i175, %bb.gc
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.ajq ; 5 uses
  %.not.i.i.i.i176 = icmp samesign eq i64 %i.ajq, %i.add
  br i1 %.not.i.i.i.i176, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 1 ; 2 uses
  %i.ajy = load i8, ptr %i.ajw, align 1, !alias.scope !2552, !noalias !2564, !noundef !19 ; 5 uses
  %i.ajz = icmp sgt i8 %i.ajy, -1
  br i1 %i.ajz, label %bb.gh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177: ; preds = %bb.gg
  %i.aka = and i8 %i.ajy, 31
  %i.akb = zext nneg i8 %i.aka to i32             ; 3 uses
  %i.akc = add i64 %.us-phi200.i, 2
  %i.akd = icmp samesign ne i64 %i.akc, %i.add
  tail call void @llvm.assume(i1 %i.akd)
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajw, i64 2 ; 2 uses
  %i.akf = load i8, ptr %i.ajx, align 1, !alias.scope !2552, !noalias !2564, !noundef !19
  %i.akg = shl nuw nsw i32 %i.akb, 6
  %i.akh = and i8 %i.akf, 63
  %i.aki = zext nneg i8 %i.akh to i32             ; 2 uses
  %i.akj = or disjoint i32 %i.akg, %i.aki
  %i.akk = icmp samesign ugt i8 %i.ajy, -33
  br i1 %i.akk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

bb.gh:                                            ; preds = %bb.gg
  %i.akl = zext nneg i8 %i.ajy to i32
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177
  %i.akm = add i64 %.us-phi200.i, 3
  %i.akn = icmp samesign ne i64 %i.akm, %i.add
  tail call void @llvm.assume(i1 %i.akn)
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajw, i64 3 ; 2 uses
  %i.akp = load i8, ptr %i.ake, align 1, !alias.scope !2552, !noalias !2564, !noundef !19
  %i.akq = shl nuw nsw i32 %i.aki, 6
  %i.akr = and i8 %i.akp, 63
  %i.aks = zext nneg i8 %i.akr to i32
  %i.akt = or disjoint i32 %i.akq, %i.aks         ; 2 uses
  %i.aku = shl nuw nsw i32 %i.akb, 12
  %i.akv = or disjoint i32 %i.akt, %i.aku
  %i.akw = icmp samesign ugt i8 %i.ajy, -17
  br i1 %i.akw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184
  %i.akx = add i64 %.us-phi200.i, 4
  %i.aky = icmp samesign ne i64 %i.akx, %i.add
  tail call void @llvm.assume(i1 %i.aky)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.ala = load i8, ptr %i.ako, align 1, !alias.scope !2552, !noalias !2564, !noundef !19
  %i.alb = shl nuw nsw i32 %i.akb, 18
  %i.alc = and i32 %i.alb, 1835008
  %i.ald = shl nuw nsw i32 %i.akt, 6
  %i.ale = and i8 %i.ala, 63
  %i.alf = zext nneg i8 %i.ale to i32
  %i.alg = or disjoint i32 %i.ald, %i.alf
  %i.alh = or disjoint i32 %i.alg, %i.alc
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184, %bb.gh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177
  %.sroa.0119.2.i = phi ptr [ %i.ake, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177 ], [ %i.ajx, %bb.gh ], [ %i.akz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185 ], [ %i.ako, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184 ] ; 7 uses
  %spec.select.i.i.i.i179 = phi i32 [ %i.akj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177 ], [ %i.akl, %bb.gh ], [ %i.alh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185 ], [ %i.akv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184 ] ; 2 uses
  switch i32 %spec.select.i.i.i.i179, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i [
    i32 45, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i
    i32 43, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i
  ]

bb.gi:                                            ; preds = %bb.ge, %.split.i.i175
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ade, i64 noundef range(i64 1, 0) %i.add, i64 noundef %i.ajq, i64 noundef range(i64 1, 0) %i.add, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #35, !noalias !2549
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3299.i = phi i1 [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i ]
  %i.ali = icmp eq ptr %.sroa.0119.2.i, %i.adn
  br i1 %i.ali, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 1 ; 3 uses
  %i.alk = load i8, ptr %.sroa.0119.2.i, align 1, !alias.scope !2552, !noalias !2574, !noundef !19 ; 5 uses
  %i.all = icmp sgt i8 %i.alk, -1
  br i1 %i.all, label %bb.gk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i: ; preds = %bb.gj
  %i.alm = and i8 %i.alk, 31
  %i.aln = zext nneg i8 %i.alm to i32             ; 3 uses
  %i.alo = icmp ne ptr %i.alj, %i.adn
  tail call void @llvm.assume(i1 %i.alo)
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 2 ; 3 uses
  %i.alq = load i8, ptr %i.alj, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.alr = shl nuw nsw i32 %i.aln, 6
  %i.als = and i8 %i.alq, 63
  %i.alt = zext nneg i8 %i.als to i32             ; 2 uses
  %i.alu = or disjoint i32 %i.alr, %i.alt
  %i.alv = icmp samesign ugt i8 %i.alk, -33
  br i1 %i.alv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, label %bb.gl

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %i.alw = icmp ne ptr %i.alp, %i.adn
  tail call void @llvm.assume(i1 %i.alw)
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 3 ; 3 uses
  %i.aly = load i8, ptr %i.alp, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.alz = shl nuw nsw i32 %i.alt, 6
  %i.ama = and i8 %i.aly, 63
  %i.amb = zext nneg i8 %i.ama to i32
  %i.amc = or disjoint i32 %i.alz, %i.amb         ; 2 uses
  %i.amd = shl nuw nsw i32 %i.aln, 12
  %i.ame = or disjoint i32 %i.amc, %i.amd
  %i.amf = icmp samesign ugt i8 %i.alk, -17
  br i1 %i.amf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, label %bb.gl

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i
  %i.amg = icmp ne ptr %i.alx, %i.adn
  tail call void @llvm.assume(i1 %i.amg)
  %i.amh = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 4
  %i.ami = load i8, ptr %i.alx, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.amj = shl nuw nsw i32 %i.aln, 18
  %i.amk = and i32 %i.amj, 1835008
  %i.aml = shl nuw nsw i32 %i.amc, 6
  %i.amm = and i8 %i.ami, 63
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = or disjoint i32 %i.aml, %i.amn
  %i.amp = or disjoint i32 %i.amo, %i.amk
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.amq = zext nneg i8 %i.alk to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %.sroa.0129.2.ph.peel.i = phi ptr [ %i.alp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.alx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.alj, %bb.gk ]
  %.sroa.4.0.i112.ph.peel.i = phi i32 [ %i.alu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.ame, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.amq, %bb.gk ] ; 2 uses
  %i.amr = icmp samesign ult i32 %.sroa.4.0.i112.ph.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.amr)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i: ; preds = %bb.gl, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3300.i = phi i1 [ %.sroa.031.3299.i, %bb.gl ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %.sroa.0129.1.peel.i = phi ptr [ %.sroa.0129.2.ph.peel.i, %bb.gl ], [ %.sroa.0119.2.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ] ; 3 uses
  %.sroa.036.0.peel.i = phi i32 [ %.sroa.4.0.i112.ph.peel.i, %bb.gl ], [ %spec.select.i.i.i.i179, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %i.ams = add nsw i32 %.sroa.036.0.peel.i, -48   ; 3 uses
  %i.amt = icmp ult i32 %i.ams, 10
  br i1 %i.amt, label %.peel.next.i181.preheader, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.peel.next.i181.preheader:                        ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0129.1.peel.i) ]
  %i.amu = icmp eq ptr %.sroa.0129.1.peel.i, %i.adn
  br i1 %i.amu, label %.thread.i182, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i181.preheader, %.peel.next.i181
  %.sroa.0129.0.i411 = phi ptr [ %.sroa.0129.2.ph.i, %.peel.next.i181 ], [ %.sroa.0129.1.peel.i, %.peel.next.i181.preheader ] ; 5 uses
  %i.amv = phi i32 [ %i.apa, %.peel.next.i181 ], [ %i.ams, %.peel.next.i181.preheader ] ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 1 ; 3 uses
  %i.amx = load i8, ptr %.sroa.0129.0.i411, align 1, !alias.scope !2552, !noalias !2574, !noundef !19 ; 5 uses
  %i.amy = icmp sgt i8 %i.amx, -1
  br i1 %i.amy, label %bb.gm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i: ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
  %i.anf = and i8 %i.and, 63
  %i.ang = zext nneg i8 %i.anf to i32             ; 2 uses
  %i.anh = or disjoint i32 %i.ane, %i.ang
  %i.ani = icmp samesign ugt i8 %i.amx, -33
  br i1 %i.ani, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph
  %i.anj = zext nneg i8 %i.amx to i32
  br label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %i.ank = icmp ne ptr %i.anc, %i.adn
  tail call void @llvm.assume(i1 %i.ank)
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 3 ; 3 uses
  %i.anm = load i8, ptr %i.anc, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.ann = shl nuw nsw i32 %i.ang, 6
  %i.ano = and i8 %i.anm, 63
  %i.anp = zext nneg i8 %i.ano to i32
  %i.anq = or disjoint i32 %i.ann, %i.anp         ; 2 uses
  %i.anr = shl nuw nsw i32 %i.ana, 12
  %i.ans = or disjoint i32 %i.anq, %i.anr
  %i.ant = icmp samesign ugt i8 %i.amx, -17
  br i1 %i.ant, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, label %bb.gn

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i
  %i.anu = icmp ne ptr %i.anl, %i.adn
  tail call void @llvm.assume(i1 %i.anu)
  %i.anv = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 4
  %i.anw = load i8, ptr %i.anl, align 1, !alias.scope !2552, !noalias !2574, !noundef !19
  %i.anx = shl nuw nsw i32 %i.ana, 18
  %i.any = and i32 %i.anx, 1835008
  %i.anz = shl nuw nsw i32 %i.anq, 6
  %i.aoa = and i8 %i.anw, 63
  %i.aob = zext nneg i8 %i.aoa to i32
  %i.aoc = or disjoint i32 %i.anz, %i.aob
  %i.aod = or disjoint i32 %i.aoc, %i.any
  br label %bb.gn

bb.gn:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i, %bb.gm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i
  %.sroa.0129.2.ph.i = phi ptr [ %i.anc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.anl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.anv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.amw, %bb.gm ] ; 2 uses
  %.sroa.4.0.i112.ph.i = phi i32 [ %i.anh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i ], [ %i.ans, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.i ], [ %i.aod, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.i ], [ %i.anj, %bb.gm ] ; 2 uses
  %i.aoe = icmp samesign ult i32 %.sroa.4.0.i112.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aoe)
  %i.aof = add nsw i32 %.sroa.4.0.i112.ph.i, -48  ; 2 uses
  %i.aog = icmp ult i32 %i.aof, 10
  br i1 %i.aog, label %bb.gv, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194: ; preds = %.outer.split.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.go:                                            ; preds = %.thread.i182
  %i.aoh = icmp ugt i64 %spec.store.select2.i, %.sroa.4.0.ph.i
  br i1 %i.aoh, label %bb.gr, label %bb.gp

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595: ; preds = %.thread.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(32) @66, i64 32, i1 false), !noalias !2552
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 0, ptr %.sroa.442.0..sroa_idx.i, align 16, !alias.scope !2549, !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gz

bb.gp:                                            ; preds = %bb.go
  %i.aoi = xor i64 %spec.store.select2.i, -1
  %i.aoj = add i64 %.sroa.4.0.ph.i, %i.aoi        ; 2 uses
  %i.aok = icmp ugt i64 %i.aoj, 2147483647
  %i.aol = shl nuw nsw i64 %i.aoj, 32
  %.sroa.071.0.insert.insert.i = select i1 %i.aok, i64 513, i64 %i.aol ; 2 uses
  %i.aom = trunc i64 %.sroa.071.0.insert.insert.i to i1
  br i1 %i.aom, label %bb.gq, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i, !prof !167

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2577
  store i8 2, ptr %i.a, align 1, !noalias !2577
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #35, !noalias !2549
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i: ; preds = %bb.gp
  %.sroa.6.0.extract.shift.i93.i = lshr i64 %.sroa.071.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i94.i = trunc nuw i64 %.sroa.6.0.extract.shift.i93.i to i32
  %i.aon = sub nsw i32 0, %.sroa.6.0.extract.trunc.i94.i
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %i.aoo = sub nuw i64 %spec.store.select2.i, %.sroa.4.0.ph.i ; 2 uses
  %i.aop = icmp ugt i64 %i.aoo, 2147483647
  %i.aoq = shl nuw nsw i64 %i.aoo, 32
  %.sroa.075.0.insert.insert.i = select i1 %i.aop, i64 513, i64 %i.aoq ; 2 uses
  %i.aor = trunc i64 %.sroa.075.0.insert.insert.i to i1
  br i1 %i.aor, label %bb.gs, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2580
  store i8 2, ptr %i.b, align 1, !noalias !2580
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !noalias !2549
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.gr
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.075.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  br label %bb.gt

bb.gt:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i
  %.sroa.044.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit.i ], [ %i.aon, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide.exit97.i ] ; 3 uses
  %i.aos = shl nsw i32 %.sroa.044.0.i, 2
  %i.aot = add i32 %.sroa.044.0.i, -536870912
  %i.aou = icmp ult i32 %i.aot, -1073741824
  br i1 %i.aou, label %bb.gu, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit, !prof !167

bb.gu:                                            ; preds = %bb.gt
  %i.aov = icmp sgt i32 %.sroa.044.0.i, -1
  %..i = select i1 %i.aov, i32 2147483647, i32 -2147483648
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit

bb.gv:                                            ; preds = %bb.gn
  %i.aow = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.amv, i32 10) ; 2 uses
  %i.aox = extractvalue { i32, i1 } %i.aow, 0
  %i.aoy = extractvalue { i32, i1 } %i.aow, 1
  br i1 %i.aoy, label %bb.gw, label %.peel.next.i181, !prof !167

bb.gw:                                            ; preds = %bb.gv
  %i.aoz = icmp sgt i32 %i.amv, -1
  %.92.i = select i1 %i.aoz, i32 2147483647, i32 -2147483648
  br label %.peel.next.i181

.peel.next.i181:                                  ; preds = %bb.gw, %bb.gv
  %.sroa.069.0.i = phi i32 [ %i.aox, %bb.gv ], [ %.92.i, %bb.gw ]
  %i.apa = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.069.0.i, i32 %i.aof) ; 2 uses
  %i.apb = icmp eq ptr %.sroa.0129.2.ph.i, %i.adn
  br i1 %i.apb, label %.thread.i182, label %.lr.ph, !llvm.loop !2583

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %.split.us.i, %bb.gn, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, %bb.gf, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i, %bb.gb, %.split194.us.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194
  %.sink699 = phi ptr [ @64, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ @79, %bb.gn ], [ @80, %.split194.us.i ], [ @64, %bb.gb ], [ @85, %bb.gf ], [ @86, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ @85, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ @79, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ @63, %.split.us.i ]
  %.sink = phi i64 [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195 ], [ 29, %bb.gn ], [ 32, %.split194.us.i ], [ 25, %bb.gb ], [ 22, %bb.gf ], [ 31, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194 ], [ 22, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i ], [ 29, %.split.us.i ]
  store ptr %.sink699, ptr %i.aa, align 16, !alias.scope !2549, !noalias !2552
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sink, ptr %i.apc, align 8, !alias.scope !2549, !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.gy

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %bb.gt, %bb.gu
  %.sroa.070.0.i = phi i32 [ %i.aos, %bb.gt ], [ %..i, %bb.gu ]
  %i.apd = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.070.0.i, i32 -1)
  %i.ape = tail call i32 @llvm.sadd.sat.i32(i32 %i.apd, i32 11)
  %i.apf = tail call i32 @llvm.sadd.sat.i32(i32 %i.ape, i32 -128)
  %i.apg = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.040.0.i, i32 %i.apf)
  store i32 %i.apg, ptr %i.adk, align 16, !noalias !2554
  %.not.i183 = icmp eq i8 %.sroa.025.0.ph.i, -1
  %..sroa.025.0.i = select i1 %.not.i183, i8 0, i8 %.sroa.025.0.ph.i
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, i8 noundef range(i8 0, 5) %.sroa.028.0, i8 noundef %..sroa.025.0.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 21
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !1722 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aph = icmp eq i8 %.pre, 2
  br i1 %i.aph, label %bb.gy, label %bb.gz

bb.gx:                                            ; preds = %bb.fa
  store ptr @165, ptr %0, align 16
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.api, align 8
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.apj, align 1
  br label %bb.ha

bb.gy:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.apk = load ptr, ptr %i.aa, align 16, !nonnull !19, !noundef !19
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.apm = load i64, ptr %i.apl, align 8, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.apk, ptr %0, align 16
  %i.apn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.apm, ptr %i.apn, align 8
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.apo, align 1
  br label %bb.ha

bb.gz:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit
  %i.app = phi i8 [ 0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595 ], [ %.pre, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit ]
  %.sroa.0117.0.copyload = load ptr, ptr %i.aa, align 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4118.0.copyload = load i64, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5119.sroa.0.0.copyload = load i32, ptr %.sroa.5119.0..sroa_idx, align 16
  %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.5119.sroa.4.0.copyload = load i8, ptr %.sroa.5119.sroa.4.0..sroa.5119.0..sroa_idx.sroa_idx, align 4
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7121.0..sroa_idx, i64 10, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fb

bb.ha:                                            ; preds = %bb.ab, %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread, %bb.gy, %bb.gx, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, %bb.fb, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 10 uses
  %i.k = alloca [32 x i8], align 16               ; 8 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [48 x i8], align 16               ; 10 uses
  %i.q = alloca [48 x i8], align 16               ; 12 uses
  %i.r = alloca [48 x i8], align 16               ; 12 uses
  %i.s = alloca [48 x i8], align 16               ; 12 uses
  %i.t = alloca [48 x i8], align 16               ; 15 uses
  %i.u = alloca [48 x i8], align 16               ; 25 uses
  %i.v = alloca [48 x i8], align 16               ; 12 uses
  %i.w = alloca [48 x i8], align 16               ; 9 uses
  %i.x = alloca [32 x i8], align 16               ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 14 uses
  %.sroa.9 = alloca [10 x i8], align 2            ; 6 uses
  %i.z = alloca [32 x i8], align 16               ; 6 uses
  %.sroa.9140 = alloca [10 x i8], align 2         ; 3 uses
  %i.aa = alloca [48 x i8], align 16              ; 17 uses
  %.sroa.14 = alloca [10 x i8], align 2           ; 3 uses
  %i.ab = icmp eq i64 %2, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 1) ; 6 uses
  %.sroa.0130.0 = zext i1 %i.ac to i8             ; 2 uses
  %i.ad = sext i1 %i.ac to i64
  %.sroa.18.0 = add i64 %2, %i.ad                 ; 7 uses
  %.sroa.0.0.idx = zext i1 %i.ac to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 9 uses
  %i.ae = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.18.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 1) ; 2 uses
  %i.af = xor i1 %i.ae, true
  %i.ag = or i1 %i.ac, %i.af                      ; 4 uses
  %not. = xor i1 %i.ag, true                      ; 2 uses
  %i.ah = sext i1 %not. to i64
  %.sroa.18.1 = add i64 %.sroa.18.0, %i.ah        ; 23 uses
  %.sroa.0.1.idx = zext i1 %not. to i64
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.0.1.idx ; 24 uses
  switch i64 %.sroa.18.1, label %bb.i [
    i64 3, label %bb.d
    i64 8, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  store ptr @166, ptr %0, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.aj, align 1
  br label %bb.ha

bb.d:                                             ; preds = %bb.b
  %i.ak = load i16, ptr %.sroa.0.1, align 1
  %i.al = xor i16 %i.ak, 28233
  %i.am = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i16
  %i.ap = xor i16 %i.ao, 102
  %i.aq = or i16 %i.al, %i.ap
  %i.ar = icmp ne i16 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.p, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.au = load i16, ptr %.sroa.0.1, align 1
  %i.av = xor i16 %i.au, 28265
  %i.aw = getelementptr i8, ptr %.sroa.0.1, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  %i.az = xor i16 %i.ay, 102
  %i.ba = or i16 %i.av, %i.az
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.o, label %.thread272

bb.h:                                             ; preds = %bb.b
  %i.be = load i64, ptr %.sroa.0.1, align 1
  %i.bf = icmp ne i64 %i.be, 6436850368004902473
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.h
  br i1 %i.ag, label %bb.k, label %bb.aa

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.o, label %.thread272

bb.k:                                             ; preds = %bb.i
  %i.bi = icmp samesign eq i64 %.sroa.18.0, 0
  br i1 %i.bi, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.k
  %i.bj = ptrtoint ptr %.sroa.0.0 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %i.bl = load i8, ptr %.sroa.0.0, align 1, !alias.scope !2584, !noalias !2587, !noundef !19 ; 5 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i: ; preds = %.thread
  %i.bn = and i8 %i.bl, 31
  %i.bo = zext nneg i8 %i.bn to i32               ; 3 uses
  %i.bp = icmp samesign ne i64 %.sroa.18.0, 1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 2 uses
  %i.br = load i8, ptr %i.bk, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.bs = shl nuw nsw i32 %i.bo, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32               ; 2 uses
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = icmp samesign ugt i8 %i.bl, -33
  br i1 %i.bw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

bb.l:                                             ; preds = %.thread
  %i.bx = zext nneg i8 %i.bl to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.by = icmp samesign ne i64 %.sroa.18.0, 2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 2 uses
  %i.ca = load i8, ptr %i.bq, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.cb = shl nuw nsw i32 %i.bu, 6
  %i.cc = and i8 %i.ca, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = shl nuw nsw i32 %i.bo, 12
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bl, -17
  br i1 %i.ch, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i
  %i.ci = icmp samesign ne i64 %.sroa.18.0, 3
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.ck = load i8, ptr %i.bz, align 1, !alias.scope !2584, !noalias !2587, !noundef !19
  %i.cl = shl nuw nsw i32 %i.bo, 18
  %i.cm = and i32 %i.cl, 1835008
  %i.cn = shl nuw nsw i32 %i.ce, 6
  %i.co = and i8 %i.ck, 63
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.cm
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i
  %i.cs = phi ptr [ %i.bz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bk, %bb.l ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.cg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i ], [ %i.cr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i ], [ %i.bx, %bb.l ] ; 2 uses
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ct)
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit [
    i32 115, label %bb.m
    i32 83, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.cu, %i.bj                    ; 2 uses
  %i.cw = sub nuw i64 %.sroa.18.0, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.cv
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i, %bb.m
  %.sroa.7210.0 = phi i64 [ %i.cw, %bb.m ], [ %.sroa.18.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.18.1, %bb.k ] ; 5 uses
  %.sroa.5209.0 = phi ptr [ %i.cx, %bb.m ], [ %.sroa.0.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %.sroa.0208.0 = phi i1 [ true, %bb.m ], [ false, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i ], [ false, %bb.k ] ; 2 uses
  %i.cy = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 3)
  %i.cz = add i64 %.sroa.7210.0, -3               ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5209.0, i64 3 ; 3 uses
  br i1 %i.cy, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
  %i.db = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5209.0, i64 noundef %.sroa.7210.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3), !noalias !2595
  br i1 %i.db, label %select.unfold, label %bb.aa

bb.o:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.14, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide.exit.thread

select.unfold:                                    ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE6map_orTbBI_ENCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB16_9IeeeFloatNtB16_5QuadSENtB18_5Float10from_str_rs2_0ECslLuZgPVt6hg_3ide.exit
end_hunk_4
begin_hunk_5_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
  %i.abn = icmp eq i64 %i.abm, 0
  br i1 %i.abn, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abo = add i64 %i.abm, -1
  store i64 %i.abo, ptr %.sink9.i356.i, align 8, !noalias !2652
  %.pre704.i = load i64, ptr %i.rr, align 16, !alias.scope !2804, !noalias !2807
  %.pre705.i = load i64, ptr %i.se, align 8, !alias.scope !2804, !noalias !2807
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.abp = phi i64 [ %i.abe, %bb.em ], [ %.pre705.i, %bb.en ] ; 2 uses
  %i.abq = phi i64 [ %i.abf, %bb.em ], [ %.pre704.i, %bb.en ] ; 3 uses
  %i.abr = icmp ugt i64 %i.abq, 2                 ; 2 uses
  %.sink10.i352.i = select i1 %i.abr, i64 %i.abp, i64 %i.abq ; 2 uses
  %.not202.i = icmp eq i64 %.sink10.i352.i, 0
  br i1 %.not202.i, label %.critedge218.i, label %bb.ek

bb.ep:                                            ; preds = %bb.ef
  %.sink9.i328.i = select i1 %i.zv, ptr %i.sb, ptr %i.rm ; 2 uses
  %i.abs = load i64, ptr %.sink9.i328.i, align 8, !noalias !2652, !noundef !19 ; 2 uses
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.abu = add i64 %i.abs, -1
  store i64 %i.abu, ptr %.sink9.i328.i, align 8, !noalias !2652
  %.pre.i = load i64, ptr %i.rm, align 16, !alias.scope !2774, !noalias !2777
  %.pre703.i = load i64, ptr %i.sb, align 8, !alias.scope !2774, !noalias !2777
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.abv = phi i64 [ %i.zt, %bb.ep ], [ %.pre703.i, %bb.eq ] ; 2 uses
  %i.abw = phi i64 [ %i.zu, %bb.ep ], [ %.pre.i, %bb.eq ] ; 3 uses
  %i.abx = icmp ugt i64 %i.abw, 2                 ; 2 uses
  %.sink10.i324.i = select i1 %i.abx, i64 %i.abv, i64 %i.abw ; 2 uses
  %.not201.i = icmp eq i64 %.sink10.i324.i, 0
  br i1 %.not201.i, label %.critedge.i, label %bb.ef

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i: ; preds = %.body251.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.r)
          to label %.body.i unwind label %bb.ea, !noalias !2638

bb.es:                                            ; preds = %.thread514.i
  %i.aby = extractvalue { ptr, ptr } %i.rq, 0     ; 3 uses
  %i.abz = extractvalue { ptr, ptr } %i.rq, 1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aby) ]
  %i.aca = icmp eq ptr %i.aby, %i.abz
  br i1 %i.aca, label %._crit_edge.i, label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %bb.es, %bb.et
  %.sroa.049.2628.i = phi i128 [ %i.aci, %bb.et ], [ %.sroa.049.1520.i, %bb.es ]
  %.sroa.062.0627.i = phi ptr [ %i.acc, %bb.et ], [ %i.aby, %bb.es ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2652
  %i.acb = load i128, ptr %.sroa.062.0627.i, align 16, !noalias !2638, !noundef !19
  invoke fastcc void @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12widening_mul(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.x, i128 noundef %i.acb, i128 noundef %.sroa.053.1519.i)
          to label %bb.et unwind label %.loopexit543.i, !noalias !2638

._crit_edge.i:                                    ; preds = %bb.et, %bb.es
  %.sroa.049.2.lcssa.i = phi i128 [ %.sroa.049.1520.i, %bb.es ], [ %i.aci, %bb.et ] ; 2 uses
  %.not190.i = icmp eq i128 %.sroa.049.2.lcssa.i, 0
  br i1 %.not190.i, label %.outer.i.backedge, label %bb.eu

bb.et:                                            ; preds = %.lr.ph629.i
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.062.0627.i, i64 16 ; 2 uses
  %i.acd = load i128, ptr %i.x, align 16, !noalias !2652, !noundef !19 ; 2 uses
  %i.ace = load i128, ptr %i.pp, align 16, !noalias !2652, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2652
  %i.acf = add i128 %i.acd, %.sroa.049.2628.i     ; 2 uses
  %i.acg = icmp ult i128 %i.acf, %i.acd
  %i.ach = zext i1 %i.acg to i128
  %i.aci = add i128 %i.ace, %i.ach                ; 2 uses
  store i128 %i.acf, ptr %.sroa.062.0627.i, align 16, !noalias !2638
  %i.acj = icmp eq ptr %i.acc, %i.abz
  br i1 %i.acj, label %._crit_edge.i, label %.lr.ph629.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.ack = load i64, ptr %i.pq, align 16, !alias.scope !2809, !noalias !2814, !noundef !19 ; 2 uses
  %i.acl = icmp ugt i64 %i.ack, 2                 ; 2 uses
  %i.acm = load ptr, ptr %i.y, align 16, !alias.scope !2809, !noalias !2814, !nonnull !19
  %.sink10.i.i.i = select i1 %i.acl, ptr %i.acm, ptr %i.y
  %.sink9.i.i.i = select i1 %i.acl, ptr %i.pr, ptr %i.pq ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.ack, i64 2)
  %i.acn = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !2816, !noalias !2652, !noundef !19 ; 2 uses
  %i.aco = icmp eq i64 %i.acn, %.sink.i.i.i
  br i1 %i.aco, label %bb.ev, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, !prof !167

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %.noexc.i unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2638

.noexc.i:                                         ; preds = %bb.ev
  %i.acp = load ptr, ptr %i.y, align 16, !alias.scope !2816, !noalias !2652, !nonnull !19, !noundef !19
  %.pre.i.i = load i64, ptr %i.pr, align 8, !alias.scope !2816, !noalias !2652
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i: ; preds = %.noexc.i, %bb.eu
  %i.acq = phi i64 [ %.pre.i.i, %.noexc.i ], [ %i.acn, %bb.eu ]
  %.sroa.01.0.i.i = phi ptr [ %i.pr, %.noexc.i ], [ %.sink9.i.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0.i359.i = phi ptr [ %i.acp, %.noexc.i ], [ %.sink10.i.i.i, %bb.eu ]
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i359.i, i64 %i.acq
  store i128 %.sroa.049.2.lcssa.i, ptr %i.acr, align 16, !noalias !2638
  %i.acs = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2816, !noalias !2652, !noundef !19
  %i.act = add i64 %i.acs, 1
  store i64 %i.act, ptr %.sroa.01.0.i.i, align 8, !alias.scope !2816, !noalias !2652
  br label %.outer.i.backedge

bb.ew:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @93, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ex:                                            ; preds = %.thread499.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @94, i64 22), i64 10, i1 false)
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.ey:                                            ; preds = %bb.ay
  %i.acu = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ma, i32 10) ; 2 uses
  %i.acv = extractvalue { i32, i1 } %i.acu, 0
  %i.acw = extractvalue { i32, i1 } %i.acu, 1
  br i1 %i.acw, label %bb.ez, label %.peel.next.i, !prof !167

bb.ez:                                            ; preds = %bb.ey
  %i.acx = icmp sgt i32 %i.ma, -1
  %.219.i = select i1 %i.acx, i32 2147483647, i32 -2147483648
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ez, %bb.ey
  %.sroa.0127.0.i = phi i32 [ %i.acv, %bb.ey ], [ %.219.i, %bb.ez ]
  %i.acy = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.0127.0.i, i32 %i.nk) ; 2 uses
  %i.acz = icmp eq ptr %.sroa.0370.2.ph.i, %i.ha
  br i1 %i.acz, label %.loopexit775.i, label %.lr.ph414, !llvm.loop !2817

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2652
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2652
  %i.ada = icmp eq i8 %.sroa.24.0.copyload, 2
  br i1 %i.ada, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287

bb.fa:                                            ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide.exit.i157
  %i.adb = ptrtoint ptr %i.gy to i64
  %i.adc = sub i64 %i.adb, %i.fo                  ; 2 uses
  %i.add = sub nuw i64 %i.fm, %i.adc              ; 12 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.adc ; 4 uses
  %i.adf = icmp eq i64 %i.add, 0
  br i1 %i.adf, label %bb.gx, label %bb.fc

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.ag, %bb.ay, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i, %bb.ak, %bb.am, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.0214.sroa.0.0283 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ ptrtoint (ptr @79 to i64), %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ ptrtoint (ptr @64 to i64), %bb.am ], [ ptrtoint (ptr @64 to i64), %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ ptrtoint (ptr @79 to i64), %bb.ay ], [ ptrtoint (ptr @80 to i64), %bb.ak ], [ ptrtoint (ptr @63 to i64), %bb.ag ]
  %.sroa.0214.sroa.14.0282 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 29, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit233.thread.i ], [ 25, %bb.am ], [ 25, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 29, %bb.ay ], [ 32, %bb.ak ], [ 29, %bb.ag ]
  %i.adg = inttoptr i64 %.sroa.0214.sroa.0.0283 to ptr
  store ptr %i.adg, ptr %0, align 16
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0214.sroa.14.0282, ptr %i.adh, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 2, ptr %i.adi, align 1
  br label %bb.ha

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287: ; preds = %bb.ba, %.thread.i, %bb.ex, %bb.ew, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit
  %.sroa.21.0299 = phi i32 [ %.sroa.21.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ -16383, %bb.ba ], [ %.210.i, %.thread.i ], [ -16382, %bb.ex ], [ -16383, %bb.ew ]
  %.sroa.23.0298 = phi i8 [ %.sroa.23.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 3, %bb.ba ], [ %.211.i, %.thread.i ], [ 2, %bb.ex ], [ 3, %bb.ew ]
  %.sroa.24.0297 = phi i8 [ %.sroa.24.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ 0, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.34.0296 = phi i8 [ %.sroa.34.0.copyload, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.213.i, %.thread.i ], [ 24, %bb.ex ], [ 24, %bb.ew ]
  %.sroa.0214.sroa.0.0295 = phi i64 [ %.sroa.0214.0.copyload233, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.sroa.0214.sroa.0.0.extract.trunc, %.thread.i ], [ 1, %bb.ex ], [ 0, %bb.ew ]
  %.sroa.0214.sroa.14.0294 = phi i64 [ %.sroa.0214.0.copyload234, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit ], [ 0, %bb.ba ], [ %.sroa.0214.sroa.14.0.extract.trunc, %.thread.i ], [ 0, %bb.ex ], [ 0, %bb.ew ]
  %i.adj = inttoptr i64 %.sroa.0214.sroa.0.0295 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9, i64 10, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.gz, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287
  %.sroa.5138.sroa.0.0 = phi i32 [ %.sroa.21.0299, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.0.0.copyload, %bb.gz ]
  %.sroa.5138.sroa.3.0 = phi i8 [ %.sroa.23.0298, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.5119.sroa.4.0.copyload, %bb.gz ]
  %.sroa.0136.0 = phi i8 [ %.sroa.34.0296, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.8.0.copyload, %bb.gz ]
  %.sroa.0137.0 = phi ptr [ %i.adj, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.0117.0.copyload, %bb.gz ]
  %.sroa.3.0 = phi i64 [ %.sroa.0214.sroa.14.0294, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %.sroa.4118.0.copyload, %bb.gz ]
  %.sroa.7139.0 = phi i8 [ %.sroa.24.0297, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE19from_decimal_stringCslLuZgPVt6hg_3ide.exit.thread287 ], [ %i.app, %bb.gz ]
  %spec.select.i172 = xor i8 %.sroa.7139.0, %.sroa.0130.0
  store ptr %.sroa.0137.0, ptr %0, align 16
  %.sroa.096.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.096.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5138.sroa.0.0, ptr %.sroa.096.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.5138.sroa.3.0, ptr %.sroa.096.sroa.0.sroa.5.sroa.4.0..sroa.096.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.096.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select.i172, ptr %.sroa.096.sroa.4.0..sroa_idx, align 1
  %.sroa.096.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.096.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.9140, i64 10, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0136.0, ptr %.sroa.497.0..sroa_idx, align 16
  br label %bb.ha

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.adk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.adl = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 2, ptr %i.adl, align 4, !noalias !2823
  %i.adm = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 0, ptr %i.adm, align 1, !noalias !2823
  %i.adn = getelementptr i8, ptr %.sroa.0.1, i64 %.sroa.18.1 ; 20 uses
  br label %.outer.i173

.outer.i173:                                      ; preds = %.outer.i173.backedge, %bb.fc
  %4 = phi i128 [ 0, %bb.fc ], [ %.be, %.outer.i173.backedge ] ; 9 uses
  %i.ado = phi i128 [ 0, %bb.fc ], [ %.be856, %.outer.i173.backedge ] ; 9 uses
  %.sroa.11.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.11.0.ph.i.be, %.outer.i173.backedge ] ; 6 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.ade, %bb.fc ], [ %.sroa.0.0.ph.i.be, %.outer.i173.backedge ] ; 12 uses
  %.sroa.025.0.ph.i = phi i8 [ -1, %bb.fc ], [ %.sroa.025.0.ph.i.be, %.outer.i173.backedge ] ; 9 uses
  %.sroa.4.0.ph.i = phi i64 [ undef, %bb.fc ], [ %.sroa.4.0.ph.i.be, %.outer.i173.backedge ] ; 5 uses
  %.sroa.021.0.ph.i = phi i64 [ 0, %bb.fc ], [ %.sroa.021.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.010.0.ph.i = phi i64 [ %i.add, %bb.fc ], [ %.sroa.010.0.ph.i.be, %.outer.i173.backedge ] ; 11 uses
  %.sroa.07.0.ph.i = phi i64 [ 128, %bb.fc ], [ %.sroa.07.0.ph.i.be, %.outer.i173.backedge ] ; 2 uses
  %.sroa.03.0.ph.i = phi i8 [ 0, %bb.fc ], [ %.sroa.03.0.ph.i.be, %.outer.i173.backedge ] ; 4 uses
  %.not89.i.not = icmp ne i64 %.sroa.021.0.ph.i, 0 ; 2 uses
  %i.adp = ptrtoint ptr %.sroa.0.0.ph.i to i64    ; 2 uses
  %i.adq = icmp eq ptr %.sroa.0.0.ph.i, %i.adn    ; 2 uses
  br i1 %.not89.i.not, label %.outer.split.us.i, label %.outer.split.preheader.i

.outer.split.preheader.i:                         ; preds = %.outer.i173
  br i1 %i.adq, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fd

bb.fd:                                            ; preds = %.outer.split.preheader.i
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.ads = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.adt = icmp sgt i8 %i.ads, -1
  br i1 %i.adt, label %bb.fe, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i: ; preds = %bb.fd
  %i.adu = and i8 %i.ads, 31
  %i.adv = zext nneg i8 %i.adu to i32             ; 3 uses
  %i.adw = icmp ne ptr %i.adr, %i.adn
  tail call void @llvm.assume(i1 %i.adw)
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.ady = load i8, ptr %i.adr, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.adz = shl nuw nsw i32 %i.adv, 6
  %i.aea = and i8 %i.ady, 63
  %i.aeb = zext nneg i8 %i.aea to i32             ; 2 uses
  %i.aec = or disjoint i32 %i.adz, %i.aeb
  %i.aed = icmp samesign ugt i8 %i.ads, -33
  br i1 %i.aed, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %i.aee = icmp ne ptr %i.adx, %i.adn
  tail call void @llvm.assume(i1 %i.aee)
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aeg = load i8, ptr %i.adx, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aeh = shl nuw nsw i32 %i.aeb, 6
  %i.aei = and i8 %i.aeg, 63
  %i.aej = zext nneg i8 %i.aei to i32
  %i.aek = or disjoint i32 %i.aeh, %i.aej         ; 2 uses
  %i.ael = shl nuw nsw i32 %i.adv, 12
  %i.aem = or disjoint i32 %i.aek, %i.ael
  %i.aen = icmp samesign ugt i8 %i.ads, -17
  br i1 %i.aen, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, label %bb.ff

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i
  %i.aeo = icmp ne ptr %i.aef, %i.adn
  tail call void @llvm.assume(i1 %i.aeo)
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.aeq = load i8, ptr %i.aef, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aer = shl nuw nsw i32 %i.adv, 18
  %i.aes = and i32 %i.aer, 1835008
  %i.aet = shl nuw nsw i32 %i.aek, 6
  %i.aeu = and i8 %i.aeq, 63
  %i.aev = zext nneg i8 %i.aeu to i32
  %i.aew = or disjoint i32 %i.aet, %i.aev
  %i.aex = or disjoint i32 %i.aew, %i.aes
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aey = zext nneg i8 %i.ads to i32
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i
  %.sroa.0.1.peel.i = phi ptr [ %i.adr, %bb.fe ], [ %i.aep, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aef, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.adx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.peel.i = phi i32 [ %i.aey, %bb.fe ], [ %i.aex, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.peel.i ], [ %i.aem, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.peel.i ], [ %i.aec, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.peel.i ] ; 6 uses
  %i.aez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.aez)
  %i.afa = ptrtoint ptr %.sroa.0.1.peel.i to i64
  %i.afb = sub i64 %.sroa.11.0.ph.i, %i.adp
  %i.afc = add i64 %i.afb, %i.afa                 ; 3 uses
  %i.afd = icmp eq i32 %.sroa.4.0.i.ph.i.peel.i, 46
  br i1 %i.afd, label %.split.us.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.afe = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.peel.i, 57
  %i.aff = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -65
  %i.afg = and i32 %i.aff, -33
  %i.afh = add nuw nsw i32 %i.afg, 10
  %i.afi = add nsw i32 %.sroa.4.0.i.ph.i.peel.i, -48
  %.sroa.02.0.i.peel.i = select i1 %i.afe, i32 %i.afh, i32 %i.afi ; 3 uses
  %i.afj = icmp ult i32 %.sroa.02.0.i.peel.i, 16
  br i1 %i.afj, label %bb.fh, label %.split194.us.i.loopexit306

bb.fh:                                            ; preds = %bb.fg
  %i.afk = icmp eq i32 %.sroa.02.0.i.peel.i, 0
  br i1 %i.afk, label %.outer.split.i, label %.split203.us.i

.outer.split.us.i:                                ; preds = %.outer.i173
  br i1 %i.adq, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195, label %bb.fi

bb.fi:                                            ; preds = %.outer.split.us.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1 ; 3 uses
  %i.afm = load i8, ptr %.sroa.0.0.ph.i, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.afn = icmp sgt i8 %i.afm, -1
  br i1 %i.afn, label %bb.fj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i: ; preds = %bb.fi
  %i.afo = and i8 %i.afm, 31
  %i.afp = zext nneg i8 %i.afo to i32             ; 3 uses
  %i.afq = icmp ne ptr %i.afl, %i.adn
  tail call void @llvm.assume(i1 %i.afq)
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2 ; 3 uses
  %i.afs = load i8, ptr %i.afl, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aft = shl nuw nsw i32 %i.afp, 6
  %i.afu = and i8 %i.afs, 63
  %i.afv = zext nneg i8 %i.afu to i32             ; 2 uses
  %i.afw = or disjoint i32 %i.aft, %i.afv
  %i.afx = icmp samesign ugt i8 %i.afm, -33
  br i1 %i.afx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %i.afy = icmp ne ptr %i.afr, %i.adn
  tail call void @llvm.assume(i1 %i.afy)
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3 ; 3 uses
  %i.aga = load i8, ptr %i.afr, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.agb = shl nuw nsw i32 %i.afv, 6
  %i.agc = and i8 %i.aga, 63
  %i.agd = zext nneg i8 %i.agc to i32
  %i.age = or disjoint i32 %i.agb, %i.agd         ; 2 uses
  %i.agf = shl nuw nsw i32 %i.afp, 12
  %i.agg = or disjoint i32 %i.age, %i.agf
  %i.agh = icmp samesign ugt i8 %i.afm, -17
  br i1 %i.agh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, label %bb.fk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i
  %i.agi = icmp ne ptr %i.afz, %i.adn
  tail call void @llvm.assume(i1 %i.agi)
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 4
  %i.agk = load i8, ptr %i.afz, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.agl = shl nuw nsw i32 %i.afp, 18
  %i.agm = and i32 %i.agl, 1835008
  %i.agn = shl nuw nsw i32 %i.age, 6
  %i.ago = and i8 %i.agk, 63
  %i.agp = zext nneg i8 %i.ago to i32
  %i.agq = or disjoint i32 %i.agn, %i.agp
  %i.agr = or disjoint i32 %i.agq, %i.agm
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ags = zext nneg i8 %i.afm to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i
  %.sroa.0.1.us.i = phi ptr [ %i.afl, %bb.fj ], [ %i.agj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.afz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.us.i = phi i32 [ %i.ags, %bb.fj ], [ %i.agr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.us.i ], [ %i.agg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.us.i ], [ %i.afw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.us.i ] ; 6 uses
  %i.agt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i, 1114112
  tail call void @llvm.assume(i1 %i.agt)
  %i.agu = ptrtoint ptr %.sroa.0.1.us.i to i64
  %i.agv = sub i64 %.sroa.11.0.ph.i, %i.adp
  %i.agw = add i64 %i.agv, %i.agu                 ; 2 uses
  %i.agx = icmp eq i32 %.sroa.4.0.i.ph.i.us.i, 46
  br i1 %i.agx, label %.split.us.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agy = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.us.i, 57
  %i.agz = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -65
  %i.aha = and i32 %i.agz, -33
  %i.ahb = add nuw nsw i32 %i.aha, 10
  %i.ahc = add nsw i32 %.sroa.4.0.i.ph.i.us.i, -48
  %.sroa.02.0.i.us.i = select i1 %i.agy, i32 %i.ahb, i32 %i.ahc ; 2 uses
  %i.ahd = icmp ult i32 %.sroa.02.0.i.us.i, 16
  br i1 %i.ahd, label %.split203.us.i, label %.split194.us.i.loopexit306

.outer.split.i:                                   ; preds = %bb.fh, %bb.fq
  %.sroa.11.0.i = phi i64 [ %i.air, %bb.fq ], [ %i.afc, %bb.fh ] ; 4 uses
  %.sroa.0.0.i188 = phi ptr [ %.sroa.0.1.i190, %bb.fq ], [ %.sroa.0.1.peel.i, %bb.fh ] ; 7 uses
  %i.ahe = ptrtoint ptr %.sroa.0.0.i188 to i64
  %i.ahf = icmp eq ptr %.sroa.0.0.i188, %i.adn
  br i1 %i.ahf, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %bb.fm

bb.fm:                                            ; preds = %.outer.split.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 1 ; 3 uses
  %i.ahh = load i8, ptr %.sroa.0.0.i188, align 1, !alias.scope !2821, !noalias !2824, !noundef !19 ; 5 uses
  %i.ahi = icmp sgt i8 %i.ahh, -1
  br i1 %i.ahi, label %bb.fn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189: ; preds = %bb.fm
  %i.ahj = and i8 %i.ahh, 31
  %i.ahk = zext nneg i8 %i.ahj to i32             ; 3 uses
  %i.ahl = icmp ne ptr %i.ahg, %i.adn
  tail call void @llvm.assume(i1 %i.ahl)
  %i.ahm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 2 ; 3 uses
  %i.ahn = load i8, ptr %i.ahg, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aho = shl nuw nsw i32 %i.ahk, 6
  %i.ahp = and i8 %i.ahn, 63
  %i.ahq = zext nneg i8 %i.ahp to i32             ; 2 uses
  %i.ahr = or disjoint i32 %i.aho, %i.ahq
  %i.ahs = icmp samesign ugt i8 %i.ahh, -33
  br i1 %i.ahs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aht = zext nneg i8 %i.ahh to i32
  br label %bb.fo

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189
  %i.ahu = icmp ne ptr %i.ahm, %i.adn
  tail call void @llvm.assume(i1 %i.ahu)
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 3 ; 3 uses
  %i.ahw = load i8, ptr %i.ahm, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.ahx = shl nuw nsw i32 %i.ahq, 6
  %i.ahy = and i8 %i.ahw, 63
  %i.ahz = zext nneg i8 %i.ahy to i32
  %i.aia = or disjoint i32 %i.ahx, %i.ahz         ; 2 uses
  %i.aib = shl nuw nsw i32 %i.ahk, 12
  %i.aic = or disjoint i32 %i.aia, %i.aib
  %i.aid = icmp samesign ugt i8 %i.ahh, -17
  br i1 %i.aid, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193, label %bb.fo

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192
  %i.aie = icmp ne ptr %i.ahv, %i.adn
  tail call void @llvm.assume(i1 %i.aie)
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i188, i64 4
  %i.aig = load i8, ptr %i.ahv, align 1, !alias.scope !2821, !noalias !2824, !noundef !19
  %i.aih = shl nuw nsw i32 %i.ahk, 18
  %i.aii = and i32 %i.aih, 1835008
  %i.aij = shl nuw nsw i32 %i.aia, 6
  %i.aik = and i8 %i.aig, 63
  %i.ail = zext nneg i8 %i.aik to i32
  %i.aim = or disjoint i32 %i.aij, %i.ail
  %i.ain = or disjoint i32 %i.aim, %i.aii
  br label %bb.fo

bb.fo:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192, %bb.fn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189
  %.sroa.0.1.i190 = phi ptr [ %i.ahg, %bb.fn ], [ %i.aif, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193 ], [ %i.ahv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192 ], [ %i.ahm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189 ] ; 4 uses
  %.sroa.4.0.i.ph.i.i191 = phi i32 [ %i.aht, %bb.fn ], [ %i.ain, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i193 ], [ %i.aic, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i192 ], [ %i.ahr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i189 ] ; 6 uses
  %i.aio = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i191, 1114112
  tail call void @llvm.assume(i1 %i.aio)
  %i.aip = ptrtoint ptr %.sroa.0.1.i190 to i64
  %i.aiq = sub i64 %.sroa.11.0.i, %i.ahe
  %i.air = add i64 %i.aiq, %i.aip                 ; 3 uses
  %i.ais = icmp eq i32 %.sroa.4.0.i.ph.i.i191, 46
  br i1 %i.ais, label %.split.us.i, label %bb.fp

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.i195: ; preds = %.outer.split.us.i, %.outer.split.preheader.i
  %i.ait = trunc nuw i8 %.sroa.03.0.ph.i to i1
  br i1 %i.ait, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread.i194, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.thread.i182:                                     ; preds = %.peel.next.i181, %.peel.next.i181.preheader
  %.lcssa409 = phi i32 [ %i.ams, %.peel.next.i181.preheader ], [ %i.apa, %.peel.next.i181 ] ; 2 uses
  %i.aiu = sub i32 0, %.lcssa409
  %.sroa.040.0.i = select i1 %.sroa.031.3300.i, i32 %i.aiu, i32 %.lcssa409
  br i1 %.not89.i374, label %bb.go, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread595

.split.us.i:                                      ; preds = %bb.fo, %bb.fk, %bb.ff
  %.us-phi189.i = phi ptr [ %.sroa.0.1.us.i, %bb.fk ], [ %.sroa.0.1.peel.i, %bb.ff ], [ %.sroa.0.1.i190, %bb.fo ]
  %.us-phi190.i = phi i64 [ %i.agw, %bb.fk ], [ %i.afc, %bb.ff ], [ %i.air, %bb.fo ]
  %.us-phi191.i = phi i64 [ %.sroa.11.0.ph.i, %bb.fk ], [ %.sroa.11.0.ph.i, %bb.ff ], [ %.sroa.11.0.i, %bb.fo ]
  %.us-phi192.i = phi i8 [ %.sroa.03.0.ph.i, %bb.fk ], [ %.sroa.03.0.ph.i, %bb.ff ], [ 1, %bb.fo ]
  %.not91.i = icmp eq i64 %.sroa.010.0.ph.i, %i.add
  br i1 %.not91.i, label %.outer.i173.backedge, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.fp:                                            ; preds = %bb.fo
  %i.aiv = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i191, 57
  %i.aiw = add nsw i32 %.sroa.4.0.i.ph.i.i191, -65
  %i.aix = and i32 %i.aiw, -33
  %i.aiy = add nuw nsw i32 %i.aix, 10
  %i.aiz = add nsw i32 %.sroa.4.0.i.ph.i.i191, -48
  %.sroa.02.0.i.i = select i1 %i.aiv, i32 %i.aiy, i32 %i.aiz ; 3 uses
  %i.aja = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.aja, label %bb.fq, label %.split194.us.i

bb.fq:                                            ; preds = %bb.fp
  %i.ajb = icmp eq i32 %.sroa.02.0.i.i, 0
  br i1 %i.ajb, label %.outer.split.i, label %.split203.us.i, !llvm.loop !2829

.split194.us.i.loopexit306:                       ; preds = %bb.fg, %bb.fl
  %.us-phi199.i.ph = phi i32 [ %.sroa.4.0.i.ph.i.peel.i, %bb.fg ], [ %.sroa.4.0.i.ph.i.us.i, %bb.fl ]
  %i.ajc = trunc nuw i8 %.sroa.03.0.ph.i to i1
  br label %.split194.us.i

.split194.us.i:                                   ; preds = %bb.fp, %.split194.us.i.loopexit306
  %.not89.i374 = phi i1 [ %.not89.i.not, %.split194.us.i.loopexit306 ], [ false, %bb.fp ]
  %.us-phi199.i = phi i32 [ %.us-phi199.i.ph, %.split194.us.i.loopexit306 ], [ %.sroa.4.0.i.ph.i.i191, %bb.fp ]
  %.us-phi200.i = phi i64 [ %.sroa.11.0.ph.i, %.split194.us.i.loopexit306 ], [ %.sroa.11.0.i, %bb.fp ] ; 5 uses
  %.us-phi201.i = phi i1 [ %i.ajc, %.split194.us.i.loopexit306 ], [ true, %bb.fp ]
  store i128 %4, ptr %i.c, align 16
  switch i32 %.us-phi199.i, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread [
    i32 112, label %bb.gb
    i32 80, label %bb.gb
  ]

.split203.us.i:                                   ; preds = %bb.fq, %bb.fl, %bb.fh
  %.us-phi204.i = phi i32 [ %.sroa.02.0.i.us.i, %bb.fl ], [ %.sroa.02.0.i.peel.i, %bb.fh ], [ %.sroa.02.0.i.i, %bb.fq ] ; 5 uses
  %.us-phi205.i = phi ptr [ %.sroa.0.1.us.i, %bb.fl ], [ %.sroa.0.1.peel.i, %bb.fh ], [ %.sroa.0.1.i190, %bb.fq ] ; 8 uses
  %.us-phi206.i = phi i64 [ %i.agw, %bb.fl ], [ %i.afc, %bb.fh ], [ %i.air, %bb.fq ] ; 8 uses
  %.us-phi207.i = phi i64 [ %.sroa.4.0.ph.i, %bb.fl ], [ %.sroa.11.0.ph.i, %bb.fh ], [ %.sroa.11.0.i, %bb.fq ] ; 8 uses
  %i.ajd = add i64 %.sroa.07.0.ph.i, -4           ; 10 uses
  %i.aje = icmp sgt i64 %i.ajd, -1
  br i1 %i.aje, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.split203.us.i
  %.not90.i = icmp eq i8 %.sroa.025.0.ph.i, -1
  br i1 %.not90.i, label %bb.fu, label %bb.ft

bb.fs:                                            ; preds = %.split203.us.i
  %i.ajf = zext nneg i32 %.us-phi204.i to i128
  %i.ajg = and i64 %i.ajd, 127
  %i.ajh = zext nneg i64 %i.ajg to i128
  %i.aji = shl i128 %i.ajf, %i.ajh
  %i.ajj = or i128 %i.aji, %i.ado                 ; 2 uses
  br label %.outer.i173.backedge

bb.ft:                                            ; preds = %bb.fr
  %i.ajk = icmp eq i32 %.us-phi204.i, 0
  br i1 %i.ajk, label %.outer.i173.backedge, label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  switch i32 %.us-phi204.i, label %bb.fx [
    i32 0, label %.outer.i173.backedge
    i32 8, label %bb.fy
  ]

bb.fv:                                            ; preds = %bb.ft
  %i.ajl = icmp eq i8 %.sroa.025.0.ph.i, 0
  br i1 %i.ajl, label %.outer.i173.backedge, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ajm = icmp eq i8 %.sroa.025.0.ph.i, 2
  %spec.store.select.i186 = select i1 %i.ajm, i8 3, i8 %.sroa.025.0.ph.i
  br label %.outer.i173.backedge

bb.fx:                                            ; preds = %bb.fu
  %i.ajn = add nsw i32 %.us-phi204.i, -1
  %or.cond.i = icmp ult i32 %i.ajn, 7
  br i1 %or.cond.i, label %.outer.i173.backedge, label %bb.fz

bb.fy:                                            ; preds = %bb.fu
  br label %.outer.i173.backedge

bb.fz:                                            ; preds = %bb.fx
  %i.ajo = icmp samesign ugt i32 %.us-phi204.i, 8
  br i1 %i.ajo, label %.outer.i173.backedge, label %bb.ga, !prof !168

.outer.i173.backedge:                             ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %.split.us.i
  %.be = phi i128 [ %4, %.split.us.i ], [ %i.ajj, %bb.fs ], [ %4, %bb.ft ], [ %4, %bb.fv ], [ %4, %bb.fw ], [ %4, %bb.fu ], [ %4, %bb.fx ], [ %4, %bb.fy ], [ %4, %bb.fz ]
  %.be856 = phi i128 [ %i.ado, %.split.us.i ], [ %i.ajj, %bb.fs ], [ %i.ado, %bb.ft ], [ %i.ado, %bb.fv ], [ %i.ado, %bb.fw ], [ %i.ado, %bb.fu ], [ %i.ado, %bb.fx ], [ %i.ado, %bb.fy ], [ %i.ado, %bb.fz ]
  %.sroa.11.0.ph.i.be = phi i64 [ %.us-phi190.i, %.split.us.i ], [ %.us-phi206.i, %bb.fs ], [ %.us-phi206.i, %bb.ft ], [ %.us-phi206.i, %bb.fv ], [ %.us-phi206.i, %bb.fw ], [ %.us-phi206.i, %bb.fu ], [ %.us-phi206.i, %bb.fx ], [ %.us-phi206.i, %bb.fy ], [ %.us-phi206.i, %bb.fz ]
  %.sroa.0.0.ph.i.be = phi ptr [ %.us-phi189.i, %.split.us.i ], [ %.us-phi205.i, %bb.fs ], [ %.us-phi205.i, %bb.ft ], [ %.us-phi205.i, %bb.fv ], [ %.us-phi205.i, %bb.fw ], [ %.us-phi205.i, %bb.fu ], [ %.us-phi205.i, %bb.fx ], [ %.us-phi205.i, %bb.fy ], [ %.us-phi205.i, %bb.fz ]
  %.sroa.025.0.ph.i.be = phi i8 [ %.sroa.025.0.ph.i, %.split.us.i ], [ %.sroa.025.0.ph.i, %bb.fs ], [ %.sroa.025.0.ph.i, %bb.ft ], [ 1, %bb.fv ], [ %spec.store.select.i186, %bb.fw ], [ 0, %bb.fu ], [ 1, %bb.fx ], [ 2, %bb.fy ], [ 3, %bb.fz ]
  %.sroa.4.0.ph.i.be = phi i64 [ %.sroa.4.0.ph.i, %.split.us.i ], [ %.us-phi207.i, %bb.fs ], [ %.us-phi207.i, %bb.ft ], [ %.us-phi207.i, %bb.fv ], [ %.us-phi207.i, %bb.fw ], [ %.us-phi207.i, %bb.fu ], [ %.us-phi207.i, %bb.fx ], [ %.us-phi207.i, %bb.fy ], [ %.us-phi207.i, %bb.fz ]
  %.sroa.021.0.ph.i.be = phi i64 [ %.sroa.021.0.ph.i, %.split.us.i ], [ 1, %bb.fs ], [ 1, %bb.ft ], [ 1, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %bb.fx ], [ 1, %bb.fy ], [ 1, %bb.fz ]
  %.sroa.010.0.ph.i.be = phi i64 [ %.us-phi191.i, %.split.us.i ], [ %.sroa.010.0.ph.i, %bb.fs ], [ %.sroa.010.0.ph.i, %bb.ft ], [ %.sroa.010.0.ph.i, %bb.fv ], [ %.sroa.010.0.ph.i, %bb.fw ], [ %.sroa.010.0.ph.i, %bb.fu ], [ %.sroa.010.0.ph.i, %bb.fx ], [ %.sroa.010.0.ph.i, %bb.fy ], [ %.sroa.010.0.ph.i, %bb.fz ]
  %.sroa.07.0.ph.i.be = phi i64 [ %.sroa.07.0.ph.i, %.split.us.i ], [ %i.ajd, %bb.fs ], [ %i.ajd, %bb.ft ], [ %i.ajd, %bb.fv ], [ %i.ajd, %bb.fw ], [ %i.ajd, %bb.fu ], [ %i.ajd, %bb.fx ], [ %i.ajd, %bb.fy ], [ %i.ajd, %bb.fz ]
  %.sroa.03.0.ph.i.be = phi i8 [ %.us-phi192.i, %.split.us.i ], [ 1, %bb.fs ], [ 1, %bb.ft ], [ 1, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %bb.fx ], [ 1, %bb.fy ], [ 1, %bb.fz ]
  br label %.outer.i173

bb.ga:                                            ; preds = %bb.fz
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #35, !noalias !2818
  unreachable

bb.gb:                                            ; preds = %.split194.us.i, %.split194.us.i
  br i1 %.us-phi201.i, label %bb.gc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

bb.gc:                                            ; preds = %bb.gb
  %i.ajp = icmp eq i64 %.sroa.010.0.ph.i, %i.add
  %spec.store.select2.i = select i1 %i.ajp, i64 %.us-phi200.i, i64 %.sroa.010.0.ph.i ; 3 uses
  %i.ajq = add i64 %.us-phi200.i, 1               ; 7 uses
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %.not.i.i174 = icmp ult i64 %i.ajq, %i.add
  br i1 %.not.i.i174, label %bb.ge, label %.split.i.i175

.split.i.i175:                                    ; preds = %bb.gd
  %i.ajs = icmp eq i64 %i.ajq, %i.add
  br i1 %i.ajs, label %bb.gf, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.ajq
  %i.aju = load i8, ptr %i.ajt, align 1, !alias.scope !2830, !noalias !2818, !noundef !19
  %i.ajv = icmp sgt i8 %i.aju, -65
  br i1 %i.ajv, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge, %.split.i.i175, %bb.gc
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.ajq ; 5 uses
  %.not.i.i.i.i176 = icmp samesign eq i64 %i.ajq, %i.add
  br i1 %.not.i.i.i.i176, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 1 ; 2 uses
  %i.ajy = load i8, ptr %i.ajw, align 1, !alias.scope !2821, !noalias !2833, !noundef !19 ; 5 uses
  %i.ajz = icmp sgt i8 %i.ajy, -1
  br i1 %i.ajz, label %bb.gh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177: ; preds = %bb.gg
  %i.aka = and i8 %i.ajy, 31
  %i.akb = zext nneg i8 %i.aka to i32             ; 3 uses
  %i.akc = add i64 %.us-phi200.i, 2
  %i.akd = icmp samesign ne i64 %i.akc, %i.add
  tail call void @llvm.assume(i1 %i.akd)
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajw, i64 2 ; 2 uses
  %i.akf = load i8, ptr %i.ajx, align 1, !alias.scope !2821, !noalias !2833, !noundef !19
  %i.akg = shl nuw nsw i32 %i.akb, 6
  %i.akh = and i8 %i.akf, 63
  %i.aki = zext nneg i8 %i.akh to i32             ; 2 uses
  %i.akj = or disjoint i32 %i.akg, %i.aki
  %i.akk = icmp samesign ugt i8 %i.ajy, -33
  br i1 %i.akk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

bb.gh:                                            ; preds = %bb.gg
  %i.akl = zext nneg i8 %i.ajy to i32
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177
  %i.akm = add i64 %.us-phi200.i, 3
  %i.akn = icmp samesign ne i64 %i.akm, %i.add
  tail call void @llvm.assume(i1 %i.akn)
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajw, i64 3 ; 2 uses
  %i.akp = load i8, ptr %i.ake, align 1, !alias.scope !2821, !noalias !2833, !noundef !19
  %i.akq = shl nuw nsw i32 %i.aki, 6
  %i.akr = and i8 %i.akp, 63
  %i.aks = zext nneg i8 %i.akr to i32
  %i.akt = or disjoint i32 %i.akq, %i.aks         ; 2 uses
  %i.aku = shl nuw nsw i32 %i.akb, 12
  %i.akv = or disjoint i32 %i.akt, %i.aku
  %i.akw = icmp samesign ugt i8 %i.ajy, -17
  br i1 %i.akw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184
  %i.akx = add i64 %.us-phi200.i, 4
  %i.aky = icmp samesign ne i64 %i.akx, %i.add
  tail call void @llvm.assume(i1 %i.aky)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.ala = load i8, ptr %i.ako, align 1, !alias.scope !2821, !noalias !2833, !noundef !19
  %i.alb = shl nuw nsw i32 %i.akb, 18
  %i.alc = and i32 %i.alb, 1835008
  %i.ald = shl nuw nsw i32 %i.akt, 6
  %i.ale = and i8 %i.ala, 63
  %i.alf = zext nneg i8 %i.ale to i32
  %i.alg = or disjoint i32 %i.ald, %i.alf
  %i.alh = or disjoint i32 %i.alg, %i.alc
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184, %bb.gh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177
  %.sroa.0119.2.i = phi ptr [ %i.ake, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177 ], [ %i.ajx, %bb.gh ], [ %i.akz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185 ], [ %i.ako, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184 ] ; 7 uses
  %spec.select.i.i.i.i179 = phi i32 [ %i.akj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.i.i177 ], [ %i.akl, %bb.gh ], [ %i.alh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.i.i185 ], [ %i.akv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.i.i184 ] ; 2 uses
  switch i32 %spec.select.i.i.i.i179, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i [
    i32 45, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i
    i32 43, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i
  ]

bb.gi:                                            ; preds = %bb.ge, %.split.i.i175
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ade, i64 noundef range(i64 1, 0) %i.add, i64 noundef %i.ajq, i64 noundef range(i64 1, 0) %i.add, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #35, !noalias !2818
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3299.i = phi i1 [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.fold.split.i ]
  %i.ali = icmp eq ptr %.sroa.0119.2.i, %i.adn
  br i1 %i.ali, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.thread.i
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 1 ; 3 uses
  %i.alk = load i8, ptr %.sroa.0119.2.i, align 1, !alias.scope !2821, !noalias !2843, !noundef !19 ; 5 uses
  %i.all = icmp sgt i8 %i.alk, -1
  br i1 %i.all, label %bb.gk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i: ; preds = %bb.gj
  %i.alm = and i8 %i.alk, 31
  %i.aln = zext nneg i8 %i.alm to i32             ; 3 uses
  %i.alo = icmp ne ptr %i.alj, %i.adn
  tail call void @llvm.assume(i1 %i.alo)
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 2 ; 3 uses
  %i.alq = load i8, ptr %i.alj, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.alr = shl nuw nsw i32 %i.aln, 6
  %i.als = and i8 %i.alq, 63
  %i.alt = zext nneg i8 %i.als to i32             ; 2 uses
  %i.alu = or disjoint i32 %i.alr, %i.alt
  %i.alv = icmp samesign ugt i8 %i.alk, -33
  br i1 %i.alv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, label %bb.gl

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %i.alw = icmp ne ptr %i.alp, %i.adn
  tail call void @llvm.assume(i1 %i.alw)
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 3 ; 3 uses
  %i.aly = load i8, ptr %i.alp, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.alz = shl nuw nsw i32 %i.alt, 6
  %i.ama = and i8 %i.aly, 63
  %i.amb = zext nneg i8 %i.ama to i32
  %i.amc = or disjoint i32 %i.alz, %i.amb         ; 2 uses
  %i.amd = shl nuw nsw i32 %i.aln, 12
  %i.ame = or disjoint i32 %i.amc, %i.amd
  %i.amf = icmp samesign ugt i8 %i.alk, -17
  br i1 %i.amf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, label %bb.gl

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i
  %i.amg = icmp ne ptr %i.alx, %i.adn
  tail call void @llvm.assume(i1 %i.amg)
  %i.amh = getelementptr inbounds nuw i8, ptr %.sroa.0119.2.i, i64 4
  %i.ami = load i8, ptr %i.alx, align 1, !alias.scope !2821, !noalias !2843, !noundef !19
  %i.amj = shl nuw nsw i32 %i.aln, 18
  %i.amk = and i32 %i.amj, 1835008
  %i.aml = shl nuw nsw i32 %i.amc, 6
  %i.amm = and i8 %i.ami, 63
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = or disjoint i32 %i.aml, %i.amn
  %i.amp = or disjoint i32 %i.amo, %i.amk
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.amq = zext nneg i8 %i.alk to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i
  %.sroa.0129.2.ph.peel.i = phi ptr [ %i.alp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.alx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.alj, %bb.gk ]
  %.sroa.4.0.i112.ph.peel.i = phi i32 [ %i.alu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.peel.i ], [ %i.ame, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i114.peel.i ], [ %i.amp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i115.peel.i ], [ %i.amq, %bb.gk ] ; 2 uses
  %i.amr = icmp samesign ult i32 %.sroa.4.0.i112.ph.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.amr)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i: ; preds = %bb.gl, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178
  %.sroa.031.3300.i = phi i1 [ %.sroa.031.3299.i, %bb.gl ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %.sroa.0129.1.peel.i = phi ptr [ %.sroa.0129.2.ph.peel.i, %bb.gl ], [ %.sroa.0119.2.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ] ; 3 uses
  %.sroa.036.0.peel.i = phi i32 [ %.sroa.4.0.i112.ph.peel.i, %bb.gl ], [ %spec.select.i.i.i.i179, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit.i178 ]
  %i.ams = add nsw i32 %.sroa.036.0.peel.i, -48   ; 3 uses
  %i.amt = icmp ult i32 %i.ams, 10
  br i1 %i.amt, label %.peel.next.i181.preheader, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide.exit.thread

.peel.next.i181.preheader:                        ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide.exit109.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0129.1.peel.i) ]
  %i.amu = icmp eq ptr %.sroa.0129.1.peel.i, %i.adn
  br i1 %i.amu, label %.thread.i182, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i181.preheader, %.peel.next.i181
  %.sroa.0129.0.i411 = phi ptr [ %.sroa.0129.2.ph.i, %.peel.next.i181 ], [ %.sroa.0129.1.peel.i, %.peel.next.i181.preheader ] ; 5 uses
  %i.amv = phi i32 [ %i.apa, %.peel.next.i181 ], [ %i.ams, %.peel.next.i181.preheader ] ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.i411, i64 1 ; 3 uses
  %i.amx = load i8, ptr %.sroa.0129.0.i411, align 1, !alias.scope !2821, !noalias !2843, !noundef !19 ; 5 uses
  %i.amy = icmp sgt i8 %i.amx, -1
  br i1 %i.amy, label %bb.gm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i111.i: ; preds = %.lr.ph
end_hunk_5
