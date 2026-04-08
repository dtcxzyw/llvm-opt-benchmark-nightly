inline.NumInlined: 1
begin_hunk_0_@gx_color_to_hsb:bb.a
  %i.k = zext i16 %i.g to i32                     ; 2 uses
  %i.l = tail call i16 @llvm.umax.i16(i16 %i.e, i16 %i.g)
  %i.m = zext i16 %i.i to i32                     ; 2 uses
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.i, i16 %i.l) ; 5 uses
  %i.n = tail call i16 @llvm.umin.i16(i16 %i.e, i16 %i.g)
  %.043 = tail call i16 @llvm.umin.i16(i16 %i.i, i16 %i.n)
  %narrow = sub nuw i16 %spec.select, %.043       ; 2 uses
  %i.o = zext i16 %narrow to i64                  ; 3 uses
  %i.p = icmp eq i16 %spec.select, %i.e
  br i1 %i.p, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@gx_color_to_hsb:bb.a
  %i.q = sub nsw i32 %i.k, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 65535
  %i.t = sdiv i64 %i.s, %i.o
  br label %bb.h

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@gx_color_to_hsb:bb.a
  %i.v = sub nsw i32 %i.m, %i.j
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 65535
  %i.y = sdiv i64 %i.x, %i.o
  %i.z = add nsw i64 %i.y, 131070
  br label %bb.h

end_hunk_2
begin_hunk_3_@gx_color_to_hsb:bb.a
  %i.aa = sub nsw i32 %i.j, %i.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 65535
  %i.ad = sdiv i64 %i.ac, %i.o
  %i.ae = add nsw i64 %i.ad, 262140
  br label %bb.h

end_hunk_3
begin_hunk_4_@gx_color_to_hsb:bb.a
  %i.ah = sdiv i64 %spec.select47, 6
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %1, align 2, !tbaa !16
  %2 = zext i16 %narrow to i32
  %.lhs.trunc = mul nuw i32 %2, 65535
  %.rhs.trunc = zext i16 %spec.select to i32
  %3 = udiv i32 %.lhs.trunc, %.rhs.trunc
  %i.aj = trunc i32 %3 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !16
  br label %bb.i
end_hunk_4
