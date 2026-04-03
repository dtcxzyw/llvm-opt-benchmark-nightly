begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v84baseL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr captures(none) %4, ptr noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 3 uses
  %i.b = icmp sgt i32 %0, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = tail call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.d = tail call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.e = icmp sgt i32 %i.d, -1
end_hunk_0
begin_hunk_1
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1
  br i1 %i.b, label %.lr.ph36, label %._crit_edge37

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
end_hunk_1
begin_hunk_2
  %i.w = icmp sgt i32 %.034, 1
  br i1 %i.w, label %.lr.ph36, label %._crit_edge37, !llvm.loop !8

._crit_edge37:                                    ; preds = %bb.b, %.lr.ph36, %._crit_edge
  %i.x = load i8, ptr %4, align 1
  %i.y = icmp eq i8 %i.x, 58
  br i1 %i.y, label %bb.c, label %bb.d
end_hunk_2
