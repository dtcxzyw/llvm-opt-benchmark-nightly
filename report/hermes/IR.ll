inline.NumInlined: 3701
inline.NumDeleted: 2010
begin_hunk_0_@_ZN6hermes6Module17addGlobalPropertyENS_10IdentifierEb:bb.a
bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !364, !range !105, !noundef !106
  %4 = zext i1 %2 to i8
  %5 = or i8 %i.an, %4
  store i8 %5, ptr %i.am, align 8, !tbaa !364
  br label %_ZNSt6vectorIPN6hermes20GlobalObjectPropertyESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes20GlobalObjectPropertyESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes20GlobalObjectPropertyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.h
end_hunk_0
