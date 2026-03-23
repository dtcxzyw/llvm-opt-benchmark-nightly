begin_hunk_0
  %.05874.us = phi ptr [ %.057, %.preheader.us ], [ %67, %.split71.us84 ] ; 9 uses
  %.06073.us = phi ptr [ %.177.us, %.preheader.us ], [ %66, %.split71.us84 ] ; 9 uses
  %27 = getelementptr inbounds [2 x i8], ptr %.06073.us, i64 %.063
  %28 = load i16, ptr %27, align 2, !tbaa !226
  %.fr = freeze i16 %28                           ; 7 uses
  %29 = getelementptr inbounds [2 x i8], ptr %.05874.us, i64 %.063
  store i16 %.fr, ptr %29, align 2, !tbaa !226
  %30 = add i16 %.fr, -1
  %or.cond.us = icmp ult i16 %30, -2
  br i1 %or.cond.us, label %.thread, label %35

.thread:                                          ; preds = %26
  %31 = zext i16 %.fr to i32                      ; 2 uses
  %32 = lshr i32 %31, 1
  %33 = or disjoint i32 %32, 2147450880
  %34 = udiv i32 %33, %31
  br label %.split.us87

35:                                               ; preds = %26
  %.not89 = icmp eq i16 %.fr, -1
  br i1 %.not89, label %.split.us.us, label %.split.us87

.split.us87:                                      ; preds = %35, %.thread
  %.056.us98 = phi i32 [ %34, %.thread ], [ 0, %35 ] ; 3 uses
  %36 = getelementptr inbounds nuw i8, ptr %.06073.us, i64 2
  %37 = load i16, ptr %.06073.us, align 2, !tbaa !226 ; 3 uses
  %38 = zext i16 %37 to i32
  %.not69.us82 = icmp ult i16 %37, %.fr
  br i1 %.not69.us82, label %39, label %45

39:                                               ; preds = %.split.us87
end_hunk_0
begin_hunk_1
  br i1 %.not90, label %45, label %40

40:                                               ; preds = %39
  %41 = mul i32 %.056.us98, %38
  %42 = add i32 %41, 16384
  %43 = lshr i32 %42, 15
  %44 = trunc i32 %43 to i16
end_hunk_1
begin_hunk_2
  %47 = getelementptr inbounds nuw i8, ptr %.06073.us, i64 4 ; 2 uses
  %48 = load i16, ptr %36, align 2, !tbaa !226    ; 3 uses
  %49 = zext i16 %48 to i32
  %.not69.us82.1 = icmp ult i16 %48, %.fr
  br i1 %.not69.us82.1, label %50, label %.split.us87.2

50:                                               ; preds = %.split.us87.1
end_hunk_2
begin_hunk_3
  br i1 %.not90.1, label %.split.us87.2, label %51

51:                                               ; preds = %50
  %52 = mul i32 %.056.us98, %49
  %53 = add i32 %52, 16384
  %54 = lshr i32 %53, 15
  %55 = trunc i32 %54 to i16
end_hunk_3
begin_hunk_4
  store i16 %.054.us83.1, ptr %46, align 2, !tbaa !226
  %57 = load i16, ptr %47, align 2, !tbaa !226    ; 3 uses
  %58 = zext i16 %57 to i32
  %.not69.us82.2 = icmp ult i16 %57, %.fr
  br i1 %.not69.us82.2, label %59, label %65

59:                                               ; preds = %.split.us87.2
end_hunk_4
begin_hunk_5
  br i1 %.not90.2, label %65, label %60

60:                                               ; preds = %59
  %61 = mul i32 %.056.us98, %58
  %62 = add i32 %61, 16384
  %63 = lshr i32 %62, 15
  %64 = trunc i32 %63 to i16
end_hunk_5
begin_hunk_6
  %.07184.us = phi ptr [ %.065, %.preheader78.us ], [ %118, %.split81.us92 ] ; 7 uses
  %.07383.us = phi ptr [ %.187.us, %.preheader78.us ], [ %117, %.split81.us92 ] ; 6 uses
  %32 = getelementptr inbounds [2 x i8], ptr %.07383.us, i64 %.070
  %33 = load i16, ptr %32, align 2, !tbaa !226
  %.fr = freeze i16 %33                           ; 6 uses
  %34 = zext i16 %.fr to i32                      ; 3 uses
  %35 = mul nuw nsw i32 %34, 255
  %36 = add nuw nsw i32 %35, 32895
  %37 = lshr i32 %36, 16                          ; 2 uses
end_hunk_6
begin_hunk_7

44:                                               ; preds = %40, %31
  %.067.us = phi i32 [ %43, %40 ], [ 0, %31 ]     ; 3 uses
  %45 = icmp ult i16 %.fr, 128
  %46 = icmp ult i16 %.fr, -129                   ; 3 uses
  br i1 %45, label %png_unpremultiply.exit.us.us.preheader, label %.split.us95

png_unpremultiply.exit.us.us.preheader:           ; preds = %44
end_hunk_7
begin_hunk_8
  %47 = getelementptr inbounds nuw i8, ptr %.07383.us, i64 2
  %48 = load i16, ptr %.07383.us, align 2, !tbaa !226 ; 3 uses
  %49 = zext i16 %48 to i32                       ; 2 uses
  %.not103 = icmp ult i16 %48, %.fr
  br i1 %.not103, label %50, label %png_unpremultiply.exit.us91

50:                                               ; preds = %.split.us95
end_hunk_8
begin_hunk_9
  %71 = getelementptr inbounds nuw i8, ptr %.07383.us, i64 4 ; 2 uses
  %72 = load i16, ptr %47, align 2, !tbaa !226    ; 3 uses
  %73 = zext i16 %72 to i32                       ; 2 uses
  %.not103.1 = icmp ult i16 %72, %.fr
  br i1 %.not103.1, label %74, label %png_unpremultiply.exit.us91.1

74:                                               ; preds = %.split.us95.1
end_hunk_9
begin_hunk_10
  store i8 %.0.i.us.1, ptr %70, align 1, !tbaa !47
  %95 = load i16, ptr %71, align 2, !tbaa !226    ; 3 uses
  %96 = zext i16 %95 to i32                       ; 2 uses
  %.not103.2 = icmp ult i16 %95, %.fr
  br i1 %.not103.2, label %97, label %png_unpremultiply.exit.us91.2

97:                                               ; preds = %png_unpremultiply.exit.us91.1
end_hunk_10
