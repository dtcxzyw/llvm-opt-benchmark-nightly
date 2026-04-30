inline.NumInlined: 419
inline.NumDeleted: 68
begin_hunk_0_@_ZN6icu_788Calendar3setE19UCalendarDateFieldsi:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 captures(none) dereferenceable(256) initializes((128, 129)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  store i8 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
end_hunk_0
begin_hunk_1_@_ZN6icu_788Calendar16recalculateStampEv:bb.a
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.01119 = phi i32 [ 0, %bb.a ], [ %i.cx, %bb.b ]
  %1 = load i8, ptr %i.a, align 8                 ; 24 uses
  %i.z = load i8, ptr %i.b, align 8               ; 3 uses
  %i.aa = icmp sle i8 %i.z, %1                    ; 2 uses
  %i.ab = icmp eq i8 %i.z, 127
end_hunk_1
begin_hunk_2_@_ZN6icu_788Calendar16recalculateStampEv:bb.a
  %or.cond.23 = select i1 %i.cr, i1 %i.cs, i1 false
  %.114.23 = select i1 %or.cond.23, i32 23, i32 %.114.22 ; 2 uses
  %i.ct = icmp sgt i32 %.114.23, -1
  br i1 %i.ct, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %2 = load i8, ptr %i.a, align 8
  %i.cu = add i8 %2, 1                            ; 2 uses
  store i8 %i.cu, ptr %i.a, align 8
  %i.cv = zext nneg i32 %.114.23 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cv
end_hunk_2
begin_hunk_3_@_ZN6icu_788Calendar16recalculateStampEv:bb.a
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !18

bb.c:                                             ; preds = %.preheader, %bb.b
  %3 = load i8, ptr %i.a, align 8
  %i.cy = add i8 %3, 1
  store i8 %i.cy, ptr %i.a, align 8
  ret void
}
end_hunk_3
