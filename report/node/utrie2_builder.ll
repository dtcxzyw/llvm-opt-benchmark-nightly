inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@utrie2_freeze_78:bb.a
bb.bk:                                            ; preds = %.thread, %bb.bj
  %.0139.151 = phi i32 [ %.0139.149, %.thread ], [ %.0139., %bb.bj ] ; 44 uses
  %i.uz = phi i1 [ %i.uu, %.thread ], [ %i.ux, %bb.bj ]
  %.0139150 = phi i32 [ 2112, %.thread ], [ %i.uw, %bb.bj ] ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.f, i64 144164 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4
  %i.vc = add nsw i32 %i.vb, %.0139.151
end_hunk_0
begin_hunk_1_@utrie2_freeze_78:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.vf = getelementptr inbounds nuw i8, ptr %i.f, i64 144152 ; 4 uses
  %i.vg = load i32, ptr %i.vf, align 8            ; 3 uses
  %i.vh = add nsw i32 %i.vg, %.0139.151
  %i.vi = icmp sgt i32 %i.vh, 262140
  br i1 %i.vi, label %bb.bm, label %3

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  store i32 8, ptr %2, align 4
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

3:                                                ; preds = %bb.bl
  br i1 %i.uz, label %4, label %8

4:                                                ; preds = %3
  %5 = add i32 %i.vg, %.0139150
  %6 = shl i32 %5, 1
  %7 = add i32 %6, 16
  br label %bb.bn

8:                                                ; preds = %3
  %9 = shl nsw i32 %.0139150, 1
  %10 = add nsw i32 %9, 16
  %11 = shl nsw i32 %i.vg, 2
  %12 = add nsw i32 %10, %11
  br label %bb.bn

bb.bn:                                            ; preds = %8, %4
  %.0137 = phi i32 [ %7, %4 ], [ %12, %8 ]        ; 2 uses
  %i.vj = sext i32 %.0137 to i64
  %i.vk = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.vj) #7 ; 13 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_1
