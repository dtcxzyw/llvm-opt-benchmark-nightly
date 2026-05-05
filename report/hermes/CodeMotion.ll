inline.NumInlined: 313
inline.NumDeleted: 229
begin_hunk_0_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %lsr.iv = phi i64 [ %.idx.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %lsr.iv.next, %bb.e ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexitsplit, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexitsplit: ; preds = %bb.e
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit

.lr.ph.i.i.i.i.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.lcssa.a = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ]
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit: ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexitsplit, %.lr.ph.i.i.i.i.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit_crit_edge
  %.sroa.0.1.i.i.i.ph = phi ptr [ %.sroa.0.0.i.i.i.lcssa.a, %.lr.ph.i.i.i.i.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit_crit_edge ], [ %i.w, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexitsplit ]
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.loopexit, %bb.d
end_hunk_1
begin_hunk_2_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i.preheader, %bb.f
  %.sroa.02.1.i.i.i = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %.lr.ph.i.i.i7.i.i.preheader ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !13
end_hunk_2
begin_hunk_3_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit

.lr.ph.i.i.i7.i.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i7.i.i
  %.sroa.02.1.i.i.i.lcssa.a = phi ptr [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ]
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexitsplit, %.lr.ph.i.i.i7.i.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit_crit_edge
  %.sroa.02.2.i.i.i.ph = phi ptr [ %.sroa.02.1.i.i.i.lcssa.a, %.lr.ph.i.i.i7.i.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit_crit_edge ], [ %.lcssa115, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexitsplit ]
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i.loopexit, %.lr.ph.i.i.i
end_hunk_3
begin_hunk_4_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph.i.i.i.i51.i:                               ; preds = %.lr.ph.i.i.i.i51.i.preheader, %bb.h
  %lsr.iv117 = phi i64 [ %.idx.i.i.i49.i, %.lr.ph.i.i.i.i51.i.preheader ], [ %lsr.iv.next118, %bb.h ]
  %.sroa.0.0.i.i52.i = phi ptr [ %i.ax, %bb.h ], [ %i.an, %.lr.ph.i.i.i.i51.i.preheader ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i52.i, align 8, !tbaa !26 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !13
end_hunk_4
begin_hunk_5_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not.i.i.i.i71.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexitsplit, label %.lr.ph.i.i.i.i51.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexitsplit: ; preds = %bb.h
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit

.lr.ph.i.i.i.i51.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i.i51.i
  %.sroa.0.0.i.i52.i.lcssa.a = phi ptr [ %.sroa.0.0.i.i52.i, %.lr.ph.i.i.i.i51.i ]
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit: ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexitsplit, %.lr.ph.i.i.i.i51.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit_crit_edge
  %.sroa.0.1.i.i56.i.ph = phi ptr [ %.sroa.0.0.i.i52.i.lcssa.a, %.lr.ph.i.i.i.i51.i._ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit_crit_edge ], [ %i.ar, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexitsplit ]
  br label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i: ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i.loopexit, %bb.g
end_hunk_5
begin_hunk_6_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br label %.lr.ph.i.i.i7.i62.i

.lr.ph.i.i.i7.i62.i:                              ; preds = %.lr.ph.i.i.i7.i62.i.preheader, %bb.i
  %.sroa.02.1.i.i63.i = phi ptr [ %i.bf, %bb.i ], [ %i.az, %.lr.ph.i.i.i7.i62.i.preheader ] ; 3 uses
  %i.ba = load ptr, ptr %.sroa.02.1.i.i63.i, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !13
end_hunk_6
begin_hunk_7_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit

.lr.ph.i.i.i7.i62.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i7.i62.i
  %.sroa.02.1.i.i63.i.lcssa.a = phi ptr [ %.sroa.02.1.i.i63.i, %.lr.ph.i.i.i7.i62.i ]
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexitsplit, %.lr.ph.i.i.i7.i62.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit_crit_edge
  %.sroa.02.2.i.i67.i.ph = phi ptr [ %.sroa.02.1.i.i63.i.lcssa.a, %.lr.ph.i.i.i7.i62.i._ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit_crit_edge ], [ %.lcssa121, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexitsplit ]
  br label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i.loopexit, %.lr.ph.i.i58.i
end_hunk_7
