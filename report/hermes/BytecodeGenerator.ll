inline.NumInlined: 2660
inline.NumDeleted: 1336
begin_hunk_0_@_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE:bb.a
  br i1 %i.cq, label %_ZN6hermes3hbc12_GLOBAL__N_119ensureUTF8IdentiferERNS_11StringTableENS_10IdentifierERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i.backedge
  %.044 = phi ptr [ %.044.be, %.lr.ph.i.backedge ], [ %i.cm, %bb.o ] ; 11 uses
  %i.cr = load i8, ptr %.044, align 1, !tbaa !193 ; 4 uses
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %"_ZN6hermes10decodeUTF8ILb0EZNS_3hbc12_GLOBAL__N_119ensureUTF8IdentiferERNS_11StringTableENS_10IdentifierERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEjRPKcT0_.exit.i.thread", label %bb.p, !prof !166
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !193
  %.not77.i = icmp sgt i8 %i.cx, -65
  %16 = getelementptr inbounds nuw i8, ptr %.044, i64 2
  %i.cy = and i8 %i.cr, 30
  %i.cz = icmp eq i8 %i.cy, 0
  %or.cond = or i1 %i.cz, %.not77.i
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE:bb.a
  br i1 %i.dm, label %._crit_edge.i.thread54, label %bb.v, !prof !434

bb.v:                                             ; preds = %bb.u
  %17 = getelementptr inbounds nuw i8, ptr %.044, i64 3
  %i.dn = icmp samesign ugt i32 %i.dl, 55295
  %i.do = icmp samesign ult i32 %i.dh, 57344
  %or.cond.i = select i1 %i.dn, i1 %i.do, i1 false, !prof !435
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE:bb.a
  br i1 %i.eh, label %._crit_edge.i.thread54, label %bb.ac, !prof !434

bb.ac:                                            ; preds = %bb.ab
  %18 = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.ei = icmp samesign ugt i32 %i.eg, 1114111
  br i1 %i.ei, label %bb.ad, label %"_ZN6hermes10decodeUTF8ILb0EZNS_3hbc12_GLOBAL__N_119ensureUTF8IdentiferERNS_11StringTableENS_10IdentifierERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEjRPKcT0_.exit.i", !prof !434

end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE:bb.a
  br label %._crit_edge.i.thread54

"_ZN6hermes10decodeUTF8ILb0EZNS_3hbc12_GLOBAL__N_119ensureUTF8IdentiferERNS_11StringTableENS_10IdentifierERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEjRPKcT0_.exit.i": ; preds = %bb.q, %bb.ac, %bb.v
  %.246 = phi ptr [ %17, %bb.v ], [ %16, %bb.q ], [ %18, %bb.ac ] ; 2 uses
  %.not57 = icmp ult ptr %.246, %i.cp
  br i1 %.not57, label %.lr.ph.i.backedge, label %_ZN6hermes3hbc12_GLOBAL__N_119ensureUTF8IdentiferERNS_11StringTableENS_10IdentifierERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

end_hunk_4
