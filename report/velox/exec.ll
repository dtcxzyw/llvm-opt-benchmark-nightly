inline.NumInlined: 3425
inline.NumDeleted: 1710
begin_hunk_0_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  store atomic i64 %i.cc, ptr %i.cd seq_cst, align 8, !noalias !314
  %i.ce = load i8, ptr %i.n, align 8, !tbaa !297, !range !240, !noalias !314, !noundef !241
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %.invoke, label %bb.u

bb.t:                                             ; preds = %bb.ai, %bb.ag
  %.sink120 = phi ptr [ %i.dy, %bb.ag ], [ %i.dz, %bb.ai ] ; 2 uses
  %.ph = phi ptr [ %i.dx, %bb.ag ], [ %i.bz, %bb.ai ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink120, i64 16
  %9 = load i64, ptr %i.cg, align 8, !tbaa !176, !noalias !308
  br label %.invoke

.invoke:                                          ; preds = %bb.t, %bb.s
  %10 = phi ptr [ %i.bz, %bb.s ], [ %.ph, %bb.t ]
  %.pn = phi ptr [ %i.ca, %bb.s ], [ %.sink120, %bb.t ]
  %11 = phi i64 [ %i.cc, %bb.s ], [ %9, %bb.t ]
  %i.ch = xor i1 %i.x, true
  %.in106 = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.ci = load i64, ptr %.in106, align 8, !tbaa !237, !noalias !308
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %10, i64 noundef %i.ci, i64 noundef %11, i1 noundef zeroext %i.ch)
          to label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator19AllNullShortCircuitEv.exit.sink.split.i unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
bb.ag:                                            ; preds = %.noexc12
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !307, !noalias !314
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !296, !noalias !314
  br label %bb.t

bb.ah:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !296, !noalias !308 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.ea seq_cst, align 8, !noalias !308
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  store atomic i64 0, ptr %i.ea seq_cst, align 8, !noalias !308
  %i.ed = load i8, ptr %i.n, align 8, !tbaa !297, !range !240, !noalias !308, !noundef !241
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.t, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator19AllNullShortCircuitEv.exit.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.ef = ptrtoint ptr %i.v to i64
end_hunk_2
