inline.NumInlined: 1
begin_hunk_0_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %6, ptr noundef %4, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60   ; 6 uses
  switch i32 %i.h, label %bb.g [
    i32 2, label %bb.b
    i32 1, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8                         ; 3 uses
  %i.t = add i32 %i.h, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZL12sChannelMaps, i64 %i.u
  %7 = shl nsw i32 %i.s, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
end_hunk_1
begin_hunk_2_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
  %.053 = phi i8 [ 0, %bb.g ], [ %.154, %bb.n ]   ; 4 uses
  %.051 = phi i8 [ 0, %bb.g ], [ %.152, %bb.n ]   ; 4 uses
  %.050 = phi i8 [ 0, %bb.g ], [ %.1, %bb.n ]     ; 4 uses
  %i.w = icmp ult i32 %.056, %i.h
  br i1 %i.w, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
bb.j:                                             ; preds = %bb.i
  %i.af = zext i8 %.051 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.af, i32 noundef 4)
  %i.ag = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.h, i32 noundef %.056, i32 noundef %i.d)
  %i.ah = add nuw i32 %.056, 1
  %i.ai = add i8 %.051, 1
  br label %bb.n
end_hunk_3
begin_hunk_4_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
bb.k:                                             ; preds = %bb.i
  %i.aj = zext i8 %.053 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.aj, i32 noundef 4)
  %i.ak = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.h, i32 noundef %.056, i32 noundef %i.d)
  %i.al = add i32 %.056, 2
  %i.am = add i8 %.053, 1
  br label %bb.n
end_hunk_4
begin_hunk_5_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
bb.l:                                             ; preds = %bb.i
  %i.an = zext i8 %.050 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.an, i32 noundef 4)
  %i.ao = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.h, i32 noundef %.056, i32 noundef %i.d)
  %i.ap = add nuw i32 %.056, 1
  %i.aq = add i8 %.050, 1
  br label %bb.n
end_hunk_5
