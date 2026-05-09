inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_uint2big:bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 20
  store i32 %i.i, ptr %i.j, align 4, !tbaa !7
  %.not18 = icmp eq i64 %i.h, 0
  %.us-phi = select i1 %.not18, i64 32768, i64 65536
  %1 = and i64 %i.d, -16744449
  %i.k = or disjoint i64 %.us-phi, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !13
  br label %bb.d

end_hunk_0
begin_hunk_1_@rb_int2big:bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store i64 %.07, ptr %i.g, align 4
  %.not18.i = icmp ult i64 %.07, 4294967296
  %.us-phi.i = select i1 %.not18.i, i64 32768, i64 65536
  %1 = and i64 %i.e, -16744449
  %i.h = or disjoint i64 %1, %.us-phi.i
  store i64 %i.h, ptr %i.d, align 8, !tbaa !13
  br label %rb_uint2big.exit

end_hunk_1
begin_hunk_2_@rb_big_mul:bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %.07.i, ptr %i.i, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %2 = and i64 %i.g, -16744449
  %i.j = or disjoint i64 %2, %.us-phi.i.i
  store i64 %i.j, ptr %i.f, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_2
begin_hunk_3_@rb_big_divide:bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %3 = and i64 %i.h, -16744449
  %i.k = or disjoint i64 %3, %.us-phi.i.i
  store i64 %i.k, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_3
begin_hunk_4_@rb_big_modulo:bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %2 = and i64 %i.h, -16744449
  %i.k = or disjoint i64 %2, %.us-phi.i.i
  store i64 %i.k, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_4
begin_hunk_5_@rb_big_remainder:bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i64 %.07.i, ptr %i.j, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %2 = and i64 %i.h, -16744449
  %i.k = or disjoint i64 %2, %.us-phi.i.i
  store i64 %i.k, ptr %i.g, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_5
begin_hunk_6_@rb_big_divmod:bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store i64 %.07.i, ptr %i.k, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %2 = and i64 %i.i, -16744449
  %i.l = or disjoint i64 %2, %.us-phi.i.i
  store i64 %i.l, ptr %i.h, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_6
begin_hunk_7_@rb_big_fdiv_double:bb.a
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store i64 %.07.i, ptr %i.n, align 4
  %.not18.i.i = icmp samesign ult i64 %.07.i, 4294967296
  %.us-phi.i.i = select i1 %.not18.i.i, i64 32768, i64 65536
  %2 = and i64 %i.l, -16744449
  %i.o = or disjoint i64 %2, %.us-phi.i.i
  store i64 %i.o, ptr %i.k, align 8, !tbaa !13
  br label %rb_uint2big.exit.i

end_hunk_7
