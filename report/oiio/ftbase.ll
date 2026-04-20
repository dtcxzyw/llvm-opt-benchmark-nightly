inline.NumInlined: 374
inline.NumDeleted: 35
begin_hunk_0_@ft_raccess_sort_ref_by_id:bb.a
}

; Function Attrs: nounwind uwtable
define hidden void @FT_Raccess_Guess(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly captures(none) initializes((0, 24)) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) initializes((0, 36)) %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr null, ptr %3, align 8, !tbaa !199
  br i1 %.not, label %.split25.us.loopexit, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %6 = load ptr, ptr %i.a, align 8, !tbaa !334    ; 2 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.thread27, label %bb.d

.split25.us.loopexit:                             ; preds = %bb.a
  store i32 81, ptr %5, align 4, !tbaa !3
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store ptr null, ptr %7, align 8, !tbaa !199
  store i32 81, ptr %8, align 4, !tbaa !3
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %9, align 8, !tbaa !199
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %10, align 4, !tbaa !3
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %12 = tail call i32 @raccess_guess_darwin_ufs_export(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %11) #33
  store i32 %12, ptr %10, align 4, !tbaa !3
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !199
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %14, align 4, !tbaa !3
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %16 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #34 ; 5 uses
  %17 = icmp sgt i64 %16, 2147483629
  br i1 %17, label %raccess_guess_darwin_newvfs.exit, label %18

18:                                               ; preds = %.split25.us.loopexit
  %19 = add nsw i64 %16, 18                       ; 2 uses
  %20 = icmp sgt i64 %16, -18
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !265     ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !186
  %25 = tail call ptr %24(ptr noundef %22, i64 noundef %19) #33, !inline_history !590 ; 2 uses
  %.not.i.i = icmp eq ptr %25, null
  br i1 %.not.i.i, label %raccess_guess_darwin_newvfs.exit, label %select.unfold16.i

26:                                               ; preds = %18
  %.not14.i.i = icmp eq i64 %19, 0
  br i1 %.not14.i.i, label %select.unfold16.i, label %raccess_guess_darwin_newvfs.exit

select.unfold16.i:                                ; preds = %26, %21
  %.0.i.ph.i = phi ptr [ %25, %21 ], [ null, %26 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.ph.i, ptr nonnull readonly align 1 %2, i64 %16, i1 false)
  %27 = getelementptr inbounds i8, ptr %.0.i.ph.i, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %27, ptr noundef nonnull align 1 dereferenceable(18) @.str.25, i64 18, i1 false)
  store ptr %.0.i.ph.i, ptr %13, align 8, !tbaa !199
  store i64 0, ptr %15, align 8, !tbaa !39
  br label %raccess_guess_darwin_newvfs.exit

raccess_guess_darwin_newvfs.exit:                 ; preds = %.split25.us.loopexit, %21, %26, %select.unfold16.i
  %.0.i = phi i32 [ 0, %select.unfold16.i ], [ 10, %.split25.us.loopexit ], [ 6, %26 ], [ 64, %21 ]
  store i32 %.0.i, ptr %14, align 4, !tbaa !3
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr null, ptr %28, align 8, !tbaa !199
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 0, ptr %29, align 4, !tbaa !3
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %31 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #34 ; 5 uses
  %32 = icmp sgt i64 %31, 2147483641
  br i1 %32, label %bb.b, label %33

33:                                               ; preds = %raccess_guess_darwin_newvfs.exit
  %34 = add nsw i64 %31, 6                        ; 2 uses
  %35 = icmp sgt i64 %31, -6
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 8, !tbaa !265     ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !186
  %40 = tail call ptr %39(ptr noundef %37, i64 noundef %34) #33, !inline_history !591 ; 2 uses
  %.not.i.i60 = icmp eq ptr %40, null
  br i1 %.not.i.i60, label %bb.b, label %select.unfold16.i58

41:                                               ; preds = %33
  %.not14.i.i56 = icmp eq i64 %34, 0
  br i1 %.not14.i.i56, label %select.unfold16.i58, label %bb.b

select.unfold16.i58:                              ; preds = %41, %36
  %.0.i.ph.i59 = phi ptr [ %40, %36 ], [ null, %41 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.ph.i59, ptr nonnull readonly align 1 %2, i64 %31, i1 false)
  %42 = getelementptr inbounds i8, ptr %.0.i.ph.i59, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %42, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  store ptr %.0.i.ph.i59, ptr %28, align 8, !tbaa !199
  store i64 0, ptr %30, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %raccess_guess_darwin_newvfs.exit, %36, %41, %select.unfold16.i58
  %.0.i57 = phi i32 [ 0, %select.unfold16.i58 ], [ 10, %raccess_guess_darwin_newvfs.exit ], [ 6, %41 ], [ 64, %36 ]
  store i32 %.0.i57, ptr %29, align 4, !tbaa !3
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr null, ptr %43, align 8, !tbaa !199
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 0, ptr %44, align 4, !tbaa !3
  %45 = load ptr, ptr %0, align 8, !tbaa !265
  %46 = tail call fastcc ptr @raccess_make_file_name(ptr noundef %45, ptr noundef nonnull %2, ptr noundef nonnull @.str.27) ; 2 uses
  %.not.i61 = icmp eq ptr %46, null
  br i1 %.not.i61, label %bb.c, label %47

47:                                               ; preds = %bb.b
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %46, ptr %43, align 8, !tbaa !199
  store i64 0, ptr %48, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %47
  %.0.i62 = phi i32 [ 0, %47 ], [ 64, %bb.b ]
  store i32 %.0.i62, ptr %44, align 4, !tbaa !3
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr null, ptr %49, align 8, !tbaa !199
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %50, align 4, !tbaa !3
  %i.c = load ptr, ptr %0, align 8, !tbaa !265
  %51 = tail call fastcc ptr @raccess_make_file_name(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull @.str.28) ; 2 uses
  %.not.i.a = icmp eq ptr %51, null
  br i1 %.not.i.a, label %raccess_guess_linux_cap.exit, label %52

52:                                               ; preds = %bb.c
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %51, ptr %49, align 8, !tbaa !199
  store i64 0, ptr %53, align 8, !tbaa !39
  br label %raccess_guess_linux_cap.exit

raccess_guess_linux_cap.exit:                     ; preds = %bb.c, %52
  %.0.i64 = phi i32 [ 0, %52 ], [ 64, %bb.c ]
  store i32 %.0.i64, ptr %50, align 4, !tbaa !3
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr null, ptr %54, align 8, !tbaa !199
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i32 0, ptr %55, align 4, !tbaa !3
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %57 = tail call i32 @raccess_guess_linux_double(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %2, ptr noundef nonnull %54, ptr noundef nonnull %56) #33
  store i32 %57, ptr %55, align 4, !tbaa !3
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr null, ptr %58, align 8, !tbaa !199
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %59, align 4, !tbaa !3
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %61 = tail call i32 @raccess_guess_linux_netatalk(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %2, ptr noundef nonnull %58, ptr noundef nonnull %60) #33
  store i32 %61, ptr %59, align 4, !tbaa !3
  br label %bb.g

bb.d:                                             ; preds = %.split.preheader
  %i.d = tail call i64 %6(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i, label %.thread27, label %.split.1

.thread27:                                        ; preds = %bb.d, %.split.preheader
  store i64 0, ptr %i.b, align 8, !tbaa !280
  store i32 0, ptr %5, align 4, !tbaa !3
  store ptr null, ptr %3, align 8, !tbaa !199
  %62 = tail call fastcc i32 @raccess_guess_apple_generic(ptr noundef nonnull %1, i32 noundef 333319, ptr noundef %4)
  br label %.split.1

.split.1:                                         ; preds = %bb.d, %.thread27
  %.sink = phi i32 [ %62, %.thread27 ], [ 85, %bb.d ]
  store i32 %.sink, ptr %5, align 4, !tbaa !3
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %63, align 8, !tbaa !199
  %64 = load ptr, ptr %i.a, align 8, !tbaa !334   ; 2 uses
  %.not.i.1 = icmp eq ptr %64, null
  br i1 %.not.i.1, label %.thread, label %65

65:                                               ; preds = %.split.1
  %66 = tail call i64 %64(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.1 = icmp eq i64 %66, 0
  br i1 %.not10.i.1, label %.thread, label %bb.e

bb.e:                                             ; preds = %65
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 85, ptr %67, align 4, !tbaa !3
  br label %.split.2

.thread:                                          ; preds = %.split.1, %65
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %68, align 4, !tbaa !3
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %63, align 8, !tbaa !199
  %70 = tail call fastcc i32 @raccess_guess_apple_generic(ptr noundef nonnull %1, i32 noundef 333312, ptr noundef nonnull %69)
  store i32 %70, ptr %68, align 4, !tbaa !3
  br label %.split.2

.split.2:                                         ; preds = %bb.e, %.thread
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %71, align 8, !tbaa !199
  %72 = load ptr, ptr %i.a, align 8, !tbaa !334   ; 2 uses
  %.not.i.2 = icmp eq ptr %72, null
  br i1 %.not.i.2, label %call.0, label %73

73:                                               ; preds = %.split.2
  %74 = tail call i64 %72(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.2 = icmp eq i64 %74, 0
  br i1 %.not10.i.2, label %call.0, label %default.switch.case.unreachable

default.switch.case.unreachable:                  ; preds = %73
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 85, ptr %75, align 4, !tbaa !3
  br label %.split.3

call.0:                                           ; preds = %.split.2, %73
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %76, align 4, !tbaa !3
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = tail call i32 @raccess_guess_darwin_ufs_export(ptr noundef %0, ptr nonnull poison, ptr noundef %2, ptr noundef nonnull %71, ptr noundef nonnull %77) #33
  store i32 %i.e, ptr %76, align 4, !tbaa !3
  br label %.split.3

.split.3:                                         ; preds = %default.switch.case.unreachable, %call.0
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %78, align 8, !tbaa !199
  %79 = load ptr, ptr %i.a, align 8, !tbaa !334   ; 2 uses
  %.not.i.3 = icmp eq ptr %79, null
  br i1 %.not.i.3, label %83, label %80

80:                                               ; preds = %.split.3
  %81 = tail call i64 %79(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.3 = icmp eq i64 %81, 0
  br i1 %.not10.i.3, label %83, label %FT_Stream_Seek.exit.3

FT_Stream_Seek.exit.3:                            ; preds = %80
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 85, ptr %82, align 4, !tbaa !3
  br label %.split.4

83:                                               ; preds = %.split.3, %80
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %84, align 4, !tbaa !3
  %85 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %86 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #34 ; 5 uses
  %87 = icmp sgt i64 %86, 2147483629
  br i1 %87, label %raccess_guess_darwin_newvfs.exit72, label %88

88:                                               ; preds = %83
  %89 = add nsw i64 %86, 18                       ; 2 uses
  %90 = icmp sgt i64 %86, -18
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load ptr, ptr %0, align 8, !tbaa !265     ; 2 uses
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 8
  %94 = load ptr, ptr %93, align 8, !tbaa !186
  %95 = tail call ptr %94(ptr noundef %92, i64 noundef %89) #33, !inline_history !590 ; 2 uses
  %.not.i.i71 = icmp eq ptr %95, null
  br i1 %.not.i.i71, label %raccess_guess_darwin_newvfs.exit72, label %select.unfold16.i69

96:                                               ; preds = %88
  %.not14.i.i67 = icmp eq i64 %89, 0
  br i1 %.not14.i.i67, label %select.unfold16.i69, label %raccess_guess_darwin_newvfs.exit72

select.unfold16.i69:                              ; preds = %96, %91
  %.0.i.ph.i70 = phi ptr [ %95, %91 ], [ null, %96 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.ph.i70, ptr nonnull readonly align 1 %2, i64 %86, i1 false)
  %97 = getelementptr inbounds i8, ptr %.0.i.ph.i70, i64 %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %97, ptr noundef nonnull align 1 dereferenceable(18) @.str.25, i64 18, i1 false)
  store ptr %.0.i.ph.i70, ptr %78, align 8, !tbaa !199
  store i64 0, ptr %85, align 8, !tbaa !39
  br label %raccess_guess_darwin_newvfs.exit72

raccess_guess_darwin_newvfs.exit72:               ; preds = %83, %91, %96, %select.unfold16.i69
  %.0.i68 = phi i32 [ 0, %select.unfold16.i69 ], [ 10, %83 ], [ 6, %96 ], [ 64, %91 ]
  store i32 %.0.i68, ptr %84, align 4, !tbaa !3
  br label %.split.4

.split.4:                                         ; preds = %FT_Stream_Seek.exit.3, %raccess_guess_darwin_newvfs.exit72
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr null, ptr %98, align 8, !tbaa !199
  %99 = load ptr, ptr %i.a, align 8, !tbaa !334   ; 2 uses
  %.not.i.4 = icmp eq ptr %99, null
  br i1 %.not.i.4, label %103, label %100

100:                                              ; preds = %.split.4
  %101 = tail call i64 %99(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.4 = icmp eq i64 %101, 0
  br i1 %.not10.i.4, label %103, label %FT_Stream_Seek.exit.4

FT_Stream_Seek.exit.4:                            ; preds = %100
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 85, ptr %102, align 4, !tbaa !3
  br label %.split.5

103:                                              ; preds = %.split.4, %100
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 0, ptr %104, align 4, !tbaa !3
  %105 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %106 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #34 ; 5 uses
  %107 = icmp sgt i64 %106, 2147483641
  br i1 %107, label %raccess_guess_darwin_hfsplus.exit78, label %108

108:                                              ; preds = %103
  %109 = add nsw i64 %106, 6                      ; 2 uses
  %110 = icmp sgt i64 %106, -6
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load ptr, ptr %0, align 8, !tbaa !265    ; 2 uses
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 8
  %114 = load ptr, ptr %113, align 8, !tbaa !186
  %115 = tail call ptr %114(ptr noundef %112, i64 noundef %109) #33, !inline_history !591 ; 2 uses
  %.not.i.i77 = icmp eq ptr %115, null
  br i1 %.not.i.i77, label %raccess_guess_darwin_hfsplus.exit78, label %select.unfold16.i75

116:                                              ; preds = %108
  %.not14.i.i73 = icmp eq i64 %109, 0
  br i1 %.not14.i.i73, label %select.unfold16.i75, label %raccess_guess_darwin_hfsplus.exit78

select.unfold16.i75:                              ; preds = %116, %111
  %.0.i.ph.i76 = phi ptr [ %115, %111 ], [ null, %116 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.ph.i76, ptr nonnull readonly align 1 %2, i64 %106, i1 false)
  %117 = getelementptr inbounds i8, ptr %.0.i.ph.i76, i64 %106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %117, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  store ptr %.0.i.ph.i76, ptr %98, align 8, !tbaa !199
  store i64 0, ptr %105, align 8, !tbaa !39
  br label %raccess_guess_darwin_hfsplus.exit78

raccess_guess_darwin_hfsplus.exit78:              ; preds = %103, %111, %116, %select.unfold16.i75
  %.0.i74 = phi i32 [ 0, %select.unfold16.i75 ], [ 10, %103 ], [ 6, %116 ], [ 64, %111 ]
  store i32 %.0.i74, ptr %104, align 4, !tbaa !3
  br label %.split.5

.split.5:                                         ; preds = %FT_Stream_Seek.exit.4, %raccess_guess_darwin_hfsplus.exit78
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr null, ptr %118, align 8, !tbaa !199
  %119 = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.5 = icmp eq ptr %119, null
  br i1 %.not.i.5, label %123, label %120

120:                                              ; preds = %.split.5
  %121 = tail call i64 %119(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.5 = icmp eq i64 %121, 0
  br i1 %.not10.i.5, label %123, label %call.1

call.1:                                           ; preds = %120
  %122 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 85, ptr %122, align 4, !tbaa !3
  br label %.split.6

123:                                              ; preds = %.split.5, %120
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %124 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 0, ptr %124, align 4, !tbaa !3
  %125 = load ptr, ptr %0, align 8, !tbaa !265
  %126 = tail call fastcc ptr @raccess_make_file_name(ptr noundef %125, ptr noundef %2, ptr noundef nonnull @.str.27) ; 2 uses
  %.not.i79 = icmp eq ptr %126, null
  br i1 %.not.i79, label %call.3, label %call.2

call.2:                                           ; preds = %123
  %127 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %126, ptr %118, align 8, !tbaa !199
  store i64 0, ptr %127, align 8, !tbaa !39
  br label %call.3

call.3:                                           ; preds = %123, %call.2
  %.0.i80 = phi i32 [ 0, %call.2 ], [ 64, %123 ]
  store i32 %.0.i80, ptr %124, align 4, !tbaa !3
  br label %.split.6

.split.6:                                         ; preds = %call.1, %call.3
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr null, ptr %128, align 8, !tbaa !199
  %129 = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.6 = icmp eq ptr %129, null
  br i1 %.not.i.6, label %133, label %130

130:                                              ; preds = %.split.6
  %131 = tail call i64 %129(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.6 = icmp eq i64 %131, 0
  br i1 %.not10.i.6, label %133, label %call.4

call.4:                                           ; preds = %130
  %132 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 85, ptr %132, align 4, !tbaa !3
  br label %.split.7

133:                                              ; preds = %.split.6, %130
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %134 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %134, align 4, !tbaa !3
  %135 = load ptr, ptr %0, align 8, !tbaa !265
  %136 = tail call fastcc ptr @raccess_make_file_name(ptr noundef %135, ptr noundef %2, ptr noundef nonnull @.str.28) ; 2 uses
  %.not.i82 = icmp eq ptr %136, null
  br i1 %.not.i82, label %call.6, label %call.5

call.5:                                           ; preds = %133
  %137 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %136, ptr %128, align 8, !tbaa !199
  store i64 0, ptr %137, align 8, !tbaa !39
  br label %call.6

call.6:                                           ; preds = %133, %call.5
  %.0.i83 = phi i32 [ 0, %call.5 ], [ 64, %133 ]
  store i32 %.0.i83, ptr %134, align 4, !tbaa !3
  br label %.split.7

.split.7:                                         ; preds = %call.4, %call.6
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr null, ptr %138, align 8, !tbaa !199
  %139 = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.7 = icmp eq ptr %139, null
  br i1 %.not.i.7, label %call.8, label %140

140:                                              ; preds = %.split.7
  %141 = tail call i64 %139(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %.not10.i.7 = icmp eq i64 %141, 0
  br i1 %.not10.i.7, label %call.8, label %call.7

call.7:                                           ; preds = %140
  %142 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 85, ptr %142, align 4, !tbaa !3
  br label %.tail

call.8:                                           ; preds = %.split.7, %140
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %143 = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i32 0, ptr %143, align 4, !tbaa !3
  %144 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = tail call i32 @raccess_guess_linux_double(ptr noundef %0, ptr nonnull poison, ptr noundef %2, ptr noundef nonnull %138, ptr noundef nonnull %144) #33
  store i32 %i.f, ptr %143, align 4, !tbaa !3
  br label %.tail

.tail:                                            ; preds = %call.7, %call.8
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr null, ptr %145, align 8, !tbaa !199
  %146 = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.8 = icmp eq ptr %146, null
  br i1 %.not.i.8, label %149, label %bb.f

bb.f:                                             ; preds = %.tail
  %147 = tail call i64 %146(ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i64 noundef 0) #33, !inline_history !335
  %exitcond.not = icmp eq i64 %147, 0
  br i1 %exitcond.not, label %149, label %FT_Stream_Seek.exit.8

FT_Stream_Seek.exit.8:                            ; preds = %bb.f
  %148 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 85, ptr %148, align 4, !tbaa !3
  br label %bb.g

149:                                              ; preds = %.tail, %bb.f
  store i64 0, ptr %i.b, align 8, !tbaa !280
  %150 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %150, align 4, !tbaa !3
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %152 = tail call i32 @raccess_guess_linux_netatalk(ptr noundef %0, ptr nonnull poison, ptr noundef %2, ptr noundef nonnull %145, ptr noundef nonnull %151) #33
  store i32 %152, ptr %150, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %149, %FT_Stream_Seek.exit.8, %raccess_guess_linux_cap.exit
  ret void
}

end_hunk_0
begin_hunk_1_@llvm.bswap.i32
!587 = distinct !{!587, !41}
!588 = distinct !{!588, !41}
!589 = !{!105, !105, i64 0}
!590 = !{ptr @raccess_guess_darwin_newvfs, ptr @ft_mem_qalloc}
!591 = !{ptr @raccess_guess_darwin_hfsplus, ptr @ft_mem_qalloc}
!592 = !{!103, !17, i64 560}
!593 = !{!103, !112, i64 584}
!594 = !{!595, !17, i64 8}
end_hunk_1
