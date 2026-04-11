inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_uint128t2big:bb.a
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = trunc i128 %0 to i32                     ; 2 uses
  store i32 %i.i, ptr %.0.i, align 4, !tbaa !7
  %1 = lshr i128 %0, 32
  %2 = trunc i128 %1 to i32                       ; 2 uses
  %3 = getelementptr i8, ptr %.0.i, i64 4
  store i32 %2, ptr %3, align 4, !tbaa !7
  %i.j = lshr i128 %0, 64
  %i.k = trunc i128 %i.j to i32                   ; 2 uses
  %i.l = getelementptr i8, ptr %.0.i, i64 8
end_hunk_0
begin_hunk_1_@rb_uint128t2big:bb.a
  br i1 %.not16.1, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %.not16.2 = icmp eq i32 %2, 0
  br i1 %.not16.2, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %.not16.3 = icmp ne i32 %i.i, 0
  %spec.select = zext i1 %.not16.3 to i64
  br label %.critedge

end_hunk_1
begin_hunk_2_@rb_int128t2big
define hidden noundef i64 @rb_int128t2big(i128 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i128 %0, -1
  %.07 = tail call i128 @llvm.abs.i128(i128 %0, i1 false) ; 4 uses
  %i.b = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.c = tail call fastcc i64 @bignew_1(i64 noundef %i.b, i64 noundef 4, i32 noundef 1) ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
end_hunk_2
begin_hunk_3_@rb_int128t2big:bb.a
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %i.j = trunc i128 %.07 to i32                   ; 2 uses
  store i32 %i.j, ptr %.0.i.i, align 4, !tbaa !7
  %1 = lshr i128 %.07, 32
  %2 = trunc i128 %1 to i32                       ; 2 uses
  %3 = getelementptr i8, ptr %.0.i.i, i64 4
  store i32 %2, ptr %3, align 4, !tbaa !7
  %i.k = lshr i128 %.07, 64
  %i.l = trunc i128 %i.k to i32                   ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i.i, i64 8
end_hunk_3
begin_hunk_4_@rb_int128t2big:bb.a
  br i1 %.not16.1.i, label %.preheader.2.i, label %.critedge.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %.not16.2.i = icmp eq i32 %2, 0
  br i1 %.not16.2.i, label %.preheader.3.i, label %.critedge.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %.not16.3.i = icmp ne i32 %i.j, 0
  %spec.select.i = zext i1 %.not16.3.i to i64
  br label %.critedge.i

end_hunk_4
