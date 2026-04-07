begin_hunk_0_@_ZN4absl12lts_2025051218RemoveCrc32cPrefixENS0_8crc32c_tES1_m:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.a, i64 noundef %2)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3
  %i.l = xor i32 %i.k, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218RemoveCrc32cPrefixENS0_8crc32c_tES1_m:bb.a
; Function Attrs: mustprogress uwtable
define i32 @_ZN4absl12lts_2025051212MemcpyCrc32cEPvPKvmNS0_8crc32c_tE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines acquire, align 8, !noalias !13
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines) #4, !noalias !13
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke { ptr, ptr } @_ZN4absl12lts_2025051212crc_internal9CrcMemcpy22GetArchSpecificEnginesEv()
          to label %bb.d unwind label %bb.e, !noalias !13 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  store ptr %i.e, ptr @_ZZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines, align 8, !noalias !13
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines, i64 8), align 8, !noalias !13
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines), !noalias !13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines) #4, !noalias !13
  br label %_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines) #4, !noalias !13
  resume { ptr, i32 } %i.h

_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load ptr, ptr @_ZZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEbE7engines, align 8, !noalias !13 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11, !noalias !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !13
  %i.m = tail call i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 %3)
  ret i32 %i.m
}

end_hunk_1
begin_hunk_2_@llvm.invariant.start.p0
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !6, i64 0}
!13 = !{!14, !16, !17, !19}
!14 = distinct !{!14, !15, !"_ZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEb: argument 0"}
!15 = distinct !{!15, !"_ZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEb"}
!16 = distinct !{!16, !15, !"_ZN4absl12lts_2025051212crc_internal9CrcMemcpy10CrcAndCopyEPvPKvmNS0_8crc32c_tEb: argument 1"}
!17 = distinct !{!17, !18, !"_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb: argument 0"}
!18 = distinct !{!18, !"_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb"}
!19 = distinct !{!19, !18, !"_ZN4absl12lts_2025051212crc_internal13Crc32CAndCopyEPvPKvmNS0_8crc32c_tEb: argument 1"}
end_hunk_2
