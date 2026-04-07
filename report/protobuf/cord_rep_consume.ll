begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE:bb.a
_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  tail call void %2(ptr %1, ptr noundef %.0, i64 noundef %.07, i64 noundef %i.a)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal14ReverseConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE:bb.a
_ZN4absl12lts_2025051213cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  tail call void %2(ptr %1, ptr noundef %.0.i, i64 noundef %.07.i, i64 noundef %i.a)
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!15, !16, i64 24}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_2
