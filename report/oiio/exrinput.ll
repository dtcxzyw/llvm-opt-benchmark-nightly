begin_hunk_0
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %.critedge30, label %6

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1
  unreachable

.critedge30:                                      ; preds = %bb.e, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit31 unwind label %bb.i

bb.i:                                             ; preds = %.critedge30
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #40
  unreachable

6:                                                ; preds = %bb.e
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %.critedge unwind label %bb.j

bb.j:                                             ; preds = %6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #40
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit31: ; preds = %.critedge30, %bb.b
  %i.s = icmp slt i32 %3, 0
  br i1 %i.s, label %.critedge, label %bb.k

end_hunk_1
begin_hunk_2
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #38
  resume { ptr, i32 } %.pn26

.critedge:                                        ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit, %6, %bb.a, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit31, %bb.k
  ret void
}

end_hunk_2
