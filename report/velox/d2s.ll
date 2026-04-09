inline.NumInlined: 47
inline.NumDeleted: 18
begin_hunk_0_@d2d:bb.a
  %i.aa = lshr i128 %i.x, 64
  %i.ab = add nuw nsw i128 %i.aa, %i.z
  %reass.sub = sub nsw i32 %i.o, %.0
  %i.ac = add nsw i32 %reass.sub, 61
  %i.ad = add nsw i32 %i.ac, %i.q
  %i.ae = zext nneg i32 %i.ad to i128             ; 3 uses
  %i.af = lshr i128 %i.ab, %i.ae
  %i.ag = trunc i128 %i.af to i64                 ; 4 uses
end_hunk_0
begin_hunk_1_@d2d:bb.a
  br i1 %i.e, label %bb.e, label %.preheader274

bb.e:                                             ; preds = %bb.d
  %2 = add nsw i64 %i.f, -1
  %.neg178 = sext i1 %i.i to i64
  %i.bk = add nsw i64 %2, %.neg178
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
end_hunk_1
begin_hunk_2_@d2d:bb.a
  %i.co = mul nuw nsw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.cm, 64
  %i.cq = add nuw nsw i128 %i.cp, %i.co
  %3 = add nsw i32 %i.cb, 60
  %4 = sub nsw i32 %3, %i.cf
  %i.cr = zext nneg i32 %4 to i128                ; 3 uses
  %i.cs = lshr i128 %i.cq, %i.cr
  %i.ct = trunc i128 %i.cs to i64                 ; 3 uses
end_hunk_2
