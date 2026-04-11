inline.NumInlined: 6808
inline.NumDeleted: 3465
begin_hunk_0_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.thread779, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %.sroa.20.1775789 = phi ptr [ %.sroa.20.0385, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.auz, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.thread779 ], [ %i.ava, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i ], [ %i.ava, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit ] ; 2 uses
  %.sroa.14.1776788.a = phi ptr [ %.sroa.14.0386, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ], [ %.0.lcssa.i.i.i.i.i.i, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.thread779 ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i ], [ %.0.lcssa.i.i.i.i.i.i, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit ]
  %.sroa.0224.1777787 = phi ptr [ %.sroa.0224.0387, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.auo, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.thread779 ], [ %i.auo, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i ], [ %i.auo, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit ] ; 2 uses
  %.sroa.14.1776788 = getelementptr inbounds nuw i8, ptr %.sroa.14.1776788.a, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #27
  %i.atn = getelementptr inbounds nuw i8, ptr %.sroa.0221.0384, i64 32 ; 2 uses
  %.not281 = icmp eq ptr %i.atn, %i.ati
end_hunk_0
begin_hunk_1_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
bb.ji:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread
  %.0388 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 4 uses
  %.sroa.0224.0387 = phi ptr [ null, %.lr.ph ], [ %.sroa.0224.1777787, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 7 uses
  %.sroa.14.0386 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1776788, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 9 uses
  %.sroa.20.0385 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.1775789, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 3 uses
  %.sroa.0221.0384 = phi ptr [ %i.ath, %.lr.ph ], [ %i.atn, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #27
end_hunk_1
begin_hunk_2_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !293

_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.auo, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.auy, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0224.0387, null
  br i1 %.not.i27.i.i.i, label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.thread779, label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit

end_hunk_2
begin_hunk_3_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  store i64 %i.ats, ptr %i.ave, align 8, !tbaa !227
  %i.avf = getelementptr inbounds nuw i8, ptr %.sroa.14.0386, i64 16
  store i64 0, ptr %i.avf, align 8, !tbaa !227
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.sroa.20.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.20.1775789, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 3 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.14.1776788, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 6 uses
  %.sroa.0224.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.0224.1777787, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread ] ; 11 uses
  %i.avg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14InputSourceMapB5cxx11E, i64 160), align 8, !tbaa !155 ; 2 uses
  %i.avh = icmp eq i64 %i.avg, 0
end_hunk_3
begin_hunk_4_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a

_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i: ; preds = %bb.ps
  store i64 %i.cjg, ptr %.sroa.14.1320.i.i, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i

bb.pt:                                            ; preds = %bb.ps
end_hunk_4
begin_hunk_5_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  br i1 %.not.i.i.i.i181.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, label %.lr.ph.i.i.i.i178.i.i, !llvm.loop !663

_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i: ; preds = %.lr.ph.i.i.i.i178.i.i, %middle.block1050, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i
  %.0.lcssa.i.i.i.i183.i.i = phi ptr [ %i.cjr, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i ], [ %i.ckb, %middle.block1050 ], [ %i.ckk, %.lr.ph.i.i.i.i178.i.i ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0240.1321.i.i, i64 noundef %i.cjj) #26
  %i.ckl = getelementptr inbounds nuw [8 x i8], ptr %i.cjr, i64 %i.cjp ; 2 uses
  %.pr.i.i = load ptr, ptr %17, align 8, !tbaa !624, !noalias !573 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i
  %.sroa.0240.8272.i.i = phi ptr [ %.sroa.0240.1321.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %i.cjr, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %i.cjr, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  %.sroa.14.8271.i.i.a = phi ptr [ %.sroa.14.1320.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %.0.lcssa.i.i.i.i183.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %.0.lcssa.i.i.i.i183.i.i, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  %.sroa.28.8270.i.i = phi ptr [ %.sroa.28.1319.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %i.ckl, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %i.ckl, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  %.sroa.14.8271.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.8271.i.i.a, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !573
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !573
end_hunk_6
begin_hunk_7_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a

_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i: ; preds = %bb.pj, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i, %bb.pw, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i, %bb.pi, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i
  %.sroa.28.2.i.i = phi ptr [ %.sroa.28.1319.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.28.8270.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %.sroa.28.1319.i.i, %bb.pw ], [ %.sroa.28.1319.i.i, %bb.pi ], [ %i.cls, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.28.1319.i.i, %bb.pj ] ; 2 uses
  %.sroa.14.2.i.i = phi ptr [ %.sroa.14.1320.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.14.8271.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %i.ckm, %bb.pw ], [ %.sroa.14.1320.i.i, %bb.pi ], [ %i.clr, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.14.1320.i.i, %bb.pj ] ; 2 uses
  %.sroa.0240.2.i.i = phi ptr [ %.sroa.0240.1321.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.0240.8272.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %.sroa.0240.1321.i.i, %bb.pw ], [ %.sroa.0240.1321.i.i, %bb.pi ], [ %i.ckx, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.0240.1321.i.i, %bb.pj ] ; 2 uses
  %i.clt = load ptr, ptr %13, align 8, !tbaa !636, !noalias !676 ; 2 uses
  %i.clu = load i32, ptr %i.cfq, align 8, !tbaa !639, !noalias !676 ; 7 uses
end_hunk_7
