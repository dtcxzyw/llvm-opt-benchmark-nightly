begin_hunk_0
  %i.k = zext i16 %i.g to i32                     ; 2 uses
  %i.l = tail call i16 @llvm.umax.i16(i16 %i.e, i16 %i.g)
  %i.m = zext i16 %i.i to i32                     ; 2 uses
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.i, i16 %i.l) ; 4 uses
  %i.n = tail call i16 @llvm.umin.i16(i16 %i.e, i16 %i.g)
  %.043 = tail call i16 @llvm.umin.i16(i16 %i.i, i16 %i.n)
  %2 = zext i16 %spec.select to i64               ; 2 uses
  %i.o = zext i16 %.043 to i64
  %3 = sub nsw i64 %2, %i.o                       ; 4 uses
  %i.p = icmp eq i16 %spec.select, %i.e
  br i1 %i.p, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1
  %i.q = sub nsw i32 %i.k, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 65535
  %i.t = sdiv i64 %i.s, %3
  br label %bb.h

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2
  %i.v = sub nsw i32 %i.m, %i.j
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 65535
  %i.y = sdiv i64 %i.x, %3
  %i.z = add nsw i64 %i.y, 131070
  br label %bb.h

end_hunk_2
begin_hunk_3
  %i.aa = sub nsw i32 %i.j, %i.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 65535
  %i.ad = sdiv i64 %i.ac, %3
  %i.ae = add nsw i64 %i.ad, 262140
  br label %bb.h

end_hunk_3
begin_hunk_4
  %i.ah = sdiv i64 %spec.select47, 6
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %1, align 2, !tbaa !16
  %4 = mul nsw i64 %3, 65535
  %5 = sdiv i64 %4, %2
  %i.aj = trunc i64 %5 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !16
  br label %bb.i
end_hunk_4
