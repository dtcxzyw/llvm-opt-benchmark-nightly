Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.13?download=true
inline.NumInlined: 491
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal:bb.a
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %i.e = icmp samesign eq i64 %2, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1697, !noalias !1698, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !1697, !noalias !1698, !noundef !4 ; 2 uses
  %.idx17 = shl nuw nsw i64 %.val1.i.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx17
  %.not.not.not.i.not.not.not.i.not.i.i15 = icmp eq i64 %.val1.i.i, 0
  br label %bb.c

_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp eq ptr %i.k, %i.d
  br i1 %i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit, label %bb.c

bb.c:                                             ; preds = %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i, %.lr.ph.i
  %i.j = phi ptr [ %1, %.lr.ph.i ], [ %i.k, %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %.val3.i = load i8, ptr %i.j, align 1, !noalias !1699, !noundef !4 ; 2 uses
  br i1 %.not.not.not.i.not.not.not.i.not.i.i15, label %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i, label %.lr.ph16

bb.d:                                             ; preds = %.lr.ph16
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.not.not.i.not.not.not.i.not.i.i, label %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %.val.i.i, %bb.c ] ; 3 uses
  %.val3.i.i.i.i = load i8, ptr %i.m, align 1, !noalias !1700, !noundef !4
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %.val4.i.i.i.i = load i8, ptr %i.n, align 1, !noalias !1700
  %.not.i.i.i.i.i = icmp ule i8 %.val3.i.i.i.i, %.val3.i
  %i.o = icmp ule i8 %.val3.i, %.val4.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.o, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.q, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.r = load i64, ptr %i.a, align 8, !range !6, !alias.scope !1701, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1701, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1701, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %.not.i14.not.i.i.i = icmp samesign eq i64 %i.w, 0
  br i1 %.not.i14.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx = shl nuw nsw i64 %.val1, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i14 = icmp eq i64 %.val1, 0
  br label %bb.g

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i: ; preds = %bb.j, %bb.i
  %.not.i.not.i.i.i = icmp eq ptr %i.bi, %i.x
  br i1 %.not.i.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, %.lr.ph.i.i.i
  %i.z = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.bi, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.z, align 1, !alias.scope !1702, !noalias !1703, !noundef !4 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i: ; preds = %bb.g
  %i.ad = and i8 %i.ab, 31
  %i.ae = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.af = icmp ne ptr %i.aa, %i.x
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  %i.ah = load i8, ptr %i.aa, align 1, !alias.scope !1702, !noalias !1703, !noundef !4
  %i.ai = shl nuw nsw i32 %i.ae, 6
  %i.aj = and i8 %i.ah, 63
  %i.ak = zext nneg i8 %i.aj to i32               ; 2 uses
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.am, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = zext nneg i8 %i.ab to i32
  br label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i
  %i.ao = icmp ne ptr %i.ag, %i.x
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 1, !alias.scope !1702, !noalias !1703, !noundef !4
  %i.ar = shl nuw nsw i32 %i.ak, 6
  %i.as = and i8 %i.aq, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at            ; 2 uses
  %i.av = shl nuw nsw i32 %i.ae, 12
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ax, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i
  %i.ay = icmp ne ptr %i.ap, %i.x
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ba = load i8, ptr %i.ap, align 1, !alias.scope !1702, !noalias !1703, !noundef !4
  %i.bb = shl nuw nsw i32 %i.ae, 18
  %i.bc = and i32 %i.bb, 1835008
  %i.bd = shl nuw nsw i32 %i.au, 6
  %i.be = and i8 %i.ba, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.bc
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i
  %i.bi = phi ptr [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i ], [ %i.az, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i.i.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.aw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i.i.i.i.i ], [ %i.an, %bb.h ] ; 2 uses
  br i1 %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i14, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.bj, %i.y
  br i1 %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.bk = phi ptr [ %i.bj, %bb.j ], [ %.val, %bb.i ] ; 3 uses
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.bk, align 4, !range !20, !noalias !1704, !noundef !4
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.val4.i.i.i.i.i.i.i = load i32, ptr %i.bl, align 4, !noalias !1704
  %.not.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.val3.i.i.i.i.i.i.i, %spec.select.i.ph.i.i.i
  %i.bm = icmp samesign ule i32 %spec.select.i.ph.i.i.i, %.val4.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.bm, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit, label %bb.j

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, %.lr.ph, %bb.e, %bb.f
  %.sroa.0.0.i = phi i1 [ false, %bb.e ], [ false, %.lr.ph ], [ true, %bb.f ], [ true, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit: ; preds = %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i, %.lr.ph16, %bb.b, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit ], [ true, %bb.b ], [ false, %.lr.ph16 ], [ true, %_RNCNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31has_disjoint_class_separator_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 192153584101141163) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 288230376151711744) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.d ] ; 5 uses
  %i.c = load i64, ptr %.sroa.0.0.i, align 8, !range !19, !noundef !4 ; 3 uses
  %i.d = icmp ne i64 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i64 %i.c, -2
  %.inv.i = icmp samesign ult i64 %i.c, 2
  %i.f = select i1 %.inv.i, i64 2, i64 %i.e
  switch i64 %i.f, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit [
    i64 5, label %bb.d
    i64 2, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit
    i64 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i = phi ptr [ %i.k, %bb.f ], [ %7, %bb.h ]
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.0.in.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %.sroa.06.0.i, align 8, !range !19, !noalias !1718, !noundef !4 ; 3 uses
  %i.m = icmp ne i64 %i.l, 4
  tail call void @llvm.assume(i1 %i.m)
  %5 = add nsw i64 %i.l, -2
  %.inv10.i = icmp samesign ult i64 %i.l, 2
  %6 = select i1 %.inv10.i, i64 2, i64 %5
  switch i64 %6, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit [
    i64 5, label %bb.h
    i64 2, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit
  ]

bb.h:                                             ; preds = %bb.g
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  br label %bb.g

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit: ; preds = %bb.c, %bb.g
  %.sroa.05.0.i = phi ptr [ %.sroa.06.0.i, %bb.g ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %.idx43 = shl nuw nsw i64 %4, 5
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.idx43
  %i.o = icmp eq i64 %4, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit, %bb.j
  %i.r = phi ptr [ %i.p, %bb.j ], [ %3, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val3.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1719, !noalias !1720, !nonnull !4, !noundef !4
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val4.i.i = load i64, ptr %i.t, align 8, !alias.scope !1719, !noalias !1720, !noundef !4
  %i.u = tail call fastcc noundef zeroext i1 @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix30class_is_disjoint_from_literal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3.i.i, i64 noundef %.val4.i.i), !noalias !1721
  br i1 %i.u, label %bb.j, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit

._crit_edge:                                      ; preds = %bb.j, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix14required_class.exit
  %.idx = mul nuw nsw i64 %1, 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.backedge.i
  %i.w = phi i64 [ %.sroa.7.1, %.backedge.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.x = phi ptr [ %i.y, %.backedge.i ], [ %0, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.z = icmp eq i64 %i.w, %2
  br i1 %i.z, label %.backedge.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix26hir_is_disjoint_from_class(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.i), !noalias !1722
  br i1 %i.aa, label %.backedge.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit

.backedge.i:                                      ; preds = %.lr.ph.i, %.split.i
  %.sroa.7.1 = add nuw nsw i64 %i.w, 1
  %.not12.i = icmp eq ptr %i.y, %i.v
  br i1 %.not12.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, label %.lr.ph.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit: ; preds = %bb.c, %bb.g, %.lr.ph, %.backedge.i, %.split.i, %bb.e
  %.sroa.0.0 = phi i1 [ false, %bb.g ], [ true, %.backedge.i ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %.split.i ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util11determinize14add_nfa_states(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1725, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1725, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !1725
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1725, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.l = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.01.09 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %bb.k ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 4 ; 2 uses
  %i.p = load i32, ptr %.sroa.01.09, align 4, !noundef !4 ; 8 uses
  %i.q = load i64, ptr %i.m, align 16, !noundef !4 ; 2 uses
  %i.r = zext i32 %i.p to i64                     ; 3 uses
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.k, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.t = call noundef i32 @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA9look_need(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !range !16, !noundef !4
  switch i32 %i.x, label %default.unreachable20 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
  ]

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
  unreachable

default.unreachable20:                            ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !17, !noundef !4
  store i32 %i.z, ptr %i.c, align 4
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  call void @_RINvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_needNCNvB8_14add_nfa_states0EBc_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.aa = icmp eq ptr %i.o, %i.j
  br i1 %i.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, label %bb.c

bb.l:                                             ; preds = %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.m:                                             ; preds = %bb.d
  call void @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  br label %bb.k

bb.n:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  call void @_RINvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_14add_nfa_statess_0EBc_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util11determinize15epsilon_closure(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 328 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 336 ; 2 uses
  %i.p = load i64, ptr %i.o, align 16, !noundef !4 ; 2 uses
  %i.q = zext i32 %1 to i64                       ; 6 uses
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.q
  %i.u = load i32, ptr %i.t, align 8, !range !16, !noundef !4
  %.off = add nsw i32 %i.u, -3
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
  unreachable

default.unreachable147:                           ; preds = %bb.v
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.d, align 4, !noalias !1740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1741, !noundef !4 ; 2 uses
  %i.x = icmp ugt i64 %i.w, %i.q
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1741, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.q ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !1741, !noundef !4
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1741, !noundef !4 ; 6 uses
  %i.af = icmp ugt i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 5 uses
  br i1 %i.af, label %bb.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1741
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.ah, %i.ac
  br i1 %i.ai, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.j
end_hunk_0
