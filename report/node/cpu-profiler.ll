inline.NumInlined: 1185
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal23ProfilerEventsProcessor15AddCurrentStackEbSt8optionalImE:bb.a
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %6, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = load ptr, ptr %i.j, align 8
  store i64 %2, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %3, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN2v88internal10TickSample4InitEPNS0_7IsolateERKNS_13RegisterStateENS1_17RecordCEntryFrameEbbNS_4base9TimeDeltaESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(2112) %i.c, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 1, i1 noundef zeroext %1, i1 noundef zeroext false, i64 0, ptr noundef nonnull byval(%"class.std::optional.690") align 8 %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2120) %4, ptr noundef nonnull align 8 dereferenceable(2120) %5, i64 2120, i1 false)
  %i.y = call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 2128) #20 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2120
  store i64 0, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2120) %i.y, ptr noundef nonnull align 8 dereferenceable(2120) %4, i64 2120, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = atomicrmw add ptr %i.ab, i64 1 seq_cst, align 8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2120
  %i.ag = ptrtoint ptr %i.y to i64
  store atomic volatile i64 %i.ag, ptr %i.af release, align 8
  store ptr %i.y, ptr %i.ad, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2v813RegisterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

declare void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateEPNS0_14ThreadLocalTopE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23ProfilerEventsProcessor9AddSampleENS0_10TickSampleE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly byval(%"struct.v8::internal::TickSample") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4 = alloca [52 x i8], align 4            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.sroa.4.4..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.4.4..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.8.copyload = load i16, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.7.8.copyload = load i8, ptr %.sroa.7.8..sroa_idx, align 2
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 51
  %.sroa.8.8.copyload = load i8, ptr %.sroa.8.8..sroa_idx, align 1
  %.sroa.82.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.82.8.copyload = load i16, ptr %.sroa.82.8..sroa_idx, align 4
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 54
  %.sroa.9.8.copyload = load i8, ptr %.sroa.9.8..sroa_idx, align 2
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 55
  %.sroa.10.8.copyload = load i8, ptr %.sroa.10.8..sroa_idx, align 1
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.113.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.113.8.copyload = load i8, ptr %.sroa.113.8..sroa_idx, align 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.c = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 2128) #20 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2120
  store i64 0, ptr %i.d, align 8
  store i32 %i.b, ptr %i.c, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4, i64 52, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i16 %.sroa.6.8.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  store i8 %.sroa.7.8.copyload, ptr %.sroa.616.0..sroa_idx, align 2
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 59
  store i8 %.sroa.8.8.copyload, ptr %.sroa.717.0..sroa_idx, align 1
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i16 %.sroa.82.8.copyload, ptr %.sroa.818.0..sroa_idx, align 4
  %.sroa.919.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 62
  store i8 %.sroa.9.8.copyload, ptr %.sroa.919.0..sroa_idx, align 2
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 63
  store i8 %.sroa.10.8.copyload, ptr %.sroa.1020.0..sroa_idx, align 1
  %.sroa.1121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.11.8.copyload, ptr %.sroa.1121.0..sroa_idx, align 8
  %.sroa.1222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 %.sroa.113.8.copyload, ptr %.sroa.1222.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2047) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(2047) %.sroa.12.8..sroa_idx, i64 2047, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2120
  %i.k = ptrtoint ptr %i.c to i64
  store atomic volatile i64 %i.k, ptr %i.j release, align 8
  store ptr %i.c, ptr %i.h, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = cmpxchg ptr %i.a, i8 1, i8 0 monotonic monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  tail call void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  br label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order.exit: ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  ret void
}

declare void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal23ProfilerEventsProcessor16ProcessCodeEventEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::CodeEventsContainer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i32 0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8 ; 2 uses
  %.not.i = icmp ne i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal11LockedQueueINS0_19CodeEventsContainerEE7DequeueEPS2_.exit

_ZN2v88internal11LockedQueueINS0_19CodeEventsContainerEE7DequeueEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = atomicrmw sub ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %i.c) #20
  %i.i = load i32, ptr %1, align 8
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_ZN2v88internal21CpuProfilesCollection44UpdateNativeContextAddressForCurrentProfilesEmm(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 noundef %i.n, i64 noundef %i.p) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  call void @_ZN2v88internal20ProfilerCodeObserver24CodeEventHandlerInternalERKNS0_19CodeEventsContainerE(ptr noundef nonnull align 8 dereferenceable(120) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.t, ptr %i.u, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal11LockedQueueINS0_19CodeEventsContainerEE7DequeueEPS2_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %.not.i
}

declare void @_ZN2v88internal21CpuProfilesCollection44UpdateNativeContextAddressForCurrentProfilesEmm(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20ProfilerCodeObserver24CodeEventHandlerInternalERKNS0_19CodeEventsContainerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.885", align 8   ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.sroa.0.0.extract.trunc = trunc i64 %.sroa.11.0.copyload to i32 ; 2 uses
  %.sroa.11.sroa.9.0.extract.shift = lshr i64 %.sroa.11.0.copyload, 32
  %.sroa.11.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.11.sroa.9.0.extract.shift to i32 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 8 ; 2 uses
  %.sroa.2225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2225.0.copyload = load ptr, ptr %.sroa.2225.0..sroa_idx, align 8 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %i.a = load i32, ptr %1, align 8
  switch i32 %i.a, label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.f
    i32 5, label %bb.m
    i32 6, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = inttoptr i64 %.sroa.11.0.copyload to ptr
  tail call void @_ZN2v88internal20InstructionStreamMap7AddCodeEmPNS0_9CodeEntryEj(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef %.sroa.3.0.copyload, ptr noundef %i.c, i32 noundef %.sroa.20.0.copyload) #20
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal20InstructionStreamMap8MoveCodeEmm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %.sroa.3.0.copyload, i64 noundef %.sroa.11.0.copyload) #20
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = tail call noundef ptr @_ZN2v88internal20InstructionStreamMap9FindEntryEmPm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %.sroa.3.0.copyload, ptr noundef null) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = inttoptr i64 %.sroa.11.0.copyload to ptr
  %i.h = tail call noundef ptr @_ZN2v88internal9CodeEntry14EnsureRareDataEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.k = tail call noundef ptr @_ZN2v88internal20InstructionStreamMap9FindEntryEmPm(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.copyload, ptr noundef null) #20 ; 2 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = sext i32 %.sroa.24.0.copyload to i64
  %.idx = shl nsw i64 %i.l, 4                     ; 5 uses
  %i.m = icmp ugt i64 %.idx, 9223372036854775792
  br i1 %i.m, label %bb.h, label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.sroa.24.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit, label %_ZNSt12_Vector_baseIN2v820CpuProfileDeoptFrameESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN2v820CpuProfileDeoptFrameESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #22 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %i.p = icmp samesign ugt i64 %.idx, 16
  br i1 %i.p, label %bb.j, label %bb.i, !prof !18

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN2v820CpuProfileDeoptFrameESaIS1_EE11_M_allocateEm.exit.i.i
  %i.q = icmp eq i32 %.sroa.24.0.copyload, 1
  br i1 %i.q, label %bb.j, label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit

bb.j:                                             ; preds = %bb.i, %_ZNSt12_Vector_baseIN2v820CpuProfileDeoptFrameESaIS1_EE11_M_allocateEm.exit.i.i
  %.idx.sink = phi i64 [ %.idx, %_ZNSt12_Vector_baseIN2v820CpuProfileDeoptFrameESaIS1_EE11_M_allocateEm.exit.i.i ], [ 16, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.2225.0.copyload, i64 %.idx.sink, i1 false)
  br label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit

_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit: ; preds = %bb.j, %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, %bb.i
  %.sroa.9.0 = phi ptr [ %i.o, %bb.i ], [ null, %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.o, %bb.j ] ; 2 uses
  %.sroa.049.0 = phi ptr [ %i.n, %bb.i ], [ null, %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.n, %bb.j ]
  %i.r = inttoptr i64 %.sroa.11.0.copyload to ptr
  store ptr %.sroa.049.0, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.9.0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %.sroa.9.0, ptr %i.t, align 8
  call void @_ZN2v88internal9CodeEntry14set_deopt_infoEPKciSt6vectorINS_20CpuProfileDeoptFrameESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef %i.r, i32 noundef %.sroa.20.0.copyload, ptr noundef nonnull %2) #20
  %i.u = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7

_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7: ; preds = %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit, %bb.k, %bb.f
  %i.z = icmp eq ptr %.sroa.2225.0.copyload, null
  br i1 %i.z, label %_ZN2v88internal20CodeDeoptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7
  call void @_ZdaPv(ptr noundef nonnull %.sroa.2225.0.copyload) #23
  br label %_ZN2v88internal20CodeDeoptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

_ZN2v88internal20CodeDeoptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit: ; preds = %_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EED2Ev.exit7, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = tail call noundef ptr @_ZN2v88internal20InstructionStreamMap9FindEntryEmPm(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 noundef %.sroa.3.0.copyload, ptr noundef null) #20 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal9CodeEntry12SetBuiltinIdENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i32 noundef %.sroa.11.sroa.9.0.extract.trunc) #20
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.o:                                             ; preds = %bb.m
  switch i32 %.sroa.11.sroa.9.0.extract.trunc, label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit [
    i32 1313, label %.thread
    i32 701, label %bb.p
  ]

.thread:                                          ; preds = %bb.o
  %i.ac = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 6 uses
  %i.ad = load ptr, ptr @_ZN2v88internal9CodeEntry18kEmptyResourceNameE, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @.str.14, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  store i32 268485632, ptr %i.ac, align 8
  store atomic i64 1, ptr %i.ae seq_cst, align 8
  tail call void @_ZN2v88internal20InstructionStreamMap7AddCodeEmPNS0_9CodeEntryEj(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull %i.ac, i32 noundef %.sroa.11.sroa.0.0.extract.trunc) #20
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 6 uses
  %i.aj = load ptr, ptr @_ZN2v88internal9CodeEntry18kEmptyResourceNameE, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @.str.15, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i8 0, i64 48, i1 false)
  store i32 268485632, ptr %i.ai, align 8
  store atomic i64 1, ptr %i.ak seq_cst, align 8
  tail call void @_ZN2v88internal20InstructionStreamMap7AddCodeEmPNS0_9CodeEntryEj(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull %i.ai, i32 noundef %.sroa.11.sroa.0.0.extract.trunc) #20
  br label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit

bb.q:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = inttoptr i64 %.sroa.3.0.copyload to ptr
  %i.aq = tail call noundef zeroext i1 @_ZN2v88internal20InstructionStreamMap10RemoveCodeEPNS0_9CodeEntryE(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef %i.ap) #20
  br i1 %i.aq, label %_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #21
  unreachable

_ZN2v88internal25CodeDisableOptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit: ; preds = %bb.o, %bb.q, %bb.p, %bb.n, %.thread, %bb.e, %bb.d, %bb.a, %_ZN2v88internal20CodeDeoptEventRecord13UpdateCodeMapEPNS0_20InstructionStreamMapE.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23ProfilerEventsProcessor16CodeEventHandlerERKNS0_19CodeEventsContainerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TickSampleEventRecord", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TickSampleEventRecord", align 8 ; 11 uses
  %4 = alloca %"struct.v8::RegisterState", align 8 ; 8 uses
  %5 = alloca %"class.std::optional.690", align 8 ; 4 uses
  %.sroa.03.i8 = alloca %union.anon.714, align 8  ; 4 uses
  %.sroa.03.i = alloca %union.anon.714, align 8   ; 4 uses
  %i.a = load i32, ptr %1, align 8
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 4, label %bb.c
    i32 0, label %bb.d
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.d, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.f = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 72) #20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 0, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03.i, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = ptrtoint ptr %i.f to i64
  store atomic volatile i64 %i.n, ptr %i.m release, align 8
  store ptr %i.f, ptr %i.k, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i32 1 seq_cst, align 4
  %i.u = add i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.u, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03.i8, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.w = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 72) #20 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 0, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03.i8, i64 64, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = atomicrmw add ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = ptrtoint ptr %i.w to i64
  store atomic volatile i64 %i.ae, ptr %i.ad release, align 8
  store ptr %i.w, ptr %i.ab, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.af = load atomic i32, ptr %i.s seq_cst, align 8
  store i32 %i.af, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2112) %i.ag, i8 0, i64 48, i1 false)
  store i16 5, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 58
  store i8 0, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i16 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 62
  store i8 0, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 63
  store i8 1, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2v813RegisterStateC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 328
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.r to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.at, ptr %i.au, align 8
  %i.av = inttoptr i64 %i.aq to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.av, ptr %i.aw, align 8
end_hunk_0
