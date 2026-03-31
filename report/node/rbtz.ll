begin_hunk_0

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.z) #12 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %.preheader276

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %1, align 4
  br label %bb.ag

.preheader276:                                    ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.z, i1 false)
end_hunk_0
begin_hunk_1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ag

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.thread232: ; preds = %.loopexit, %bb.u
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #11
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.ef, label %.lr.ph295.preheader, label %bb.ag

bb.ag:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit, %bb.j, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.thread
  call void @uprv_free_78(ptr noundef %i.aa) #11
  br label %.thread270

bb.ah:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.thread232, %bb.h
end_hunk_2
begin_hunk_3
  store i8 1, ptr %i.f, align 8
  br label %bb.au

.thread270:                                       ; preds = %bb.aj, %bb.ak, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit176, %bb.ag, %bb.al, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit176.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
end_hunk_3
