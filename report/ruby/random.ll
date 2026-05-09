inline.NumInlined: 245
inline.NumDeleted: 86
begin_hunk_0_@random_ulong_limited:bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -4611686018427387904, 4611686020574871552) %2, i1 true)
  %narrow = sub nuw nsw i64 64, %i.a              ; 5 uses
  %i.b = icmp ult i64 %2, 4294967296              ; 3 uses
  %4 = select i1 %i.b, i64 4, i64 8               ; 2 uses
  %i.c = shl nsw i64 -1, %narrow                  ; 3 uses
  %i.d = xor i64 %i.c, -1                         ; 2 uses
  %i.e = select i1 %i.b, i64 4294967295, i64 -1   ; 2 uses
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.027.us = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ]
  %.0.us = phi i64 [ %i.k, %bb.e ], [ 0, %bb.c ]  ; 2 uses
  %i.f = or i64 %.0.us, %i.c
  %.not34.us = icmp eq i64 %i.f, -1
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %4) ; 0 uses
  %i.h = load i32, ptr %3, align 8
  %i.i = zext i32 %i.h to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
end_hunk_0
begin_hunk_1_@random_ulong_limited:bb.a
  %.1.us = phi i64 [ %i.e, %bb.d ], [ %.0.us, %.split.us ]
  %i.j = lshr i64 %.128.us, %narrow
  %i.k = lshr i64 %.1.us, %narrow
  %i.l = and i64 %.128.us, %i.d                   ; 2 uses
  %i.m = icmp ult i64 %2, %i.l
  br i1 %i.m, label %.split.us, label %limited_rand.exit, !llvm.loop !104

.split:                                           ; preds = %bb.c, %bb.g
  %.027 = phi i64 [ %i.q, %bb.g ], [ 0, %bb.c ]
  %.0 = phi i64 [ %i.r, %bb.g ], [ 0, %bb.c ]     ; 2 uses
  %i.n = or i64 %.0, %i.c
  %.not34 = icmp eq i64 %i.n, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %4) ; 0 uses
  %i.p = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g
end_hunk_1
begin_hunk_2_@random_ulong_limited:bb.a
  %.1 = phi i64 [ %i.e, %bb.f ], [ %.0, %.split ]
  %i.q = lshr i64 %.128, %narrow
  %i.r = lshr i64 %.1, %narrow
  %i.s = and i64 %.128, %i.d                      ; 2 uses
  %i.t = icmp ult i64 %2, %i.s
  br i1 %i.t, label %.split, label %limited_rand.exit, !llvm.loop !104

end_hunk_2
