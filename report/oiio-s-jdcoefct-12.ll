begin_hunk_0

54:                                               ; preds = %.lr.ph, %.loopexit95
  %55 = phi i32 [ %51, %.lr.ph ], [ %118, %.loopexit95 ] ; 3 uses
  %indvars.iv130 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next131, %.loopexit95 ] ; 2 uses
  %.083112 = phi i32 [ 0, %.lr.ph ], [ %.2, %.loopexit95 ] ; 4 uses
  %56 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %indvars.iv130
  %57 = load ptr, ptr %56, align 8, !tbaa !72     ; 10 uses
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 52
  %59 = load i32, ptr %58, align 4, !tbaa !112
end_hunk_0
begin_hunk_1
  %72 = getelementptr inbounds nuw i8, ptr %57, i64 56 ; 3 uses
  %73 = getelementptr inbounds nuw i8, ptr %57, i64 72
  %.in = select i1 %53, ptr %72, ptr %73
  %74 = load i32, ptr %.in, align 8, !tbaa !3
  %.fr121 = freeze i32 %74                        ; 2 uses
  %75 = getelementptr inbounds nuw i8, ptr %57, i64 36 ; 2 uses
  %76 = load ptr, ptr %21, align 8, !tbaa !100
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 24
end_hunk_1
begin_hunk_2

.lr.ph104:                                        ; preds = %64
  %86 = getelementptr inbounds nuw i8, ptr %57, i64 76
  %87 = icmp sgt i32 %.fr121, 0
  br i1 %87, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
end_hunk_2
begin_hunk_3
  %91 = mul nsw i32 %90, %.086117
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i8], ptr %89, i64 %92
  %wide.trip.count = zext nneg i32 %.fr121 to i64
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %..loopexit_crit_edge.us
end_hunk_3
begin_hunk_4
  br label %111

..loopexit_crit_edge.us.loopexit:                 ; preds = %111
  %.pre133 = load i32, ptr %83, align 4, !tbaa !90
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %98
  %103 = phi i32 [ %.pre133, %..loopexit_crit_edge.us.loopexit ], [ %94, %98 ] ; 2 uses
  %104 = phi i32 [ %113, %..loopexit_crit_edge.us.loopexit ], [ %95, %98 ] ; 2 uses
  %105 = load i32, ptr %72, align 8, !tbaa !89
  %106 = add nsw i32 %105, %.1103.us              ; 2 uses
end_hunk_4
begin_hunk_5
  br label %.loopexit95

.loopexit95.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %.pre134 = load i32, ptr %22, align 8, !tbaa !69
  br label %.loopexit95

.loopexit95:                                      ; preds = %.lr.ph104.split, %.loopexit95.loopexit, %64, %60
  %118 = phi i32 [ %55, %60 ], [ %55, %64 ], [ %55, %.lr.ph104.split ], [ %.pre134, %.loopexit95.loopexit ] ; 2 uses
  %.2 = phi i32 [ %63, %60 ], [ %.083112, %64 ], [ %117, %.lr.ph104.split ], [ %106, %.loopexit95.loopexit ]
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %indvars.iv.next131, %119
  br i1 %120, label %54, label %.loopexit96, !llvm.loop !126

.loopexit96:                                      ; preds = %.loopexit95, %.preheader, %44, %48
end_hunk_5
begin_hunk_6
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph116, !llvm.loop !127

._crit_edge.loopexit:                             ; preds = %.loopexit96
  %.pre135 = load i32, ptr %13, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %25
  %122 = phi i32 [ %.pre135, %._crit_edge.loopexit ], [ %26, %25 ] ; 2 uses
  store i32 0, ptr %16, align 8, !tbaa !74
  %123 = add nsw i32 %.086117, 1                  ; 2 uses
  %124 = icmp slt i32 %123, %122
  br i1 %124, label %25, label %._crit_edge120.loopexit, !llvm.loop !128

._crit_edge120.loopexit:                          ; preds = %._crit_edge
  %.pre136 = load i32, ptr %8, align 8, !tbaa !71
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %2
  %125 = phi i32 [ %.pre136, %._crit_edge120.loopexit ], [ %9, %2 ] ; 2 uses
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %127 = load i32, ptr %126, align 8, !tbaa !82
  %128 = add i32 %127, 1
end_hunk_6
