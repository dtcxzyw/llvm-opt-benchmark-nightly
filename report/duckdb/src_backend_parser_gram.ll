inline.NumInlined: 185
inline.NumDeleted: 51
begin_hunk_0_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  store i32 1, ptr %i.jtd, align 4, !tbaa !592
  %i.jte = getelementptr inbounds i8, ptr %.35474, i64 -16
  %i.jtf = load i8, ptr %i.jte, align 8, !tbaa !9, !range !186, !noundef !73
  %i.jtg = trunc nuw i8 %i.jtf to i1
  %spec.store.select5627 = select i1 %i.jtg, i32 17, i32 1 ; 3 uses
  store i32 %spec.store.select5627, ptr %i.jtd, align 4
  %i.jth = getelementptr inbounds i8, ptr %.35474, i64 -8
  %i.jti = load i8, ptr %i.jth, align 8, !tbaa !9, !range !186, !noundef !73
end_hunk_0
begin_hunk_1_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  br i1 %i.jtj, label %bb.bcy, label %bb.bcz

bb.bcy:                                           ; preds = %bb.bcx
  %5 = or disjoint i32 %spec.store.select5627, 8  ; 2 uses
  store i32 %5, ptr %i.jtd, align 4, !tbaa !592
  br label %bb.bcz

end_hunk_1
begin_hunk_2_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  br i1 %i.jtm, label %bb.bda, label %bb.bdb

bb.bda:                                           ; preds = %bb.bcz
  %i.jtn = or i32 %i.jtk, 4
  store i32 %i.jtn, ptr %i.jtd, align 4, !tbaa !592
  br label %bb.bdb

end_hunk_2
begin_hunk_3_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  store i32 1, ptr %i.jtq, align 4, !tbaa !592
  %i.jtr = getelementptr inbounds i8, ptr %.35474, i64 -32
  %i.jts = load i8, ptr %i.jtr, align 8, !tbaa !9, !range !186, !noundef !73
  %i.jtt = trunc nuw i8 %i.jts to i1
  %spec.store.select5628 = select i1 %i.jtt, i32 17, i32 1 ; 3 uses
  store i32 %spec.store.select5628, ptr %i.jtq, align 4
  %i.jtu = getelementptr inbounds i8, ptr %.35474, i64 -24
  %i.jtv = load i8, ptr %i.jtu, align 8, !tbaa !9, !range !186, !noundef !73
end_hunk_3
begin_hunk_4_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  br i1 %i.jtw, label %bb.bdd, label %bb.bde

bb.bdd:                                           ; preds = %bb.bdc
  %6 = or disjoint i32 %spec.store.select5628, 8  ; 2 uses
  store i32 %6, ptr %i.jtq, align 4, !tbaa !592
  br label %bb.bde

end_hunk_4
begin_hunk_5_@_ZN17duckdb_libpgquery12base_yyparseEPv:bb.a
  br i1 %i.jua, label %bb.bdf, label %bb.bdg

bb.bdf:                                           ; preds = %bb.bde
  %i.jub = or i32 %i.jtx, 4
  store i32 %i.jub, ptr %i.jtq, align 4, !tbaa !592
  br label %bb.bdg

end_hunk_5
