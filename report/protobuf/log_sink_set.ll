inline.NumInlined: 289
inline.NumDeleted: 175
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !38 ; 7 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !38 ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !41
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %3) #20
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_1
