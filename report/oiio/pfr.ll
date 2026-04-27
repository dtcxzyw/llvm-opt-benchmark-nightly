inline.NumInlined: 33
inline.NumDeleted: 23
begin_hunk_0_@pfr_face_get_kerning:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.z, align 8, !tbaa !256
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !257 ; 5 uses
  %i.ak = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true) ; 2 uses
  %4 = lshr exact i32 -2147483648, %i.ak          ; 2 uses
  %5 = xor i32 %i.ak, 31
  %i.al = shl i32 %i.aj, %5                       ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0115141, i64 9
end_hunk_0
begin_hunk_1_@pfr_face_get_kerning:bb.a
  %i.aq = and i8 %i.ap, 1                         ; 3 uses
  %i.ar = lshr i8 %i.ap, 1
  %.lobit = and i8 %i.ar, 1                       ; 2 uses
  %.not130 = icmp eq i32 %4, %i.ai
  br i1 %.not130, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %6 = sub nsw i32 %i.ai, %4
  %i.as = mul i32 %6, %i.aj
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at ; 6 uses
  %.not131 = icmp eq i8 %i.aq, 0
end_hunk_1
