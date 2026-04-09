inline.NumInlined: 3398
inline.NumDeleted: 948
begin_hunk_0_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bw, ptr null, !prof !53 ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !28
  %i.by = sext i32 %i.z to i64                    ; 22 uses
  %i.bz = mul nsw i64 %i.be, %i.by
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.26") align 8 %12, i64 noundef %i.bz, ptr noundef %3)
          to label %bb.w unwind label %bb.y
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a

.lr.ph.i.i.i.i.i.preheader.us.preheader.i:        ; preds = %.lr.ph.i
  %i.dl = and i64 %i.by, -4
  %scevgep.i = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %scevgep.i.a = getelementptr i8, ptr %scevgep.i, i64 -4
  %i.dm = and i64 %i.by, 3
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.thread.us.i, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i
  %indvars.iv425.i = phi ptr [ %scevgep.i.a, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %scevgep426.i, %.thread.us.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep.i, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %scevgep423.i, %.thread.us.i ] ; 5 uses
  %.0237355.us.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %i.em, %.thread.us.i ] ; 5 uses
  %.0240353.us.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %i.dn, %.thread.us.i ] ; 4 uses
  %.0241351.us.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %.1242.us.i, %.thread.us.i ] ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.047.i.i.i.i.i.us.i = phi i64 [ %i.dw, %bb.ag ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 2 uses
  %.02946.i.i.i.i.i.us.i = phi ptr [ %i.dv, %bb.ag ], [ %.0240353.us.i, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 9 uses
  %i.do = load i8, ptr %.02946.i.i.i.i.i.us.i, align 1, !tbaa !7
  %.not.us.i = icmp eq i8 %i.do, 0
  br i1 %.not.us.i, label %bb.ad, label %.loopexit.us.i
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  br i1 %.not336.us.i, label %bb.ai, label %.loopexit.us.i

bb.ai:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %indvars.iv425.i, i64 5
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.loopexit.us.i, %bb.ai
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  %.1242.us.i = phi ptr [ %i.el, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i ], [ %.0241351.us.i, %.loopexit.us.i ], [ %.0241351.us.i, %._crit_edge.i.i.i.i.i.loopexit.us.i ], [ %.0241351.us.i, %bb.al ]
  %i.em = add nuw nsw i64 %.0237355.us.i, 1       ; 2 uses
  %scevgep423.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.by
  %scevgep426.i = getelementptr i8, ptr %indvars.iv425.i, i64 %i.by
  %exitcond424.not.i = icmp eq i64 %i.em, %i.dd
  br i1 %exitcond424.not.i, label %.loopexit340.i, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !84

end_hunk_4
