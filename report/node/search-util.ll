inline.NumInlined: 534
inline.NumDeleted: 302
begin_hunk_0_@_ZN12v8_inspector23searchInTextByLinesImplEPNS_18V8InspectorSessionERKNS_8String16ES4_bb:bb.a
  %i.jg = phi ptr [ %.promoted, %.lr.ph ], [ %i.kz, %_ZNSt10unique_ptrIN12v8_inspector8protocol8Debugger11SearchMatchESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %i.jh = load i32, ptr %.sroa.030.058, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.030.058, i64 8
  %i.jj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13, !noalias !26 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector8protocol8Debugger11SearchMatchE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12v8_inspector8protocol8Debugger11SearchMatchE, i64 56)>, ptr %i.jj, align 8, !noalias !26
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 40 ; 2 uses
  store ptr %i.jl, ptr %i.jk, align 8, !noalias !26
end_hunk_0
