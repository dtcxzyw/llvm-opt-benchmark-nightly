inline.NumInlined: 1729
inline.NumDeleted: 639
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE:.lr.ph
  %.0154 = phi ptr [ %1, %.lr.ph ], [ %i.ek, %bb.ah ] ; 21 uses
  %.074153 = phi ptr [ %2, %.lr.ph ], [ %i.el, %bb.ah ] ; 11 uses
  %.075152 = phi i32 [ %9, %.lr.ph ], [ %.2, %bb.ah ] ; 7 uses
  %i.n = load i8, ptr %.0154, align 4             ; 4 uses
  %i.o = icmp eq i8 %i.n, 0                       ; 2 uses
  %or.cond = and i1 %4, %i.o
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE:.lr.ph
  br label %bb.n

.thread137:                                       ; preds = %bb.l, %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.aw = load i8, ptr %i.av, align 1             ; 3 uses
  %i.ax = icmp ult i8 %i.aw, 11
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE:.lr.ph
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread133, %.thread137, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94, %bb.g
  %.sroa.0117.3 = phi i8 [ %i.au, %bb.m ], [ %i.bg, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ 0, %.thread137 ], [ undef, %bb.g ], [ %.sroa.0.0.copyload.i89, %.thread133 ] ; 12 uses
  %.sroa.9.2 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ false, %.thread137 ], [ false, %bb.g ], [ true, %.thread133 ]
  %.177 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ true, %.thread137 ], [ true, %bb.g ], [ false, %.thread133 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0154, i64 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE:.lr.ph
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit, %bb.ag, %bb.b, %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85, %bb.f
  %.2 = phi i32 [ %.0.i84, %bb.d ], [ %.0.i84, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85 ], [ 0, %bb.b ], [ %.075152, %bb.f ], [ %.1, %bb.ag ], [ %.1, %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0154, i64 12 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.074153, i64 12
  %i.em = icmp ult ptr %i.ek, %i.f
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.029 = phi ptr [ %i.ad, %bb.i ], [ %i.d, %bb.e ] ; 5 uses
  %.02128 = phi i32 [ %.0.i, %bb.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.029, i64 12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.029, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = add i8 %i.af, -9
  %i.ah = icmp ult i8 %i.ag, 2
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %.02128, %i.al
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit25: ; preds = %.lr.ph
  %i.an = add i32 %.02128, 15
  %i.ao = and i32 %i.an, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit25
  %.0.i = phi i32 [ %i.ao, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit25 ], [ %i.am, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi:bb.a
  br i1 %.not23, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit
  %i.as = load i8, ptr %.029, align 4
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

end_hunk_6
