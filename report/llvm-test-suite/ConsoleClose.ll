inline.NumInlined: 2
begin_hunk_0_@_ZN13NConsoleClose18CCtrlHandlerSetterD0Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN13NConsoleClose18CCtrlHandlerSetterE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr @signal(i32 noundef 2, ptr noundef %i.b) #8, !inline_history !16 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call ptr @signal(i32 noundef 15, ptr noundef %i.e) #8, !inline_history !16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #11
  ret void
}
end_hunk_0
begin_hunk_1_@exit
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!11, !12, i64 16}
!16 = !{ptr @_ZN13NConsoleClose18CCtrlHandlerSetterD2Ev}
end_hunk_1
