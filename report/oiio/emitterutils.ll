inline.NumInlined: 408
inline.NumDeleted: 126
begin_hunk_0_@_ZN4YAML5Utils23WriteSingleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.m = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.lr.ph ], [ false, %.lr.ph ]
  %.0.i.ph.ph.i = phi i32 [ 4, %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.n = zext i8 %i.g to i32
  %2 = ashr i32 -32641, %.0.i.ph.ph.i
  %i.o = and i32 %2, %i.n                         ; 2 uses
  %i.p = sub i64 %i.f, %.sroa.0.02731
  %scevgep = getelementptr i8, ptr %.sroa.0.027, i64 %i.p ; 3 uses
  %i.q = zext nneg i32 %.0.i.ph.ph.i to i64
end_hunk_0
begin_hunk_1_@_ZN4YAML5Utils23WriteDoubleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14StringEscaping5valueE:bb.a
  %i.o = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.b ]
  %.0.i.ph.ph.i = phi i32 [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ], [ 2, %bb.b ] ; 2 uses
  %i.p = zext i8 %i.j to i32
  %3 = ashr i32 -32641, %.0.i.ph.ph.i
  %i.q = and i32 %3, %i.p                         ; 2 uses
  %i.r = sub i64 %i.i, %.sroa.0.05559
  %scevgep = getelementptr i8, ptr %.sroa.0.055, i64 %i.r ; 3 uses
  %i.s = zext nneg i32 %.0.i.ph.ph.i to i64
end_hunk_1
begin_hunk_2_@_ZN4YAML5Utils18WriteLiteralStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %i.o = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.b ]
  %.0.i.ph.ph.i = phi i32 [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ], [ 2, %bb.b ] ; 2 uses
  %i.p = zext i8 %i.i to i32
  %3 = ashr i32 -32641, %.0.i.ph.ph.i
  %i.q = and i32 %3, %i.p                         ; 2 uses
  %i.r = sub i64 %i.h, %.sroa.07.02427
  %scevgep = getelementptr i8, ptr %.sroa.07.024, i64 %i.r ; 3 uses
  %i.s = zext nneg i32 %.0.i.ph.ph.i to i64
end_hunk_2
begin_hunk_3_@_ZN4YAML5Utils12WriteCommentERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %i.t = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.lr.ph ], [ false, %.lr.ph ]
  %.0.i.ph.ph.i = phi i32 [ 4, %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.u = zext i8 %i.n to i32
  %3 = ashr i32 -32641, %.0.i.ph.ph.i
  %i.v = and i32 %3, %i.u                         ; 2 uses
  %i.w = sub i64 %i.m, %.sroa.018.03639
  %scevgep = getelementptr i8, ptr %.sroa.018.036, i64 %i.w ; 3 uses
  %i.x = zext nneg i32 %.0.i.ph.ph.i to i64
end_hunk_3
begin_hunk_4_@_ZN4YAML5Utils12_GLOBAL__N_114WriteAliasNameERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.m = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.lr.ph ], [ false, %.lr.ph ]
  %.0.i.ph.ph.i = phi i32 [ 4, %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.n = zext i8 %i.g to i32
  %2 = ashr i32 -32641, %.0.i.ph.ph.i
  %i.o = and i32 %2, %i.n                         ; 2 uses
  %i.p = sub i64 %i.f, %.sroa.0.03965
  %scevgep = getelementptr i8, ptr %.sroa.0.039, i64 %i.p ; 3 uses
  %i.q = zext nneg i32 %.0.i.ph.ph.i to i64
end_hunk_4
