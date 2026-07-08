inline.NumInlined: 153
inline.NumDeleted: 114
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\DF\01\00\00\19\00\00\00" }>, align 8
@2 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/convert_case-0.9.0/src/boundary.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"g\00\00\00\00\00\00\00\A3\01\00\00\22\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"g\00\00\00\00\00\00\00\C0\01\00\00\12\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"g\00\00\00\00\00\00\00\AD\01\00\00+\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"g\00\00\00\00\00\00\00\BA\01\00\00\1E\00\00\00" }>, align 8
@7 = private unnamed_addr constant [13 x i8] c"expected name", align 1
@8 = private unnamed_addr constant [25 x i8] c"crates/derive/src/lib.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\18\00\00\00\00\00\00\00O\00\00\00\1F\00\00\00" }>, align 8
@10 = private unnamed_addr constant [3 x i8] c"doc", align 1
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCshbKHpCRGxgC_16deltalake_derive }>, align 8
@13 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@14 = private unnamed_addr constant [76 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/string.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@16 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre11starts_withReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !3, !noundef !17 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !3, !noundef !17
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !3, !noundef !17
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !3, !noundef !17
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.as, label %bb.e, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8     ; 2 uses
  %2 = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 31)
  switch i32 %2, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit [
    i32 0, label %bb.h
    i32 11, label %bb.f
    i32 16, label %bb.i
    i32 24, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !18, !noundef !17
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !18, !noundef !17
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.e, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.021 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.019 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.021, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !19, !noundef !17 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bo = icmp ne ptr %.sroa.4.021, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !19, !noundef !17 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.021, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !19, !noundef !17 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.021, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !19, !noundef !17
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i ]
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
  %i.cw = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cw, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8     ; 2 uses
  %3 = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 31)
  switch i32 %3, label %bb.u [
    i32 0, label %bb.r
    i32 11, label %bb.p
    i32 16, label %bb.s
    i32 24, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !33, !noundef !17
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !33, !noundef !17
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.021, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i7, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.021 to i64
  %i.dp = sub i64 %.sroa.14.019, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i, %bb.t, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit, %bb.u
  %.sroa.0.046 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dq, %bb.u ], [ %.sroa.14.019, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive.exit ], [ %.sroa.14.019, %bb.t ], [ 0, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i ]
  %i.dr = sub nuw i64 %.sroa.02.1, %.sroa.0.046
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.046
  %i.dt = insertvalue { ptr, i64 } poison, ptr %i.ds, 0
  %i.du = insertvalue { ptr, i64 } %i.dt, i64 %i.dr, 1
  ret { ptr, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !noundef !17
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3mem11conjure_zstNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtBN_6ClientNtBR_11TokenStreamB1I_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB2f_() unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecReEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecReEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !alias.scope !36, !noundef !17
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !39, !noundef !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %common.resume.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !55, !nonnull !17, !noundef !17 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !58, !noundef !17
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !58
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #19
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !68, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !69, !noundef !17
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !69
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 192153584101141163) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [192 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [200 x i8], align 8               ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !70, !noundef !17 ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17 ; 8 uses
  %i.n = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.n, align 8, !noundef !17 ; 15 uses
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.l, align 8, !alias.scope !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.r = ptrtoint ptr %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(192) %i.c, i64 noundef 0, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %.noexc unwind label %.body31.thread59

.noexc:                                           ; preds = %bb.b
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, i64 noundef %.val1.i, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %bb.e unwind label %.body31.thread59

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !84
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !84
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.d:                                             ; preds = %.body
  br i1 %.sroa.06.3, label %bb.ar, label %.body31.thread

.body31.thread59:                                 ; preds = %bb.e, %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.e:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %.val.i, ptr %i.u, align 8, !alias.scope !87, !noalias !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 %.val1.i, ptr %i.v, align 8, !alias.scope !87, !noalias !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 %i.r, ptr %i.x, align 8, !alias.scope !92, !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  invoke void @_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator5unzipjReINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2c_B29_EECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.h)
          to label %bb.f unwind label %.body31.thread59

.loopexit69:                                      ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap, %bb.ae, %bb.ad, %bb.ab
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.y, %bb.n, %bb.m, %bb.g
  %.sroa.06.2.ph.ph = phi i1 [ true, %.invoke ], [ true, %bb.y ], [ true, %bb.g ], [ false, %bb.n ], [ true, %bb.m ]
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit69
  %.sroa.06.2 = phi i1 [ true, %.loopexit69 ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.06.2.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit69 ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.j) #18
          to label %.body unwind label %bb.aq

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.val12 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.aa = icmp ult i64 %.val12, 576460752303423488
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i64 %.val12, -1                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val14 = load i64, ptr %i.ad, align 8, !noundef !17 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %.val14
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 -1, 576460752303423487) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %.val14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val15 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %.val13 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val13, i64 %i.ab
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !17
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val15, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !17
  %i.al = add i64 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41
  %.sroa.0.0.ph90 = phi i64 [ 0, %bb.h ], [ %i.by, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ] ; 13 uses
  %.sroa.047.0.ph89 = phi i64 [ 0, %bb.h ], [ %i.bj, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ]
  br label %bb.w

.loopexit:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %i.an = icmp ult i64 %i.bj, %.val12
  br i1 %i.an, label %bb.w, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41, %.loopexit
  %.sroa.0.0.ph.lcssa86 = phi i64 [ %.sroa.0.0.ph90, %.loopexit ], [ %i.by, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ] ; 8 uses
  %i.ao = icmp eq i64 %.sroa.0.0.ph.lcssa86, 0
  br i1 %i.ao, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.outer._crit_edge
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.ph.lcssa86, %.val1.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %.sroa.0.0.ph.lcssa86, %.val1.i
  br i1 %i.ap, label %bb.l, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa86
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !94, !noundef !17
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %bb.l, label %.invoke

bb.l:                                             ; preds = %bb.k, %bb.j, %.outer._crit_edge
  %i.at = sub nuw i64 %.val1.i, %.sroa.0.0.ph.lcssa86
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa86
  %i.av = load i64, ptr %i.q, align 8, !alias.scope !101, !noalias !106, !noundef !17 ; 4 uses
  %i.aw = load i64, ptr %i.l, align 8, !range !109, !alias.scope !101, !noalias !106, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr %i.p, align 8, !alias.scope !101, !noalias !106, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  store ptr %i.au, ptr %i.az, align 8, !noalias !106
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %i.bb = add nsw i64 %i.av, 1                    ; 2 uses
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !101, !noalias !106
  %.sroa.052.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.253.0.copyload = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.bc = icmp slt i64 %i.av, 576460752303423487
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.253.0.copyload, i64 %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store ptr %.sroa.253.0.copyload, ptr %i.a, align 8, !alias.scope !117, !noalias !121
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.253.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.052.0.copyload, ptr %.sroa.351.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecReEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.s, %bb.p, %.loopexit.split-lp
  %.sroa.06.3 = phi i1 [ %.sroa.06.2, %.loopexit.split-lp ], [ false, %bb.p ], [ false, %bb.s ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.be, %bb.p ], [ %i.bg, %bb.s ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.k) #18
          to label %bb.d unwind label %bb.aq

bb.s:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body31.thread unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.u, %bb.c
  ret void

bb.w:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.047.087 = phi i64 [ %.sroa.047.0.ph89, %.lr.ph ], [ %i.bj, %.loopexit ] ; 7 uses
  %i.bj = add nuw nsw i64 %.sroa.047.087, 1       ; 4 uses
  br label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.aa, %bb.w
  %.sroa.048.0 = phi ptr [ %2, %bb.w ], [ %spec.select, %bb.aa ] ; 6 uses
  %i.bk = icmp eq ptr %.sroa.048.0, %i.am         ; 2 uses
  %spec.select.idx = select i1 %i.bk, i64 0, i64 48
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.048.0, i64 %spec.select.idx
  br i1 %i.bk, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %.val18 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.bl = icmp ugt i64 %.sroa.047.087, %.val18
  br i1 %i.bl, label %bb.y, label %bb.z, !prof !122

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.047.087, i64 noundef range(i64 0, 576460752303423488) %.val18, i64 noundef range(i64 0, 576460752303423488) %.val18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %.val17 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.bm = sub nuw nsw i64 %.val18, %.sroa.047.087
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val17, i64 %.sroa.047.087
  %i.bo = invoke noundef zeroext i1 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary7matches(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bm)
          to label %bb.aa unwind label %.loopexit69

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bo, label %bb.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

bb.ab:                                            ; preds = %bb.aa
  %.val21 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val22 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bp = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.bq = add i64 %i.bp, %.sroa.047.087           ; 2 uses
  %.not = icmp ult i64 %i.bq, %.val22
  br i1 %.not, label %.else44, label %bb.ad

.else44:                                          ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %i.bq
  %.else.val45 = load i64, ptr %i.br, align 8, !noundef !17
  br label %bb.ad

bb.ad:                                            ; preds = %.else44, %bb.ac
  %i.bs = phi i64 [ %i.al, %bb.ac ], [ %.else.val45, %.else44 ] ; 11 uses
  %.val19 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val20 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bt = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bu = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary3len(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.bv = add i64 %i.bt, %.sroa.047.087
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %.not68 = icmp ult i64 %i.bw, %.val20
  br i1 %.not68, label %.else, label %.cont

.else:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.bw
  %.else.val = load i64, ptr %i.bx, align 8, !noundef !17
  br label %.cont

.cont:                                            ; preds = %bb.af, %.else
  %i.by = phi i64 [ %i.al, %bb.af ], [ %.else.val, %.else ] ; 2 uses
  %.not.i.i.i38 = icmp ugt i64 %.sroa.0.0.ph90, %i.bs
  br i1 %.not.i.i.i38, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %.cont
  %i.bz = icmp eq i64 %.sroa.0.0.ph90, 0
  br i1 %i.bz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not5.i.i.i = icmp ult i64 %.sroa.0.0.ph90, %.val1.i
  br i1 %.not5.i.i.i, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.ca = icmp eq i64 %i.bs, 0
  br i1 %i.ca, label %bb.ao, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.cb = icmp eq i64 %.sroa.0.0.ph90, %.val1.i
  br i1 %i.cb, label %bb.ai, label %.invoke

bb.ak:                                            ; preds = %bb.ah
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph90
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !123, !noundef !17
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.ai, label %.invoke

bb.al:                                            ; preds = %bb.ai
  %.not6.i.i.i = icmp ult i64 %i.bs, %.val1.i
  br i1 %.not6.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cf = icmp eq i64 %i.bs, %.val1.i
  br i1 %i.cf, label %bb.ao, label %.invoke

bb.an:                                            ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bs
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !123, !noundef !17
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.ao, label %.invoke

.invoke:                                          ; preds = %.cont, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.j, %bb.k
  %i.cj = phi i64 [ %.sroa.0.0.ph.lcssa86, %bb.j ], [ %.sroa.0.0.ph.lcssa86, %bb.k ], [ %.sroa.0.0.ph90, %bb.an ], [ %.sroa.0.0.ph90, %bb.am ], [ %.sroa.0.0.ph90, %bb.ak ], [ %.sroa.0.0.ph90, %bb.aj ], [ %.sroa.0.0.ph90, %.cont ]
  %i.ck = phi i64 [ %.val1.i, %bb.j ], [ %.val1.i, %bb.k ], [ %i.bs, %bb.an ], [ %i.bs, %bb.am ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.aj ], [ %i.bs, %.cont ]
  %i.cl = phi ptr [ @4, %bb.j ], [ @4, %bb.k ], [ @6, %bb.an ], [ @6, %bb.am ], [ @6, %bb.ak ], [ @6, %bb.aj ], [ @6, %.cont ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %i.cj, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl) #16
          to label %.cont137 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont137:                                         ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ai
  %i.cm = sub nuw i64 %i.bs, %.sroa.0.0.ph90
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph90
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !130, !noalias !135, !noundef !17 ; 3 uses
  %i.cp = load i64, ptr %i.l, align 8, !range !109, !alias.scope !130, !noalias !135, !noundef !17
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.ap, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41: ; preds = %bb.ap, %bb.ao
  %i.cr = load ptr, ptr %i.p, align 8, !alias.scope !130, !noalias !135, !nonnull !17, !noundef !17
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.co ; 2 uses
  store ptr %i.cn, ptr %i.cs, align 8, !noalias !135
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cm, ptr %i.ct, align 8
  %i.cu = add i64 %i.co, 1
  store i64 %i.cu, ptr %i.q, align 8, !alias.scope !130, !noalias !135
  %i.cv = icmp ult i64 %i.bj, %.val12
  br i1 %i.cv, label %.lr.ph, label %.outer._crit_edge

bb.aq:                                            ; preds = %bb.ar, %.body, %.loopexit.split-lp
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.body31.thread:                                   ; preds = %bb.t, %bb.ar, %bb.d
  %.pn.pn55 = phi { ptr, i32 } [ %i.bh, %bb.t ], [ %.pn.pn56, %bb.ar ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %.pn.pn55

bb.ar:                                            ; preds = %.body31.thread59, %bb.d
  %.pn.pn56 = phi { ptr, i32 } [ %lpad.thr_comm, %.body31.thread59 ], [ %.pn, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.l) #18
          to label %.body31.thread unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [80 x i8], align 8                ; 9 uses
  %i.n = alloca [80 x i8], align 8                ; 13 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !143, !noalias !138
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.619.i.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.619.i.sroa.8.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.635.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.619.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !143, !noalias !138
  br label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i

_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %bb.a
  %i.ac = phi ptr [ %.promoted.i, %bb.a ], [ %i.ae, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.75.0.i = phi ptr [ undef, %bb.a ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.5.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %i.ad = icmp eq ptr %i.ac, %.pre.i
  br i1 %i.ad, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ae, ptr %1, align 8, !alias.scope !143, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !152
  %i.af = load ptr, ptr %i.ac, align 8, !alias.scope !155, !noalias !156, !nonnull !17, !align !70, !noundef !17 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 304
  %i.ah = load i8, ptr %i.ag, align 8, !range !157, !noalias !152, !noundef !17
  %.not.i.i.i = icmp eq i8 %i.ah, 3
  br i1 %.not.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  store i64 0, ptr %i.c, align 8, !noalias !158
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store i32 1610612768, ptr %i.t, align 8, !noalias !158
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !158
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !158
  store ptr %i.c, ptr %i.b, align 8, !noalias !158
  store ptr @12, ptr %i.u, align 8, !noalias !158
  %i.aj = invoke noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !162

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %common.resume.i.i unwind label %bb.g, !noalias !162

bb.e:                                             ; preds = %bb.c
  br i1 %i.aj, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, !prof !122

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !162

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !162
  unreachable

common.resume.i.i:                                ; preds = %.body.i2.i.i, %bb.bm, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i2.i.i ], [ %i.cb, %bb.bm ], [ %lpad.phi.i, %bb.d ], [ %i.bx, %bb.bh ], [ %.pn46.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !152
  store i64 19, ptr %i.o, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !152
  invoke void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter3new(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %bb.i, !noalias !152

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  call void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRRNtNtB5_4data5FieldReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13), !noalias !156
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !152
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.69.0.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !noalias !152
  %.sroa.812.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.812.0.copyload.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.r, %bb.q, %.body.i.i.i, %bb.l, %bb.i
  %.pn46.i.i.i = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ap, %bb.l ], [ %.pn44.i.i.i, %.body.i.i.i ], [ %.pn44.i.i.i, %bb.q ], [ %.pn44.i.i.i, %bb.r ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #18
          to label %common.resume.i.i unwind label %bb.aq, !noalias !152

bb.i:                                             ; preds = %bb.j, %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  store ptr %i.r, ptr %i.v, align 8, !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !152
  invoke void @_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.k unwind label %bb.i, !noalias !152

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !152
  %i.am = load ptr, ptr %i.w, align 8, !noalias !152, !nonnull !17, !noundef !17
  %i.an = load i64, ptr %i.x, align 8, !noalias !152, !noundef !17
  %i.ao = invoke noundef i32 @_RNvMsi_CsbjGuDcEILED_11proc_macro2NtB5_4Span9call_site()
          to label %bb.m unwind label %bb.l, !noalias !152

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #18
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.aq, !noalias !152

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMsx_CsbjGuDcEILED_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an, i32 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %bb.n unwind label %bb.l, !noalias !152

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i unwind label %bb.o, !noalias !152

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i.i.i unwind label %bb.p, !noalias !152

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.s, !noalias !152

.body.i.i.i:                                      ; preds = %bb.bl, %bb.bk, %bb.bc, %.body56.i.i.i, %bb.s, %bb.o
  %.pn44.i.i.i = phi { ptr, i32 } [ %.pn42.i.i.i, %bb.bk ], [ %eh.lpad-body57.i.i.i, %.body56.i.i.i ], [ %.pn42.i.i.i, %bb.bl ], [ %i.aq, %bb.o ], [ %i.av, %bb.s ], [ %i.bs, %bb.bc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.as = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !171, !noalias !152, !noundef !17
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.body.i.i.i
  %.val1.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !171, !noalias !152, !noundef !17 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !171, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #21, !noalias !172
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.s:                                             ; preds = %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !152, !nonnull !17, !noundef !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.az = load i64, ptr %i.ay, align 8, !noalias !152, !noundef !17
  invoke void @_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.az)
          to label %bb.t unwind label %bb.s, !noalias !152

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.ba = load i64, ptr %i.m, align 8, !range !35, !noalias !152, !noundef !17 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  %.sroa.619.i.sroa.0.0.copyload14.i.i = load i64, ptr %i.y, align 8, !noalias !152 ; 2 uses
  %.sroa.619.i.sroa.7.0.copyload17.i.i = load ptr, ptr %.sroa.619.i.sroa.7.0..sroa_idx16.i.i, align 8, !noalias !152 ; 2 uses
  %.sroa.619.i.sroa.8.0.copyload20.i.i = load i64, ptr %.sroa.619.i.sroa.8.0..sroa_idx19.i.i, align 8, !noalias !152 ; 2 uses
  br i1 %i.bb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.bc = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !179, !noalias !152, !noundef !17
  %i.bd = icmp eq i8 %i.bc, 2
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i48.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !179, !noalias !152, !noundef !17 ; 2 uses
  %i.be = icmp eq i64 %.val1.i.i48.i.i.i, 0
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i49.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !179, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i49.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i48.i.i.i, i64 noundef 1) #21, !noalias !180
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.635.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152
  store i64 %.sroa.619.i.sroa.0.0.copyload14.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !152
  store ptr %.sroa.619.i.sroa.7.0.copyload17.i.i, ptr %.sroa.619.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !152
  store i64 %.sroa.619.i.sroa.8.0.copyload20.i.i, ptr %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !152
  store i64 %i.ba, ptr %i.n, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !152
  %i.bf = load i64, ptr %i.z, align 8, !range !35, !noalias !152, !noundef !17
  %.not37.i.i.i = icmp eq i64 %i.bf, -9223372036854775808 ; 3 uses
  br i1 %.not37.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ac unwind label %bb.ab, !noalias !152

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.ap unwind label %bb.ao, !noalias !152

bb.aa:                                            ; preds = %bb.ad, %bb.ab
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.ad ], [ %i.bg, %bb.ab ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #18
          to label %.body53.i.i.i unwind label %bb.aq, !noalias !152

bb.ab:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.y
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.af unwind label %bb.ae, !noalias !152

bb.ad:                                            ; preds = %bb.ah, %bb.ae
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.ae ], [ %i.bi, %bb.ah ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.j) #18
          to label %bb.aa unwind label %bb.aq, !noalias !152

bb.ae:                                            ; preds = %bb.ak, %bb.af, %bb.ac
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ag unwind label %bb.ae, !noalias !152

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 3)
          to label %bb.ai unwind label %bb.ah, !noalias !152

bb.ah:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.h) #18
          to label %bb.ad unwind label %bb.aq, !noalias !152

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.aj unwind label %bb.ah, !noalias !152

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.ak unwind label %bb.ah, !noalias !152

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !152
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.al unwind label %bb.ae, !noalias !152

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i unwind label %bb.am, !noalias !152

bb.am:                                            ; preds = %bb.al
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body53.i.i.i unwind label %bb.an, !noalias !152

bb.an:                                            ; preds = %bb.am
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i unwind label %bb.ao, !noalias !152

.body53.i.i.i:                                    ; preds = %bb.ar, %bb.ao, %bb.am, %bb.aa
  %.not37.i.i.i470 = phi i1 [ false, %bb.aa ], [ %.not37.i.i.i, %bb.ar ], [ %.not37.i.i.i.lcssa461, %bb.ao ], [ false, %bb.am ]
  %.pn42.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.aa ], [ %.pn40.i.i.i, %bb.ar ], [ %i.bl, %bb.ao ], [ %i.bj, %bb.am ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.n) #18
          to label %bb.bj unwind label %bb.aq, !noalias !152

bb.ao:                                            ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i, %bb.z
  %.not37.i.i.i.lcssa461 = phi i1 [ %.not37.i.i.i, %bb.aw ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i ], [ true, %bb.z ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body53.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !152
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.at unwind label %bb.as, !noalias !152

bb.aq:                                            ; preds = %bb.bl, %bb.bj, %.body56.i.i.i, %bb.au, %bb.ar, %.body53.i.i.i, %bb.ah, %bb.ad, %bb.aa, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

bb.ar:                                            ; preds = %bb.au, %bb.as
  %.pn40.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.au ], [ %i.bn, %bb.as ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.l) #18
          to label %.body53.i.i.i unwind label %bb.aq, !noalias !152

bb.as:                                            ; preds = %bb.ap
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.ap
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.av unwind label %bb.au, !noalias !152

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.g) #18
          to label %bb.ar unwind label %bb.aq, !noalias !152

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.aw unwind label %bb.au, !noalias !152

bb.aw:                                            ; preds = %bb.av
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !181 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.ax unwind label %bb.ao, !noalias !152

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.az unwind label %bb.ay, !noalias !152

bb.ay:                                            ; preds = %bb.ax
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body56.i.i.i unwind label %bb.ba, !noalias !152

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.bb, !noalias !152

bb.ba:                                            ; preds = %bb.ay
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i.i

.body56.i.i.i:                                    ; preds = %bb.bb, %bb.ay
  %eh.lpad-body57.i.i.i = phi { ptr, i32 } [ %i.br, %bb.bb ], [ %i.bp, %bb.ay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i) #18
          to label %.body.i.i.i unwind label %bb.aq, !noalias !152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.az
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %bb.bd unwind label %bb.bc, !noalias !152

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %.body.i.i.i unwind label %bb.be, !noalias !152

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i unwind label %bb.s, !noalias !152

bb.be:                                            ; preds = %bb.bc
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.bu = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !188, !noalias !152, !noundef !17
  %i.bv = icmp eq i8 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i
  %.val1.i.i62.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !188, !noalias !152, !noundef !17 ; 2 uses
  %i.bw = icmp eq i64 %.val1.i.i62.i.i.i, 0
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i63.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !188, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i63.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i62.i.i.i, i64 noundef 1) #21, !noalias !189
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i: ; preds = %bb.bg, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i unwind label %bb.bh, !noalias !152

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i unwind label %bb.bi, !noalias !152

bb.bi:                                            ; preds = %bb.bh
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

bb.bj:                                            ; preds = %.body53.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i) #18
          to label %bb.bk unwind label %bb.aq, !noalias !152

bb.bk:                                            ; preds = %bb.bj
  %i.bz = load i64, ptr %i.z, align 8, !range !35, !noalias !152, !noundef !17
  %i.ca = icmp ne i64 %i.bz, -9223372036854775808
  %or.cond.i.i.i = and i1 %.not37.i.i.i470, %i.ca
  br i1 %or.cond.i.i.i, label %bb.bl, label %.body.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #18
          to label %.body.i.i.i unwind label %bb.aq, !noalias !152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i unwind label %bb.bm, !noalias !152

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i unwind label %bb.bn, !noalias !152

bb.bn:                                            ; preds = %bb.bm
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !152
  br label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i

_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i, %bb.h
  %.sroa.10.0.ph.i.i = phi i64 [ %.sroa.619.i.sroa.8.0.copyload20.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.812.0.copyload.i.i.i, %bb.h ]
  %.sroa.9.0.ph.i.i = phi ptr [ %.sroa.619.i.sroa.7.0.copyload17.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.69.0.copyload.i.i.i, %bb.h ]
  %.sroa.6.0.ph.i.i = phi i64 [ %.sroa.619.i.sroa.0.0.copyload14.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.07.0.copyload.i.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !152
  br label %.loopexit34.i

_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !152
  switch i64 %.sroa.01.0.copyload.i.i, label %.loopexit33.i [
    i64 -9223372036854775807, label %.loopexit34.i
    i64 -9223372036854775806, label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  ]

.loopexit34.i:                                    ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i
  %.sroa.6.027.i.i = phi i64 [ %.sroa.6.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %.sroa.9.026.i.i = phi ptr [ %.sroa.9.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %.sroa.10.025.i.i = phi i64 [ %.sroa.10.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %i.cd = load i64, ptr %3, align 8, !range !35, !alias.scope !190, !noalias !193, !noundef !17
  %i.ce = icmp eq i64 %i.cd, -9223372036854775808
  br i1 %i.ce, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit34.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i unwind label %bb.bp, !noalias !197

bb.bp:                                            ; preds = %bb.bo
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body.i2.i.i unwind label %bb.bq, !noalias !197

bb.bq:                                            ; preds = %bb.bp
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i unwind label %bb.br, !noalias !197

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2.i.i

.body.i2.i.i:                                     ; preds = %bb.br, %bb.bp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.br ], [ %i.cf, %bb.bp ]
  store i64 %.sroa.6.027.i.i, ptr %3, align 8, !noalias !198
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.9.026.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i, align 8, !noalias !198
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.10.025.i.i, ptr %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i, align 8, !noalias !198
  br label %common.resume.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i, %.loopexit34.i
  store i64 %.sroa.6.027.i.i, ptr %3, align 8, !noalias !198
  %.sroa.4.sroa.6.0..8.val.sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.9.026.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx8.i.i, align 8, !noalias !198
  %.sroa.4.sroa.7.0..8.val.sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.10.025.i.i, ptr %.sroa.4.sroa.7.0..8.val.sroa_idx11.i.i, align 8, !noalias !198
  br label %.loopexit33.i

bb.bs:                                            ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !199, !noalias !141
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

.loopexit33.i:                                    ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i
  %.sroa.7.sroa.5.1.ph.i = phi ptr [ %.sroa.75.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.0.1.ph.i = phi i64 [ %.sroa.5.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.6.1.ph.i = phi i64 [ %.sroa.8.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775807, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.01.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !202, !noalias !141
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.1.ph.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.1.ph.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.6.1.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit: ; preds = %bb.bs, %.loopexit33.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.not = icmp eq i32 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !206, !noundef !17 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !206, !noundef !17
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !206
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !206
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !206
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !206, !nonnull !17, !noundef !17
  call void %i.k(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #21, !noalias !206, !inline_history !209
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !206
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !206
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !210, !noundef !17 ; 2 uses
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !210, !noundef !17
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !210
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !210
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i4, align 8, !alias.scope !210
  %.sroa.7.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i5, align 8, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !210
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !210, !nonnull !17, !noundef !17
  call void %i.p(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 1) #21, !noalias !210, !inline_history !209
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.311.0.copyload = load ptr, ptr %.sroa.311.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.311.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !210
  %.pre.i6 = load i64, ptr %i.e, align 8, !alias.scope !210
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7: ; preds = %bb.d, %bb.e
  %i.q = phi i64 [ %i.l, %bb.d ], [ %.pre.i6, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !alias.scope !210, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 1, ptr %i.s, align 1, !noalias !210
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !alias.scope !206, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !noalias !206
  %i.x = add i64 %i.u, 1
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly captures(address, read_provenance) %0, i64 %1, ptr noalias noundef align 8 dereferenceable(40) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.not = icmp eq ptr %0, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !213, !noundef !17 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !213, !noundef !17
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !213
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !213
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !213
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !213
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !213, !nonnull !17, !noundef !17
  call void %i.k(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #21, !noalias !213, !inline_history !209
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !213
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !213
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !alias.scope !213, !noundef !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !noalias !213
  %i.o = add i64 %i.l, 1
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !216, !noundef !17 ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !216, !noundef !17
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !216
  %.sroa.6.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !216
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i5, align 8, !alias.scope !216
  %.sroa.7.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i6, align 8, !alias.scope !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !216, !nonnull !17, !noundef !17
  call void %i.t(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 1) #21, !noalias !216, !inline_history !209
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.312.0.copyload = load ptr, ptr %.sroa.312.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.312.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !216
  %.pre.i7 = load i64, ptr %i.e, align 8, !alias.scope !216
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %i.p, %bb.d ], [ %.pre.i7, %bb.e ] ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !alias.scope !216, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 1, ptr %i.w, align 1, !noalias !216
  %i.x = add i64 %i.u, 1
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !219, !noundef !17 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !219, !nonnull !17, !noundef !17
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !219, !noundef !17 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !219
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !222
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !225, !noalias !222, !noundef !17 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !225, !noalias !222, !nonnull !17, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !225, !noalias !222
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !225, !noalias !222
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXss_NtCsbjGuDcEILED_11proc_macro23impNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.e, align 8, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !170, !noundef !17
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsk_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !229
  store i64 0, ptr %i.c, align 8, !noalias !229
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !229
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !229
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.i, align 8, !noalias !229
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !229
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !229
  store ptr %i.c, ptr %i.b, align 8, !noalias !229
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @12, ptr %i.j, align 8, !noalias !229
  %i.k = invoke noundef zeroext i1 @_RNvXsK_CsjJ0p09o2jmV_10proc_macroNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !236

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.g, !noalias !236

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.f, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsjJ0p09o2jmV_10proc_macro5IdentNtB5_8ToString9to_stringCshbKHpCRGxgC_16deltalake_derive.exit, !prof !122

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %.noexc.i.i unwind label %bb.d, !noalias !236

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !236
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsjJ0p09o2jmV_10proc_macro5IdentNtB5_8ToString9to_stringCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !229
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.n, align 8, !noundef !17
  %i.o = icmp eq i64 %.val7, %.val2
  br i1 %i.o, label %bb.h, label %_RNvXs1t_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eq.exit

bb.h:                                             ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsjJ0p09o2jmV_10proc_macro5IdentNtB5_8ToString9to_stringCshbKHpCRGxgC_16deltalake_derive.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val, i64 %.val2)
  %i.q = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs1t_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eq.exit

_RNvXs1t_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.h, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsjJ0p09o2jmV_10proc_macro5IdentNtB5_8ToString9to_stringCshbKHpCRGxgC_16deltalake_derive.exit
  %.sroa.0.0.i = phi i1 [ %i.q, %bb.h ], [ false, %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsjJ0p09o2jmV_10proc_macro5IdentNtB5_8ToString9to_stringCshbKHpCRGxgC_16deltalake_derive.exit ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.i

bb.i:                                             ; preds = %_RNvXs1t_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eq.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXs1t_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eq.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %.sroa.0.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator5unzipjReINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2c_B29_EECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary7matches(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary3len(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecReEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRRNtNtB5_4data5FieldReECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter3new(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsi_CsbjGuDcEILED_11proc_macro2NtB5_4Span9call_site() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsx_CsbjGuDcEILED_11proc_macro2NtB5_5Ident3new(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 36028797018963968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr noalias noundef align 8 dereferenceable(32), i8 noundef range(i8 0, 4), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef byval([40 x i8]) align 8 captures(address) dereferenceable(40), i64 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop(ptr noalias noundef byval([40 x i8]) align 8 captures(address) dereferenceable(40)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef range(i32 1, 0), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsk_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsK_CsjJ0p09o2jmV_10proc_macroNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { noinline }
attributes #20 = { noreturn }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4, !6, !8, !10, !11, !13, !14, !16}
!4 = distinct !{!4, !5, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!5 = distinct !{!5, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshbKHpCRGxgC_16deltalake_derive"}
!6 = distinct !{!6, !7, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!7 = distinct !{!7, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!8 = distinct !{!8, !9, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!9 = distinct !{!9, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive"}
!10 = distinct !{!10, !9, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!11 = distinct !{!11, !12, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!12 = distinct !{!12, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive"}
!13 = distinct !{!13, !12, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!14 = distinct !{!14, !15, !"_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!15 = distinct !{!15, !"_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive"}
!16 = distinct !{!16, !15, !"_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!17 = !{}
!18 = !{!8, !10, !11, !13, !14, !16}
!19 = !{!20, !22, !24, !26, !27, !29, !30, !32}
!20 = distinct !{!20, !21, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!21 = distinct !{!21, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECshbKHpCRGxgC_16deltalake_derive"}
!22 = distinct !{!22, !23, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!23 = distinct !{!23, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!24 = distinct !{!24, !25, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!25 = distinct !{!25, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCshbKHpCRGxgC_16deltalake_derive"}
!26 = distinct !{!26, !25, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!27 = distinct !{!27, !28, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!28 = distinct !{!28, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive"}
!29 = distinct !{!29, !28, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!30 = distinct !{!30, !31, !"_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!31 = distinct !{!31, !"_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive"}
!32 = distinct !{!32, !31, !"_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!33 = !{!24, !26, !27, !29, !30, !32}
!34 = distinct !{null}
!35 = !{i64 0, i64 -9223372036854775807}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!38 = distinct !{!38, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive"}
!39 = !{!40, !42, !44, !37}
!40 = distinct !{!40, !41, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!41 = distinct !{!41, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECshbKHpCRGxgC_16deltalake_derive"}
!42 = distinct !{!42, !43, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!43 = distinct !{!43, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive"}
!44 = distinct !{!44, !45, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!45 = distinct !{!45, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbjGuDcEILED_11proc_macro25rcvec5RcVecNtBL_9TokenTreeEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbjGuDcEILED_11proc_macro25rcvec5RcVecNtBL_9TokenTreeEECshbKHpCRGxgC_16deltalake_derive"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc2rc2RcINtNtBL_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!51 = distinct !{!51, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc2rc2RcINtNtBL_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEEECshbKHpCRGxgC_16deltalake_derive"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvXsx_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!54 = distinct !{!54, !"_RNvXsx_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!55 = !{!53, !50, !47, !56, !37}
!56 = distinct !{!56, !57, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro28fallback11TokenStreamECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!57 = distinct !{!57, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro28fallback11TokenStreamECshbKHpCRGxgC_16deltalake_derive"}
!58 = !{!53, !50, !47}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbjGuDcEILED_11proc_macro25rcvec5RcVecNtBL_9TokenTreeEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!61 = distinct !{!61, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbjGuDcEILED_11proc_macro25rcvec5RcVecNtBL_9TokenTreeEECshbKHpCRGxgC_16deltalake_derive"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc2rc2RcINtNtBL_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc2rc2RcINtNtBL_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEEECshbKHpCRGxgC_16deltalake_derive"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXsx_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!67 = distinct !{!67, !"_RNvXsx_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!68 = !{!66, !63, !60, !56, !37}
!69 = !{!66, !63, !60}
!70 = !{i64 8}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecReE3newCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!73 = distinct !{!73, !"_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecReE3newCshbKHpCRGxgC_16deltalake_derive"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXCskxeEtmv7ubq_20unicode_segmentationeNtB2_19UnicodeSegmentation16grapheme_indices: argument 0"}
!76 = distinct !{!76, !"_RNvXCskxeEtmv7ubq_20unicode_segmentationeNtB2_19UnicodeSegmentation16grapheme_indices"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indices: argument 0"}
!79 = distinct !{!79, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indices"}
!80 = !{!75, !81}
!81 = distinct !{!81, !76, !"_RNvXCskxeEtmv7ubq_20unicode_segmentationeNtB2_19UnicodeSegmentation16grapheme_indices: argument 1"}
!82 = !{!78, !83, !75, !81}
!83 = distinct !{!83, !79, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indices: argument 1"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecReE3newCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!86 = distinct !{!86, !"_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecReE3newCshbKHpCRGxgC_16deltalake_derive"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme13new_graphemes: argument 0"}
!89 = distinct !{!89, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme13new_graphemes"}
!90 = !{!91, !78, !83, !75, !81}
!91 = distinct !{!91, !89, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme13new_graphemes: argument 1"}
!92 = !{!78, !75}
!93 = !{!83, !81}
!94 = !{!95, !97, !99}
!95 = distinct !{!95, !96, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!96 = distinct !{!96, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!97 = distinct !{!97, !98, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!98 = distinct !{!98, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!99 = distinct !{!99, !100, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!100 = distinct !{!100, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive"}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!103 = distinct !{!103, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive"}
!104 = distinct !{!104, !105, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!105 = distinct !{!105, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive"}
!106 = !{!107, !108}
!107 = distinct !{!107, !103, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!108 = distinct !{!108, !105, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!109 = !{i64 0, i64 -9223372036854775808}
!110 = !{!111, !113, !114, !116}
!111 = distinct !{!111, !112, !"_RINvXse_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB6_9into_iter8IntoIterBG_EECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!112 = distinct !{!112, !"_RINvXse_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB6_9into_iter8IntoIterBG_EECshbKHpCRGxgC_16deltalake_derive"}
!113 = distinct !{!113, !112, !"_RINvXse_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB6_9into_iter8IntoIterBG_EECshbKHpCRGxgC_16deltalake_derive: argument 1"}
!114 = distinct !{!114, !115, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBR_EECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!115 = distinct !{!115, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBR_EECshbKHpCRGxgC_16deltalake_derive"}
!116 = distinct !{!116, !115, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBR_EECshbKHpCRGxgC_16deltalake_derive: argument 1"}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtB2_12IntoIterator9into_iterCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!119 = distinct !{!119, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtB2_12IntoIterator9into_iterCshbKHpCRGxgC_16deltalake_derive"}
!120 = distinct !{!120, !119, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReENtB2_12IntoIterator9into_iterCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!121 = !{!111, !114}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = !{!124, !126, !128}
!124 = distinct !{!124, !125, !"_RNvXs5_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!125 = distinct !{!125, !"_RNvXs5_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!126 = distinct !{!126, !127, !"_RNvXs5_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!127 = distinct !{!127, !"_RNvXs5_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!128 = distinct !{!128, !129, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range5RangejEE5indexCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!129 = distinct !{!129, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range5RangejEE5indexCshbKHpCRGxgC_16deltalake_derive"}
!130 = !{!131, !133}
!131 = distinct !{!131, !132, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!132 = distinct !{!132, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive"}
!133 = distinct !{!133, !134, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!134 = distinct !{!134, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive"}
!135 = !{!136, !137}
!136 = distinct !{!136, !132, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!137 = distinct !{!137, !134, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_: argument 0"}
!140 = distinct !{!140, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_: argument 1"}
!143 = !{!144, !142}
!144 = distinct !{!144, !145, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!145 = distinct !{!145, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_: argument 1"}
!148 = distinct !{!148, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_: argument 1"}
!151 = distinct !{!151, !"_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_"}
!152 = !{!153, !150, !154, !147, !139, !142}
!153 = distinct !{!153, !151, !"_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_: argument 0"}
!154 = distinct !{!154, !148, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_: argument 0"}
!155 = !{!150, !147}
!156 = !{!153, !154, !139, !142}
!157 = !{i8 0, i8 4}
!158 = !{!159, !161, !153, !150, !154, !147, !139, !142}
!159 = distinct !{!159, !160, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!160 = distinct !{!160, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive"}
!161 = distinct !{!161, !160, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!162 = !{!159, !153, !150, !154, !147, !139, !142}
!163 = !{!161, !153, !150, !154, !147, !139, !142}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!166 = distinct !{!166, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!169 = distinct !{!169, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive"}
!170 = !{i8 0, i8 3}
!171 = !{!168, !165}
!172 = !{!168, !165, !153, !150, !154, !147, !139, !142}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!175 = distinct !{!175, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!178 = distinct !{!178, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive"}
!179 = !{!177, !174}
!180 = !{!177, !174, !153, !150, !154, !147, !139, !142}
!181 = !{!150, !154, !147, !139, !142}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!184 = distinct !{!184, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!187 = distinct !{!187, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive"}
!188 = !{!186, !183}
!189 = !{!186, !183, !153, !150, !154, !147, !139, !142}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!192 = distinct !{!192, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECshbKHpCRGxgC_16deltalake_derive"}
!193 = !{!194, !196, !154, !147, !139, !142}
!194 = distinct !{!194, !195, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1L_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4m_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5y_ENcNtB6e_5Break0E0B6e_E0B2j_: argument 0"}
!195 = distinct !{!195, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1L_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4m_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5y_ENcNtB6e_5Break0E0B6e_E0B2j_"}
end_hunk_0
