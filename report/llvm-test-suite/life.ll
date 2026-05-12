inline.NumInlined: 26
inline.NumDeleted: 5
begin_hunk_0_@_ZN6rabbit4nextEPA40_P6living:bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_ZN6rabbit4nextEPA40_P6living:bb.a

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 4 uses
  %i.r = add nsw i32 %i.k, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load <2 x i32>, ptr %i.m, align 8, !tbaa !4
  store <2 x i32> %i.t, ptr %i.s, align 8, !tbaa !4
end_hunk_1
begin_hunk_2_@_ZN3fox4nextEPA40_P6living:bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN3fox4nextEPA40_P6living:bb.a

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 4 uses
  %i.q = add nsw i32 %i.j, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load <2 x i32>, ptr %i.l, align 8, !tbaa !4
  store <2 x i32> %i.s, ptr %i.r, align 8, !tbaa !4
end_hunk_3
