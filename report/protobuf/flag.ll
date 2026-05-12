inline.NumInlined: 600
inline.NumDeleted: 245
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal8FlagImpl10StoreValueEPKvNS1_11ValueSourceE:bb.a
  %i.be = phi ptr [ %i.ba, %bb.j ], [ %i.az, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FreelistMutexEv.exit.i ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  %.not.i1.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i1.i, label %bb.o, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal8FlagImpl10StoreValueEPKvNS1_11ValueSourceE:bb.a
bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !17 ; 4 uses
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051214flags_internal8FlagImpl10StoreValueEPKvNS1_11ValueSourceE:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
end_hunk_2
