inline.NumInlined: 9982
inline.NumDeleted: 4210
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort18small_sort_generalTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB1f_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2q_:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 4 uses
  %i.g = sub nsw i64 %1, %i.c                     ; 2 uses
  %i.h = icmp samesign ult i64 %.sroa.0.0.i, %i.c
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.i, %bb.e
  %i.i = icmp ult i64 %.sroa.0.0.i, %i.g
  br i1 %i.i, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.1.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort18small_sort_generalTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB1f_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2q_:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.1.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.ad = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ad, %i.g
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort18small_sort_generalTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB1f_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2q_:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB18_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2j_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.cj = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %i.c
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1s_7sort_byNCNCNvNtNtB1A_10operations8optimize21build_compaction_plan0s0_0E0EB1A_:bb.a

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.cb = sub nsw i64 %1, %i.d                    ; 2 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.cc, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit, %bb.g
  %i.cd = getelementptr inbounds nuw [272 x i8], ptr %0, i64 %i.d
  %i.ce = getelementptr [272 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.cf = icmp ult i64 %.sroa.0.0, %i.cb
  br i1 %i.cf, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit.1
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1s_7sort_byNCNCNvNtNtB1A_10operations8optimize21build_compaction_plan0s0_0E0EB1A_:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit.1

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit.1: ; preds = %._crit_edge84, %.lr.ph.1
  %i.cq = add nuw i64 %.sroa.05.050.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cq, %i.cb
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1s_7sort_byNCNCNvNtNtB1A_10operations8optimize21build_compaction_plan0s0_0E0EB1A_:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB18_7sort_byNCNCNvNtNtB1g_10operations8optimize21build_compaction_plan0s0_0E0EB1g_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ek = add nuw i64 %.sroa.05.050, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nsw i64 %1, %i.d                    ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bt, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit, %bb.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [8 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.bw = icmp ult i64 %.sroa.0.0, %i.bs
  br i1 %i.bw, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.1
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.1

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.1: ; preds = %._crit_edge82, %.lr.ph.1
  %i.cg = add nuw i64 %.sroa.05.056.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cg, %i.bs
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dy = add nuw i64 %.sroa.05.056, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB15_NtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %3 = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %3)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortTjNtCslnB3YlOUCfj_9arrow_row3RowENCINvMB8_SB15_16sort_unstable_byNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch18lexsort_to_indicess_0E0EB2g_:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %3 = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %3)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
end_hunk_10
