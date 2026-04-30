inline.NumInlined: 57
inline.NumDeleted: 4
begin_hunk_0_@Huffmancodebits:bb.a
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %.preheader171, label %bb.l

.loopexit:                                        ; preds = %._crit_edge.split.us184, %.preheader171, %._crit_edge.split.us.us.us.2
  %.us-phi186 = phi i32 [ %.0107187, %.preheader171 ], [ %.0107187, %._crit_edge.split.us.us.us.2 ], [ %i.cq, %._crit_edge.split.us184 ] ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next210, 13
  br i1 %exitcond212.not, label %.loopexit172, label %.preheader171, !llvm.loop !101

end_hunk_0
begin_hunk_1_@Huffmancodebits:bb.a
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.split.us
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %HuffmanCode.exit.us.us.us

end_hunk_1
begin_hunk_2_@Huffmancodebits:bb.a
  store ptr %i.am, ptr %0, align 8, !tbaa !15
  %i.an = add nsw i32 %.0104177.us.us.us.2, 2     ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.p
  br i1 %i.ao, label %HuffmanCode.exit.us.us.us.2, label %._crit_edge.split.us.us.us.2, !llvm.loop !102

._crit_edge.split.us.us.us.2:                     ; preds = %HuffmanCode.exit.us.us.us.2
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  store i32 0, ptr %i.d, align 4
  br label %.loopexit

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us184
  %indvars.iv205 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next206, %._crit_edge.split.us184 ] ; 3 uses
end_hunk_2
