inline.NumInlined: 1567
inline.NumDeleted: 831
begin_hunk_0_@_ZN6hermes3hbc19RecreateCheapValues13runOnFunctionEPNS_8FunctionE:bb.a

._crit_edge78:                                    ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit
  %.1.lcssa119121.lcssa = phi i1 [ %.1.lcssa119121, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit ] ; 2 uses
  %.pre86 = load ptr, ptr %i.e, align 8, !tbaa !187 ; 8 uses
  %.pre87 = load ptr, ptr %3, align 8, !tbaa !185
  %.pre88 = load i32, ptr %i.g, align 4
  %.pre89 = load i32, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc19RecreateCheapValues13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph.i5.i.i7.i5.i:                              ; preds = %.lr.ph.i5.i.i7.i5.i.preheader, %.critedge2.i7.i.i9.i11.i
  %lsr.iv128 = phi i64 [ 0, %.lr.ph.i5.i.i7.i5.i.preheader ], [ %lsr.iv.next129, %.critedge2.i7.i.i9.i11.i ] ; 3 uses
  %.sroa.0.3.i6.i = phi ptr [ %6, %.critedge2.i7.i.i9.i11.i ], [ %.pre86, %.lr.ph.i5.i.i7.i5.i.preheader ] ; 2 uses
  %scevgep133 = getelementptr i8, ptr %.pre86, i64 %lsr.iv128
  %i.x = load ptr, ptr %scevgep133, align 8, !tbaa !84
  %switch.i6.i.i8.i7.i = icmp ugt ptr %i.x, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i, label %.critedge2.i7.i.i9.i11.i, label %.lr.ph.i5.i.i7.i5.i._ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit_crit_edge

.critedge2.i7.i.i9.i11.i:                         ; preds = %.lr.ph.i5.i.i7.i5.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 8
  %lsr.iv.next129 = add nuw nsw i64 %lsr.iv128, 8 ; 2 uses
  %tmp132 = inttoptr i64 %lsr.iv.next129 to ptr
  %.not.i8.i.i10.i12.i = icmp eq ptr %.idx.i131, %tmp132
  br i1 %.not.i8.i.i10.i12.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexitsplit, label %.lr.ph.i5.i.i7.i5.i, !llvm.loop !191

_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexitsplit: ; preds = %.critedge2.i7.i.i9.i11.i
  %.sroa.0.4.i8.i.ph.ph = phi ptr [ %i.w, %.critedge2.i7.i.i9.i11.i ]
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit

.lr.ph.i5.i.i7.i5.i._ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i5.i.i7.i5.i
  %lsr.iv128.lcssa = phi i64 [ %lsr.iv128, %.lr.ph.i5.i.i7.i5.i ]
  %split = phi ptr [ %.sroa.0.3.i6.i, %.lr.ph.i5.i.i7.i5.i ] ; 0 uses
  %scevgep130 = getelementptr i8, ptr %.pre86, i64 %lsr.iv128.lcssa
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit

_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit: ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexitsplit, %.lr.ph.i5.i.i7.i5.i._ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit_crit_edge
  %.sroa.0.4.i8.i.ph = phi ptr [ %scevgep130, %.lr.ph.i5.i.i7.i5.i._ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit_crit_edge ], [ %.sroa.0.4.i8.i.ph.ph, %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexitsplit ]
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit

_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit: ; preds = %._crit_edge78._ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit_crit_edge, %_ZNK4llvh15SmallPtrSetImplIPN6hermes11InstructionEE5beginEv.exit.loopexit, %._crit_edge78.thread
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc19RecreateCheapValues13runOnFunctionEPNS_8FunctionE:bb.a
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i.preheader, %.critedge2.i6.i
  %.sroa.049.1 = phi ptr [ %i.cy, %.critedge2.i6.i ], [ %i.cw, %.lr.ph.i4.i.preheader ] ; 4 uses
  %i.cx = load ptr, ptr %.sroa.049.1, align 8, !tbaa !84
  %switch.i5.i = icmp ugt ptr %i.cx, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i, label %.critedge2.i6.i, label %.lr.ph.i4.i._ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit_crit_edge
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc19RecreateCheapValues13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit

.lr.ph.i4.i._ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i4.i
  %.sroa.049.1.lcssa = phi ptr [ %.sroa.049.1, %.lr.ph.i4.i ]
  %.sroa.049.1.lcssa.a = phi ptr [ %.sroa.049.1, %.lr.ph.i4.i ] ; 0 uses
  br label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit

_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit: ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexitsplit, %.lr.ph.i4.i._ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit_crit_edge
  %.sroa.049.2.ph = phi ptr [ %.sroa.049.1.lcssa, %.lr.ph.i4.i._ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit_crit_edge ], [ %.lcssa, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexitsplit ]
  br label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit

_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit: ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes11InstructionEEppEv.exit.loopexit, %bb.r
end_hunk_3
