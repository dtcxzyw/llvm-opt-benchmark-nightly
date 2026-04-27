inline.NumInlined: 11502
inline.NumDeleted: 2542
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_110newFlatMapERKNS0_24EncodedVectorCopyOptionsERKNS0_13FlatMapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ea, ptr %17, align 8, !tbaa !246
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !245
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dw
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !461
  %.pre = load i32, ptr %i.du, align 8, !tbaa !60
  %i.ed = icmp eq i32 %.pre, 0
  br i1 %i.ed, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit
end_hunk_0
