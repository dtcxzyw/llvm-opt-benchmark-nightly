inline.NumInlined: 293
inline.NumDeleted: 118
begin_hunk_0_@_ZNK4absl12lts_202505129Condition4EvalEv:bb.a
; Function Attrs: cold mustprogress noinline optsize uwtable
define void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  tail call void @_ZNK4absl12lts_202505125Mutex16AssertReaderHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call fastcc void @_ZN4absl12lts_20250512L23CheckForMutexCorruptionElPKc(i64 noundef %i.b, ptr noundef nonnull @.str.14)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %.0159 = or i64 %.pn200, %i.au
  %i.ay = cmpxchg weak ptr %0, i64 %i.aj, i64 %.0159 release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit, label %bb.o, !llvm.loop !99

bb.q:                                             ; preds = %bb.l
  %i.ba = and i64 %i.o, -256
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bi = add nsw i64 %i.be, -256
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !75
  br i1 %i.f, label %2, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bb, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef 2) ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.o, 191
  %i.bm = or i64 %i.bl, %i.bk
  br label %2

2:                                                ; preds = %bb.v, %bb.s
  %.0162 = phi i64 [ %i.bm, %bb.v ], [ %i.o, %bb.s ]
  store atomic i64 %.0162, ptr %0 release, align 8
  br label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

bb.w:                                             ; preds = %bb.q, %bb.r
  %i.bn = icmp eq ptr %.0147.ph, null             ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  store i64 0, ptr %i.co, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 19
  store i8 0, ptr %i.cp, align 1, !tbaa !76
  br i1 %i.f, label %3, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cq = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bb, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef 2)
  %i.cr = and i64 %i.o, 150
  %i.cs = ptrtoint ptr %i.cq to i64
  %.0149 = or i64 %i.cr, %i.cs
  br label %3

3:                                                ; preds = %bb.aj, %bb.ai
  %.1150 = phi i64 [ %.0149, %bb.aj ], [ %i.cn, %bb.ai ]
  store atomic i64 %.1150, ptr %0 release, align 8
  br label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

bb.ak:                                            ; preds = %bb.ah
  %..0147 = select i1 %i.bn, ptr %i.bb, ptr %.0147.ph
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a

bb.bm:                                            ; preds = %bb.bk
  %.not190 = icmp eq ptr %.0163, null
  br i1 %.not190, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gk = getelementptr inbounds nuw i8, ptr %.0163, i64 40
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %i.gn = or i64 %.4155391, %i.gm
  %i.go = or i64 %i.gn, %i.gh
  %i.gp = or i64 %i.go, 6
  br label %bb.bo

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit216, %bb.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit217
  %i.gq = tail call noundef i32 @_ZN4absl12lts_2025051224synchronization_internal10MutexDelayEii(i32 noundef %.0127, i32 noundef 0), !llvm.loop !105
  br label %bb.g

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0128 = phi i64 [ %i.gp, %bb.bn ], [ %i.gi, %bb.bm ]
  store atomic i64 %.0128, ptr %0 release, align 8
  %i.gr = load atomic ptr, ptr @_ZN4absl12lts_2025051213base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bp, label %bb.bq
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a

_ZN4absl12lts_202505125Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %bb.bs, %bb.br
  %.1 = phi i64 [ %.0249, %bb.br ], [ %i.hh, %bb.bs ] ; 4 uses
  %i.hj = load ptr, ptr %.0..0.229, align 8, !tbaa !57 ; 2 uses
  store ptr null, ptr %.0..0.229, align 8, !tbaa !57
  %i.hk = getelementptr inbounds nuw i8, ptr %.0..0.229, i64 28
  store atomic i32 0, ptr %i.hk release, align 4
  tail call void @AbslInternalPerThreadSemPost_lts_20250512(ptr noundef nonnull %.0..0.229)
  %.not202 = icmp eq ptr %i.hj, inttoptr (i64 1 to ptr)
  br i1 %.not202, label %bb.bt, label %bb.br, !llvm.loop !108

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  tail call void %i.hn(i64 noundef %.1), !inline_history !110
  br label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit217, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit216, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %3, %2, %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvPKcPKvlEEclIJRA13_S3_PNS0_5MutexERlEEEvDpOT_.exit, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}
end_hunk_8
