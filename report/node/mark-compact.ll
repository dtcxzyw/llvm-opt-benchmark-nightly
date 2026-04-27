inline.NumInlined: 24169
inline.NumDeleted: 6162
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector22ClearNonLiveReferencesEv:bb.a
  store i64 0, ptr %i.de, align 8
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.u, %_ZN2v88internal13MarkingHelper26IsUnmarkedAndNotAlwaysLiveINS0_12MarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.q
  %i.eg = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36, !noalias !56 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_119ParallelClearingJobE, i64 16), ptr %i.eg, align 8, !noalias !56
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector22ClearNonLiveReferencesEv:bb.a
  call void %i.aer(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, ptr noundef %i.aek, ptr noundef %i.aem, i64 noundef %i.aeo) #32, !inline_history !39
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit466

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit466: ; preds = %bb.cy, %bb.cx, %_ZN2v88internal20MarkCompactCollector28WeakenStrongDescriptorArraysEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.aes = call i64 @_ZN2v84base9TimeTicks3NowEv() #32
  %i.aet = sub i64 %i.aes, %i.aby
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector22ClearNonLiveReferencesEv:bb.a
  call void %i.ahk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ahh) #32, !inline_history !83
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit522

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_119ParallelClearingJob12ClearingItemESt14default_deleteIS4_EED2Ev.exit522: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit472, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ahl = load ptr, ptr %39, align 8             ; 6 uses
end_hunk_2
