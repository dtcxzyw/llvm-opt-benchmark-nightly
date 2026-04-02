begin_hunk_0
bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  store i64 %i.ag, ptr %i.am, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %.thread
end_hunk_0
begin_hunk_1
  %.val = load i16, ptr %i.aq, align 4, !tbaa !83
  %i.ar = getelementptr i8, ptr %0, i64 118
  %.val50 = load i16, ptr %i.ar, align 2, !tbaa !84 ; 7 uses
  switch i16 %.val, label %.thread55 [
    i16 32, label %bb.h
    i16 16, label %bb.i
    i16 12, label %bb.j
end_hunk_1
begin_hunk_2

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i16 %.val50, 3
  br i1 %i.as, label %.thread58, label %.thread55

bb.i:                                             ; preds = %bb.g
  switch i16 %.val50, label %.thread55 [
    i16 4, label %.thread58
    i16 1, label %.thread58
  ]
end_hunk_2
begin_hunk_3
  %i.at = add i16 %.val50, -2
  %switch.and.i = and i16 %i.at, -3
  %switch.selectcmp18.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp18.i, label %.thread58, label %.thread55

bb.k:                                             ; preds = %bb.g
  switch i16 %.val50, label %.thread55 [
    i16 4, label %.thread58
    i16 1, label %.thread58
  ]

.thread55:                                        ; preds = %bb.k, %bb.i, %bb.g, %bb.h, %bb.j
  store i32 -1, ptr %i.an, align 8, !tbaa !32
  br label %bb.m

.thread58:                                        ; preds = %bb.k, %bb.k, %bb.i, %bb.i, %bb.h, %bb.j
  %.0.i51.ph = phi i32 [ 5, %bb.h ], [ 2, %bb.k ], [ 4, %bb.i ], [ 3, %bb.j ], [ 4, %bb.i ], [ 2, %bb.k ]
end_hunk_3
begin_hunk_4
    i16 1, label %.thread
  ]

bb.m:                                             ; preds = %bb.l, %.thread55
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.av = load i16, ptr %i.aq, align 4, !tbaa !83
end_hunk_4
begin_hunk_5
  br i1 %i.w, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %.thread
end_hunk_5
begin_hunk_6
  %.val = load i16, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 118
  %.val28 = load i16, ptr %i.ab, align 2, !tbaa !84 ; 7 uses
  switch i16 %.val, label %.thread32 [
    i16 32, label %bb.g
    i16 16, label %bb.h
    i16 12, label %bb.i
end_hunk_6
begin_hunk_7

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i16 %.val28, 3
  br i1 %i.ac, label %.thread35, label %.thread32

bb.h:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]
end_hunk_7
begin_hunk_8
  %i.ad = add i16 %.val28, -2
  %switch.and.i = and i16 %i.ad, -3
  %switch.selectcmp18.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp18.i, label %.thread35, label %.thread32

bb.j:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]

.thread32:                                        ; preds = %bb.j, %bb.h, %bb.f, %bb.g, %bb.i
  store i32 -1, ptr %i.x, align 8, !tbaa !32
  br label %bb.l

.thread35:                                        ; preds = %bb.j, %bb.j, %bb.h, %bb.h, %bb.g, %bb.i
  %.0.i.ph = phi i32 [ 5, %bb.g ], [ 2, %bb.j ], [ 4, %bb.h ], [ 3, %bb.i ], [ 4, %bb.h ], [ 2, %bb.j ]
end_hunk_8
begin_hunk_9
    i16 1, label %.thread
  ]

bb.l:                                             ; preds = %bb.k, %.thread32
  %i.af = zext i16 %.val to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogSetupEncode.module, ptr noundef nonnull @.str.15, i32 noundef %i.af) #7
  br label %bb.o
end_hunk_9
