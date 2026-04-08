inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZN9NCompress4NLzx20Cx86ConvertOutStreamD0Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9NCompress4NLzx20Cx86ConvertOutStreamD2Ev.exit unwind label %bb.c, !inline_history !31 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #11, !inline_history !31
  unreachable

_ZN9NCompress4NLzx20Cx86ConvertOutStreamD2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!28 = !{!9, !5, i64 24}
!29 = !{!15, !15, i64 0}
!30 = !{!12, !5, i64 0}
!31 = !{ptr @_ZN9NCompress4NLzx20Cx86ConvertOutStreamD2Ev}
end_hunk_1
