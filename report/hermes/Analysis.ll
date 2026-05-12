inline.NumInlined: 1525
inline.NumDeleted: 715
begin_hunk_0_@_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE:bb.a
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %i.bm = phi i32 [ %.val925, %bb.c ], [ %.val9, %bb.m ] ; 2 uses
  %.lcssa23 = phi ptr [ %i.s, %bb.c ], [ %i.bh, %bb.m ]
  %i.bn = getelementptr inbounds i8, ptr %.lcssa23, i64 -40 ; 2 uses
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !33  ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE:bb.a
bb.o:                                             ; preds = %._crit_edge
  %i.bs = load ptr, ptr %1, align 8, !tbaa !38    ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.p, label %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #14
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.r ], [ %i.bm, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i ]
  store ptr %i.cd, ptr %1, align 8, !tbaa !38
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.q, align 8, !tbaa !36
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
end_hunk_3
