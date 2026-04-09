inline.NumInlined: 424
inline.NumDeleted: 93
begin_hunk_0_@r_object_for:bb.a
  %i.rc = load i64, ptr %i.k, align 8, !tbaa !11
  %i.rd = call i32 @rb_st_insert(ptr noundef %i.rb, i64 noundef %i.rc, i64 noundef 20) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  %5 = add i64 %.034.i525, -1
  %i.re = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !52
  %i.rg = add i64 %5, %i.rf
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !52
  %.not425800 = icmp eq i64 %.034.i525, 0
  br i1 %.not425800, label %._crit_edge803, label %.lr.ph802
end_hunk_0
begin_hunk_1_@r_object_for:bb.a
  %i.tg = call i32 @rb_st_insert(ptr noundef %i.te, i64 noundef %i.tf, i64 noundef 20) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  %i.th = shl i64 %.034.i538, 1
  %6 = add i64 %i.th, -2
  %i.ti = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !52
  %i.tk = add i64 %6, %i.tj                       ; 2 uses
  store i64 %i.tk, ptr %i.ti, align 8, !tbaa !52
  %.not432814 = icmp eq i64 %.034.i538, 0
  br i1 %.not432814, label %._crit_edge817, label %.lr.ph816
end_hunk_1
begin_hunk_2_@r_object_for:bb.a
  %i.to = call fastcc i32 @r_byte(ptr noundef nonnull %0), !inline_history !56
  %i.tp = call fastcc i64 @r_object_for(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null, i64 noundef 4, i32 noundef %i.to), !inline_history !56
  %i.tq = call i64 @rb_hash_aset(i64 noundef %i.ss, i64 noundef %i.tn, i64 noundef %i.tp) #22 ; 0 uses
  %i.tr = load i64, ptr %i.ti, align 8, !tbaa !52
  %i.ts = add i64 %i.tr, -2                       ; 2 uses
  store i64 %i.ts, ptr %i.ti, align 8, !tbaa !52
  %.not432 = icmp eq i64 %i.tl, 0
  br i1 %.not432, label %._crit_edge817, label %.lr.ph816, !llvm.loop !128

._crit_edge817:                                   ; preds = %.lr.ph816, %r_entry0.exit546
  %storemerge431.lcssa = phi i64 [ %i.tk, %r_entry0.exit546 ], [ %i.ts, %.lr.ph816 ]
  %7 = add i64 %storemerge431.lcssa, 2
  store i64 %7, ptr %i.ti, align 8, !tbaa !52
  %i.tt = icmp eq i32 %.0378, 125
  br i1 %i.tt, label %bb.dq, label %bb.dr

end_hunk_2
begin_hunk_3_@r_object_for:bb.a

bb.ef:                                            ; preds = %rb_array_len.exit562
  %i.wp = shl i64 %.034.i554, 1
  %8 = add i64 %i.wp, -2
  %i.wq = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !52
  %i.ws = add i64 %8, %i.wr
  store i64 %i.ws, ptr %i.wq, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i64 %i.vu, ptr %i.i, align 8, !tbaa !11
end_hunk_3
