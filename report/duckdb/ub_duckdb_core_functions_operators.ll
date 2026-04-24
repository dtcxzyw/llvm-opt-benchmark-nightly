inline.NumInlined: 7169
inline.NumDeleted: 1237
begin_hunk_0_@_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  %i.a = icmp ult i8 %1, 10
  %2 = icmp ult i8 %1, 100
  %. = select i1 %2, i32 2, i32 3                 ; 3 uses
  %i.b = zext nneg i32 %. to i64
  %i.c = select i1 %i.a, i64 1, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !518, !alias.scope !3959
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i8 noundef signext 45)
end_hunk_0
begin_hunk_1_@_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !3959 ; 4 uses
  %3 = icmp ugt i8 %1, 99
  br i1 %3, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.f = urem i8 %1, 100
end_hunk_1
begin_hunk_2_@_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34, !noalias !3959
  %4 = zext nneg i32 %. to i64
  %5 = getelementptr i8, ptr %i.e, i64 %4
  %i.m = getelementptr i8, ptr %5, i64 -1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !34
  %i.n = load i8, ptr %i.j, align 2, !tbaa !34, !noalias !3959
  %6 = zext nneg i32 %. to i64
  %7 = getelementptr i8, ptr %i.e, i64 %6
  %i.o = getelementptr i8, ptr %7, i64 -2
  store i8 %i.n, ptr %i.o, align 1, !tbaa !34
  br label %bb.b

end_hunk_2
begin_hunk_3_@_ZN6duckdb13NumericHelper8ToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i16 %1, 10000
  %..a = select i1 %i.e, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.c, %bb.b, %.lr.ph.i.i, %bb.a
  %.0.i.i = phi i32 [ %..a, %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %2 = zext nneg i32 %.0.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %0, align 8, !tbaa !518, !alias.scope !3962
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !3962 ; 4 uses
  %i.h = icmp ugt i16 %1, 99
  br i1 %i.h, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %3 = add nsw i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.k, %.lr.ph.i11.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.v, %.lr.ph.i11.i ], [ %3, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.i = urem i32 %.020.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = udiv i32 %.020.i.i, 100                  ; 2 uses
end_hunk_3
