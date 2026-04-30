inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0_@FontWordSize:bb.a
  %.0146 = phi i32 [ 0, %bb.k ], [ %spec.select, %.loopexit ]
  %.0144 = phi i32 [ 0, %bb.k ], [ %.1145, %.loopexit ]
  %.0141 = phi i32 [ 0, %bb.k ], [ %i.eh, %.loopexit ]
  %.0135 = phi ptr [ %i.a, %bb.k ], [ %i.ed, %.loopexit ] ; 6 uses
  %.0 = phi ptr [ %i.f, %bb.k ], [ %.1, %.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  store i8 %i.aq, ptr %.0135, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@FontWordSize:bb.a
  %i.ci = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 60, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef %i.ce, ptr noundef nonnull @FontFamilyAndFace.buff) #14 ; 0 uses
  store i8 32, ptr %.0135, align 1, !tbaa !8
  store i8 32, ptr %.0, align 1, !tbaa !8
  %.pre205.pre = load i8, ptr %.0135, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre205 = phi i8 [ %.pre205.pre, %bb.o ], [ %i.aw, %bb.n ]
  store ptr %i.av, ptr @zz_hold, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !8   ; 2 uses
end_hunk_1
