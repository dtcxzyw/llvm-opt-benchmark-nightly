inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@ft_raccess_sort_ref_by_id:bb.a
}

; Function Attrs: nounwind uwtable
define hidden void @FT_Raccess_Guess(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 10 uses
  store ptr null, ptr %6, align 8, !tbaa !199
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.a = icmp eq ptr %i.c, null
  br i1 %.not.i.a, label %.thread27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 %i.c(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i, label %.thread27, label %bb.e

.thread27:                                        ; preds = %bb.d, %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !280
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 85, ptr %7, align 4, !tbaa !3
  br label %bb.f

.thread:                                          ; preds = %bb.b, %.thread27
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 0, ptr %8, align 4, !tbaa !3
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %10 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 9 uses
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %11, label %default.switch.case.unreachable [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
    i32 4, label %call.4
    i32 5, label %call.5
    i32 6, label %call.6
    i32 7, label %call.7
    i32 8, label %call.8
  ], !prof !590

default.switch.case.unreachable:                  ; preds = %.thread
  unreachable

call.0:                                           ; preds = %.thread
  %i.e = tail call i32 @raccess_guess_apple_double(ptr poison, ptr noundef %1, ptr poison, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.1:                                           ; preds = %.thread
  %12 = tail call i32 @raccess_guess_apple_single(ptr poison, ptr noundef %1, ptr poison, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.2:                                           ; preds = %.thread
  %13 = tail call i32 @raccess_guess_darwin_ufs_export(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.3:                                           ; preds = %.thread
  %14 = tail call i32 @raccess_guess_darwin_newvfs(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.4:                                           ; preds = %.thread
  %15 = tail call i32 @raccess_guess_darwin_hfsplus(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.5:                                           ; preds = %.thread
  %16 = tail call i32 @raccess_guess_vfat(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.6:                                           ; preds = %.thread
  %17 = tail call i32 @raccess_guess_linux_cap(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.7:                                           ; preds = %.thread
  %18 = tail call i32 @raccess_guess_linux_double(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

call.8:                                           ; preds = %.thread
  %i.f = tail call i32 @raccess_guess_linux_netatalk(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.tail

.tail:                                            ; preds = %call.8, %call.7, %call.6, %call.5, %call.4, %call.3, %call.2, %call.1, %call.0
  %19 = phi i32 [ %i.e, %call.0 ], [ %12, %call.1 ], [ %13, %call.2 ], [ %14, %call.3 ], [ %15, %call.4 ], [ %16, %call.5 ], [ %17, %call.6 ], [ %18, %call.7 ], [ %i.f, %call.8 ]
  store i32 %19, ptr %9, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.tail
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !591

bb.g:                                             ; preds = %bb.f
  ret void
}

end_hunk_0
begin_hunk_1_@llvm.bswap.i32
!587 = distinct !{!587, !41}
!588 = distinct !{!588, !41}
!589 = !{!105, !105, i64 0}
!590 = !{!"unknown", !"jump-table-to-switch"}
!591 = distinct !{!591, !41}
!592 = !{!103, !17, i64 560}
!593 = !{!103, !112, i64 584}
!594 = !{!595, !17, i64 8}
end_hunk_1
