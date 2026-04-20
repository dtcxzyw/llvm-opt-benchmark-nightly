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
  br label %raccess_guess_darwin_hfsplus.exit

raccess_guess_darwin_hfsplus.exit:                ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 10 uses
  store ptr null, ptr %6, align 8, !tbaa !199
  br i1 %.not, label %raccess_guess_apple_single.exit, label %raccess_guess_vfat.exit

raccess_guess_vfat.exit:                          ; preds = %raccess_guess_darwin_hfsplus.exit
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i63 = icmp eq ptr %i.c, null
  br i1 %.not.i63, label %raccess_guess_apple_double.exit, label %bb.b

bb.b:                                             ; preds = %raccess_guess_vfat.exit
  %i.d = tail call i64 %i.c(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i, label %raccess_guess_apple_double.exit, label %FT_Stream_Seek.exit.1

raccess_guess_apple_double.exit:                  ; preds = %bb.b, %raccess_guess_vfat.exit
  store i64 0, ptr %i.b, align 8, !tbaa !280
  br label %raccess_guess_apple_single.exit

FT_Stream_Seek.exit.1:                            ; preds = %bb.b
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 85, ptr %7, align 4, !tbaa !3
  br label %bb.g

raccess_guess_apple_single.exit:                  ; preds = %raccess_guess_darwin_hfsplus.exit, %raccess_guess_apple_double.exit
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 0, ptr %8, align 4, !tbaa !3
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %10 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 9 uses
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %11, label %FT_Stream_Seek.exit.2 [
    i32 0, label %bb.c
    i32 1, label %FT_Stream_Seek.exit.5
    i32 2, label %bb.d
    i32 3, label %raccess_guess_vfat.exit81
    i32 4, label %FT_Stream_Seek.exit.6
    i32 5, label %bb.e
    i32 6, label %raccess_guess_linux_cap.exit84
    i32 7, label %FT_Stream_Seek.exit.7
    i32 8, label %bb.f
  ], !prof !590

FT_Stream_Seek.exit.2:                            ; preds = %raccess_guess_apple_single.exit
  unreachable

bb.c:                                             ; preds = %raccess_guess_apple_single.exit
  %i.e = tail call i32 @raccess_guess_apple_double(ptr poison, ptr noundef %1, ptr poison, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

FT_Stream_Seek.exit.5:                            ; preds = %raccess_guess_apple_single.exit
  %12 = tail call i32 @raccess_guess_apple_single(ptr poison, ptr noundef %1, ptr poison, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

bb.d:                                             ; preds = %raccess_guess_apple_single.exit
  %13 = tail call i32 @raccess_guess_darwin_ufs_export(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

raccess_guess_vfat.exit81:                        ; preds = %raccess_guess_apple_single.exit
  %14 = tail call i32 @raccess_guess_darwin_newvfs(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

FT_Stream_Seek.exit.6:                            ; preds = %raccess_guess_apple_single.exit
  %15 = tail call i32 @raccess_guess_darwin_hfsplus(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

bb.e:                                             ; preds = %raccess_guess_apple_single.exit
  %16 = tail call i32 @raccess_guess_vfat(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

raccess_guess_linux_cap.exit84:                   ; preds = %raccess_guess_apple_single.exit
  %17 = tail call i32 @raccess_guess_linux_cap(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

FT_Stream_Seek.exit.7:                            ; preds = %raccess_guess_apple_single.exit
  %18 = tail call i32 @raccess_guess_linux_double(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

bb.f:                                             ; preds = %raccess_guess_apple_single.exit
  %i.f = tail call i32 @raccess_guess_linux_netatalk(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %10) #33
  br label %.split.8

.split.8:                                         ; preds = %bb.f, %FT_Stream_Seek.exit.7, %raccess_guess_linux_cap.exit84, %bb.e, %FT_Stream_Seek.exit.6, %raccess_guess_vfat.exit81, %bb.d, %FT_Stream_Seek.exit.5, %bb.c
  %19 = phi i32 [ %i.e, %bb.c ], [ %12, %FT_Stream_Seek.exit.5 ], [ %13, %bb.d ], [ %14, %raccess_guess_vfat.exit81 ], [ %15, %FT_Stream_Seek.exit.6 ], [ %16, %bb.e ], [ %17, %raccess_guess_linux_cap.exit84 ], [ %18, %FT_Stream_Seek.exit.7 ], [ %i.f, %bb.f ]
  store i32 %19, ptr %9, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %FT_Stream_Seek.exit.1, %.split.8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not10.i.8 = icmp eq i64 %indvars.iv.next, 9
  br i1 %.not10.i.8, label %.split25.us, label %raccess_guess_darwin_hfsplus.exit, !llvm.loop !591

.split25.us:                                      ; preds = %bb.g
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
