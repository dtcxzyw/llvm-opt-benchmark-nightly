Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/mutex?download=true
inline.NumInlined: 284
inline.NumDeleted: 115
begin_hunk_0_@_ZN4absl12lts_202605265Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE:bb.a
  call void @_ZN4absl12lts_202605265Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i32 noundef 3)
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !61
  %.not8 = icmp eq ptr %i.z, null
  br i1 %.not8, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not10 = icmp eq i64 %2, -1
  br i1 %.not10, label %bb.h, label %.critedge, !prof !71

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1604, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

.critedge:                                        ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit, %bb.f, %bb.g
  %i.ac = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i1 [ %i.ac, %.critedge ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_202605269Condition4EvalEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0)
  ret i1 %i.c
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::base_internal::SchedulingGuard::ScopedDisable", align 1 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null              ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = add nsw i32 %i.d, 1
  store atomic i32 %i.e, ptr %i.c monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = zext i1 %.not.i.i to i8
  store i8 %i.f, ptr %2, align 1, !tbaa !69
  %i.g = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  invoke void @_ZNK4absl12lts_202605265Mutex16AssertReaderHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  invoke fastcc void @_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc(i64 noundef %i.g, ptr noundef nonnull @.str.14)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.g, 16
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %i.g, 8
  %.not181 = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not181, i32 9, i32 8
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !tbaa !123
  %i.l = icmp eq ptr %1, null                     ; 7 uses
  br i1 %i.l, label %.outer.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.outer.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !70, !range !47, !noundef !48
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.outer.preheader, label %.invoke, !prof !14

.outer.preheader:                                 ; preds = %bb.h, %bb.g, %bb.i
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0158.ph = phi i32 [ %i.hd, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  %.0152.ph = phi ptr [ %.0152, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0146.ph = phi ptr [ %.0146, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0144.ph = phi ptr [ %.0144, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0140.ph = phi i64 [ %.0140, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %bb.aq
  %.0152.ph658 = phi ptr [ %.2154, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1124363, %bb.aq ]
  %.0146.ph659 = phi ptr [ %.2148, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1121365, %bb.aq ]
  %.0140.ph660 = phi i64 [ %.2142, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ 32, %bb.aq ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %.0152 = phi ptr [ %.0152.ph, %.outer ], [ %.0152.ph658, %._crit_edge.loopexit ] ; 5 uses
  %.0146 = phi ptr [ %.0146.ph, %.outer ], [ %.0146.ph659, %._crit_edge.loopexit ] ; 4 uses
  %.0144 = phi ptr [ %.0144.ph, %.outer ], [ %i.bh, %._crit_edge.loopexit ] ; 11 uses
  %.0140 = phi i64 [ %.0140.ph, %.outer ], [ %.0140.ph660, %._crit_edge.loopexit ] ; 3 uses
  %i.u = load atomic i64, ptr %0 monotonic, align 8 ; 23 uses
  %i.v = and i64 %i.u, 8
  %.not182 = icmp eq i64 %i.v, 0
  br i1 %.not182, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.w = and i64 %i.u, 6
  %i.x = icmp ne i64 %i.w, 4
  %or.cond = and i1 %i.l, %i.x
  br i1 %or.cond, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225, label %bb.k

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225: ; preds = %bb.j
  %i.y = and i64 %i.u, -41
  %i.z = cmpxchg ptr %0, i64 %i.u, i64 %i.y release monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ab = and i64 %i.u, 5
  %i.ac = icmp eq i64 %i.ab, 1
  %or.cond3 = and i1 %i.l, %i.ac
  br i1 %or.cond3, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224, label %bb.l

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224: ; preds = %bb.k
  %i.ad = icmp ult i64 %i.u, 512
  %.neg = select i1 %i.ad, i64 -257, i64 -256
  %i.ae = add i64 %.neg, %i.u
  %i.af = cmpxchg ptr %0, i64 %i.u, i64 %i.ae release monotonic, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = and i64 %i.u, 64
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = or disjoint i64 %i.u, 64
  %i.ak = cmpxchg ptr %0, i64 %i.u, i64 %i.aj acquire monotonic, align 8
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %bb.n, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %i.am = and i64 %i.u, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.l, label %.invoke, label %.preheader, !prof !71

.preheader:                                       ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.0132 = phi i1 [ %.1133, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ true, %.preheader ]
  %i.ap = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.aq = icmp sgt i64 %i.ap, 255
  %i.ar = add nsw i64 %i.ap, -256
  %i.as = select i1 %i.aq, i64 %i.ar, i64 %i.ap   ; 2 uses
  br i1 %.0132, label %bb.q, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.au = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.as, i32 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.av = icmp eq ptr %i.at, null
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %bb.r, %bb.p
  %.1133 = phi i1 [ %i.av, %bb.r ], [ false, %bb.p ]
  %.0131 = phi ptr [ %i.au, %bb.r ], [ null, %bb.p ] ; 2 uses
  %i.aw = and i64 %i.ap, -504
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 -98, i64 -105
  %i.az = and i64 %i.ap, 159
  %i.ba = and i64 %i.az, %i.ay
  %.not206 = icmp eq ptr %.0131, null
  %i.bb = ptrtoint ptr %.0131 to i64
  %i.bc = or i64 %i.bb, 4
  %i.bd = and i64 %i.as, -256
  %.pn207 = select i1 %.not206, i64 %i.bd, i64 %i.bc
  %.0134 = or i64 %.pn207, %i.ba
  %i.be = cmpxchg weak ptr %0, i64 %i.ap, i64 %.0134 release monotonic, align 8
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit278, label %bb.p, !llvm.loop !116

bb.s:                                             ; preds = %bb.n
  %i.bg = and i64 %i.u, -256
  %i.bh = inttoptr i64 %i.bg to ptr               ; 21 uses
  %i.bi = and i64 %i.u, 1
  %.not183 = icmp eq i64 %i.bi, 0
  br i1 %.not183, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.bl = and i64 %i.bk, -256
  %i.bm = icmp sgt i64 %i.bl, 256
  br i1 %i.bm, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bo = add nsw i64 %i.bk, -256
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !66
  br i1 %i.l, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bh, ptr noundef nonnull %1, i64 noundef %i.u, i32 noundef 2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not201 = icmp eq ptr %i.bp, null
  br i1 %.not201, label %.invoke, label %bb.x, !prof !71

bb.x:                                             ; preds = %bb.w
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.u, 191
  %i.bs = or i64 %i.br, %i.bq
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.0128 = phi i64 [ %i.bs, %bb.x ], [ %i.u, %bb.u ]
  store atomic i64 %.0128, ptr %0 release, align 8
  br label %.loopexit278

bb.z:                                             ; preds = %bb.s, %bb.t
  %i.bt = icmp eq ptr %.0144, null                ; 2 uses
  br i1 %i.bt, label %.critedge219.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !67, !range !47, !noundef !48
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge219, label %.invoke, !prof !14

.critedge219:                                     ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !83, !range !47, !noundef !48
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.critedge219.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge219
  store i8 1, ptr %i.bx, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %.0144, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %.not185 = icmp eq ptr %i.cb, null
  br i1 %.not185, label %bb.ac, label %.invoke, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %.not186 = icmp eq ptr %.0144, %i.bh
  br i1 %.not186, label %.critedge219.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %.0144, align 8, !tbaa !51 ; 2 uses
  %i.cd = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_(ptr noundef nonnull %.0144, ptr noundef %i.cc)
  br i1 %i.cd, label %bb.ae, label %.critedge219.thread

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !65
  br label %.critedge219.thread

.critedge219.thread:                              ; preds = %bb.z, %bb.ac, %bb.ad, %bb.ae, %.critedge219
  %i.ce = load ptr, ptr %i.bh, align 256, !tbaa !51 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59
  %i.ci = icmp eq ptr %i.ch, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.ci, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge219.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !61
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.thread486, label %bb.ag

.thread486:                                       ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 17
  store i8 1, ptr %i.cm, align 1, !tbaa !84
  br label %.preheader274.preheader

bb.ag:                                            ; preds = %bb.af, %.critedge219.thread
  %.not187 = icmp eq ptr %.0152, null
  br i1 %.not187, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %.0152, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  %i.cq = icmp eq ptr %i.cp, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.cr = icmp eq ptr %.0144, %i.bh
  %or.cond220 = or i1 %i.cr, %i.cq
  br i1 %or.cond220, label %bb.aw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = icmp eq ptr %.0144, %i.bh
  br i1 %i.cs, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ct = and i64 %i.u, -106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 0, ptr %i.cu, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  store i8 0, ptr %i.cv, align 1, !tbaa !67
  br i1 %i.l, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bh, ptr noundef nonnull %1, i64 noundef %i.u, i32 noundef 2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.cx = and i64 %i.u, 150
  %i.cy = ptrtoint ptr %i.cw to i64
  %.0126 = or i64 %i.cx, %i.cy
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.1127 = phi i64 [ %.0126, %bb.al ], [ %i.ct, %bb.aj ]
  store atomic i64 %.1127, ptr %0 release, align 8
  br label %.loopexit278

bb.an:                                            ; preds = %bb.ai
  %..0144 = select i1 %i.bt, ptr %i.bh, ptr %.0144
  %.0123 = load ptr, ptr %..0144, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i8 0, ptr %i.cz, align 16, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !65
  %.not188 = icmp eq ptr %i.db, null
  br i1 %.not188, label %.lr.ph.preheader, label %.invoke, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  store i8 1, ptr %i.dc, align 1, !tbaa !67
  store atomic i64 %i.u, ptr %0 release, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %.lr.ph.preheader
  %.1121365 = phi ptr [ %.2122, %bb.av ], [ %.0144, %.lr.ph.preheader ] ; 2 uses
  %.1124363 = phi ptr [ %i.ed, %bb.av ], [ %.0123, %.lr.ph.preheader ] ; 8 uses
  %.1141362 = phi i64 [ %.2142, %bb.av ], [ %.0140, %.lr.ph.preheader ] ; 3 uses
  %.1147361 = phi ptr [ %.2148, %bb.av ], [ %.0146, %.lr.ph.preheader ] ; 3 uses
  %.1153360 = phi ptr [ %.2154, %bb.av ], [ %.0152, %.lr.ph.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1124363, i64 17 ; 4 uses
  store i8 0, ptr %i.dd, align 1, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %.1124363, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !61 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !117

_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit: ; preds = %bb.ao
  br i1 %i.dl, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit, %.lr.ph
  %i.dm = icmp eq ptr %.1153360, null
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.dd, align 1, !tbaa !84
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59
  %i.dp = icmp eq ptr %i.do, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.dp, label %._crit_edge.loopexit, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !59
end_hunk_0
