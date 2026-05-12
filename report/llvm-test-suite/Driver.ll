inline.NumInlined: 244
inline.NumDeleted: 83
begin_hunk_0_@_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.fh = invoke noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #19
          to label %bb.x unwind label %bb.m       ; 4 uses

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  invoke void @_ZN4MeshC1EPK9InputFile(ptr noundef nonnull align 8 dereferenceable(616) %i.fh, ptr noundef nonnull %1)
end_hunk_0
begin_hunk_1_@_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %bb.z unwind label %bb.m       ; 3 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5HydroC1EPK9InputFileP4Mesh(ptr noundef nonnull align 8 dereferenceable(408) %i.fi, ptr noundef nonnull %1, ptr noundef nonnull %i.fh)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
end_hunk_1
