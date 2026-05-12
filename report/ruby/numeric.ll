inline.NumInlined: 1036
inline.NumDeleted: 137
begin_hunk_0_@rb_ulong_isqrt:bb.a
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %0, %i.g
  %1 = sub nuw nsw i64 63, %i.b
  %i.i = lshr i64 %1, 1
  %2 = shl nuw nsw i64 1, %i.i
  %i.j = or i64 %i.h, %2                          ; 4 uses
  %i.k = udiv i64 %0, %i.j                        ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %.loopexit
end_hunk_0
begin_hunk_1_@rb_int_s_isqrt:bb.a
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.e, %i.l
  %2 = sub nuw nsw i64 63, %i.g
  %i.n = lshr i64 %2, 1
  %3 = shl nuw nsw i64 1, %i.n
  %i.o = or i64 %i.m, %3                          ; 4 uses
  %i.p = udiv i64 %i.e, %i.o                      ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.o
  br i1 %i.q, label %.lr.ph.i, label %rb_ulong_isqrt.exit
end_hunk_1
