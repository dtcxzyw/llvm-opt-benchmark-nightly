inline.NumInlined: 797
inline.NumDeleted: 345
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.ii = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ij = load ptr, ptr %8, align 8, !tbaa !64    ; 4 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.ph635, i64 noundef %i.jd) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.jm, ptr %5, align 8, !tbaa !64
  store ptr %i.jq, ptr %i.ah, align 8, !tbaa !65
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jk ; 2 uses
  store ptr %i.jr, ptr %i.ai, align 8, !tbaa !61
  %.pre355 = load ptr, ptr %8, align 8, !tbaa !64
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.at
  %i.js = phi ptr [ %i.jm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.ph, %bb.at ] ; 3 uses
  %i.jt = phi ptr [ %i.jr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.in, %bb.at ] ; 3 uses
  %i.ju = phi ptr [ %i.jq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ja, %bb.at ] ; 3 uses
  %i.jv = phi ptr [ %.pre355, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ij, %bb.at ] ; 2 uses
  %i.jw = phi ptr [ %i.jm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.ph635, %bb.at ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ju, %i.jt
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.bb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kc) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1: ; preds = %bb.bb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.1
  store ptr %i.kk, ptr %5, align 8, !tbaa !64
  store ptr %i.ko, ptr %i.ah, align 8, !tbaa !65
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ki ; 2 uses
  store ptr %i.kp, ptr %i.ai, align 8, !tbaa !61
  %.pre356 = load ptr, ptr %8, align 8, !tbaa !64
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.1:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.1, %bb.ay
end_hunk_2
