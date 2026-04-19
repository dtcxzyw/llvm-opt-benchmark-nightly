inline.NumInlined: 2014
inline.NumDeleted: 789
begin_hunk_0_@_ZSt4lockISt11unique_lockISt5mutexES2_JEEvRT_RT0_DpRT1_:bb.a
_ZNSt11unique_lockIS_ISt5mutexEE4lockEv.exit:     ; preds = %bb.e
  store i8 1, ptr %i.i, align 8, !tbaa !391
  store i8 1, ptr %i.g, align 8, !tbaa !398
  %3 = and i32 %.0, 1
  %i.n = xor i32 %3, 1                            ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !395 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZSt4lockISt11unique_lockISt5mutexES2_JEEvRT_RT0_DpRT1_:bb.a
  br i1 %.not.i.i.i42, label %bb.r, label %.preheader57

.preheader57:                                     ; preds = %bb.j
  %4 = and i32 %.0, 1
  %i.ac = zext nneg i32 %4 to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.ae, align 8, !tbaa !398
end_hunk_1
