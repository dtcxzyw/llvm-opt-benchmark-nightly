begin_hunk_0
  %i.fe = load ptr, ptr %6, align 8               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.thread171

bb.ap:                                            ; preds = %bb.aj
  %i.fj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1
  call void @_ZN10ODDLParser7DDLNode13setPropertiesEPNS_8PropertyE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i155, ptr noundef nonnull %.056183.lcssa)
  br label %.thread171

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

.thread171:                                       ; preds = %._crit_edge.thread, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, %bb.ag, %bb.az, %._crit_edge, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.370 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %spec.select109, %bb.az ], [ %spec.select109, %._crit_edge ], [ %.0.lcssa.i126, %bb.ag ], [ %.0.lcssa.i126, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127 ], [ %i.ek, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.bb

end_hunk_1
