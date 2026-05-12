inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@_ZN10ODDLParser9ReferenceC2ERKS0_:bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %2 = load i64, ptr %0, align 8
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.e ] ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12 ; 4 uses
  %i.h = load ptr, ptr %3, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.011
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser9ReferenceC2ERKS0_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 16) #14
  resume { ptr, i32 } %eh.lpad-body

.loopexit:                                        ; preds = %bb.e, %.lr.ph.a, %bb.a
  ret void
}

end_hunk_1
