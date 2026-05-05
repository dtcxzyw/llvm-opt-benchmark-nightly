inline.NumInlined: 118
inline.NumDeleted: 23
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal11Encode64BitEmmPNS0_4SpanIcEE:bb.a
  br i1 %i.e, label %_ZN4absl12lts_2025051212log_internal10VarintSizeEm.exit, label %tailrecurse.i

_ZN4absl12lts_2025051212log_internal10VarintSizeEm.exit: ; preds = %tailrecurse.i
  %accumulator.tr2.i.lcssa = phi i64 [ %lsr.iv.next, %tailrecurse.i ] ; 4 uses
  %i.f = add nuw i64 %accumulator.tr2.i.lcssa, 2  ; 2 uses
  %i.g = add nuw i64 %accumulator.tr2.i.lcssa, 10
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal11Encode64BitEmmPNS0_4SpanIcEE:bb.a
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.l = lshr i64 %lsr.iv45, 2
  %i.m = shl nuw nsw i64 %i.l, 2
  br label %.lr.ph.i

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212log_internal11Encode64BitEmmPNS0_4SpanIcEE:bb.a
  %.01012.i.epil.init = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %.lcssa38, %._crit_edge.loopexit.peel.begin.i.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.q = trunc i64 %lsr.iv45 to i2
  %i.r = zext i2 %i.q to i64
  br label %.lr.ph.i.epil

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051212log_internal11Encode32BitEmjPNS0_4SpanIcEE:bb.a
  br i1 %i.e, label %_ZN4absl12lts_2025051212log_internal10VarintSizeEm.exit, label %tailrecurse.i

_ZN4absl12lts_2025051212log_internal10VarintSizeEm.exit: ; preds = %tailrecurse.i
  %accumulator.tr2.i.lcssa = phi i64 [ %lsr.iv.next, %tailrecurse.i ] ; 4 uses
  %i.f = add nuw i64 %accumulator.tr2.i.lcssa, 2  ; 2 uses
  %i.g = add nuw i64 %accumulator.tr2.i.lcssa, 6
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051212log_internal11Encode32BitEmjPNS0_4SpanIcEE:bb.a
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.l = lshr i64 %lsr.iv45, 2
  %i.m = shl nuw nsw i64 %i.l, 2
  br label %.lr.ph.i

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051212log_internal11Encode32BitEmjPNS0_4SpanIcEE:bb.a
  %.01012.i.epil.init = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %.lcssa38, %._crit_edge.loopexit.peel.begin.i.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.q = trunc i64 %lsr.iv45 to i2
  %i.r = zext i2 %i.q to i64
  br label %.lr.ph.i.epil

end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051212log_internal10ProtoField10DecodeFromEPNS0_4SpanIKcEE:bb.a
bb.d:                                             ; preds = %bb.b, %bb.c
  %lsr.iv82 = phi i64 [ 0, %bb.b ], [ %lsr.iv.next83, %bb.c ] ; 2 uses
  %lsr.iv = phi i64 [ 1, %bb.b ], [ %lsr.iv.next, %bb.c ] ; 3 uses
  %.010.i42 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]
  %scevgep = getelementptr i8, ptr %.pre.pre.i, i64 %lsr.iv
  %scevgep84 = getelementptr i8, ptr %scevgep, i64 -1
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051212log_internal10ProtoField10DecodeFromEPNS0_4SpanIKcEE:bb.a
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.h, %lsr.iv82
  %i.j = or i64 %i.i, %.010.i42                   ; 3 uses
  %.not.i = icmp sgt i8 %i.f, -1
  br i1 %.not.i, label %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit_crit_edge, label %bb.c, !llvm.loop !32

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exitsplit: ; preds = %bb.c
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit

._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit_crit_edge: ; preds = %bb.d
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.d ]
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit, !llvm.loop !32

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exitsplit, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit_crit_edge
  %.lcssa81 = phi i64 [ %i.j, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit_crit_edge ], [ %i.j, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exitsplit ] ; 2 uses
  %.1.i = phi i64 [ %lsr.iv.lcssa, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit_crit_edge ], [ %i.b, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exitsplit ] ; 4 uses
  %i.k = getelementptr i8, ptr %.pre.pre.i, i64 %.1.i ; 19 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !31
  %i.l = sub i64 %i.b, %.1.i                      ; 25 uses
end_hunk_7
