inline.NumInlined: 899
inline.NumDeleted: 442
begin_hunk_0_@_ZN2v88platform27DefaultForegroundTaskRunner9TerminateEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr %.06.i.i.ptr.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.g, ptr %i.l, align 8
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.c, ptr %i.i, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88platform27DefaultForegroundTaskRunner9TerminateEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %6 = load ptr, ptr %i.aj, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %7, align 8
  %i.am = load <2 x ptr>, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN2v88platform27DefaultForegroundTaskRunner9TerminateEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  store ptr %i.ae, ptr %i.f, align 8
  store ptr %i.ag, ptr %i.h, align 8
  store ptr %i.ai, ptr %i.e, align 8
  store ptr %6, ptr %i.i, align 8
  store <2 x ptr> %i.am, ptr %i.k, align 8
  store ptr %i.al, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN2v88platform27DefaultForegroundTaskRunner9TerminateEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  store <2 x ptr> %i.bf, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #18
  %i.bg = icmp eq ptr %6, %i.ac
  br i1 %i.bg, label %.preheader19, label %.lr.ph

.preheader19:                                     ; preds = %_ZNSt5dequeISt4pairIN2v88platform27DefaultForegroundTaskRunner11NestabilityESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEESaISA_EE9pop_frontEv.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN2v88platform27DefaultForegroundTaskRunner9TerminateEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.cd = phi ptr [ %i.bl, %_ZSt10destroy_atISt4pairIN2v88platform27DefaultForegroundTaskRunner11NestabilityESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEEEvPT_.exit.i ], [ %i.ca, %_ZNSt5dequeISt4pairIN2v88platform27DefaultForegroundTaskRunner11NestabilityESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEESaISA_EE16_M_pop_front_auxEv.exit.i ]
  %storemerge.i = phi ptr [ %i.bu, %_ZSt10destroy_atISt4pairIN2v88platform27DefaultForegroundTaskRunner11NestabilityESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEEEvPT_.exit.i ], [ %i.bz, %_ZNSt5dequeISt4pairIN2v88platform27DefaultForegroundTaskRunner11NestabilityESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEESaISA_EE16_M_pop_front_auxEv.exit.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.d, align 8
  %i.ce = icmp eq ptr %6, %storemerge.i
  br i1 %i.ce, label %.preheader19, label %.lr.ph, !llvm.loop !9

.preheader:                                       ; preds = %_ZNSt14priority_queueIN2v88platform27DefaultForegroundTaskRunner12DelayedEntryESt6vectorIS3_SaIS3_EENS2_19DelayedEntryCompareEE3popEv.exit, %.preheader19
end_hunk_4
