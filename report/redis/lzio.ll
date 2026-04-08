inline.NumInlined: 2
begin_hunk_0_@luaZ_lookahead:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = call ptr %i.g(ptr noundef %i.e, ptr noundef %i.i, ptr noundef nonnull %i.a) #7, !inline_history !19 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
end_hunk_0
begin_hunk_1_@luaZ_read:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.k = call ptr %i.i(ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.a) #7, !inline_history !20 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = load i64, ptr %i.a, align 8              ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
end_hunk_1
begin_hunk_2_@luaZ_openspace
define hidden ptr @luaZ_openspace(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.f

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@luaZ_openspace:bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !23
  %i.g = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.b, i64 noundef %spec.store.select) #7
  br label %bb.e

end_hunk_3
begin_hunk_4_@luaZ_openspace:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !23
  store i64 %spec.store.select, ptr %i.a, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
end_hunk_4
begin_hunk_5_@llvm.umin.i64
!16 = !{!9, !10, i64 0}
!17 = !{!9, !11, i64 8}
!18 = !{!6, !6, i64 0}
!19 = !{ptr @luaZ_fill}
!20 = !{ptr @luaZ_lookahead, ptr @luaZ_fill}
!21 = !{!22, !10, i64 16}
!22 = !{!"Mbuffer", !11, i64 0, !10, i64 8, !10, i64 16}
!23 = !{!22, !11, i64 0}
end_hunk_5
