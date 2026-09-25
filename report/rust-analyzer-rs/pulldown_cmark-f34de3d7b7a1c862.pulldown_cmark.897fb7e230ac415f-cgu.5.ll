Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/pulldown_cmark-f34de3d7b7a1c862.pulldown_cmark.897fb7e230ac415f-cgu.5?download=true
inline.NumInlined: 186
inline.NumDeleted: 100
begin_hunk_0_@_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtCsYRDU3KUgQU_7unicase7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEEB2f_:bb.a
  %.sroa.17.1.i.i.i = phi i32 [ %.sroa.17.0.i.i.i, %bb.i ], [ %.sroa.17.16.copyload.i.i.i, %bb.o ] ; 4 uses
  %.sroa.10.1.i.i.i = phi i32 [ %.sroa.10.0.i.i.i, %bb.i ], [ %.pr.i.i.i.i, %bb.o ] ; 4 uses
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.i ], [ %.sroa.0.2.i.i.i, %bb.o ] ; 7 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.10.1.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCsYRDU3KUgQU_7unicase7unicode4fold4FoldcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %.sroa.10.1.i.i.i, -1114112
  %i.au = icmp samesign ugt i32 %.sroa.10.1.i.i.i, 1114111
  %narrow.i.i.i.i.i.i.i = select i1 %i.au, i32 %i.at, i32 3
  switch i32 %narrow.i.i.i.i.i.i.i, label %bb.l [
    i32 0, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCsYRDU3KUgQU_7unicase7unicode4fold4FoldcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i
    i32 1, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit
    i32 2, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100
    i32 3, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCsYRDU3KUgQU_7unicase7unicode4fold4FoldcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.ao
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.thread.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCsYRDU3KUgQU_7unicase7unicode4fold4FoldcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 3 uses
  %i.aw = load i8, ptr %.sroa.0.1.i.i.i, align 1, !noalias !131, !noundef !4 ; 5 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.n, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.ay = and i8 %i.aw, 31
  %i.az = zext nneg i8 %i.ay to i32               ; 3 uses
  %i.ba = icmp ne ptr %i.av, %i.ao
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 2 ; 3 uses
  %i.bc = load i8, ptr %i.av, align 1, !noalias !131, !noundef !4
  %i.bd = shl nuw nsw i32 %i.az, 6
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32               ; 2 uses
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = icmp samesign ugt i8 %i.aw, -33
  br i1 %i.bh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bi = zext nneg i8 %i.aw to i32
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i
  %i.bj = icmp ne ptr %i.bb, %i.ao
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 3 ; 3 uses
  %i.bl = load i8, ptr %i.bb, align 1, !noalias !131, !noundef !4
  %i.bm = shl nuw nsw i32 %i.bf, 6
  %i.bn = and i8 %i.bl, 63
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo            ; 2 uses
  %i.bq = shl nuw nsw i32 %i.az, 12
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = icmp samesign ugt i8 %i.aw, -17
  br i1 %i.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i
  %i.bt = icmp ne ptr %i.bk, %i.ao
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 4
  %i.bv = load i8, ptr %i.bk, align 1, !noalias !131, !noundef !4
  %i.bw = shl nuw nsw i32 %i.az, 18
  %i.bx = and i32 %i.bw, 1835008
  %i.by = shl nuw nsw i32 %i.bp, 6
  %i.bz = and i8 %i.bv, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bx
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i, %bb.n, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i = phi ptr [ %i.av, %bb.n ], [ %i.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i ]
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.n ], [ %i.cc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i.i.i.i.i ], [ %i.bg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i.i.i.i.i ]
  call void @_RNvNtNtCsYRDU3KUgQU_7unicase7unicode3map6lookup(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.i.i.i), !noalias !132
  %.pr.i.i.i.i = load i32, ptr %i.f, align 4, !noalias !130 ; 2 uses
  %.not1.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i
  %.sroa.17.16.copyload.i.i.i = load i32, ptr %.sroa.17.16..sroa_idx.i.i.i, align 4, !noalias !116
  %.sroa.22.16.copyload.i.i.i = load i32, ptr %.sroa.22.16..sroa_idx.i.i.i, align 4, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  br label %bb.j

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1L_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0EEINtB5_8FuseImplBY_E4nextB2z_.exit.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCsYRDU3KUgQU_7unicase7unicode4fold4FoldcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsbNU0JlWw3cF_14pulldown_cmark.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  br label %_RINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB6_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBT_.exit.i.i

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit: ; preds = %bb.k
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100: ; preds = %bb.k
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i: ; preds = %bb.k, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit
  %.sroa.22.2.i.i.i = phi i32 [ %.sroa.22.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit ], [ %.sroa.22.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100 ], [ %.sroa.17.1.i.i.i, %bb.k ]
  %.sroa.17.2.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit ], [ %.sroa.22.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100 ], [ %.sroa.10.1.i.i.i, %bb.k ]
  %.sroa.10.3.i.i.i = phi i32 [ 1114112, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit ], [ 1114113, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100 ], [ 1114114, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit ], [ %.sroa.17.1.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i.loopexit100 ], [ %.sroa.22.1.i.i.i, %bb.k ] ; 14 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB6_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i
  %i.cd = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 128
  br i1 %i.cd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 2048
  br i1 %i.ce, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cf = trunc nuw nsw i32 %.sroa.0.0.i.i.i.i to i8
  store i8 %i.cf, ptr %i.i, align 4, !alias.scope !133, !noalias !116
  br label %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cg = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 65536
  br i1 %i.cg, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ch = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, -64
  store i8 %i.cj, ptr %i.i, align 4, !alias.scope !133, !noalias !116
  %i.ck = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128
  store i8 %i.cm, ptr %.sroa.0.0.i12.sroa.gep.i.i.i, align 1, !alias.scope !133, !noalias !116
  br label %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cn = lshr i32 %.sroa.0.0.i.i.i.i, 18
  %i.co = trunc nsw i32 %i.cn to i8
  %i.cp = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.cu = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cq, i64 1
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 2
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 3
  %i.cy = and <4 x i8> %i.cx, <i8 -1, i8 63, i8 63, i8 63>
  %i.cz = or disjoint <4 x i8> %i.cy, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.cz, ptr %i.i, align 4, !alias.scope !133, !noalias !116
  br label %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.da = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.db = trunc nuw nsw i32 %i.da to i8
  %i.dc = or disjoint i8 %i.db, -32
  store i8 %i.dc, ptr %i.i, align 4, !alias.scope !133, !noalias !116
  %i.dd = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.de = trunc i32 %i.dd to i8
  %i.df = and i8 %i.de, 63
  %i.dg = or disjoint i8 %i.df, -128
  store i8 %i.dg, ptr %.sroa.0.0.i12.sroa.gep.i.i.i, align 1, !alias.scope !133, !noalias !116
  %i.dh = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.di = and i8 %i.dh, 63
  %i.dj = or disjoint i8 %i.di, -128
  store i8 %i.dj, ptr %.sroa.0.0.i12.sroa.gep13.i.i.i, align 2, !alias.scope !133, !noalias !116
  br label %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i

_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %.sroa.0.0.i12.sroa.phi.i.i.i = phi ptr [ %.sroa.0.0.i12.sroa.gep.i.i.i, %bb.r ], [ %.sroa.0.0.i12.sroa.gep13.i.i.i, %bb.t ], [ %.sroa.0.0.i12.sroa.gep14.i.i.i, %bb.v ], [ %.sroa.0.0.i12.sroa.gep15.i.i.i, %bb.u ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i
  %i.dk = phi i64 [ %.lcssa2432, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.et, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %i.dl = phi i64 [ %.lcssa2330, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.eu, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %i.dm = phi i64 [ %.lcssa2228, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.ev, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %i.dn = phi i64 [ %.lcssa2126, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.ew, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %.promoted4872.i.i.i = phi i64 [ %.promoted4873.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %.promoted4870.i.i.i, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %.promoted4767.i.i.i = phi i64 [ %.promoted4768.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %.promoted4765.i.i.i, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %.promoted4662.i.i.i = phi i64 [ %.promoted4663.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %.promoted4660.i.i.i, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %.promoted4252.i.i.i = phi i64 [ %.promoted4253.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %.promoted4250.i.i.i, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %i.do = phi i64 [ %.promoted4873.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.ex, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 3 uses
  %i.dp = phi i64 [ %.promoted4768.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.ey, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 5 uses
  %i.dq = phi i64 [ %.promoted4663.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.ez, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 3 uses
  %i.dr = phi i64 [ %.promoted4558.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.fa, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ]
  %.sroa.02.044.i.i.i = phi ptr [ %i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.dt, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 2 uses
  %storemerge.i.i4143.i.i.i = phi i64 [ %storemerge.i.i41.lcssa56.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %storemerge.i.i.i.i.i, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 6 uses
  %i.ds = phi i64 [ %.promoted4253.i.i.i, %_RNvNtCsYRDU3KUgQU_7unicase7unicode12char_to_utf8.exit.i.i.i ], [ %i.fb, %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.044.i.i.i, i64 1 ; 2 uses
  %i.du = load i8, ptr %.sroa.02.044.i.i.i, align 1, !noalias !116, !noundef !4 ; 2 uses
  %i.dv = icmp eq i64 %storemerge.i.i4143.i.i.i, 0
  br i1 %i.dv, label %..thread.i_crit_edge.i.i, label %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit.i.i.i.i.i

..thread.i_crit_edge.i.i:                         ; preds = %bb.w
  %.pre.i.i = zext i8 %i.du to i64
  br label %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i

_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit.i.i.i.i.i: ; preds = %bb.w
  %.not22.i.i.i = icmp eq i64 %storemerge.i.i4143.i.i.i, 8 ; 2 uses
  %i.dw = zext i8 %i.du to i64                    ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i = select i1 %.not22.i.i.i, i64 0, i64 %i.dw
  %i.dx = shl i64 %storemerge.i.i4143.i.i.i, 3
  %i.dy = and i64 %i.dx, 56
  %i.dz = shl nuw i64 %.sroa.0.2.i.i.i.i.i.i, %i.dy
  %i.ea = or i64 %i.dz, %i.dr                     ; 3 uses
  %notsub.i.i.i = add i64 %storemerge.i.i4143.i.i.i, -9
  %i.eb = icmp ult i64 %notsub.i.i.i, -2
  br i1 %i.eb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit.i.i.i.i.i
  %i.ec = xor i64 %i.ea, %i.dq                    ; 3 uses
  %i.ed = add i64 %i.ds, %i.dp                    ; 3 uses
  %i.ee = add i64 %i.ec, %i.do                    ; 2 uses
  %i.ef = call noundef i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 13)
  %i.eg = xor i64 %i.ed, %i.ef                    ; 3 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 16)
  %i.ei = xor i64 %i.ee, %i.eh                    ; 3 uses
  %i.ej = call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 32)
  %i.ek = add i64 %i.ee, %i.eg                    ; 3 uses
  %i.el = add i64 %i.ei, %i.ej                    ; 2 uses
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 17)
  %i.en = xor i64 %i.ek, %i.em                    ; 3 uses
  %i.eo = call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 21)
  %i.ep = xor i64 %i.eo, %i.el                    ; 3 uses
  %i.eq = call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 32) ; 3 uses
  %i.er = xor i64 %i.el, %i.ea                    ; 3 uses
  %2 = add nsw i64 %storemerge.i.i4143.i.i.i, -7
  %spec.select61.i.i = select i1 %.not22.i.i.i, i64 %i.dw, i64 0
  br label %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i

bb.y:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit.i.i.i.i.i
  %i.es = add i64 %storemerge.i.i4143.i.i.i, 1
  br label %_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i

_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write.exit.i.i.i: ; preds = %..thread.i_crit_edge.i.i, %bb.x, %bb.y
  %i.et = phi i64 [ %i.dk, %bb.y ], [ %i.er, %bb.x ], [ %i.dk, %..thread.i_crit_edge.i.i ] ; 3 uses
  %i.eu = phi i64 [ %i.dl, %bb.y ], [ %i.eq, %bb.x ], [ %i.dl, %..thread.i_crit_edge.i.i ] ; 3 uses
  %i.ev = phi i64 [ %i.dm, %bb.y ], [ %i.ep, %bb.x ], [ %i.dm, %..thread.i_crit_edge.i.i ] ; 3 uses
  %i.ew = phi i64 [ %i.dn, %bb.y ], [ %i.en, %bb.x ], [ %i.dn, %..thread.i_crit_edge.i.i ] ; 3 uses
  %.promoted4870.i.i.i = phi i64 [ %.promoted4872.i.i.i, %bb.y ], [ %i.eq, %bb.x ], [ %.promoted4872.i.i.i, %..thread.i_crit_edge.i.i ] ; 2 uses
  %.promoted4765.i.i.i = phi i64 [ %.promoted4767.i.i.i, %bb.y ], [ %i.en, %bb.x ], [ %.promoted4767.i.i.i, %..thread.i_crit_edge.i.i ] ; 2 uses
  %.promoted4660.i.i.i = phi i64 [ %.promoted4662.i.i.i, %bb.y ], [ %i.ep, %bb.x ], [ %.promoted4662.i.i.i, %..thread.i_crit_edge.i.i ] ; 2 uses
  %.promoted4250.i.i.i = phi i64 [ %.promoted4252.i.i.i, %bb.y ], [ %i.er, %bb.x ], [ %.promoted4252.i.i.i, %..thread.i_crit_edge.i.i ] ; 2 uses
  %i.ex = phi i64 [ %i.do, %bb.y ], [ %i.eq, %bb.x ], [ %i.do, %..thread.i_crit_edge.i.i ]
  %i.ey = phi i64 [ %i.dp, %bb.y ], [ %i.en, %bb.x ], [ %i.dp, %..thread.i_crit_edge.i.i ]
  %i.ez = phi i64 [ %i.dq, %bb.y ], [ %i.ep, %bb.x ], [ %i.dq, %..thread.i_crit_edge.i.i ]
  %i.fa = phi i64 [ %i.ea, %bb.y ], [ %spec.select61.i.i, %bb.x ], [ %.pre.i.i, %..thread.i_crit_edge.i.i ] ; 3 uses
  %i.fb = phi i64 [ %i.ds, %bb.y ], [ %i.er, %bb.x ], [ %i.ds, %..thread.i_crit_edge.i.i ]
  %storemerge.i.i.i.i.i = phi i64 [ %i.es, %bb.y ], [ %2, %bb.x ], [ 1, %..thread.i_crit_edge.i.i ] ; 3 uses
  %i.fc = icmp eq ptr %i.dt, %.sroa.0.0.i12.sroa.phi.i.i.i
  br i1 %i.fc, label %.loopexit.i.i.i, label %bb.w

_RINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB6_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBT_.exit.i.i: ; preds = %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.i.i.i, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB1Y_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtBb_4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherE0ENtNtB1Y_4fold4FoldENtNtNtB9_6traits8iterator8Iterator4nextB2M_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134
  store i8 -1, ptr %i.e, align 1, !noalias !134
  call fastcc void @_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !116
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtCsYRDU3KUgQU_7unicase7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEB1f_.exit

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.fd = load i8, ptr %i.r, align 8, !range !6, !alias.scope !138, !noalias !139, !noundef !4
  switch i8 %i.fd, label %default.unreachable [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !138, !noalias !139, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !138, !noalias !139, !noundef !4
  br label %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !138, !noalias !139, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !138, !noalias !139, !noundef !4
  br label %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i

bb.ac:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !141, !noalias !139, !noundef !4 ; 2 uses
  %i.fo = zext i8 %i.fn to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !142
  %i.fp = icmp ult i8 %i.fn, 23
  br i1 %i.fp, label %bb.ae, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fo, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !143
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(23) %i.fq, i64 noundef %i.fo), !noalias !139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.fr = load i64, ptr %i.d, align 8, !range !5, !alias.scope !144, !noalias !142, !noundef !4
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.af, label %_RNvXs3_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_9InlineStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i1.i.i, !prof !8

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !noalias !142
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !noalias !146
  unreachable

_RNvXs3_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_9InlineStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i1.i.i: ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !144, !noalias !142, !nonnull !4, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !144, !noalias !142, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !142
  br label %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i

_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i: ; preds = %_RNvXs3_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_9InlineStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i1.i.i, %bb.ab, %bb.aa
  %.pn3.i.i.i3.i.i = phi ptr [ %i.ff, %bb.aa ], [ %i.fj, %bb.ab ], [ %i.fv, %_RNvXs3_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_9InlineStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i1.i.i ] ; 2 uses
  %.pn1.i.i.i4.i.i = phi i64 [ %i.fh, %bb.aa ], [ %i.fl, %bb.ab ], [ %i.fx, %_RNvXs3_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_9InlineStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i1.i.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i3.i.i, i64 %.pn1.i.i.i4.i.i
  %i.fz = icmp samesign eq i64 %.pn1.i.i.i4.i.i, 0
  br i1 %i.fz, label %_RINvXsa_NtCsYRDU3KUgQU_7unicase5asciiINtB8_5AsciiNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBP_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i, %.lr.ph.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i ], [ %.pn3.i.i.i3.i.i, %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 1 ; 2 uses
  %i.gb = load i8, ptr %.sroa.0.06.i.i.i, align 1, !noalias !139, !noundef !4 ; 2 uses
  %i.gc = add i8 %i.gb, -65
  %i.gd = icmp ult i8 %i.gc, 26
  %i.ge = select i1 %i.gd, i8 32, i8 0
  %.sroa.05.0.i.i.i = or i8 %i.ge, %i.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  store i8 %.sroa.05.0.i.i.i, ptr %i.b, align 1, !noalias !147
  call fastcc void @_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  %i.gf = icmp eq ptr %i.ga, %i.fy
  br i1 %i.gf, label %_RINvXsa_NtCsYRDU3KUgQU_7unicase5asciiINtB8_5AsciiNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBP_.exit.i.i, label %.lr.ph.i.i.i

_RINvXsa_NtCsYRDU3KUgQU_7unicase5asciiINtB8_5AsciiNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBP_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref.exit.i2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  store i8 -1, ptr %i.a, align 1, !noalias !148
  call fastcc void @_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtCsYRDU3KUgQU_7unicase7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEB1f_.exit

_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtCsYRDU3KUgQU_7unicase7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEB1f_.exit: ; preds = %_RINvXs3_NtCsYRDU3KUgQU_7unicase7unicodeINtB6_7UnicodeNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBT_.exit.i.i, %_RINvXsa_NtCsYRDU3KUgQU_7unicase5asciiINtB8_5AsciiNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherEBP_.exit.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !149
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !149
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !149 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !149
  %i.gg = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !149, !noundef !4
  %i.gh = shl i64 %i.gg, 56
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !149, !noundef !4
  %i.gk = or i64 %i.gh, %i.gj                     ; 2 uses
  %i.gl = xor i64 %i.gk, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.gm = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.gn = add i64 %i.gl, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.go = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.gp = xor i64 %i.go, %i.gm                    ; 3 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 16)
  %i.gr = xor i64 %i.gq, %i.gn                    ; 3 uses
  %i.gs = call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 32)
  %i.gt = add i64 %i.gn, %i.gp                    ; 3 uses
  %i.gu = add i64 %i.gr, %i.gs                    ; 2 uses
  %i.gv = call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 17)
  %i.gw = xor i64 %i.gt, %i.gv                    ; 3 uses
  %i.gx = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 21)
  %i.gy = xor i64 %i.gx, %i.gu                    ; 3 uses
  %i.gz = call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 32)
  %i.ha = xor i64 %i.gu, %i.gk
  %i.hb = xor i64 %i.gz, 255
  %i.hc = add i64 %i.ha, %i.gw                    ; 3 uses
  %i.hd = add i64 %i.gy, %i.hb                    ; 2 uses
  %i.he = call noundef i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 13)
  %i.hf = xor i64 %i.hc, %i.he                    ; 3 uses
  %i.hg = call noundef i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 16)
  %i.hh = xor i64 %i.hg, %i.hd                    ; 3 uses
  %i.hi = call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 32)
  %i.hj = add i64 %i.hf, %i.hd                    ; 3 uses
  %i.hk = add i64 %i.hh, %i.hi                    ; 2 uses
  %i.hl = call noundef i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 17)
  %i.hm = xor i64 %i.hj, %i.hl                    ; 3 uses
  %i.hn = call noundef i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 21)
  %i.ho = xor i64 %i.hn, %i.hk                    ; 3 uses
  %i.hp = call noundef i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 32)
  %i.hq = add i64 %i.hm, %i.hk                    ; 3 uses
  %i.hr = add i64 %i.ho, %i.hp                    ; 2 uses
  %i.hs = call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 13)
  %i.ht = xor i64 %i.hs, %i.hq                    ; 3 uses
  %i.hu = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 16)
  %i.hv = xor i64 %i.hu, %i.hr                    ; 3 uses
  %i.hw = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 32)
  %i.hx = add i64 %i.ht, %i.hr                    ; 3 uses
  %i.hy = add i64 %i.hv, %i.hw                    ; 2 uses
  %i.hz = call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 17)
  %i.ia = xor i64 %i.hz, %i.hx                    ; 3 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 21)
  %i.ic = xor i64 %i.ib, %i.hy                    ; 3 uses
  %i.id = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32)
  %i.ie = add i64 %i.ia, %i.hy
  %i.if = add i64 %i.ic, %i.id                    ; 2 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 13)
  %i.ih = xor i64 %i.ig, %i.ie                    ; 3 uses
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 16)
  %i.ij = xor i64 %i.ii, %i.if                    ; 2 uses
  %i.ik = add i64 %i.ih, %i.if                    ; 3 uses
  %i.il = call noundef i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 17)
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 21)
  %i.in = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 32)
  %i.io = xor i64 %i.im, %i.il
  %i.ip = xor i64 %i.io, %i.in
  %i.iq = xor i64 %i.ip, %i.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret i64 %i.iq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRjECsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !162
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !162
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !162
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !162
  %.val.i = load i64, ptr %1, align 8, !noalias !163, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  store i64 %.val.i, ptr %i.a, align 8, !noalias !164
  call fastcc void @_RNvXs2_NtNtCscAsMj0W7j8b_3std4hash6randomNtB5_13DefaultHasherNtNtCshzWfHUSfYae_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !165
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !165
end_hunk_0
