inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@main:bb.a
  %.sroa.3.0 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.c = load ptr, ptr %.sroa.3.0, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0) ; 3 uses
  %i.f = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.3.0, ptr %i.g, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTV6filter, i64 16), ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.e, ptr %i.h, align 8, !tbaa !16
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.e) ; 0 uses
  %i.j = icmp slt i32 %i.e, 100001
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN5sieve3outEv:bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTV6filter, i64 16), ptr %i.f, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.e, ptr %i.i, align 8, !tbaa !16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !8
  ret i32 %i.e
}
end_hunk_1
begin_hunk_2_@_ZN6filter3outEv:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !16
  %i.h = srem i32 %i.f, %i.g
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.b, label %bb.c
end_hunk_2
begin_hunk_3_@putchar
!13 = !{!"vtable pointer", !7, i64 0}
!14 = !{!15, !5, i64 16}
!15 = !{!"_ZTS7counter", !9, i64 0, !5, i64 16}
!16 = !{!17, !5, i64 16}
!17 = !{!"_ZTS6filter", !9, i64 0, !5, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
end_hunk_3
