begin_hunk_0
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge48.loopexit, %3
  %.tr = phi i32 [ %0, %3 ], [ %46, %._crit_edge48.loopexit ] ; 2 uses
  %.tr67 = phi i32 [ %1, %3 ], [ %.0, %._crit_edge48.loopexit ] ; 2 uses
  %.tr68 = phi ptr [ %2, %3 ], [ %.0.copyload, %._crit_edge48.loopexit ] ; 5 uses
  %4 = load i32, ptr %.tr68, align 4              ; 2 uses
end_hunk_0
begin_hunk_1
  %32 = lshr i32 %30, 3                           ; 3 uses
  %spec.select = select i1 %.not40, i32 %32, i32 1 ; 5 uses
  %.not41 = icmp eq i32 %.tr, 0
  br i1 %.not41, label %39, label %33

33:                                               ; preds = %29
  %34 = icmp samesign ugt i32 %spec.select, 1
end_hunk_1
begin_hunk_2
  %37 = icmp eq i32 %spec.select, 1
  %38 = select i1 %37, i32 %.035, i32 0
  %spec.select42 = add nsw i32 %36, %38
  br label %39

39:                                               ; preds = %33, %29
  %.0 = phi i32 [ %.tr67, %29 ], [ %spec.select42, %33 ] ; 5 uses
  %40 = zext nneg i32 %32 to i64
  %41 = getelementptr inbounds nuw i8, ptr %8, i64 %40
  %42 = xor i32 %32, 3
  %.neg = add nuw nsw i32 %42, 1
  %43 = and i32 %.neg, 7
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44 ; 3 uses
  %.not49 = icmp eq i32 %spec.select, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %39
  %.not50 = icmp eq i32 %spec.select, 1
  %46 = add nsw i32 %.tr, 1                       ; 3 uses
  br i1 %.not50, label %._crit_edge48.loopexit, label %.lr.ph47.split.us

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %47 = icmp sgt i32 %.0, 0
  %wide.trip.count58 = zext nneg i32 %spec.select to i64 ; 2 uses
  br i1 %47, label %.lr.ph.us.us, label %.lr.ph47.split.us.split

.lr.ph.us.us:                                     ; preds = %.lr.ph47.split.us, %._crit_edge.us.us
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge.us.us ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03744.us.us = phi ptr [ %58, %._crit_edge.us.us ], [ %45, %.lr.ph47.split.us ] ; 2 uses
  %48 = load ptr, ptr @stdout, align 8, !tbaa !56
  %49 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %48)
  br label %50

50:                                               ; preds = %.lr.ph.us.us, %50
  %.03443.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %53, %50 ]
  %51 = load ptr, ptr @stdout, align 8, !tbaa !56
  %52 = tail call noundef i32 @putc(i32 noundef 32, ptr noundef %51)
  %53 = add nuw nsw i32 %.03443.us.us, 1          ; 2 uses
  %exitcond54.not = icmp eq i32 %53, %.0
  br i1 %exitcond54.not, label %._crit_edge.us.us, label %50, !llvm.loop !58

._crit_edge.us.us:                                ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv55
  %55 = load i8, ptr %54, align 1, !tbaa !21
  %56 = zext i8 %55 to i32
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %56)
  %.0.copyload.us.us = load ptr, ptr %.03744.us.us, align 8
  tail call void @raxRecursiveShow(i32 noundef %46, i32 noundef %.0, ptr noundef %.0.copyload.us.us)
  %58 = getelementptr inbounds nuw i8, ptr %.03744.us.us, i64 8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge48, label %.lr.ph.us.us, !llvm.loop !59

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us, %.lr.ph47.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph47.split.us.split ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03744.us = phi ptr [ %65, %.lr.ph47.split.us.split ], [ %45, %.lr.ph47.split.us ] ; 2 uses
  %59 = load ptr, ptr @stdout, align 8, !tbaa !56
  %60 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %59)
  %61 = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv
  %62 = load i8, ptr %61, align 1, !tbaa !21
  %63 = zext i8 %62 to i32
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %63)
  %.0.copyload.us = load ptr, ptr %.03744.us, align 8
  tail call void @raxRecursiveShow(i32 noundef %46, i32 noundef %.0, ptr noundef %.0.copyload.us)
  %65 = getelementptr inbounds nuw i8, ptr %.03744.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count58
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47.split.us.split, !llvm.loop !59

._crit_edge48.loopexit:                           ; preds = %.lr.ph47
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11)
  %.0.copyload = load ptr, ptr %45, align 8
  br label %tailrecurse

._crit_edge48:                                    ; preds = %.lr.ph47.split.us.split, %._crit_edge.us.us, %39
  ret void
}

end_hunk_2
