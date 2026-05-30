inline.NumInlined: 1767
inline.NumDeleted: 901
begin_hunk_0_@_ZN5folly21EDFThreadPoolExecutor3addESt6vectorINS_8FunctionIFvvEEESaIS4_EEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %3, align 8, !tbaa !4636
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !4640 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_sharedIN5folly21EDFThreadPoolExecutor4TaskEJSt6vectorINS0_8FunctionIFvvEEESaIS6_EERmEESt10shared_ptrIT_EDpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !4643
  store i64 %i.s, ptr %i.o, align 8, !tbaa !4657
  br label %_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i

_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i: ; preds = %bb.c, %_ZSt11make_sharedIN5folly21EDFThreadPoolExecutor4TaskEJSt6vectorINS0_8FunctionIFvvEEESaIS6_EERmEESt10shared_ptrIT_EDpOT0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load <2 x i64>, ptr %i.t, align 16, !tbaa !4658
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !4658
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.y = load atomic ptr, ptr %i.x acquire, align 32 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor19registerTaskEnqueueERKNS2_4TaskEE3$_0EEvOT_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.y, %_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i ] ; 3 uses
  %i.z = load ptr, ptr %.06.i.i, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3) #18, !call_target !4659, !inline_history !4666
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4667 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i2.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor19registerTaskEnqueueERKNS2_4TaskEE3$_0EEvOT_.exit.i", label %.lr.ph.i.i, !llvm.loop !4670

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor19registerTaskEnqueueERKNS2_4TaskEE3$_0EEvOT_.exit.i": ; preds = %.lr.ph.i.i, %_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !4672 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.d unwind label %bb.t, !inline_history !4675

bb.d:                                             ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor19registerTaskEnqueueERKNS2_4TaskEE3$_0EEvOT_.exit.i"
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4676
  %i.al = load i64, ptr %i.o, align 8, !tbaa !4657
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !tbaa !4658
  %i.am = load i64, ptr %i.v, align 8, !tbaa !4680
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_enqueued\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.ak, i64 8, i64 %i.al, i64 8, i64 %.sroa.0.0.copyload.i.i, i64 8, i64 %i.am) #18, !srcloc !4681
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !4682
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4683
  %i.ap = load <2 x ptr>, ptr %4, align 16, !tbaa !58
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store <2 x ptr> %i.ap, ptr %5, align 16, !tbaa !58
  store ptr null, ptr %4, align 16, !tbaa !4685
  invoke void @_ZN5folly21EDFThreadPoolExecutor9TaskQueue4pushESt10shared_ptrINS0_4TaskEE(ptr noundef nonnull align 8 dereferenceable(3592) %i.ao, ptr noundef nonnull %5)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.as, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !28
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18, !call_target !1759, !inline_history !4687
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18, !call_target !1760, !inline_history !4687
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.i ], [ %i.bf, %bb.j ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.k, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4688

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !4689 ; 2 uses
  %i.bj = trunc i64 %i.h to i32
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef %i.bj)
          to label %bb.l unwind label %bb.t, !call_target !3427

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !52  ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bo, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !28
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !call_target !1759, !inline_history !4687
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !call_target !1760, !inline_history !4687
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.o:                                             ; preds = %bb.m
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i7 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.q:                                             ; preds = %bb.o
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i9 = phi i32 [ %i.br, %bb.p ], [ %i.cb, %bb.q ]
  %i.cc = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.cc, label %bb.r, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, !prof !4688

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10
  ret void

bb.t:                                             ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor19registerTaskEnqueueERKNS2_4TaskEE3$_0EEvOT_.exit.i", %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.t ], [ %i.ce, %bb.u ]
  call void @_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE(ptr noundef nonnull align 64 dereferenceable(572) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.130", align 16 ; 5 uses
  %3 = alloca %"class.std::shared_ptr.130", align 8 ; 6 uses
  %4 = alloca %"class.folly::ExecutorBlockingGuard", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.130", align 16 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.130", align 16 ; 7 uses
  %7 = alloca %"struct.folly::ThreadPoolExecutor::ProcessedTaskInfo", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZN5folly18ThreadPoolListHook14registerThreadEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = load ptr, ptr %0, align 64, !tbaa !29
  %i.d = getelementptr i8, ptr %i.c, i64 -72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5folly18ThreadPoolExecutor7getNameB5cxx11Ev(ptr noundef nonnull align 64 dereferenceable(488) %i.a) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4676 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !4699
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  call void @_ZN5folly21ExecutorBlockingGuardC1ENS0_8TrackTagEPNS_8ExecutorENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %i.f, ptr %i.h, ptr %i.k) #18
  %i.l = load ptr, ptr %1, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 4 uses
  %i.n = load atomic i32, ptr %i.m acquire, align 4
  switch i32 %i.n, label %bb.c [
    i32 0, label %bb.b
    i32 4, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = cmpxchg ptr %i.m, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %i.r = icmp eq i32 %i.q, 4
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store atomic i32 3, ptr %i.m release, align 4
  %i.s = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.m, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

_ZN5folly5BatonILb1ESt6atomicE4postEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit
  %i.ai = load ptr, ptr %i.v, align 16, !tbaa !4689 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.e unwind label %bb.y, !call_target !3430

bb.e:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !4683
  invoke void @_ZN5folly21EDFThreadPoolExecutor9TaskQueue3popEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.130") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3592) %i.am)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.an = load <2 x ptr>, ptr %6, align 16, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !52  ; 8 uses
  store <2 x ptr> %i.an, ptr %5, align 16, !tbaa !58
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !28
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #18, !call_target !1759, !inline_history !4700
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #18, !call_target !1760, !inline_history !4700
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split, !prof !4688

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #18
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split

_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit

_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit: ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split, %bb.g
  %i.be = phi ptr [ %.pr, %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split ], [ null, %bb.g ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !28
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #18, !call_target !1759, !inline_history !4687
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #18, !call_target !1760, !inline_history !4687
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4688

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bu = load ptr, ptr %5, align 16, !tbaa !4685 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88 ; 2 uses
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 92
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4701 ; 3 uses
  %.not.i = icmp slt i32 %i.bw, %i.by
  br i1 %.not.i, label %bb.t, label %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = atomicrmw add ptr %i.bv, i32 1 monotonic, align 4 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %i.by
  %spec.select = select i1 %i.ca, i32 %i.bz, i32 -1
  br label %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit

_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit: ; preds = %bb.t, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.i = phi i32 [ %spec.select, %bb.t ], [ -1, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.cb = icmp slt i32 %.0.i, 0
  br i1 %i.cb, label %bb.f, label %bb.u, !llvm.loop !4708

bb.u:                                             ; preds = %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %.not.i17 = icmp eq ptr %i.cd, null
  br i1 %.not.i17, label %bb.v, label %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !4691
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !4691
  %i.ci = icmp eq ptr %i.cf, %i.ch
  %i.cj = icmp sgt i32 %i.by, 0
  %or.cond = and i1 %i.ci, %i.cj
  br i1 %or.cond, label %bb.w, label %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ck = invoke noundef zeroext i1 @_ZN5folly21EDFThreadPoolExecutor13tryStopThreadERKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEb(ptr noundef nonnull align 64 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %. = select i1 %i.ck, i32 1, i32 3
  br label %bb.aw

bb.y:                                             ; preds = %.backedge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.z:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bd

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread: ; preds = %bb.u, %bb.v
  %i.co = load ptr, ptr %1, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store atomic i8 0, ptr %i.cp monotonic, align 1
  %i.cq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.ab, align 8, !tbaa !4709
  store i64 0, ptr %i.ac, align 8, !tbaa !4712
  store i8 0, ptr %7, align 8, !tbaa !4636
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !4640 ; 2 uses
  %.not.i18 = icmp eq ptr %i.cs, null
  br i1 %.not.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !4643
  store i64 %i.cu, ptr %i.z, align 8, !tbaa !4657
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread, %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128 ; 2 uses
  %i.cw = load <2 x i64>, ptr %i.cv, align 16, !tbaa !4658
  %i.cx = load i64, ptr %i.cv, align 16, !tbaa !4658
  store <2 x i64> %i.cw, ptr %i.ad, align 8, !tbaa !4658
  %i.cy = sub nsw i64 %i.cq, %i.cx
  store i64 %i.cy, ptr %i.aa, align 8, !tbaa !4658
  %i.cz = load ptr, ptr %i.af, align 8, !tbaa !4672 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.ad unwind label %bb.av, !call_target !4713

bb.ad:                                            ; preds = %bb.ac
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !4676
  %i.df = load i64, ptr %i.z, align 8, !tbaa !4657
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !4658
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !4712
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !4680
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_dequeued\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8 ${9:n}@$10\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.de, i64 8, i64 %i.df, i64 8, i64 %.sroa.0.0.copyload.i, i64 8, i64 %i.dg, i64 8, i64 %i.dh) #18, !srcloc !5529
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !5530
  %i.di = load atomic ptr, ptr %i.ag acquire, align 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.di, null
  br i1 %.not5.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.06.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %i.di, %bb.ad ] ; 3 uses
  %i.dj = load ptr, ptr %.06.i, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %.06.i, ptr noundef nonnull align 8 dereferenceable(40) %7) #18, !call_target !5531, !inline_history !5540
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !4667 ; 2 uses
  %.not.i19 = icmp eq ptr %i.dn, null
  br i1 %.not.i19, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit", label %.lr.ph.i, !llvm.loop !5541

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit": ; preds = %.lr.ph.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !5542)
  call void @llvm.experimental.noalias.scope.decl(metadata !5545)
  %8 = load <2 x ptr>, ptr %5, align 16, !tbaa !58, !noalias !5548 ; 3 uses
  %9 = extractelement <2 x ptr> %8, i64 1         ; 8 uses
  store <2 x ptr> %8, ptr %2, align 16, !tbaa !58, !alias.scope !5548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !5548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = extractelement <2 x ptr> %8, i64 0
  invoke void @_ZN5folly21EDFThreadPoolExecutor4Task3runEi(ptr noundef nonnull align 16 dereferenceable(144) %10, i32 noundef %.0.i)
          to label %bb.ae unwind label %.body

bb.ae:                                            ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit"
  %.not.i.i.i20 = icmp eq ptr %9, null
  br i1 %.not.i.i.i20, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.do, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !28
  %i.dt = load ptr, ptr %9, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %9) #18, !call_target !1759, !inline_history !5549
  %i.dw = load ptr, ptr %9, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %9) #18, !call_target !1760, !inline_history !5549
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i21 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i.i21, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.dr, %bb.ai ], [ %i.eb, %bb.aj ]
  %i.ec = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.ak, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !4688

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ag, %bb.ae
  %i.ed = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i2.i, label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 4 uses
  %i.ef = load atomic i64, ptr %i.ee acquire, align 8 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 4294967297
  %i.eh = trunc i64 %i.ef to i32                  ; 2 uses
  br i1 %i.eg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ee, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 0, ptr %i.ei, align 4, !tbaa !28
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #18, !call_target !1759, !inline_history !5549
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #18, !call_target !1760, !inline_history !5549
  br label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit"

bb.an:                                            ; preds = %bb.al
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i3.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i3.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i32 %i.eh, -1
  store i32 %i.eq, ptr %i.ee, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.ap:                                            ; preds = %bb.an
  %i.er = atomicrmw volatile add ptr %i.ee, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i5.i = phi i32 [ %i.eh, %bb.ao ], [ %i.er, %bb.ap ]
  %i.es = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.es, label %bb.aq, label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit", !prof !4688

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #18
  br label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit"

.body:                                            ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit"
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  %i.ev = call ptr @__cxa_begin_catch(ptr %i.eu) #18 ; 0 uses
  call void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef nonnull @.str.29) #18, !inline_history !5550
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.ar

"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit": ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.as

bb.ar:                                            ; preds = %.body
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #30
  unreachable

bb.as:                                            ; preds = %.body, %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit"
  %i.ey = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18
  %i.ez = sub nsw i64 %i.ey, %i.cq
  store i64 %i.ez, ptr %i.ac, align 8, !tbaa !4658
  %i.fa = load ptr, ptr %i.af, align 8, !tbaa !4672 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa)
          to label %bb.at unwind label %bb.av, !call_target !4713

bb.at:                                            ; preds = %bb.as
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !4676
  %i.fg = load i64, ptr %i.z, align 8, !tbaa !4657
  %.sroa.0.0.copyload.i24 = load i64, ptr %i.ad, align 8, !tbaa !4658
  %i.fh = load i64, ptr %i.aa, align 8, !tbaa !4712
  %i.fi = load i64, ptr %i.ac, align 8, !tbaa !4712
  %i.fj = load i64, ptr %i.ae, align 8, !tbaa !4680
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_taskInfo\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8 ${9:n}@$10 ${11:n}@$12\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.ff, i64 8, i64 %i.fg, i64 8, i64 %.sroa.0.0.copyload.i24, i64 8, i64 %i.fh, i64 8, i64 %i.fi, i64 8, i64 %i.fj) #18, !srcloc !5551
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !5552
  %i.fk = load atomic ptr, ptr %i.ag acquire, align 32 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fk, null
  br i1 %.not5.i25, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_2EEvOT_.exit", label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.at, %.lr.ph.i26
  %.06.i27 = phi ptr [ %i.fp, %.lr.ph.i26 ], [ %i.fk, %bb.at ] ; 3 uses
  %i.fl = load ptr, ptr %.06.i27, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %.06.i27, ptr noundef nonnull align 8 dereferenceable(56) %7) #18, !call_target !5553, !inline_history !5563
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i27, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !4667 ; 2 uses
  %.not.i29 = icmp eq ptr %i.fp, null
  br i1 %.not.i29, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_2EEvOT_.exit", label %.lr.ph.i26, !llvm.loop !5564

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_2EEvOT_.exit": ; preds = %.lr.ph.i26, %bb.at
  %i.fq = load ptr, ptr %1, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fs = load atomic i64, ptr %i.fr monotonic, align 8
  %i.ft = add i64 %i.fs, 1
  store atomic i64 %i.ft, ptr %i.fr monotonic, align 8
  %i.fu = load ptr, ptr %1, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store atomic i8 1, ptr %i.fv monotonic, align 1
  %i.fw = load ptr, ptr %1, align 8, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18
  store atomic i64 %i.fy, ptr %i.fx monotonic, align 8
  %i.fz = invoke noundef zeroext i1 @_ZN5folly21EDFThreadPoolExecutor13tryStopThreadERKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEb(ptr noundef nonnull align 64 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_2EEvOT_.exit"
  %.15 = zext i1 %i.fz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aw

bb.av:                                            ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_2EEvOT_.exit", %bb.as, %bb.ac
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bd

bb.aw:                                            ; preds = %bb.x, %bb.au
  %.110 = phi i32 [ %., %bb.x ], [ %.15, %bb.au ]
  %i.gb = load ptr, ptr %i.y, align 8, !tbaa !52  ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gd = load atomic i64, ptr %i.gc acquire, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967297
  %i.gf = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %i.ge, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gc, align 8, !tbaa !26
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !28
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #18, !call_target !1759, !inline_history !4687
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #18, !call_target !1760, !inline_history !4687
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.az:                                            ; preds = %bb.ax
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i31 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i31, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = add nsw i32 %i.gf, -1
  store i32 %i.go, ptr %i.gc, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

bb.bb:                                            ; preds = %bb.az
  %i.gp = atomicrmw volatile add ptr %i.gc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i33 = phi i32 [ %i.gf, %bb.ba ], [ %i.gp, %bb.bb ]
  %i.gq = icmp eq i32 %.0.i.i.i.i33, 1
  br i1 %i.gq, label %bb.bc, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, !prof !4688

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  switch i32 %.110, label %bb.be [
    i32 0, label %.backedge.backedge
    i32 3, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  br label %.backedge, !llvm.loop !5565

bb.bd:                                            ; preds = %bb.av, %bb.aa, %bb.z
  %.pn12 = phi { ptr, i32 } [ %i.cn, %bb.aa ], [ %i.ga, %bb.av ], [ %i.cm, %bb.z ]
end_hunk_0
