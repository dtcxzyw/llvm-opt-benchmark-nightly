inline.NumInlined: 31
inline.NumDeleted: 28
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_:bb.a
bb.c:                                             ; preds = %.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void %i.d(ptr noundef nonnull %.012)
  br label %.loopexit

bb.d:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.012, i64 noundef 32) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g acquire, align 4
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc
!21 = !{!5, !5, i64 0}
!22 = !{!23, !16, i64 24}
!23 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordRepExternalE", !8, i64 0, !15, i64 16, !16, i64 24}
!24 = !{!25, !26, i64 24}
!25 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !8, i64 0, !9, i64 16, !26, i64 24}
!26 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !16, i64 0}
end_hunk_1
