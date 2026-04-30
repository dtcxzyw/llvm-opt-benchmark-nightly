inline.NumInlined: 39732
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a
  br i1 %i.jt, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %_ZN2v88internal8compiler12JSHeapBroker14the_hole_valueEv.exit
  store ptr %0, ptr %5, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  br label %bb.an
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a
  br label %bb.ap

bb.an:                                            ; preds = %.lr.ph124, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit85
  %i.kh = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder6SelectIZNS2_27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEvEUlRNS2_13BranchBuilderEE_ZNS4_ILS5_0EEES7_vEUlvE_ZNS4_ILS5_0EEES7_vEUlvE0_EEPNS1_9ValueNodeET_T0_T1_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull byval(%class.anon.3370) align 8 %5, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %i.l)
  %i.ki = load i32, ptr %i.m, align 4             ; 2 uses
  %i.kj = add i32 %i.ki, 3
end_hunk_1
