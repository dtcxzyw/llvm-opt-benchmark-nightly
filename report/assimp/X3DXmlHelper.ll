inline.NumInlined: 1190
inline.NumDeleted: 465
begin_hunk_0_@_ZN6Assimp12X3DXmlHelper22getStringListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listINS6_12basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.0215 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ] ; 2 uses
  %.sroa.0139.0214 = phi ptr [ %i.u, %.lr.ph ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0139.0214, i64 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12X3DXmlHelper22getStringListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listINS6_12basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.aw = load i64, ptr %i.aa, align 8            ; 11 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.ar, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %8, align 8               ; 8 uses
  br i1 %.0215, label %bb.j, label %bb.ae

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
end_hunk_1
begin_hunk_2_@_ZN6Assimp12X3DXmlHelper22getStringListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listINS6_12basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ar:                                            ; preds = %bb.h
  br i1 %.0215, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
end_hunk_2
begin_hunk_3_@_ZN6Assimp12X3DXmlHelper22getStringListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listINS6_12basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE:bb.a
  br label %.body134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.1 = phi i1 [ true, %bb.ar ], [ false, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.gw = load ptr, ptr %8, align 8               ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.z
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
end_hunk_3
begin_hunk_4_@_ZN6Assimp12X3DXmlHelper22getStringListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listINS6_12basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE:bb.a
  br label %bb.bn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  br i1 %.1, label %bb.bc, label %._crit_edge.thread

bb.bc:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
end_hunk_4
