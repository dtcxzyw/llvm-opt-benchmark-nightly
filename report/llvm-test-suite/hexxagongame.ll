begin_hunk_0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN13HexxagonBoard4initEv(ptr noundef nonnull align 4 dereferenceable(16) %i.c)
end_hunk_0
begin_hunk_1

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i1, %.lr.ph.i ], [ %.06.i, %bb.b ] ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.08.i, i64 noundef 32) #13
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %.0.i1 = load ptr, ptr %.0.in.i, align 8, !tbaa !16 ; 2 uses
  %.not.i2 = icmp eq ptr %.0.i1, null
end_hunk_1
begin_hunk_2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.08, i64 noundef 32) #13
  %.0.in = getelementptr inbounds nuw i8, ptr %.08, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !16  ; 2 uses
  %.not = icmp eq ptr %.0, null
end_hunk_2
begin_hunk_3
define dso_local noundef i32 @_ZN12HexxagonGame9applyMoveER12HexxagonMove(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.HexxagonBoard, align 4       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN13HexxagonBoardaSERKS_(ptr dead_on_unwind nonnull writable sret(%class.HexxagonBoard) align 4 %2, ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.f = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 1 %1) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN12HexxagonGame4nextEv.exit, label %bb.b
end_hunk_3
begin_hunk_4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12HexxagonGame4nextEv.exit
end_hunk_4
begin_hunk_5
define dso_local noundef i32 @_ZN12HexxagonGame12computerMoveEiPFvvEi(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.HexxagonBoard, align 4       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN13HexxagonBoardaSERKS_(ptr dead_on_unwind nonnull writable sret(%class.HexxagonBoard) align 4 %4, ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.f = call noundef i32 @_ZN13HexxagonBoard12computerMoveEiPFvvEi(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN12HexxagonGame4nextEv.exit, label %bb.b
end_hunk_5
begin_hunk_6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12HexxagonGame4nextEv.exit
end_hunk_6
begin_hunk_7
; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12HexxagonGame8loadGameEPc(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 13, i64 noundef 1, ptr noundef nonnull %i.c)
  %.not26 = icmp eq i64 %i.d, 1
  br i1 %.not26, label %bb.d, label %bb.c
end_hunk_7
begin_hunk_8
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %i.a, ptr noundef nonnull dereferenceable(13) @.str.1, i64 13)
  %.not27 = icmp eq i32 %bcmp, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_8
begin_hunk_9
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.g = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.c)
  %.not28 = icmp eq i64 %i.g, 1
  br i1 %.not28, label %bb.h, label %bb.g
end_hunk_9
begin_hunk_10

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.06.i, %bb.h ] ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.08.i, i64 noundef 32) #13
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
end_hunk_10
begin_hunk_11

bb.i:                                             ; preds = %_ZN12HexxagonGame11destroyRestEv.exit.thread, %_ZN12HexxagonGame11destroyRestEv.exit
  %i.s = phi ptr [ %i.n, %_ZN12HexxagonGame11destroyRestEv.exit.thread ], [ %.pre, %_ZN12HexxagonGame11destroyRestEv.exit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN12HexxagonGame11destroyRestEv.exit
end_hunk_11
begin_hunk_12
  %i.u = phi ptr [ %.pr, %.lr.phthread-pre-split ], [ null, %bb.j ]
  %i.v = phi i64 [ %i.t, %.lr.phthread-pre-split ], [ %i.l, %bb.j ]
  %i.w = icmp eq ptr %i.u, null
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 7 uses
  br i1 %i.w, label %bb.l, label %_ZN12HexxagonGame4nextEv.exit

bb.l:                                             ; preds = %.lr.ph
end_hunk_12
begin_hunk_13

.lr.ph.i40:                                       ; preds = %_ZN12HexxagonGame4prevEv.exit, %.lr.ph.i40
  %.08.i41 = phi ptr [ %.0.i43, %.lr.ph.i40 ], [ %.06.i38, %_ZN12HexxagonGame4prevEv.exit ] ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.08.i41, i64 noundef 32) #13
  %.0.in.i42 = getelementptr inbounds nuw i8, ptr %.08.i41, i64 16
  %.0.i43 = load ptr, ptr %.0.in.i42, align 8, !tbaa !16 ; 2 uses
  %.not.i44 = icmp eq ptr %.0.i43, null
end_hunk_13
begin_hunk_14

bb.p:                                             ; preds = %.thread, %._crit_edge, %bb.g
  %.2 = phi i32 [ -2, %bb.g ], [ %i.af, %.thread ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e, %bb.c
  %.3 = phi i32 [ -2, %bb.c ], [ -3, %bb.e ], [ %.2, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
end_hunk_14
begin_hunk_15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.045.i = load ptr, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %.not6.i = icmp eq ptr %.045.i, null
end_hunk_15
begin_hunk_16
._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.preheader, %_ZN12HexxagonGame8noBoardsEv.exit
  %.1 = phi i32 [ 0, %.preheader ], [ -2, %_ZN12HexxagonGame8noBoardsEv.exit ], [ -2, %.lr.ph ], [ 0, %bb.e ]
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge, %bb.c
end_hunk_16
begin_hunk_17

declare noundef i32 @_ZN13HexxagonBoard11writeToFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_17
begin_hunk_18
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_18
