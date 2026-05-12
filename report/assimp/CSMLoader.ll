inline.NumInlined: 486
inline.NumDeleted: 262
begin_hunk_0_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1032
  store double %i.mh, ptr %i.mj, align 8
  %i.mk = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #23
          to label %bb.ej unwind label %.loopexit.split-lp442 ; 8 uses

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.mk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 unwind label %bb.el

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.ej
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.mk, ptr %i.ml, align 8
  store i32 14, ptr %i.mk, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
          to label %bb.ek unwind label %.loopexit.split-lp442

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 1112
  store ptr %i.mt, ptr %i.mu, align 8
  %i.mv = load i32, ptr %i.mo, align 8
  %.not560 = icmp eq i32 %i.mv, 0
end_hunk_1
