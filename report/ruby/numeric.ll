inline.NumInlined: 1036
inline.NumDeleted: 137
begin_hunk_0_@rb_ulong_isqrt:bb.a
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %0, %i.g
  %i.i = lshr i64 %i.b, 1
  %1 = xor i64 %i.i, 31
  %2 = shl nuw nsw i64 1, %1
  %i.j = or i64 %i.h, %2                          ; 4 uses
  %i.k = udiv i64 %0, %i.j                        ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %.loopexit
end_hunk_0
begin_hunk_1_@rb_int_s_isqrt:bb.a
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.e, %i.l
  %i.n = lshr i64 %i.g, 1
  %2 = xor i64 %i.n, 31
  %3 = shl nuw nsw i64 1, %2
  %i.o = or i64 %i.m, %3                          ; 4 uses
  %i.p = udiv i64 %i.e, %i.o                      ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.o
  br i1 %i.q, label %.lr.ph.i, label %rb_ulong_isqrt.exit
end_hunk_1
