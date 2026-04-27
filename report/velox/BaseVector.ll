inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZN8facebook5velox10BaseVector23createEmptyLikeInternalEPKS1_iPNS0_6memory10MemoryPoolE:bb.a

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ad, ptr %9, align 8, !tbaa !659
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !656
  %20 = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aa
  store ptr %20, ptr %i.ab, align 8, !tbaa !657
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !633
  %.pre142 = load ptr, ptr %i.s, align 8, !tbaa !636
  %.pre145 = ptrtoint ptr %.pre to i64
  %.pre146.a = ptrtoint ptr %.pre142 to i64
  %.pre148 = sub i64 %.pre145, %.pre146.a
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10BaseVector12toCopyRangesERKNS0_17SelectivityVectorE:bb.a
bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !916
  %i.ag = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #49 ; 5 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1270
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
end_hunk_1
