inline.NumInlined: 27259
inline.NumDeleted: 5979
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %.noexc.i.i203, %bb.gx, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #39, !noalias !7773
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.wg
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.gr, !llvm.loop !7785

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br i1 %.not.i233, label %._crit_edge.thread.i, label %.lr.ph.i234.preheader

.lr.ph.i234.preheader:                            ; preds = %bb.ip
  %.sroa.5.i.4.i.4.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  %.sroa.5.i.4.i.4.i.4.i.4.i.4..sroa_idx1491 = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  br label %.lr.ph.i234
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.aem = or i1 %.076.i, %i.aeh                  ; 2 uses
  %i.aen = add nuw i64 %storemerge75.i, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aen, %i.adj
  br i1 %exitcond.not, label %._crit_edge.i238, label %.lr.ph.i234, !llvm.loop !7808

bb.jb:                                            ; preds = %._crit_edge.i238
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br i1 %.not.i286, label %._crit_edge.thread.i330, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit.i
  %.sroa.5.i283.4.i283.4.i283.4.i283.4.i283.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i283, i64 4
  %.sroa.5.i283.4.i283.4.i283.4.i283.4.i283.4..sroa_idx1492 = getelementptr inbounds nuw i8, ptr %.sroa.5.i283, i64 4
  br label %.lr.ph.i287
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i288, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i283, i64 12, i1 false), !tbaa.struct !7807, !noalias !7831
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i283)
  %i.amp = or i1 %.02265.i, %i.amj                ; 2 uses
  %exitcond693.not = icmp eq i64 %i.alt, %i.alk
  br i1 %exitcond693.not, label %._crit_edge.i289, label %.lr.ph.i287, !llvm.loop !7840

bb.kx:                                            ; preds = %bb.kp
end_hunk_4
