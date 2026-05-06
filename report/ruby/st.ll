inline.NumInlined: 263
inline.NumDeleted: 70
begin_hunk_0_@rb_st_hash:bb.a
  %i.x = mul i64 %i.v, 4838912824426102784
  %i.y = lshr i64 %i.w, 40
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = getelementptr i8, ptr %.033, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = mul i64 %i.ab, -8663945395140668459
  %i.ad = mul i64 %i.ab, 2487297242801635328
end_hunk_0
begin_hunk_1_@strhash:bb.a
  %i.o = mul i64 %i.m, 4838912824426102784
  %i.p = lshr i64 %i.n, 40
  %i.q = or disjoint i64 %i.p, %i.o
  %i.r = getelementptr i8, ptr %.033.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %i.t = mul i64 %i.s, -8663945395140668459
  %i.u = mul i64 %i.s, 2487297242801635328
end_hunk_1
