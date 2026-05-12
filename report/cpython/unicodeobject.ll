inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@_PyUnicode_ResizeCompact:bb.a
  %i.s = and i32 %.val.i, 64
  %.not40 = icmp eq i32 %i.s, 0
  %. = select i1 %.not40, i64 56, i64 40          ; 3 uses
  %2 = xor i64 %., 9223372036854775807
  %i.t = udiv i64 %2, %i.r
  %.not41 = icmp slt i64 %1, %i.t
  br i1 %.not41, label %bb.j, label %bb.i
end_hunk_0
begin_hunk_1_@PyUnicode_New:bb.a
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %2 = xor i64 %.0, 9223372036854775807
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.044, i1 true)
  %i.l = lshr i64 %2, %i.k
  %.not = icmp samesign ult i64 %0, %i.l
end_hunk_1
begin_hunk_2_@unicode_repr:bb.a
  %.175 = phi i64 [ %.074160, %PyUnicode_READ.exit ], [ %.074160, %bb.j ], [ %.074160, %bb.l ], [ %.074160, %bb.i ], [ %.074160, %bb.n ], [ %.074160, %bb.m ], [ %i.p, %bb.g ], [ %.074160, %bb.h ], [ %.074160, %PyUnicode_READ.exit ], [ %.074160, %PyUnicode_READ.exit ], [ %.074160, %PyUnicode_READ.exit ] ; 2 uses
  %.073 = phi i64 [ 2, %PyUnicode_READ.exit ], [ 1, %bb.j ], [ 1, %bb.l ], [ 4, %bb.i ], [ %., %bb.n ], [ 4, %bb.m ], [ 1, %bb.g ], [ 1, %bb.h ], [ 2, %PyUnicode_READ.exit ], [ 2, %PyUnicode_READ.exit ], [ 2, %PyUnicode_READ.exit ] ; 2 uses
  %.169 = phi i32 [ %.068161, %PyUnicode_READ.exit ], [ %.068161, %bb.j ], [ %i.v, %bb.l ], [ %.068161, %bb.i ], [ %.068161, %bb.n ], [ %.068161, %bb.m ], [ %.068161, %bb.g ], [ %.068161, %bb.h ], [ %.068161, %PyUnicode_READ.exit ], [ %.068161, %PyUnicode_READ.exit ], [ %.068161, %PyUnicode_READ.exit ] ; 2 uses
  %1 = xor i64 %.073, 9223372036854775807
  %.not85 = icmp sgt i64 %.064162, %1
  br i1 %.not85, label %.thread147, label %bb.p

end_hunk_2
begin_hunk_3_@backslashreplace:bb.a
  %i.l = load i16, ptr %i.k, align 2, !tbaa !208
  %i.m = icmp ult i16 %i.l, 256
  %.054.us83 = select i1 %i.m, i64 4, i64 6       ; 2 uses
  %5 = xor i64 %.054.us83, 9223372036854775807
  %.not.us84 = icmp sgt i64 %.06075.us79, %5
  br i1 %.not.us84, label %.thread, label %bb.d

end_hunk_3
begin_hunk_4_@backslashreplace:bb.a
  %i.s = icmp ult i32 %i.q, 65536
  %. = select i1 %i.s, i64 6, i64 10
  %.054 = select i1 %i.r, i64 4, i64 %.           ; 2 uses
  %6 = xor i64 %.054, 9223372036854775807
  %.not = icmp sgt i64 %.06075, %6
  br i1 %.not, label %.thread, label %bb.e

end_hunk_4
begin_hunk_5_@xmlcharrefreplace:bb.a
  %i.l = icmp ult i8 %i.j, 100
  %spec.select = select i1 %i.l, i64 5, i64 6
  %.036.us = select i1 %i.k, i64 4, i64 %spec.select ; 2 uses
  %5 = xor i64 %.036.us, 9223372036854775807
  %.not.us = icmp sgt i64 %.03953.us, %5
  br i1 %.not.us, label %.thread, label %bb.d

end_hunk_5
begin_hunk_6_@xmlcharrefreplace:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %PyUnicode_READ.exit.us57
  %.036.us60 = phi i64 [ %spec.select80, %bb.g ], [ 4, %PyUnicode_READ.exit.us57 ], [ 5, %bb.e ], [ 6, %bb.f ] ; 2 uses
  %6 = xor i64 %.036.us60, 9223372036854775807
  %.not.us61 = icmp sgt i64 %.03953.us55, %6
  br i1 %.not.us61, label %.thread, label %bb.i

end_hunk_6
begin_hunk_7_@xmlcharrefreplace:bb.a

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %PyUnicode_READ.exit
  %.036 = phi i64 [ 8, %bb.m ], [ 4, %PyUnicode_READ.exit ], [ 5, %bb.j ], [ 6, %bb.k ], [ 7, %bb.l ], [ %., %bb.n ] ; 2 uses
  %7 = xor i64 %.036, 9223372036854775807
  %.not = icmp sgt i64 %.03953, %7
  br i1 %.not, label %.thread, label %bb.p

end_hunk_7
