inline.NumInlined: 3425
inline.NumDeleted: 1710
begin_hunk_0_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  store atomic i64 %i.cc, ptr %i.cd seq_cst, align 8, !noalias !314
  %i.ce = load i8, ptr %i.n, align 8, !tbaa !297, !range !240, !noalias !314, !noundef !241
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  br label %.invoke

.invoke:                                          ; preds = %14, %bb.ag, %bb.t
  %9 = phi ptr [ %i.bz, %bb.t ], [ %i.dx, %bb.ag ], [ %i.bz, %14 ]
  %.in106 = phi ptr [ %i.cg, %bb.t ], [ %11, %bb.ag ], [ %15, %14 ]
  %10 = phi i64 [ %i.cc, %bb.t ], [ %13, %bb.ag ], [ %17, %14 ]
  %i.ch = xor i1 %i.x, true
  %i.ci = load i64, ptr %.in106, align 8, !tbaa !237, !noalias !308
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %9, i64 noundef %i.ci, i64 noundef %10, i1 noundef zeroext %i.ch)
          to label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator19AllNullShortCircuitEv.exit.sink.split.i unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
bb.ag:                                            ; preds = %.noexc12
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !307, !noalias !314
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !296, !noalias !314 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %13 = load i64, ptr %12, align 8, !tbaa !176, !noalias !314
  br label %.invoke

bb.ah:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !296, !noalias !308 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.ea seq_cst, align 8, !noalias !308
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  store atomic i64 0, ptr %i.ea seq_cst, align 8, !noalias !308
  %i.ed = load i8, ptr %i.n, align 8, !tbaa !297, !range !240, !noalias !308, !noundef !241
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %14, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator19AllNullShortCircuitEv.exit.sink.split.i

14:                                               ; preds = %bb.ai
  %15 = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !176, !noalias !308
  br label %.invoke

bb.aj:                                            ; preds = %bb.ah
  %i.ef = ptrtoint ptr %i.v to i64
end_hunk_2
