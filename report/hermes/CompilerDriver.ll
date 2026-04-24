inline.NumInlined: 6808
inline.NumDeleted: 3465
begin_hunk_0_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10StrictModeE, i64 152), align 8, !range !179
  %i.bm = trunc nuw i8 %i.bl to i1
  %or.cond.i25 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond.i25, label %bb.h, label %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i"

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_115setFlagDefaultsEv.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  br label %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i"

"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i": ; preds = %bb.l, %bb.k, %_ZN12_GLOBAL__N_115setFlagDefaultsEv.exit
  %.0.i = phi i8 [ 0, %_ZN12_GLOBAL__N_115setFlagDefaultsEv.exit ], [ 1, %bb.l ], [ 1, %bb.k ] ; 3 uses
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpTargetE, i64 152), align 8, !tbaa !84
  %i.cg = icmp eq i32 %i.cf, 11
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL22BytecodeOutputFilenameB5cxx11E, i64 160), align 8
end_hunk_1
begin_hunk_2_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a

bb.m:                                             ; preds = %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i"
  %i.cj = call noundef i32 @isatty(i32 noundef 1) #27
  %.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit31.i", label %114

114:                                              ; preds = %bb.m
  %115 = trunc nuw i8 %.0.i to i1
  br i1 %115, label %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit31.i", label %bb.n

bb.n:                                             ; preds = %114
  %i.ck = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #27 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173
end_hunk_2
begin_hunk_3_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  store i8 10, ptr %i.cw, align 1, !tbaa !23
  br label %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit31.i"

"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit31.i": ; preds = %bb.r, %bb.q, %114, %bb.m, %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i"
  %.1.i = phi i8 [ %.0.i, %bb.m ], [ %.0.i, %"_ZZN12_GLOBAL__N_113validateFlagsEvENK3$_0clEPKc.exit.i" ], [ 1, %bb.q ], [ 1, %114 ], [ 1, %bb.r ] ; 2 uses
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15LazyCompilationE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL16EagerCompilationE, i64 152), align 8, !range !179
end_hunk_3
