inline.NumInlined: 6502
inline.NumDeleted: 2740
begin_hunk_0_@_ZN2v88internal21BackgroundCompileTask3RunEPNS0_12LocalIsolateEPNS0_31ReusableUnoptimizedCompileStateE:bb.a
  store ptr %1, ptr %i.b, align 8
  call void @_ZN2v88internal16DeclarationScope18AllocateScopeInfosINS0_12LocalIsolateEEEvPNS0_9ParseInfoENS0_12DirectHandleINS0_6ScriptEEEPT_(ptr noundef nonnull %23, ptr %.sroa.03.0.copyload, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %32 = load ptr, ptr %i.jk, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lh = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 3 uses
  store ptr %32, ptr %i.lh, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 3 uses
  store ptr %i.lh, ptr %12, align 8
  store ptr %i.li, ptr %i.lg, align 8
  store ptr %i.li, ptr %33, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal21BackgroundCompileTask3RunEPNS0_12LocalIsolateEPNS0_31ReusableUnoptimizedCompileStateE:bb.a
  %.048.i = phi i1 [ true, %bb.bb ], [ %.3.i, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i ] ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -8 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8            ; 7 uses
  store ptr %i.lm, ptr %i.lg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.lo, align 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal21BackgroundCompileTask3RunEPNS0_12LocalIsolateEPNS0_31ReusableUnoptimizedCompileStateE:bb.a
  %.3.i = phi i1 [ %.2.i, %_ZNSt10unique_ptrIN2v88internal25UnoptimizedCompilationJobESt14default_deleteIS2_EED2Ev.exit.i ], [ %.048.i, %bb.bc ], [ %.048.i, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i ], [ %.048.i, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.sp = load ptr, ptr %12, align 8              ; 2 uses
  %i.sq = load ptr, ptr %i.lg, align 8            ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %._crit_edge.i, label %bb.bc

end_hunk_2
begin_hunk_3_@_ZN2v88internal21BackgroundCompileTask3RunEPNS0_12LocalIsolateEPNS0_31ReusableUnoptimizedCompileStateE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_155IterativelyExecuteAndFinalizeUnoptimizedCompilationJobsINS0_12LocalIsolateEEEbPT_NS0_6HandleINS0_6ScriptEEEPNS0_9ParseInfoEPNS0_19AccountingAllocatorEPNS0_15IsCompiledScopeEPSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISG_EEPSF_INS0_27DeferredFinalizationJobDataESaISK_EE.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sy = load ptr, ptr %33, align 8
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_155IterativelyExecuteAndFinalizeUnoptimizedCompilationJobsINS0_7IsolateEEEbPT_NS0_6HandleINS0_6ScriptEEEPNS0_9ParseInfoEPNS0_19AccountingAllocatorEPNS0_15IsCompiledScopeEPSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISG_EEPSF_INS0_27DeferredFinalizationJobDataESaISK_EE:.lr.ph
  tail call void @_ZN2v88internal16DeclarationScope18AllocateScopeInfosINS0_7IsolateEEEvPNS0_9ParseInfoENS0_12DirectHandleINS0_6ScriptEEEPT_(ptr noundef %2, ptr %1, ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %11 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 3 uses
  store ptr %11, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.c, ptr %9, align 8
  store ptr %i.d, ptr %i.b, align 8
  store ptr %i.d, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 63936
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_155IterativelyExecuteAndFinalizeUnoptimizedCompilationJobsINS0_7IsolateEEEbPT_NS0_6HandleINS0_6ScriptEEEPNS0_9ParseInfoEPNS0_19AccountingAllocatorEPNS0_15IsCompiledScopeEPSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISG_EEPSF_INS0_27DeferredFinalizationJobDataESaISK_EE:.lr.ph
  %.032 = phi i1 [ true, %.lr.ph ], [ %.3, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 7 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8 ; 5 uses
  %i.j = icmp eq ptr %.sroa.0.0.copyload.i, null
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_155IterativelyExecuteAndFinalizeUnoptimizedCompilationJobsINS0_7IsolateEEEbPT_NS0_6HandleINS0_6ScriptEEEPNS0_9ParseInfoEPNS0_19AccountingAllocatorEPNS0_15IsCompiledScopeEPSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISG_EEPSF_INS0_27DeferredFinalizationJobDataESaISK_EE:.lr.ph
_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread: ; preds = %bb.c, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit, %bb.a, %_ZNSt10unique_ptrIN2v88internal25UnoptimizedCompilationJobESt14default_deleteIS2_EED2Ev.exit
  %.3 = phi i1 [ %.2, %_ZNSt10unique_ptrIN2v88internal25UnoptimizedCompilationJobESt14default_deleteIS2_EED2Ev.exit ], [ %.032, %bb.a ], [ %.032, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit ], [ %.032, %bb.c ] ; 2 uses
  %i.bs = load ptr, ptr %9, align 8               ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %._crit_edge, label %bb.a

end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_155IterativelyExecuteAndFinalizeUnoptimizedCompilationJobsINS0_7IsolateEEEbPT_NS0_6HandleINS0_6ScriptEEEPNS0_9ParseInfoEPNS0_19AccountingAllocatorEPNS0_15IsCompiledScopeEPSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISG_EEPSF_INS0_27DeferredFinalizationJobDataESaISK_EE:.lr.ph
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIPN2v88internal15FunctionLiteralESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %12, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
end_hunk_7
