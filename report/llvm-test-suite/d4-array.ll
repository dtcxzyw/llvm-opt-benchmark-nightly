inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0_@_Z9anewarrayP9Classfile:bb.a
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !34
  %i.af = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #5 ; 8 uses
  %i.ag = load ptr, ptr @stkptr, align 8, !tbaa !35
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
end_hunk_0
begin_hunk_1_@_Z9anewarrayP9Classfile:bb.a
  store ptr %i.am, ptr %i.af, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.v, ptr %i.an, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !40
  %i.ap = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #5 ; 8 uses
  %1 = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !27
  %. = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
end_hunk_1
begin_hunk_2_@_Z9anewarrayP9Classfile:bb.a
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr null, ptr %i.ax, align 8, !tbaa !40
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %2, i64 -8
  store ptr %i.ap, ptr %3, align 8, !tbaa !38
  ret i32 0

bb.e:                                             ; preds = %.noexc, %bb.a
end_hunk_2
begin_hunk_3_@_Z14multianewarrayP9Classfile:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr @inbuff, align 8, !tbaa !8
  %i.i = load ptr, ptr @stkptr, align 8, !tbaa !35
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #5 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
end_hunk_3
begin_hunk_4_@_Z14multianewarrayP9Classfile:bb.a
  store ptr %i.k, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !40
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.l, ptr %2, align 8, !tbaa !38
  ret i32 0

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_Z13doarraylengthP9Classfile:bb.a
  %i.a = load i32, ptr @currpc, align 4, !tbaa !4
  %i.b = add i32 %i.a, -1                         ; 4 uses
  %i.c = load ptr, ptr @stkptr, align 8, !tbaa !35
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #5 ; 6 uses
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #5
end_hunk_5
begin_hunk_6_@_Z13doarraylengthP9Classfile:bb.a
  store ptr %i.e, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.f, ptr %i.x, align 8, !tbaa !40
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.p, ptr %2, align 8, !tbaa !38
  ret i32 0

bb.d:                                             ; preds = %.noexc, %bb.a
end_hunk_6
begin_hunk_7_@_Z10doarraygetP9Classfile:bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  store ptr %i.d, ptr @stkptr, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #5 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_7
begin_hunk_8_@_Z10doarraygetP9Classfile:bb.a
  store ptr %i.g, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.w, align 8, !tbaa !40
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.h, ptr %2, align 8, !tbaa !38
  ret i32 0

bb.c:                                             ; preds = %bb.a
end_hunk_8
