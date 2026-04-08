inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@_ZN4llvh14raw_os_ostreamD0Ev:bb.a
  br i1 %.not.i.i, label %_ZN4llvh14raw_os_ostreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4
  br label %_ZN4llvh14raw_os_ostreamD2Ev.exit

_ZN4llvh14raw_os_ostreamD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(48) %0) #4
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #5
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN4llvh14raw_os_ostream10write_implEPKcm
define hidden void @_ZN4llvh14raw_os_ostream10write_implEPKcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15, !nonnull !18, !align !19
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) #4 ; 0 uses
  ret void
}
end_hunk_1
begin_hunk_2_@_ZNK4llvh14raw_os_ostream11current_posEv
define hidden noundef i64 @_ZNK4llvh14raw_os_ostream11current_posEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15, !nonnull !18, !align !19
  %i.c = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #4
  %i.d = extractvalue { i64, i64 } %i.c, 0
  ret i64 %i.d
end_hunk_2
begin_hunk_3_@_ZN4llvh11raw_ostream14flush_nonemptyEv
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!14 = !{!10, !11, i64 8}
!15 = !{!16, !17, i64 40}
!16 = !{!"_ZTSN4llvh14raw_os_ostreamE", !10, i64 0, !17, i64 40}
!17 = !{!"p1 _ZTSSo", !12, i64 0}
!18 = !{}
!19 = !{i64 8}
end_hunk_3
