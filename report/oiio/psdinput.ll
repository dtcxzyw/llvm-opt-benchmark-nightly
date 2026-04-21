inline.NumInlined: 4893
inline.NumDeleted: 1786
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput20read_native_scanlineEiiiiPv:bb.a
  %i.jo = trunc nuw nsw i64 %indvars.iv.i232 to i32
  %i.jp = lshr i64 %indvars.iv.i232, 3
  %i.jq = and i32 %i.jo, 7
  %7 = xor i32 %i.jq, 7
  %i.jr = and i64 %i.jp, 536870911
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !14
  %i.ju = zext i8 %i.jt to i32
  %8 = shl nuw nsw i32 1, %7
  %i.jv = and i32 %8, %i.ju
  %.not.i233 = icmp eq i32 %i.jv, 0
  %i.jw = sext i1 %.not.i233 to i8                ; 3 uses
  %i.jx = mul nuw nsw i64 %indvars.iv.i232, 3
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_18PSDInput13bitmap_to_rgbENS0_4spanIhLm18446744073709551615EEENS2_IKhLm18446744073709551615EEEi:bb.a
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = lshr i64 %indvars.iv, 3
  %i.d = and i32 %i.b, 7
  %6 = xor i32 %i.d, 7
  %i.e = and i64 %i.c, 536870911
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i32
  %7 = shl nuw nsw i32 1, %6
  %i.i = and i32 %7, %i.h
  %.not = icmp eq i32 %i.i, 0
  %i.j = sext i1 %.not to i8                      ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %2 = xor i32 %i.l, 31
  %3 = shl nuw i32 1, %2
  %i.m = load ptr, ptr %0, align 8, !tbaa !781
  store i32 5, ptr %i.m, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
  store i64 %i.t, ptr %i.u, align 8, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !783
  %.019 = ashr i32 %3, 1                          ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

end_hunk_3
