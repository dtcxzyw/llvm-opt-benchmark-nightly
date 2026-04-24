inline.NumInlined: 39732
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCallKnownJSFunctionEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS5_6VectorIS4_EE:bb.a

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bl = and i64 %i.d, 4294967295
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCallKnownJSFunctionEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS5_6VectorIS4_EE:bb.a
  %i.bs = sub nuw nsw i64 -4, %indvars.iv.i.i.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bs
  store ptr %i.bo, ptr %i.bt, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i, %i.bl
  br i1 %exitcond.not, label %"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit", label %.lr.ph.i.i.i, !llvm.loop !170

"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit": ; preds = %.lr.ph.i.i.i, %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
end_hunk_1
