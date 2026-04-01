begin_hunk_0
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  store ptr %i.p, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp3DXF8PolyLineEEET_.exit unwind label %bb.b ; 5 uses

end_hunk_0
