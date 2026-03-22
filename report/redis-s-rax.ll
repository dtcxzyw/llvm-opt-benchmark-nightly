begin_hunk_0
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge48.loopexit, %3
  %.tr = phi i32 [ %0, %3 ], [ %47, %._crit_edge48.loopexit ] ; [#uses=2 type=i32]
  %.tr67 = phi i32 [ %1, %3 ], [ %.0, %._crit_edge48.loopexit ] ; [#uses=2 type=i32]
  %.tr68 = phi ptr [ %2, %3 ], [ %.0.copyload, %._crit_edge48.loopexit ] ; [#uses=5 type=ptr]
  %4 = load i32, ptr %.tr68, align 4              ; [#uses=2 type=i32]
end_hunk_0
begin_hunk_1
  %32 = lshr i32 %30, 3                           ; [#uses=3 type=i32]
  %spec.select = select i1 %.not40, i32 %32, i32 1 ; [#uses=5 type=i32]
  %.not41 = icmp eq i32 %.tr, 0                   ; [#uses=1 type=i1]
  br i1 %.not41, label %40, label %33

33:                                               ; preds = %29
  %34 = icmp samesign ugt i32 %spec.select, 1     ; [#uses=1 type=i1]
end_hunk_1
begin_hunk_2
  %37 = icmp eq i32 %spec.select, 1               ; [#uses=1 type=i1]
  %38 = select i1 %37, i32 %.035, i32 0           ; [#uses=1 type=i32]
  %spec.select42 = add nsw i32 %36, %38           ; [#uses=1 type=i32]
  %39 = freeze i32 %spec.select42                 ; [#uses=1 type=i32]
  br label %40

40:                                               ; preds = %33, %29
  %.0 = phi i32 [ %.tr67, %29 ], [ %39, %33 ]     ; [#uses=5 type=i32]
  %41 = zext nneg i32 %32 to i64                  ; [#uses=1 type=i64]
  %42 = getelementptr inbounds nuw i8, ptr %8, i64 %41 ; [#uses=1 type=ptr]
  %43 = xor i32 %32, 3                            ; [#uses=1 type=i32]
  %.neg = add nuw nsw i32 %43, 1                  ; [#uses=1 type=i32]
  %44 = and i32 %.neg, 7                          ; [#uses=1 type=i32]
  %45 = zext nneg i32 %44 to i64                  ; [#uses=1 type=i64]
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 %45 ; [#uses=3 type=ptr]
  %.not49 = icmp eq i32 %spec.select, 0           ; [#uses=1 type=i1]
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %40
  %.not50 = icmp eq i32 %spec.select, 1           ; [#uses=1 type=i1]
  %47 = add nsw i32 %.tr, 1                       ; [#uses=3 type=i32]
  br i1 %.not50, label %._crit_edge48.loopexit, label %.lr.ph47.split.us

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %48 = icmp sgt i32 %.0, 0                       ; [#uses=1 type=i1]
  %wide.trip.count58 = zext nneg i32 %spec.select to i64 ; [#uses=2 type=i64]
  br i1 %48, label %.lr.ph.us.us, label %.lr.ph47.split.us.split

.lr.ph.us.us:                                     ; preds = %.lr.ph47.split.us, %._crit_edge.us.us
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge.us.us ], [ 0, %.lr.ph47.split.us ] ; [#uses=2 type=i64]
  %.03744.us.us = phi ptr [ %59, %._crit_edge.us.us ], [ %46, %.lr.ph47.split.us ] ; [#uses=2 type=ptr]
  %49 = load ptr, ptr @stdout, align 8, !tbaa !56 ; [#uses=1 type=ptr]
  %50 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %49) ; [#uses=0 type=i32]
  br label %51

51:                                               ; preds = %.lr.ph.us.us, %51
  %.03443.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %54, %51 ] ; [#uses=1 type=i32]
  %52 = load ptr, ptr @stdout, align 8, !tbaa !56 ; [#uses=1 type=ptr]
  %53 = tail call noundef i32 @putc(i32 noundef 32, ptr noundef %52) ; [#uses=0 type=i32]
  %54 = add nuw nsw i32 %.03443.us.us, 1          ; [#uses=2 type=i32]
  %exitcond54.not = icmp eq i32 %54, %.0          ; [#uses=1 type=i1]
  br i1 %exitcond54.not, label %._crit_edge.us.us, label %51, !llvm.loop !58

._crit_edge.us.us:                                ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv55 ; [#uses=1 type=ptr]
  %56 = load i8, ptr %55, align 1, !tbaa !21      ; [#uses=1 type=i8]
  %57 = zext i8 %56 to i32                        ; [#uses=1 type=i32]
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %57) ; [#uses=0 type=i32]
  %.0.copyload.us.us = load ptr, ptr %.03744.us.us, align 8 ; [#uses=1 type=ptr]
  tail call void @raxRecursiveShow(i32 noundef %47, i32 noundef %.0, ptr noundef %.0.copyload.us.us)
  %59 = getelementptr inbounds nuw i8, ptr %.03744.us.us, i64 8 ; [#uses=1 type=ptr]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; [#uses=2 type=i64]
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58 ; [#uses=1 type=i1]
  br i1 %exitcond59.not, label %._crit_edge48, label %.lr.ph.us.us, !llvm.loop !59

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us, %.lr.ph47.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph47.split.us.split ], [ 0, %.lr.ph47.split.us ] ; [#uses=2 type=i64]
  %.03744.us = phi ptr [ %66, %.lr.ph47.split.us.split ], [ %46, %.lr.ph47.split.us ] ; [#uses=2 type=ptr]
  %60 = load ptr, ptr @stdout, align 8, !tbaa !56 ; [#uses=1 type=ptr]
  %61 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %60) ; [#uses=0 type=i32]
  %62 = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv ; [#uses=1 type=ptr]
  %63 = load i8, ptr %62, align 1, !tbaa !21      ; [#uses=1 type=i8]
  %64 = zext i8 %63 to i32                        ; [#uses=1 type=i32]
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %64) ; [#uses=0 type=i32]
  %.0.copyload.us = load ptr, ptr %.03744.us, align 8 ; [#uses=1 type=ptr]
  tail call void @raxRecursiveShow(i32 noundef %47, i32 noundef %.0, ptr noundef %.0.copyload.us)
  %66 = getelementptr inbounds nuw i8, ptr %.03744.us, i64 8 ; [#uses=1 type=ptr]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count58 ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47.split.us.split, !llvm.loop !59

._crit_edge48.loopexit:                           ; preds = %.lr.ph47
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; [#uses=0 type=i32]
  %.0.copyload = load ptr, ptr %46, align 8       ; [#uses=1 type=ptr]
  br label %tailrecurse

._crit_edge48:                                    ; preds = %.lr.ph47.split.us.split, %._crit_edge.us.us, %40
  ret void
}

end_hunk_2
