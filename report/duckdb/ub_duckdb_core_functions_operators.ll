inline.NumInlined: 7169
inline.NumDeleted: 1237
begin_hunk_0_@_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.c = icmp samesign ult i32 %i.b, 10
  %i.d = icmp samesign ult i32 %i.b, 100
  %spec.select = select i1 %i.d, i32 2, i32 3
  %.0.i.i = select i1 %i.c, i32 1, i32 %spec.select
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.e = add nuw nsw i32 %.0.i.i, %.lobit.i
  %i.f = zext nneg i32 %i.e to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.o = getelementptr i8, ptr %i.n, i64 -200
  %i.p = getelementptr i8, ptr %i.n, i64 -199
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34, !noalias !3945
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !34
  %i.s = load i8, ptr %i.o, align 2, !tbaa !34, !noalias !3945
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !34
  br label %bb.b

end_hunk_1
begin_hunk_2_@_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  %i.a = icmp ult i8 %1, 10
  %i.b = icmp ult i8 %1, 100
  %2 = select i1 %i.b, i64 2, i64 3
  %i.c = select i1 %i.a, i64 1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !518, !alias.scope !3959
end_hunk_2
begin_hunk_3_@_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34, !noalias !3959
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !34
  %i.o = load i8, ptr %i.k, align 2, !tbaa !34, !noalias !3959
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !34
  br label %bb.b

end_hunk_3
