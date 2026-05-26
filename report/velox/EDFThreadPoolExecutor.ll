inline.NumInlined: 1767
inline.NumDeleted: 901
begin_hunk_0_@_ZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE:bb.a
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
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit
  %i.aj = load ptr, ptr %i.v, align 16, !tbaa !4689 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.e unwind label %bb.y, !call_target !3430

bb.e:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !4683
  invoke void @_ZN5folly21EDFThreadPoolExecutor9TaskQueue3popEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.130") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3592) %i.an)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.ao = load <2 x ptr>, ptr %6, align 16, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !52  ; 8 uses
  store <2 x ptr> %i.ao, ptr %5, align 16, !tbaa !58
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aq, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !28
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #18, !call_target !1759, !inline_history !4700
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #18, !call_target !1760, !inline_history !4700
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.m, label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split, !prof !4688

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #18
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split

_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit

_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit: ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split, %bb.g
  %i.bf = phi ptr [ %.pr, %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exitthread-pre-split ], [ null, %bb.g ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bg, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !28
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #18, !call_target !1759, !inline_history !4687
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #18, !call_target !1760, !inline_history !4687
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.q ], [ %i.bt, %bb.r ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.s, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4688

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEEaSEOS3_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bv = load ptr, ptr %5, align 16, !tbaa !4685 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 88 ; 2 uses
  %i.bx = load atomic i32, ptr %i.bw monotonic, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 92
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4701 ; 3 uses
  %.not.i = icmp slt i32 %i.bx, %i.bz
  br i1 %.not.i, label %bb.t, label %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = atomicrmw add ptr %i.bw, i32 1 monotonic, align 4 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.bz
  %spec.select = select i1 %i.cb, i32 %i.ca, i32 -1
  br label %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit

_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit: ; preds = %bb.t, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.i = phi i32 [ %spec.select, %bb.t ], [ -1, %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.cc = icmp slt i32 %.0.i, 0
  br i1 %i.cc, label %bb.f, label %bb.u, !llvm.loop !4708

bb.u:                                             ; preds = %_ZN5folly21EDFThreadPoolExecutor4Task4nextEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !56
  %.not.i17 = icmp eq ptr %i.ce, null
  br i1 %.not.i17, label %bb.v, label %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !4691
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !4691
  %i.cj = icmp eq ptr %i.cg, %i.ci
  %i.ck = icmp sgt i32 %i.bz, 0
  %or.cond = and i1 %i.cj, %i.ck
  br i1 %or.cond, label %bb.w, label %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cl = invoke noundef zeroext i1 @_ZN5folly21EDFThreadPoolExecutor13tryStopThreadERKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEb(ptr noundef nonnull align 64 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %. = select i1 %i.cl, i32 1, i32 3
  br label %bb.aw

bb.y:                                             ; preds = %.backedge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.z:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bd

bb.aa:                                            ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread: ; preds = %bb.u, %bb.v
  %i.cp = load ptr, ptr %1, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store atomic i8 0, ptr %i.cq monotonic, align 1
  %i.cr = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.ab, align 8, !tbaa !4709
  store i64 0, ptr %i.ac, align 8, !tbaa !4712
  store i8 0, ptr %7, align 8, !tbaa !4636
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !4640 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !4643
  store i64 %i.cv, ptr %i.z, align 8, !tbaa !4657
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK5folly21EDFThreadPoolExecutor4Task8isPoisonEv.exit.thread, %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 16, !tbaa !4658
  %i.cy = load i64, ptr %i.cw, align 16, !tbaa !4658
  store <2 x i64> %i.cx, ptr %i.ad, align 8, !tbaa !4658
  %i.cz = sub nsw i64 %i.cr, %i.cy
  store i64 %i.cz, ptr %i.aa, align 8, !tbaa !4658
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !4672 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.ad unwind label %bb.av, !call_target !4713

bb.ad:                                            ; preds = %bb.ac
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !4676
  %i.dg = load i64, ptr %i.z, align 8, !tbaa !4657
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !4658
  %i.dh = load i64, ptr %i.aa, align 8, !tbaa !4712
  %i.di = load i64, ptr %i.ae, align 8, !tbaa !4680
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_dequeued\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8 ${9:n}@$10\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.df, i64 8, i64 %i.dg, i64 8, i64 %.sroa.0.0.copyload.i, i64 8, i64 %i.dh, i64 8, i64 %i.di) #18, !srcloc !5529
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !5530
  %i.dj = load atomic ptr, ptr %i.ag acquire, align 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.dj, null
  br i1 %.not5.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.06.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dj, %bb.ad ] ; 3 uses
  %i.dk = load ptr, ptr %.06.i, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %.06.i, ptr noundef nonnull align 8 dereferenceable(40) %7) #18, !call_target !5531, !inline_history !5540
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !4667 ; 2 uses
  %.not.i19 = icmp eq ptr %i.do, null
  br i1 %.not.i19, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit", label %.lr.ph.i, !llvm.loop !5541

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit": ; preds = %.lr.ph.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !5542)
  call void @llvm.experimental.noalias.scope.decl(metadata !5545)
  %i.dp = load ptr, ptr %5, align 16, !tbaa !4685, !noalias !5548 ; 2 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !4685, !alias.scope !5548
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !52, !noalias !5548 ; 9 uses
  store ptr %i.dq, ptr %i.ah, align 8, !tbaa !52, !alias.scope !5548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !5548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5folly21EDFThreadPoolExecutor4Task3runEi(ptr noundef nonnull align 16 dereferenceable(144) %i.dp, i32 noundef %.0.i)
          to label %bb.ae unwind label %.body

bb.ae:                                            ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS_21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS0_6ThreadEEE3$_0EEvOT_.exit"
  %.not.i.i.i20 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i20, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dr, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !28
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #18, !call_target !1759, !inline_history !5549
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #18, !call_target !1760, !inline_history !5549
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i21 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i21, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.du, %bb.ai ], [ %i.ee, %bb.aj ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ef, label %bb.ak, label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !4688

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #18
  br label %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ag, %bb.ae
  %i.eg = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i2.i, label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5folly21EDFThreadPoolExecutor4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.eh, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !28
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #18, !call_target !1759, !inline_history !5549
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #18, !call_target !1760, !inline_history !5549
  br label %"_ZZN5folly21EDFThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEENK3$_1clEv.exit"

bb.an:                                            ; preds = %bb.al
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i3.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i3.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = add nsw i32 %i.ek, -1
end_hunk_0
