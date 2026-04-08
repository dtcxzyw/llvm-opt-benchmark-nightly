inline.NumInlined: 17
inline.NumDeleted: 11
begin_hunk_0_@_ZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPv:bb.a
  br label %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26

_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26: ; preds = %bb.aa, %bb.ab
  call void %i.ap(ptr noundef nonnull %i.a), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bg = load i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, align 8, !tbaa !35, !range !21, !noundef !22
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPv:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26, %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 8), align 8, !tbaa !38, !range !21, !noundef !22
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ad, label %bb.ag

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_20250512L23SetupAlternateStackOnceEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.h, align 8, !tbaa !39
  %i.i = tail call ptr @mmap(ptr noundef null, i64 noundef %i.f, i32 noundef 3, i32 noundef 131106, i32 noundef -1, i64 noundef 0) #15 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_20250512L23SetupAlternateStackOnceEv:bb.a
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = load i64, ptr %i.h, align 8, !tbaa !39
  %i.p = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.14) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret void
end_hunk_3
begin_hunk_4_@llvm.umax.i64
!34 = !{!"_ZTSN4absl12lts_2025051214WriterFnStructE", !10, i64 0}
!35 = !{!20, !16, i64 0}
!36 = !{!20, !10, i64 16}
!37 = distinct !{null, null}
!38 = !{!20, !16, i64 8}
!39 = !{!40, !28, i64 16}
!40 = !{!"_ZTS7stack_t", !10, i64 0, !4, i64 8, !28, i64 16}
!41 = !{!40, !10, i64 0}
end_hunk_4
