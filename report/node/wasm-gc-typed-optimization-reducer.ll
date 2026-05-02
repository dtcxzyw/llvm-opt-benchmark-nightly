inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  br i1 %i.du, label %.loopexit20.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i, %.lr.ph31.i.i
  %.0 = phi i8 [ 1, %.lr.ph31.i.i ], [ %.1, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 3 uses
  %.03529.i.i = phi ptr [ %i.q, %.lr.ph31.i.i ], [ %i.fr, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i ] ; 2 uses
  %i.dv = load ptr, ptr %.03529.i.i, align 8      ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  br i1 %i.en, label %.lr.ph25.i.i.i, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i"

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i
  %.2 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ] ; 8 uses
  %.224.i.i.i = phi i64 [ %i.fe, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.012.023.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ] ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %.224.i.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i: ; preds = %bb.z, %bb.y
  %i.ey = icmp eq i32 %.sroa.07.0.i.i.i, %.fr2.i15.i.i.i
  %6 = icmp ne i8 %.2, 0
  %7 = and i1 %6, %i.ey
  %8 = zext i1 %7 to i8                           ; 2 uses
  %i.ez = icmp eq i32 %.sroa.012.023.i.i.i, 2
  %i.fa = icmp eq i32 %.fr2.i15.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.ez, %i.fa
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i: ; preds = %bb.aa, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.x, %.lr.ph25.i.i.i
  %.3 = phi i8 [ %.2, %bb.x ], [ %8, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %8, %bb.aa ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %bb.z ], [ %.2, %.lr.ph25.i.i.i ] ; 2 uses
  %.sroa.012.2.i.i.i = phi i32 [ %.sroa.012.023.i.i.i, %bb.x ], [ 2, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.i.i.i ], [ %i.fd, %bb.aa ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %bb.z ], [ %.sroa.012.023.i.i.i, %.lr.ph25.i.i.i ] ; 2 uses
  %i.fe = add i64 %.224.i.i.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %4
  br i1 %exitcond.not, label %"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i", label %.lr.ph25.i.i.i, !llvm.loop !22

"_ZZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEEENK3$_0clENS2_16SnapshotTableKeyIS8_S9_EENS5_IKS8_EE.exit.i.i": ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i, %.loopexit.i.i.i
  %.1 = phi i8 [ %.3, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.0, %.loopexit.i.i.i ], [ %.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 2 uses
  %.sroa.012.0.lcssa.i.i.i = phi i32 [ %.sroa.012.2.i.i.i, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit20.thread.i.i.i ], [ %.sroa.07.0.i.i.i, %.loopexit.i.i.i ], [ 514, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread.i.i.i ] ; 3 uses
  %i.ff = load i32, ptr %i.dv, align 4            ; 2 uses
  %.not18.i.i = icmp eq i32 %i.ff, %.sroa.012.0.lcssa.i.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS2_13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE8SnapshotEEENS5_IKbEE:bb.a
  br i1 %.not.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit", label %bb.t

"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit": ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS5_S6_EES5_.exit.i.i
  %9 = trunc nuw i8 %.1 to i1
  %i.fs = xor i1 %9, true
  br label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit"

"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit": ; preds = %"_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE16StartNewSnapshotIZNS2_18WasmGCTypeAnalyzer19CreateMergeSnapshotENS_4base6VectorIKNS7_8SnapshotEEENSB_IKbEEE3$_0NS2_16NoChangeCallbackEEEvSE_RKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISJ_SM_EENSB_ISK_EEEsr3stdE14is_invocable_vITL0_0_SR_SJ_SJ_E.exit.loopexit", %bb.c, %bb.e
end_hunk_4
