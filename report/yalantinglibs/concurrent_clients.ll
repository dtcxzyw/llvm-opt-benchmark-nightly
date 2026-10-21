Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/concurrent_clients?download=true
inline.NumInlined: 35922
inline.NumDeleted: 13745
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN4asio6detail16thread_info_baseD2Ev:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !241  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !259
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !558  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !561  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !556
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = atomicrmw add ptr %i.g, i64 %i.d seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !558
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !561
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !557  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !552, !nonnull !253, !align !428 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !471, !range !252, !noundef !253
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !551, !range !252, !noundef !253
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #36 ; 0 uses
  store i8 1, ptr %i.q, align 8, !tbaa !551
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !558
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre3, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !556    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store i8 1, ptr %i.x, align 8, !tbaa !474
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !514  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !515 ; 2 uses
  %.not8.i = icmp eq ptr %i.ac, null
  %..i = select i1 %.not8.i, ptr %i.aa, ptr %i.ac
  store ptr %i.z, ptr %..i, align 8, !tbaa !514
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !514
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !515
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !556
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.af = phi ptr [ %.pre4, %bb.f ], [ %i.w, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 184 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !520
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 232 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !515 ; 2 uses
  %.not.i1 = icmp eq ptr %i.aj, null
  %..i2 = select i1 %.not.i1, ptr %i.ag, ptr %i.aj
  store ptr %i.ah, ptr %..i2, align 8, !tbaa !514
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !561  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !563
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = add nsw i64 %i.d, -1
  %i.i = atomicrmw add ptr %i.g, i64 %i.h seq_cst, align 8 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !563    ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %1 = atomicrmw add ptr %i.k, i64 -1 seq_cst, align 8
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.e, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !471, !range !252, !noundef !253
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  br i1 %i.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.p, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #36 ; 0 uses
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !471, !range !252
  %i.s = trunc nuw i8 %.pre.i.i to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.t, align 8, !tbaa !537
  br i1 %i.s, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !538
  %i.x = or i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !538
  %i.y = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !474, !range !252, !noundef !253
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !472 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.z, align 8, !tbaa !474
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.j, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.h, %bb.g, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.o, label %bb.i, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.i:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #36 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.o, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #36 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.i, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !565 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i64 0, ptr %i.an, align 8, !tbaa !561
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !525 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !564 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !552, !nonnull !253, !align !428 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !471, !range !252, !noundef !253
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !551, !range !252, !noundef !253
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #36 ; 0 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !551
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !565 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !514 ; 2 uses
  %.not.i = icmp eq ptr %.pre1, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread: ; preds = %bb.m, %bb.l, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.bc = phi ptr [ %.pre, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.am, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %i.bd = phi ptr [ %.pre1, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !563   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 232 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !515 ; 2 uses
  %.not8.i = icmp eq ptr %i.bi, null
  %..i = select i1 %.not8.i, ptr %i.bg, ptr %i.bi
  store ptr %i.bd, ptr %..i, align 8, !tbaa !514
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !514
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !515
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, %_ZN4asio6detail9scheduler13work_finishedEv.exit
  ret void

.body:                                            ; preds = %bb.j, %bb.k
  %i.bl = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #52
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #17

declare i32 @pause() local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #10

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !451    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.04.i.i = load ptr, ptr %i.b, align 8, !tbaa !490 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc
  %.06.i.i = phi ptr [ %.0.i.i, %.noexc ], [ %.04.i.i, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i)
          to label %.noexc unwind label %bb.c, !inline_history !23

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !490 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio17execution_context8shutdownEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN4asio17execution_context8shutdownEv.exit:      ; preds = %.noexc
  %.pre = load ptr, ptr %0, align 8, !tbaa !451   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !450 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.not2.i.i = icmp eq ptr %.pre2, null
  br i1 %.not2.i.i, label %_ZN4asio17execution_context7destroyEv.exit, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %i.h = phi ptr [ %i.j, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i ], [ %.pre2, %_ZN4asio17execution_context8shutdownEv.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #36, !inline_history !2977
  store ptr %i.j, ptr %i.g, align 8, !tbaa !450
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i, !llvm.loop !25

_ZN4asio17execution_context7destroyEv.exitthread-pre-split: ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !451
  br label %_ZN4asio17execution_context7destroyEv.exit

_ZN4asio17execution_context7destroyEv.exit:       ; preds = %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, %_ZN4asio17execution_context8shutdownEv.exit
  %i.n = phi ptr [ %.pr, %_ZN4asio17execution_context7destroyEv.exitthread-pre-split ], [ %.pre, %_ZN4asio17execution_context8shutdownEv.exit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %_ZN4asio17execution_context7destroyEv.exit.thread

_ZN4asio17execution_context7destroyEv.exit.thread: ; preds = %bb.a, %_ZN4asio17execution_context7destroyEv.exit
  %i.p = phi ptr [ %i.n, %_ZN4asio17execution_context7destroyEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #53
  br label %bb.b

bb.b:                                             ; preds = %_ZN4asio17execution_context7destroyEv.exit.thread, %_ZN4asio17execution_context7destroyEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #52
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !422  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !451  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.04.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !490 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.noexc.i
  %.06.i.i.i = phi ptr [ %.0.i.i.i, %.noexc.i ], [ %.04.i.i.i, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !183
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !23

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %.0.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !490 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN4asio17execution_context8shutdownEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZN4asio17execution_context8shutdownEv.exit.i:    ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !451 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56 ; 2 uses
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !450 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.pre2.i, null
  br i1 %.not2.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %i.j = phi ptr [ %i.l, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i ], [ %.pre2.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !456  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #36, !inline_history !26
  store ptr %i.l, ptr %.phi.trans.insert.i, align 8, !tbaa !450
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZN4asio17execution_context7destroyEv.exit.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i, !llvm.loop !25

_ZN4asio17execution_context7destroyEv.exit.i:     ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !451 ; 2 uses
  %i.p = icmp eq ptr %.pr.i, null
  br i1 %i.p, label %_ZN4asio17execution_contextD2Ev.exit, label %_ZN4asio17execution_context7destroyEv.exit.thread.i

_ZN4asio17execution_context7destroyEv.exit.thread.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.i, %bb.b
  %i.q = phi ptr [ %.pr.i, %_ZN4asio17execution_context7destroyEv.exit.i ], [ %i.d, %bb.b ], [ %.pre.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #53
  br label %_ZN4asio17execution_contextD2Ev.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #52
  unreachable

_ZN4asio17execution_contextD2Ev.exit:             ; preds = %_ZN4asio17execution_context7destroyEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.thread.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #53
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio17execution_contextD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context4workD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !568, !nonnull !253, !align !428 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %1 = atomicrmw add ptr %i.b, i64 -1 seq_cst, align 8
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !471, !range !252, !noundef !253
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  br i1 %i.f, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.g, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #36 ; 0 uses
  %.pre.i.i = load i8, ptr %i.d, align 8, !tbaa !471, !range !252
  %i.j = trunc nuw i8 %.pre.i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !537
  br i1 %i.j, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !538
  %i.o = or i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !538
  %i.p = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !474, !range !252, !noundef !253
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !472  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.q, align 8, !tbaa !474
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !183
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.g, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.f, label %bb.f, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #36 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.f, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #36 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.a
  ret void

.body:                                            ; preds = %bb.g, %bb.h
  %i.ad = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !568, !nonnull !253, !align !428 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %1 = atomicrmw add ptr %i.e, i64 -1 seq_cst, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_ZN4asio10io_context4workD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !471, !range !252, !noundef !253
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  br i1 %i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.j, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #36 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.g, align 8, !tbaa !471, !range !252
  %i.m = trunc nuw i8 %.pre.i.i.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.n, align 8, !tbaa !537
  br i1 %i.m, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !538
  %i.r = or i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !538
  %i.s = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !474, !range !252, !noundef !253
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !472  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.t, align 8, !tbaa !474
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i unwind label %bb.h, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  br i1 %i.i, label %bb.g, label %_ZN4asio10io_context4workD2Ev.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #36 ; 0 uses
  br label %_ZN4asio10io_context4workD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.i, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #36 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %i.ag = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #52
  unreachable

_ZN4asio10io_context4workD2Ev.exit:               ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZN4asio10io_context4workD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !288    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #55
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #54 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !241
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !241
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !200
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !200
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !241, !alias.scope !2986
  store ptr null, ptr %i.z, align 8, !tbaa !228, !alias.scope !2986
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !241, !alias.scope !2985
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !420, !alias.scope !2986
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !2981

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !241, !alias.scope !2988
  store ptr null, ptr %i.ae, align 8, !tbaa !228, !alias.scope !2988
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !241, !alias.scope !2987
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !420, !alias.scope !2988
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2981

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !435
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #53
end_hunk_0
begin_hunk_1_@_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_16outstanding_work11untracked_tILi0EEEEEEEvPvPKvSB_:bb.a
.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSM_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3195 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3195

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3195
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSM_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3196 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3196

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3196
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_12relationship6fork_tILi0EEEEEEEvPvPKvSB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSQ_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3197 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3197

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSQ_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3198 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3198

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_12relationship14continuation_tILi0EEEEEEEvPvPKvSB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvST_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3199 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3199

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvST_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !183
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36, !inline_history !3200 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %.noexc.i unwind label %bb.b, !inline_history !3200

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36, !inline_history !3200
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !687
  %i.b = and i64 %i.a, -4                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427, !nonnull !253, !align !428 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %1 = atomicrmw add ptr %i.f, i64 -1 seq_cst, align 8
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !471, !range !252, !noundef !253
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  br i1 %i.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #36 ; 0 uses
  %.pre.i.i = load i8, ptr %i.h, align 8, !tbaa !471, !range !252
  %i.n = trunc nuw i8 %.pre.i.i to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.o, align 8, !tbaa !537
  br i1 %i.n, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !538
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !538
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !474, !range !252, !noundef !253
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !472  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 8, !tbaa !474
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.j, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #36 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.j, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #36 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.g, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.b, %bb.a
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  %i.ah = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4asio9execution6detail17any_executor_base14target_type_exINS_10io_context19basic_executor_typeISaIvELm4EEEEERKSt9type_infov() #11 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4asio10io_context19basic_executor_typeISaIvELm4EEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio9execution6detail17any_executor_base8equal_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEbRKS2_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !583
  %i.e = load i64, ptr %i.b, align 8, !tbaa !687
  %i.f = load i64, ptr %i.d, align 8, !tbaa !687
  %i.g = icmp eq i64 %i.e, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10execute_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEvRKS2_ONS_6detail17executor_functionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583
  tail call void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::detail::executor_op<asio::detail::executor_function, std::allocator<void>>::ptr", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !687    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !427, !nonnull !253, !align !428
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !546 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !674
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4asio6detail11executor_opINS0_17executor_functionESaIvENS0_19scheduler_operationEE3ptr8allocateERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !544
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !546 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !27

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !545
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !677    ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !677
  fence acquire
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !679
  invoke void %i.p(ptr noundef nonnull %i.o, i1 noundef zeroext true)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit unwind label %bb.f, !inline_history !35

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit: ; preds = %bb.d, %bb.e
  fence release
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  fence release
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #36 ; 0 uses
  %i.t = load i64, ptr %0, align 8, !tbaa !687
  %i.u = and i64 %i.t, -4
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !427, !nonnull !253, !align !428
  invoke void @_ZN4asio6detail9scheduler25capture_current_exceptionEv(ptr noundef nonnull align 8 dereferenceable(256) %i.x)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_end_catch()
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN4asio6detail17executor_functionD2Ev.exit13 unwind label %bb.k

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread: ; preds = %bb.c, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge, %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %.pre-phi.ph = phi ptr [ %.pre, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge ], [ %i.h, %_ZN4asio6detail9scheduler12can_dispatchEv.exit ], [ %i.h, %bb.c ]
  %.pr = load ptr, ptr %.pre-phi.ph, align 8, !tbaa !546 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !674
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12async_simple4SlotD2Ev:bb.a
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36, !inline_history !61
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36, !inline_history !61
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !654 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !631 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #53
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !63

_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !633
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !632
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !633   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !632
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #53
  br label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit

_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !211

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.93)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #36
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !971
  %i.d = load i64, ptr %1, align 8, !tbaa !1028   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1028
  %i.f = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #60
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !3699 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr42.i, align 8, !tbaa !1028
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !241, !alias.scope !3702
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !241
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !3699
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #36, !inline_history !64
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !62

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.929, align 8            ; 4 uses
  %3 = alloca %"class.std::shared_ptr.241", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1037 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3703, !nonnull !253, !align !428
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.d, ptr %2, align 8, !tbaa !1045
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !241
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !241
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !200
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !200
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1046
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.h
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !628
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #36 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !241  ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !784
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr nonnull %i.y)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.g, !inline_history !65

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.i, %bb.h
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !228 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !231
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36, !inline_history !61
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36, !inline_history !61
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !969
  %i.c = load ptr, ptr %0, align 8, !tbaa !1045   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !969   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.c) #36
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !969
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %1, i64 16, i1 false), !tbaa.struct !487
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !1048
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = icmp ne i8 %i.e, 2
  %i.l = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.c) #36
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i8 -1, ptr %i.d, align 8, !tbaa !969
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %1, i64 24, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !969
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !776

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.m = load ptr, ptr %1, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !259
  store ptr %i.m, ptr %i.c, align 8, !tbaa !259
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.o, ptr %i.c, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  store i8 2, ptr %i.d, align 8, !tbaa !969
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit, label %bb.m, !prof !211

bb.m:                                             ; preds = %bb.l
  %i.p = icmp ne i8 %i.e, 2
  %i.q = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.c) #36
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S6_S8_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
end_hunk_2
begin_hunk_3_@_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE9tryResultEv:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i
  %.str.98.sink = phi ptr [ @.str.97, %_ZSt26__throw_bad_variant_accessb.exit.i.i ], [ @.str.98, %bb.a ]
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.str.98.sink, ptr %i.i, align 8, !tbaa !770
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont unwind label %bb.e

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont:  ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke
  unreachable

_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.j, align 8, !tbaa !969
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread, %_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
  ret void

bb.e:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateSt4pairISt10error_codemES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !969
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !775

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.98, ptr %i.d, align 8, !tbaa !770
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.97, ptr %i.f, align 8, !tbaa !770
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable

_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !211

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.93)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #36
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !794
  %i.d = load i64, ptr %1, align 8, !tbaa !1028   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1028
  %i.f = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #60
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !3704 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr.i, align 8, !tbaa !1028
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !241, !alias.scope !3707
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !241
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !3704
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #36, !inline_history !66
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !47

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.941, align 8            ; 4 uses
  %3 = alloca %"class.std::shared_ptr.241", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3708, !nonnull !253, !align !428
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.d, ptr %2, align 8, !tbaa !1051
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN12async_simple3TryIbEaSEOS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryIbEaSEOS1_.exit:             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !241
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !241
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !200
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !200
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1046
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.g
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !628
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #36 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !241  ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !784
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.x)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.i, !inline_history !65

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.z

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !228 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !231
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36, !inline_history !61
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36, !inline_history !61
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #36
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !835
  %i.c = load ptr, ptr %0, align 8, !tbaa !1051   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !835   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #36
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !835
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 8, !tbaa !224, !range !252, !noundef !253
  store i8 %i.h, ptr %i.c, align 8, !tbaa !224
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ne i8 %i.e, 2
  %i.j = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #36
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.k = load i8, ptr %1, align 8, !tbaa !224, !range !252, !noundef !253
  store i8 %i.k, ptr %i.c, align 8, !tbaa !837
  store i8 1, ptr %i.d, align 8, !tbaa !835
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !776

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.l = load ptr, ptr %1, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !259
  store ptr %i.l, ptr %i.c, align 8, !tbaa !259
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.n, ptr %i.c, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  store i8 2, ptr %i.d, align 8, !tbaa !835
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit, label %bb.m, !prof !211

bb.m:                                             ; preds = %bb.l
  %i.o = icmp ne i8 %i.e, 2
  %i.p = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #36
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !835
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPvEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN7easylog8record_tlsIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEERS0_RKT_.buf, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !241    ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = sub nuw nsw i32 67, %i.g
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = icmp ugt ptr %i.c, inttoptr (i64 255 to ptr)
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.d, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.l = and i64 %.02830.i.i, 15
  %i.m = lshr i64 %.02830.i.i, 4
  %i.n = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !199
  %i.p = zext i32 %.031.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  store i8 %i.o, ptr %i.q, align 1, !tbaa !199
  %i.r = and i64 %i.m, 15
  %i.s = lshr i64 %.02830.i.i, 8                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !199
  %i.v = add nsw i32 %.031.i.i, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !199
  %i.y = add nsw i32 %.031.i.i, -2
  %i.z = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.028.lcssa.i.i = phi i64 [ %i.d, %bb.b ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.aa = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = and i64 %.028.lcssa.i.i, 15
  %i.ac = lshr i64 %.028.lcssa.i.i, 4
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !199
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !199
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.ac, %bb.c ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !199
  %narrow = add nuw nsw i32 %i.i, 2
  %i.ag = zext nneg i32 %narrow to i64
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.d, %bb.a
  %.sink109.i = phi i8 [ %storemerge.i.i, %bb.d ], [ 48, %bb.a ]
  %.sink.i = phi i64 [ %i.ag, %bb.d ], [ 3, %bb.a ] ; 4 uses
  store i8 %.sink109.i, ptr %i.b, align 2, !tbaa !199
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #55
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %i.am = add i64 %i.aj, %.sink.i                 ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !209 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !199
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 16 %i.a, i64 %.sink.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.g
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !210
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !209
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tE(ptr noundef nonnull align 8 dereferenceable(1352) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.993", align 8 ; 9 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %4 = alloca %"struct.refvalue::meta_string.798", align 1 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.async_simple::coro::Lazy.108", align 8 ; 8 uses
  %6 = alloca %"class.std::weak_ptr.754", align 16 ; 3 uses
  %7 = alloca %class.anon.1003, align 1           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54, !noalias !3754 ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1060, !noalias !3754
  store ptr %i.e, ptr %i.d, align 8, !tbaa !1060, !noalias !3754
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1061, !noalias !3754
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1061, !noalias !3754
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !241, !noalias !3754
  store ptr null, ptr %i.k, align 8, !tbaa !228, !noalias !3754
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !241, !noalias !3754
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false), !noalias !3754
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1063, !noalias !3754
  store i64 %i.n, ptr %i.m, align 8, !tbaa !1063, !noalias !3754
  store ptr null, ptr %i.b, align 8, !tbaa !1063, !noalias !3754
  store ptr %i.d, ptr %2, align 8, !tbaa !1097, !alias.scope !3754
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i64 1 seq_cst, align 8
  %i.u = getelementptr inbounds [616 x i8], ptr %i.o, i64 %i.q
  %i.v = invoke noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.u)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i: ; preds = %.noexc
  %i.x = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i
  br i1 %i.x, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread: ; preds = %.noexc, %.noexc22
  %8 = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit: ; preds = %.noexc22
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.b, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.b:                                             ; preds = %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aa = cmpxchg ptr %i.z, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.c, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.af = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #36 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.f unwind label %bb.m       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.ak, align 8, !tbaa !242
  %i.al = sub nsw i64 %i.af, %.sroa.0.0.copyload.i2.i.i
  %i.am = sdiv i64 %i.al, 1000000
  %i.an = load atomic i64, ptr %i.ah monotonic, align 8
  %i.ao = srem i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.s

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.f, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i8 91, ptr %4, align 1, !alias.scope !3755
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tEENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !954
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.95, i64 3, i1 false), !tbaa.struct !955
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.af, i32 noundef 1, i64 20, ptr nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.as = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA47_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 1 dereferenceable(47) @.str.134)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %0, ptr %i.a, align 8, !tbaa !1098
  %i.at = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.au = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 1 dereferenceable(2) @.str.135)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aw = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !252, !noundef !253
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.l, !prof !211

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.au)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.p

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.s

bb.m:                                             ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i, %bb.c, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.ba, %bb.o ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.an

bb.s:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !198, !noalias !3756 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %0, align 8, !tbaa !241, !noalias !3756
  store <2 x ptr> %i.bf, ptr %6, align 16, !tbaa !241, !alias.scope !3756
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199, !noalias !3756
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !200, !noalias !3756
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !200, !noalias !3756
  br label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !3756 ; 0 uses
  br label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit

_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !242
  %.sroa.0.0.copyload.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bm, i64 50)
  invoke void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.108") align 8 %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.0.0.copyload.sroa.speculated)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bn = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #36
  %i.bo = invoke noundef nonnull align 8 dereferenceable(113) ptr @_ZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_j(i32 noundef %i.bn)
          to label %bb.x unwind label %bb.af      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !287
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !288
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4
  %i.bz = urem i64 %i.bq, %i.by
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !291
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !293
  %i.cd = load ptr, ptr %5, align 8, !tbaa !356
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !352
  invoke void @_ZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io16ib_buffer_pool_t7enqueueERNS5_11ib_buffer_tEEUlOT_E_EEvSA_Q14isLazyCallbackIS9_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit unwind label %bb.af

_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.cf = load ptr, ptr %5, align 8, !tbaa !356   ; 3 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr nonnull %i.cf)
          to label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit unwind label %bb.z, !inline_history !5

bb.z:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #52
  unreachable
end_hunk_4
begin_hunk_5_@_ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_:bb.a
  store i8 %.sink109.i, ptr %i.b, align 2, !tbaa !199
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #55
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %i.am = add i64 %i.aj, %.sink.i                 ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !209 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !199
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 16 %i.a, i64 %.sink.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.g
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !210
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !209
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %0
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.108") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(16) %1, i64 %2) local_unnamed_addr #37 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(264) ptr @_ZnamRKSt9nothrow_t(i64 noundef 264, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #56 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr470 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 %2, ptr %.spill.addr, align 8
  %.spill.addr425 = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !241
  store <2 x ptr> %i.d, ptr %.spill.addr425, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr470, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !241, !alias.scope !3761
  %index.addr471 = getelementptr inbounds nuw i8, ptr %i.a, i64 253
  store i8 0, ptr %index.addr471, align 1
  br label %AfterCoroEnd

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !241, !alias.scope !3762
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1102
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1103
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3769 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1102
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1103
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1104 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !3763

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1103
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !3769
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1102
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1102 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !3764

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #62 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1102
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1103
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1103
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !1103
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !1103
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !1103
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !3765

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !1104
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !1102 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !1102
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !1103
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1103
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !3769
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !3766

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1111
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNSB_14AllocationModeE0EEEbRPNSC_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1112 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1124 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1125 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 304 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !3770

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 312 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !74

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(328) ptr @malloc(i64 noundef 328) #62 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  store ptr null, ptr %i.at, align 8, !tbaa !1126
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !1128
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [328 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 264
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1130
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !1111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !1134
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1130
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i64, ptr %1, align 8, !tbaa !1097
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !1097
  store ptr null, ptr %1, align 8, !tbaa !1097
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !252, !noundef !253
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1135, !range !252, !noundef !253
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1136 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #62 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1136
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !393
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !1135
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1112
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1124
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = or i64 %i.ak, %i.aj
  %i.am = add i64 %i.al, 1
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 33) ; 2 uses
  %spec.select.i.i = lshr i64 %i.an, 1            ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !1142
  %i.ap = shl i64 %spec.select.i.i, 5
  %i.aq = add i64 %i.ap, 39
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #62 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i.i.i

bb.g:                                             ; preds = %bb.f
  store i64 %spec.select.i.i, ptr %i.v, align 8, !tbaa !1142
  br label %bb.p

.loopexit.i.i.i:                                  ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 0, %i.av
  %i.ax = and i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !1144
  store atomic i64 -1, ptr %i.az monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !1145
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !1146
  store i64 0, ptr %i.w, align 8, !tbaa !1147
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !1148
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1149
  store atomic ptr %i.ar, ptr %i.u release, align 8
  br label %bb.p

bb.h:                                             ; preds = %select.unfold._crit_edge
  %i.bc = tail call noalias noundef dereferenceable_or_null(104) ptr @malloc(i64 noundef 104) #62 ; 10 uses
  %.not.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i14, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !1136
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !393
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bf, i8 0, i64 49, i1 false)
  store ptr %0, ptr %i.bg, align 8, !tbaa !1112
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE, i64 16), ptr %i.bc, align 8, !tbaa !183
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 2 uses
  store i64 32, ptr %i.bh, align 8, !tbaa !1153
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 96 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !3772
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.k, label %bb.j
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE17_M_default_appendEm:bb.a
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1078 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1079   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1417
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !181
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4392

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !181
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !181
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr null, ptr %i.w, align 8, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store ptr null, ptr %i.y, align 8, !tbaa !181
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  store ptr null, ptr %i.z, align 8, !tbaa !181
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  store ptr null, ptr %i.aa, align 8, !tbaa !181
  %i.ab = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !4393

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1078
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #55
  unreachable

_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 288230376151711743) ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #54 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !181
  %i.ak = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !4394

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.al, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i30.prol ]
  %i.am = icmp ult i64 %1, 8
  br i1 %i.am, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.aw, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.av, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !181
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr null, ptr %i.ao, align 8, !tbaa !181
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store ptr null, ptr %i.ap, align 8, !tbaa !181
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store ptr null, ptr %i.aq, align 8, !tbaa !181
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  store ptr null, ptr %i.ar, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  store ptr null, ptr %i.as, align 8, !tbaa !181
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  store ptr null, ptr %i.at, align 8, !tbaa !181
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240
  store ptr null, ptr %i.au, align 8, !tbaa !181
  %i.av = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 256
  %.not.i.i.i33.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !4393

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i37 ], [ %i.ah, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4400)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.sroa.0.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !199, !noalias !4399
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i64 16, i1 false), !tbaa.struct !576, !alias.scope !4401
  store <2 x i64> %.sroa.0.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %.012.i.i.i, align 8, !tbaa !199, !noalias !4400
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !241, !alias.scope !4399
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !241, !alias.scope !4400
  store ptr null, ptr %i.ay, align 8, !tbaa !241, !alias.scope !4400
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !241, !alias.scope !4400
  store <2 x ptr> %i.bc, ptr %i.ax, align 8, !tbaa !241, !alias.scope !4399
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37, !llvm.loop !4398

_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !1417
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #53
  br label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41

_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41: ; preds = %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.e
  store ptr %i.ah, ptr %0, align 8, !tbaa !1079
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %1
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !1078
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !1417
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Try.1453", align 8 ; 11 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1422   ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %3 = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.c = load atomic i8, ptr %i.a acquire, align 1
  %i.d = and i8 %i.c, 33
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %3, 1
  %or.cond.not.i = or i1 %i.f, %i.e
  br i1 %or.cond.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.260)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.r unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.0.i) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #36
  %i.k = load ptr, ptr %2, align 8, !tbaa !259    ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  br label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 2, ptr %i.l, align 8, !tbaa !798
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.m = load i8, ptr %i.l, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.j, !prof !211

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit

_ZN12async_simple3TryISt10error_codeED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
  %i.p = load ptr, ptr %2, align 8, !tbaa !259
  %.not.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i2, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  invoke void @__cxa_end_catch()
          to label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit unwind label %bb.w

bb.m:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load i8, ptr %i.l, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i3 = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i3, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit6, label %bb.n, !prof !211

bb.n:                                             ; preds = %bb.m
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i5 = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i4
  br i1 %or.cond.i.i.i.i5, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit6, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit6

_ZN12async_simple3TryISt10error_codeED2Ev.exit6:  ; preds = %bb.m, %bb.n, %bb.o
  %i.u = load ptr, ptr %2, align 8, !tbaa !259
  %.not.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i7, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8, label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit6
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8:  ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit6, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #52
  unreachable

bb.r:                                             ; preds = %bb.d
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = atomicrmw add ptr %i.x, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %4, 1
  br i1 %.not.i, label %bb.s, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

bb.s:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !798  ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.t, !prof !211

bb.t:                                             ; preds = %bb.s
  %i.ab = icmp ne i8 %i.aa, 2
  %i.ac = load ptr, ptr %i.y, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  %or.cond.i.i.i.i.i = select i1 %i.ab, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.s, %bb.t, %bb.u
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, %bb.a
  ret void

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.w ], [ %i.q, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8 ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ae) #52
  unreachable
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1456, align 8           ; 4 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 33
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !488

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.261)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #36
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.e, ptr %2, align 8, !tbaa !1425
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.h = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5 [
    i8 0, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.i = cmpxchg ptr %0, i8 0, i8 1 release monotonic, align 1 ; 2 uses
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.f
  %i.k = extractvalue { i8, i1 } %i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %.0 = phi i8 [ %i.k, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.h, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit ]
  %i.l = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5

bb.h:                                             ; preds = %bb.g
  call void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext false)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5: ; preds = %bb.g, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.262)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.j:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #36
  br label %common.resume

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %3 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 7 uses
  %4 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %class.anon.1459, align 8           ; 6 uses
  %7 = alloca %"class.std::function", align 8     ; 9 uses
  %8 = alloca %class.anon.1460, align 8           ; 6 uses
  %i.a = load atomic i8, ptr %0 monotonic, align 8
  %i.b = icmp eq i8 %i.a, 32
  br i1 %i.b, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !488

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.263)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.merged23, %bb.bf ], [ %i.ah, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #36
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !4404, !range !252, !noundef !253
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4405 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %or.cond = or i1 %1, %i.j
  br i1 %or.cond, label %bb.f, label %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit

_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.i), !inline_history !4402
  br i1 %i.n, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !1438
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i8 1 monotonic, align 1 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i8 1 monotonic, align 1 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.u, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1440
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.o, !inline_history !1441

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.h
  %9 = atomicrmw add ptr %i.q, i8 -1 monotonic, align 1
  %i.z = icmp eq i8 %9, 1
  br i1 %i.z, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.i:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %10 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %10, 1
  br i1 %.not.i.i.i, label %bb.l, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.m, !prof !211

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.af, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.bg

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

bb.p:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.aj = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %0, ptr %4, align 8, !tbaa !1438
  %i.am = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.an = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !4406 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4405 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %0, ptr %6, align 8, !tbaa !1438
  store ptr null, ptr %3, align 8, !tbaa !1438
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.au, align 8, !tbaa !1438
  store ptr null, ptr %6, align 8, !tbaa !1438
  store ptr %i.au, ptr %5, align 8, !tbaa !241
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.av, align 8, !tbaa !574
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.at, align 8, !tbaa !575
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !575 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #52
  unreachable

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %i.az, label %bb.ap, label %bb.ai

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit33

bb.w:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !575 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit33 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit33:                 ; preds = %bb.x, %bb.w, %bb.v
  %.pn16 = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bf, %bb.x ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.am

bb.z:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.e, align 8, !tbaa !4404, !range !252, !noundef !253
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !4405 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %0, ptr %8, align 8, !tbaa !1438
  store ptr null, ptr %3, align 8, !tbaa !1438
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.bo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bq = xor i8 %i.bk, 1
  store ptr %0, ptr %i.bo, align 8, !tbaa !1438
  store ptr null, ptr %8, align 8, !tbaa !1438
  store ptr %i.bo, ptr %7, align 8, !tbaa !241
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bp, align 8, !tbaa !574
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.bn, align 8, !tbaa !575
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !183
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.ap, i8 %i.bq)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !575 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #52
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit46

bb.af:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !575 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cb, null
  br i1 %.not.i45, label %_ZNSt14_Function_baseD2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit46 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit46:                 ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ag ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.am

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br i1 %i.bu, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit36
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.264)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.bi unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.cf) #36
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNSt14_Function_baseD2Ev.exit46, %_ZNSt14_Function_baseD2Ev.exit33
  %.pn18 = phi { ptr, i32 } [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ], [ %.pn16, %_ZNSt14_Function_baseD2Ev.exit33 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit46 ] ; 3 uses
  %.210 = extractvalue { ptr, i32 } %.pn18, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.cj = icmp eq i32 %.210, %i.ci
  br i1 %i.cj, label %bb.an, label %bb.bf

bb.an:                                            ; preds = %bb.am
  %.2 = extractvalue { ptr, i32 } %.pn18, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.2) #36 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.ao unwind label %bb.bd

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit36, %bb.ao, %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit
  %11 = atomicrmw add ptr %i.ak, i8 -1 monotonic, align 1
  %i.cn = icmp eq i8 %11, 1
  br i1 %i.cn, label %bb.aq, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i54, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48: ; preds = %bb.ar, %bb.aq, %bb.ap
  %12 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i.i49 = icmp eq i8 %12, 1
  br i1 %.not.i.i.i49, label %bb.at, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

bb.at:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq i8 %i.cv, -1
  br i1 %.not.i.i.i.i.i.i50, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.au, !prof !211

bb.au:                                            ; preds = %bb.at
  %i.cw = icmp ne i8 %i.cv, 2
  %i.cx = load ptr, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cx, null
  %or.cond.i.i.i.i.i.i.i52 = select i1 %i.cw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53: ; preds = %bb.av, %bb.au, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.cy = load ptr, ptr %3, align 8, !tbaa !1438  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, label %bb.aw

bb.aw:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %13 = atomicrmw add ptr %i.cz, i8 -1 monotonic, align 1
  %i.da = icmp eq i8 %13, 1
  br i1 %i.da, label %bb.ax, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57

bb.ax:                                            ; preds = %bb.aw
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i63, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %14 = atomicrmw add ptr %i.dg, i8 -1 acq_rel, align 1
  %.not.i.i.i58 = icmp eq i8 %14, 1
  br i1 %.not.i.i.i58, label %bb.ba, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

bb.ba:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.dj, -1
  br i1 %.not.i.i.i.i.i.i59, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bb, !prof !211

bb.bb:                                            ; preds = %bb.ba
  %i.dk = icmp ne i8 %i.dj, 2
  %i.dl = load ptr, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  %or.cond.i.i.i.i.i.i.i61 = select i1 %i.dk, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60
  br i1 %or.cond.i.i.i.i.i.i.i61, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.cy, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.bg

bb.bd:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bh

bb.be:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.am
  %.merged23 = phi { ptr, i32 } [ %.pn18, %bb.am ], [ %i.dn, %bb.be ], [ %i.dm, %bb.bd ]
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %common.resume

bb.bg:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #52
  unreachable

bb.bi:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !798
  %i.c = load ptr, ptr %0, align 8, !tbaa !1425   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !798   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #36
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !798
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !775

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !487
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp ne i8 %i.e, 2
  %i.i = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #36
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i8 -1, ptr %i.d, align 8, !tbaa !798
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !487
  store i8 1, ptr %i.d, align 8, !tbaa !798
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !776

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.j = load ptr, ptr %1, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !259
  store ptr %i.j, ptr %i.c, align 8, !tbaa !259
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #36
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.l, ptr %i.c, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  store i8 2, ptr %i.d, align 8, !tbaa !798
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit, label %bb.m, !prof !211

bb.m:                                             ; preds = %bb.l
  %i.m = icmp ne i8 %i.e, 2
  %i.n = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #36
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !798
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.c, align 8, !tbaa !183
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1440
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1438   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_, ptr %0, align 8, !tbaa !491
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !241
  store ptr %i.a, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !241
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1438 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1438
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !1438   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1438
  store ptr null, ptr %0, align 8, !tbaa !1438
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1440
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !1441

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1438 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1438 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #53
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_, ptr %0, align 8, !tbaa !491
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !241
  store ptr %i.a, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !241
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1438 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1438
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !1438   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1438
  store ptr null, ptr %0, align 8, !tbaa !1438
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1440
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !1441

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1438 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1438 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #53
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK7coro_io10ib_deleterclEP6ibv_qp(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %3 = alloca %"struct.refvalue::meta_string.1102", align 1 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke i32 @ibv_destroy_qp(ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.ad      ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !201

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.h:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.g, %bb.e, %bb.d
  %i.g = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.h = icmp slt i32 %i.g, 6
  br i1 %i.h, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.i = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #36 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.j, label %_ZN7easylog6loggerILm0EE8instanceEv.exit12, !prof !201

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i9 = icmp eq i32 %i.l, 0
  br i1 %.not.i9, label %_ZN7easylog6loggerILm0EE8instanceEv.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit12

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit12:       ; preds = %bb.l, %bb.j, %bb.i
  %i.o = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit12
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !242
  %i.q = sub nsw i64 %i.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = sdiv i64 %i.q, 1000000
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.t = srem i64 %i.r, %i.s
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.ac

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit12, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i8 91, ptr %3, align 1, !alias.scope !4411
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) @__const._ZZNK7coro_io10ib_deleterclEP6ibv_qpENKUlvE_clEv.prefix, i64 16, i1 false), !tbaa.struct !1227
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.95, i64 3, i1 false), !tbaa.struct !955
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 %i.i, i32 noundef 5, i64 19, ptr nonnull %3)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !210  ; 5 uses
  %i.z = icmp sgt i64 %i.y, 9223372036854775785
  br i1 %i.z, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.n
  %i.aa = add nsw i64 %i.y, 22                    ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !209 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !199
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.aa, %i.ag
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ah, ptr noundef nonnull align 1 dereferenceable(22) @.str.265, i64 22, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull @.str.265, i64 noundef 22)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.o, %bb.p
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !210
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !209
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i8 0, ptr %i.aj, align 1, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #58 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !183, !noalias !4412
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !4412
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.a)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %bb.ad, !inline_history !15

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.q
  %i.ao = load ptr, ptr %4, align 8, !tbaa !209   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !210 ; 6 uses
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !210 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16

.invoke:                                          ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #55
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16: ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.au = add i64 %i.ar, %i.aq                    ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4asio6detail21resolver_service_baseC2ERNS_17execution_contextE:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i8 1, ptr %i.m, align 8, !tbaa !471
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  invoke void @_ZN4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #36 ; 0 uses
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store ptr null, ptr %i.q, align 8, !tbaa !472
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store ptr @_ZN4asio6detail9scheduler16get_default_taskERNS_17execution_contextE, ptr %i.r, align 8, !tbaa !473
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i8 1, ptr %i.t, align 8, !tbaa !474
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.u, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.v, align 4, !tbaa !475
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store ptr null, ptr %i.w, align 8, !tbaa !476
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.x, align 8, !tbaa !1454
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !1456
  %i.z = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.o, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 256) #53
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aa, %bb.e ]
  %i.ac = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #36 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1456 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !484, !range !252, !noundef !253
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !539
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #36 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i:       ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1454 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail21resolver_service_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #36, !inline_history !4447
  br label %_ZN4asio6detail21resolver_service_baseD2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

_ZN4asio6detail21resolver_service_baseD2Ev.exit:  ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #36 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1456 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !484, !range !252, !noundef !253
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !539
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #36 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i:     ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1454 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #36, !inline_history !4448
  br label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit: ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE8shutdownEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE11notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base16base_notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail30execution_context_service_baseINS0_16resolver_serviceINS_2ip3tcpEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1454 ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %1 = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !471, !range !252, !noundef !253
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #36 ; 0 uses
  %.pre.i.i = load i8, ptr %i.e, align 8, !tbaa !471, !range !252
  %i.k = trunc nuw i8 %.pre.i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !537
  br i1 %i.k, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !538
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !538
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !474, !range !252, !noundef !253
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !472  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.r, align 8, !tbaa !474
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.g, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #36 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %bb.h, %bb.m
  %.sink7 = phi ptr [ %i.ae, %bb.m ], [ %i.b, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.ab, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #36 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.bc, %bb.m ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.g
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1454 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !471, !range !252, !noundef !253
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  br i1 %i.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.ai, align 8, !tbaa !537
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #36 ; 0 uses
  %.pre.i = load i8, ptr %i.af, align 8, !tbaa !471, !range !252
  %i.al = trunc nuw i8 %.pre.i to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.am, align 8, !tbaa !537
  br i1 %i.al, label %bb.i, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.i:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 160 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !538
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !538
  %i.ar = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !474, !range !252, !noundef !253
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !472 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.as, align 8, !tbaa !474
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !183
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.m, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.k, %bb.j, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.ah, label %bb.l, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #36 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ah, label %common.resume.sink.split, label %common.resume

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1456 ; 4 uses
  %.not1 = icmp eq ptr %i.be, null
  br i1 %.not1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4asio6detail9scheduler4stopEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !484, !range !252, !noundef !253
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread, label %_ZN4asio6detail12posix_thread4joinEv.exit

_ZN4asio6detail12posix_thread4joinEv.exit:        ; preds = %bb.n
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !539
  %i.bj = tail call i32 @pthread_join(i64 noundef %i.bi, ptr noundef null) ; 0 uses
  store i8 1, ptr %i.bf, align 8, !tbaa !484
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1456 ; 2 uses
  %i.bk = icmp eq ptr %.pre, null
  br i1 %i.bk, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread

_ZN4asio6detail12posix_thread4joinEv.exit.thread: ; preds = %bb.n, %_ZN4asio6detail12posix_thread4joinEv.exit
  %i.bl = phi ptr [ %.pre, %_ZN4asio6detail12posix_thread4joinEv.exit ], [ %i.be, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !484, !range !252, !noundef !253
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN4asio6detail12posix_threadD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !539
  %i.bq = tail call i32 @pthread_detach(i64 noundef %i.bp) #36 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i

_ZN4asio6detail12posix_threadD2Ev.exit.i:         ; preds = %bb.o, %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit: ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit, %_ZN4asio6detail12posix_threadD2Ev.exit.i
  store ptr null, ptr %i.bd, align 8, !tbaa !1456
  br label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, %_ZN4asio6detail9scheduler4stopEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !1454 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !183
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(256) %i.br) #36, !inline_history !4449
  br label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit: ; preds = %bb.p, %bb.q
  store ptr null, ptr %i.a, align 8, !tbaa !1454
  br label %bb.r

bb.r:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_7
begin_hunk_8_@_ZN7coro_io11ib_socket_t17modify_qp_to_initEv:bb.a
  %.0.ph = phi i32 [ %i.r, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #58 ; 3 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.ce = load atomic i32, ptr %i.cd monotonic, align 8
  %i.cf = icmp slt i32 %i.ce, 6
  br i1 %i.cf, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #36 ; 2 uses
  %i.ch = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci monotonic, align 8
  %i.ck = icmp slt i64 %i.cj, 1
  br i1 %i.ck, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49: ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.copyload.i2.i.i47 = load i64, ptr %i.cl, align 8, !tbaa !242
  %i.cm = sub nsw i64 %i.cg, %.sroa.0.0.copyload.i2.i.i47
  %i.cn = sdiv i64 %i.cm, 1000000
  %i.co = load atomic i64, ptr %i.ci monotonic, align 8
  %i.cp = srem i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cr = load atomic i64, ptr %i.cq monotonic, align 8
  %i.cs = icmp slt i64 %i.cp, %i.cr
  br i1 %i.cs, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49.thread, label %bb.am

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49.thread: ; preds = %bb.ab, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i8 91, ptr %5, align 1, !alias.scope !4823
  %.sroa.0.i.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %5, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.0.i.sroa.4.0..sroa_idx.i50, ptr noundef nonnull align 1 dereferenceable(18) @__const._ZZN7coro_io11ib_socket_t17modify_qp_to_initEvENKUlvE0_clEv.prefix, i64 18, i1 false), !tbaa.struct !1651
  %.sroa.0.i.sroa.5.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %5, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i51, ptr noundef nonnull align 1 dereferenceable(3) @.str.95, i64 3, i1 false), !tbaa.struct !955
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 %i.cg, i32 noundef 5, i64 21, ptr nonnull %5)
  %i.ct = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA27_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.292)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !183, !noalias !4824
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !4824
  invoke void %i.cw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i32 noundef %.0.ph)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %bb.aj, !inline_history !15

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.ac
  %i.cx = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.cy = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.283)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !820
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 320
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !825
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 52
  %i.dd = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %i.dc)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.de = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.df = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !252, !noundef !253
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit55, label %bb.ah, !prof !211

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.de, ptr noundef nonnull align 8 dereferenceable(80) %i.dd)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit55 unwind label %bb.ak

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit55: ; preds = %bb.ag, %bb.ah
  %i.dh = load ptr, ptr %6, align 8, !tbaa !209   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit55
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !199
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.am

bb.ai:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49.thread
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.ak:                                            ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ad, %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %6, align 8, !tbaa !209   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ak
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !199
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.aj ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.do, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.dm, %bb.ai ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %i.du = call ptr @__cxa_allocate_exception(i64 32) #36 ; 3 uses
  invoke void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i32 %.0.ph, ptr nonnull %i.cc)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #55
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.du) #36
  br label %bb.aq

bb.ap:                                            ; preds = %bb.z, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.aq:                                            ; preds = %bb.al, %bb.ao, %.body
  %.pn37.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dv, %bb.ao ], [ %.pn.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t10get_bufferEi(ptr dead_on_unwind noalias writable sret(%"struct.coro_io::ib_buffer_t") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1352) %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.993", align 8 ; 11 uses
  %4 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 17 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %6 = alloca %"struct.refvalue::meta_string.798", align 1 ; 7 uses
  %7 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %8 = alloca %"struct.refvalue::meta_string.798", align 1 ; 7 uses
  %9 = alloca %struct.memory_owner_t, align 8     ; 12 uses
  %10 = alloca %"struct.coro_io::ib_buffer_t", align 8 ; 7 uses
  %11 = alloca %struct.memory_owner_t, align 8    ; 7 uses
  %12 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %13 = alloca %"struct.refvalue::meta_string.798", align 1 ; 7 uses
  %14 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 11 uses
  %15 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %16 = alloca %"struct.refvalue::meta_string.798", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr null, ptr %3, align 8, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8 ; 3 uses
  %i.d = getelementptr inbounds [616 x i8], ptr %i.a, i64 %i.c
  %i.e = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.dx

.noexc:                                           ; preds = %bb.a
  br i1 %i.e, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.f = xor i64 %i.c, 1                          ; 2 uses
  %i.g = getelementptr inbounds [616 x i8], ptr %i.a, i64 %i.f
  %i.h = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc60 unwind label %bb.dx

.noexc60:                                         ; preds = %bb.b
  br i1 %i.h, label %.sink.split.i, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit

.sink.split.i:                                    ; preds = %.noexc60, %.noexc
  %.sink10.i = phi i64 [ %i.c, %.noexc ], [ %i.f, %.noexc60 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sink10.i
  %17 = atomicrmw add ptr %i.j, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit: ; preds = %.sink.split.i, %.noexc60
  %i.k = load ptr, ptr %3, align 8, !tbaa !1097   ; 6 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.ci

bb.c:                                             ; preds = %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit
  %i.l = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !201

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.f, %bb.d, %bb.c
  %i.q = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.z

bb.h:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.s = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #36 ; 2 uses
  %i.t = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit64, !prof !201

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i61 = icmp eq i32 %i.v, 0
  br i1 %.not.i61, label %_ZN7easylog6loggerILm0EE8instanceEv.exit64, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit64

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit64:       ; preds = %bb.k, %bb.i, %bb.h
  %i.y = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit64
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !242
  %i.aa = sub nsw i64 %i.s, %.sroa.0.0.copyload.i2.i.i
  %i.ab = sdiv i64 %i.aa, 1000000
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.ad = srem i64 %i.ab, %i.ac
  %i.ae = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.af = icmp slt i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.z

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit64, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i8 91, ptr %6, align 1, !alias.scope !4837
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io16ib_buffer_pool_t10get_bufferEiENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !954
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.95, i64 3, i1 false), !tbaa.struct !955
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.s, i32 noundef 1, i64 20, ptr nonnull %6)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !210 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 9223372036854775748
  br i1 %i.aj, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #55
          to label %.noexc66 unwind label %bb.x

.noexc66:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.m
  %i.ak = add nsw i64 %i.ai, 59                   ; 3 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !209 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ao = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !199
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ak, %i.aq
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.ar, ptr noundef nonnull align 1 dereferenceable(59) @.str.293, i64 59, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.ai, i64 noundef 0, ptr noundef nonnull @.str.293, i64 noundef 59)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.o, %bb.p
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !210
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !209
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 0, ptr %i.at, align 1, !tbaa !199
  %i.au = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.r, label %_ZN7easylog6loggerILm0EE8instanceEv.exit71, !prof !201

bb.r:                                             ; preds = %bb.q
  %i.aw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i68 = icmp eq i32 %i.aw, 0
  br i1 %.not.i68, label %_ZN7easylog6loggerILm0EE8instanceEv.exit71, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit71

bb.u:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body69

_ZN7easylog6loggerILm0EE8instanceEv.exit71:       ; preds = %bb.t, %bb.r, %bb.q
  %i.az = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !252, !noundef !253
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.v, !prof !211

bb.v:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit71
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.x

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit71, %bb.v
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !209 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.am
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !199
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !209 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !199
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #53
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.z

end_hunk_8
begin_hunk_9_@_ZN7easylog6loggerILm0EE5writeERNS_8record_tE:bb.a

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN7easylog8appender12write_recordILb1ELb1EEEvRNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(1361) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN7easylog8record_tD2Ev.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN7easylog8appender12write_recordILb1ELb0EEEvRNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(1361) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.m, %_ZN7easylog6loggerILm0EE21apply_extra_appendersERNS_8record_tE.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !247
  %i.bz = icmp eq i32 %i.by, 6
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  %i.ca = call noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ca)
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb), !inline_history !5411 ; 0 uses
  call void @free(ptr noundef %i.ca) #36
  call void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  call void @exit(i32 noundef 1) #64
  unreachable

bb.p:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8200) ptr @malloc(i64 noundef 8200) #62 ; 4 uses
  %i.b = tail call i32 @backtrace(ptr noundef %i.a, i32 noundef 1024)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  store i32 %i.b, ptr %i.c, align 8, !tbaa !1949
  %i.d = tail call noundef ptr @_ZN3ylt4util22b_stacktrace_to_stringEPNS0_16b_stacktrace_tagE(ptr noundef %i.a)
  tail call void @free(ptr noundef %i.a) #36
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1922 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.d = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #36
  %i.e = icmp eq i32 %i.d, 35
  br i1 %i.e, label %bb.c, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #55
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #63
  br i1 %i.g, label %bb.d, label %_ZN7easylog8appender5flushEv.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN7easylog8appender5flushEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #36 ; 0 uses
  resume { ptr, i32 } %i.j

_ZN7easylog8appender5flushEv.exit:                ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i, %bb.d
  %i.l = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #36 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN7easylog8appender5flushEv.exit, %bb.a
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #40

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1931
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1932
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5421 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1931
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1932
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1933 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !5415

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1932
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !5421
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1931
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1931 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !5416

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #62 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1931
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1932
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5417

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !1933
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !1931 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !1931
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !1932
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1932
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !5421
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !5418

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS6_14AllocationModeE0ES4_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1952
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNS6_14AllocationModeE0EEEbRPNS7_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1953 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1943 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1944 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2608 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !5422

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2616 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !119

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(2632) ptr @malloc(i64 noundef 2632) #62 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2560
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2616
  store ptr null, ptr %i.at, align 8, !tbaa !1945
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !1947
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [2632 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 2568
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1955
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !1959
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1955
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %i.bk, i64 %i.e ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !206
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !210 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !209
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !199
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !199
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !210
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !210
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !209
  store i64 0, ptr %i.bx, align 8, !tbaa !210
  store i8 0, ptr %i.bq, align 8, !tbaa !199
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !206
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !209 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !210 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !209
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !199
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !199
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZN7easylog8record_tC2EOS0_.exit:                 ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !210
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !210
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !209
  store i64 0, ptr %i.cl, align 8, !tbaa !210
  store i8 0, ptr %i.ce, align 8, !tbaa !199
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %_ZN7easylog8record_tC2EOS0_.exit
  %.3 = phi i1 [ true, %_ZN7easylog8record_tC2EOS0_.exit ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !252, !noundef !253
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5424, !range !252, !noundef !253
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1136 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #62 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1136
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !393
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !5424
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1953
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1943
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSE_IN2tl8expectedINS2_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS2_9rpc_errorEEEEEEENS2_16request_config_tEDpOT0_EUlRT_E_EEDaOSS_:bb.a
  %i.r = load ptr, ptr %2, align 8, !tbaa !2032, !noalias !5523
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !241, !noalias !5523
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5519, !noalias !5523, !nonnull !253, !align !428
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2035, !noalias !5523
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1198, !noalias !5523
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !5520, !noalias !5523, !nonnull !253
  %i.aa = tail call noalias noundef dereferenceable_or_null(272) ptr @_ZnamRKSt9nothrow_t(i64 noundef 272, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #56, !noalias !5523, !inline_history !5506 ; 13 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.ac, align 1, !noalias !5523
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio3ssl6streamIRNS6_19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.resume, ptr %i.aa, align 8, !noalias !5523
  %destroy.addr.i.i5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio3ssl6streamIRNS6_19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.destroy, ptr %destroy.addr.i.i5, align 8, !noalias !5523
  %.reload.addr253.i.i6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.spill.addr244.i.i7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  store ptr %i.z, ptr %.spill.addr244.i.i7, align 8, !noalias !5523
  %.spill.addr241.i.i8 = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  store ptr %i.x, ptr %.spill.addr241.i.i8, align 8, !noalias !5523
  %.spill.addr229.i.i10 = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store <2 x ptr> %i.t, ptr %.spill.addr229.i.i10, align 8, !noalias !5523
  %.spill.addr226.i.i11 = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  store ptr %i.q, ptr %.spill.addr226.i.i11, align 8, !noalias !5523
  %.spill.addr.i.i12 = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  store ptr %i.r, ptr %.spill.addr.i.i12, align 8, !noalias !5523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr253.i.i6, i8 0, i64 24, i1 false), !noalias !5523
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i8 0, ptr %i.ad, align 8, !tbaa !2037, !noalias !5523
  store ptr %i.aa, ptr %0, align 8, !tbaa !241, !alias.scope !5524
  %index.addr254.i.i13 = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store i8 0, ptr %index.addr254.i.i13, align 8, !noalias !5523
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !241, !alias.scope !5525
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8, !tbaa !799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5526)
  %i.af = load ptr, ptr %2, align 8, !tbaa !2032, !noalias !5526
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !241, !noalias !5526
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5519, !noalias !5526, !nonnull !253, !align !428
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2035, !noalias !5526
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1198, !noalias !5526
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !5520, !noalias !5526, !nonnull !253
  %i.ao = tail call noalias noundef dereferenceable_or_null(272) ptr @_ZnamRKSt9nothrow_t(i64 noundef 272, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #56, !noalias !5526, !inline_history !5513 ; 11 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.aq, align 1, !noalias !5526
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.resume, ptr %i.ao, align 8, !noalias !5526
  %destroy.addr.i.i16 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.destroy, ptr %destroy.addr.i.i16, align 8, !noalias !5526
  %.reload.addr253.i.i17 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.spill.addr244.i.i18 = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  store ptr %i.an, ptr %.spill.addr244.i.i18, align 8, !noalias !5526
  %.spill.addr241.i.i19 = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  store ptr %i.al, ptr %.spill.addr241.i.i19, align 8, !noalias !5526
  %.spill.addr.i.i23 = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.ar = insertelement <4 x ptr> poison, ptr %i.af, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ae, i64 1
  %i.at = shufflevector <2 x ptr> %i.ah, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x ptr> %i.as, <4 x ptr> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.au, ptr %.spill.addr.i.i23, align 8, !noalias !5526
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr253.i.i17, i8 0, i64 24, i1 false), !noalias !5526
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i8 0, ptr %i.av, align 8, !tbaa !2037, !noalias !5526
  store ptr %i.ao, ptr %0, align 8, !tbaa !241, !alias.scope !5527
  %index.addr254.i.i24 = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  store i8 0, ptr %index.addr254.i.i24, align 8, !noalias !5526
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !241, !alias.scope !5528
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25, %bb.h, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14, %bb.f, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i, %bb.c
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.2169") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(136) %1, ptr nofreeobj noundef align 8 dereferenceable(16) %2, ptr nofreeobj noundef align 8 dereferenceable(8) %3, i64 noundef %4) local_unnamed_addr #37 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.2946, align 8           ; 4 uses
  %i.a = tail call noalias noundef dereferenceable_or_null(816) ptr @_ZnamRKSt9nothrow_t(i64 noundef 816, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #56 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.destroy, ptr %destroy.addr, align 8
  %.reload.addr344 = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.reload.addr354 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  store i64 %4, ptr %.spill.addr, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !2020
  store ptr %i.d, ptr %.reload.addr344, align 8, !tbaa !2020
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store i8 -1, ptr %i.g, align 8, !tbaa !2021
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2021  ; 3 uses
  switch i8 %i.i, label %bb.e [
    i8 0, label %AfterCoroEnd
    i8 1, label %bb.c
    i8 2, label %.from.250
    i8 -1, label %AfterCoroEnd
  ]

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !241, !alias.scope !5533
  br label %bb.f

bb.c:                                             ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  store i8 -1, ptr %i.j, align 8, !tbaa !2039
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.e, ptr %5, align 8, !tbaa !2042
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #52
  unreachable

.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i8, ptr %i.m, align 8, !tbaa !2039
  store i8 %i.n, ptr %i.j, align 8, !tbaa !2039
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !tbaa !2021
  br label %AfterCoroEnd

.from.250:                                        ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !259
  store ptr %i.o, ptr %i.e, align 8, !tbaa !259
  store ptr null, ptr %i.f, align 8, !tbaa !259
  br label %AfterCoroEnd

bb.e:                                             ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  unreachable

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i, %.from.250
  %i.p = phi i8 [ 2, %.from.250 ], [ %.pre.i.i.i.i.i.i.i.i, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit ], [ %i.i, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit ]
  store i8 %i.p, ptr %i.g, align 8, !tbaa !2021
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1017
  store ptr null, ptr %i.r, align 8, !tbaa !1017
  store ptr %i.s, ptr %i.q, align 8, !tbaa !2022
  store ptr null, ptr %1, align 8, !tbaa !2020
  %.spill.addr315 = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !241
  store <2 x ptr> %i.t, ptr %.spill.addr315, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %3, align 8, !tbaa !2044
  %.spill.addr331 = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store ptr %i.u, ptr %.spill.addr331, align 8
  store ptr null, ptr %3, align 8, !tbaa !2044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.reload.addr354, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.v, align 8, !tbaa !2028
  store ptr %i.a, ptr %0, align 8, !tbaa !241, !alias.scope !5534
  %index.addr355 = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store i8 0, ptr %index.addr355, align 8
  br label %bb.f

bb.f:                                             ; preds = %AfterCoroEnd, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.2917, align 1           ; 3 uses
  %2 = alloca %class.anon.2917, align 1           ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2020   ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %3, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2021
  switch i8 %i.e, label %bb.j [
    i8 -1, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.d
    i8 2, label %bb.h
  ], !prof !226

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2039
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2045

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !211

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.g

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !209  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !199
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.h:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(120) %i.c) #36
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.j:                                             ; preds = %bb.c
  unreachable

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.c, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(185) %i.a, i64 noundef 192) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i8, ptr %i.t, align 8, !tbaa !2021
  switch i8 %i.u, label %bb.q [
    i8 -1, label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.k
    i8 2, label %bb.o
  ], !prof !226

bb.k:                                             ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i8, ptr %i.v, align 8, !tbaa !2039
  %cond.i.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq i8 %i.w, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i2, label %bb.l, label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2045

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i8, ptr %i.x, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i3 = icmp eq i8 %i.y, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i3, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i5, label %bb.m, !prof !211

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i4 unwind label %bb.n

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i4: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i5

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i5: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i4, %bb.l
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !209 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i5
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !199
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #53
  br label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.o:                                             ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1, label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #36
  br label %_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.q:                                             ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit
  unreachable

_ZN12async_simple10LocalStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i5, %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit, %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i6, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !231
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.2917, align 1           ; 3 uses
  %2 = alloca %"class.async_simple::Try.2221", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2008   ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %4 = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.c = load atomic i8, ptr %i.a acquire, align 1
  %i.d = and i8 %i.c, 33
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %4, 1
  %or.cond.not.i = or i1 %i.f, %i.e
  br i1 %or.cond.not.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.260)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.v unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.0.i) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #36
  %i.k = load ptr, ptr %3, align 8, !tbaa !259    ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #36
  br label %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 2, ptr %i.l, align 8, !tbaa !2021
  invoke void @_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9setResultEONS_3TryIS6_EE(ptr noundef nonnull align 8 dereferenceable(185) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2ENSt15__exception_ptr13exception_ptrE.exit
  call void @_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #36
  %i.m = load ptr, ptr %3, align 8, !tbaa !259
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  invoke void @__cxa_end_catch()
          to label %.noexc unwind label %bb.x

bb.k:                                             ; preds = %_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #36
  %i.o = load ptr, ptr %3, align 8, !tbaa !259
  %.not.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2:  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.u

.noexc:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %5 = atomicrmw add ptr %i.p, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %5, 1
  br i1 %.not.i.i, label %bb.m, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE13detachPromiseEv.exit

bb.m:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.s = load i8, ptr %i.r, align 8, !tbaa !2021
  switch i8 %i.s, label %bb.t [
    i8 -1, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.n
    i8 2, label %bb.r
  ], !prof !226

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.u = load i8, ptr %i.t, align 8, !tbaa !2039
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2045

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = load i8, ptr %i.v, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, !prof !211

bb.p:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.q

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !209 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !199
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.r:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(120) %i.q) #36
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.t:                                             ; preds = %bb.m
  unreachable

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.m, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(185) %i.a, i64 noundef 192) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE13detachPromiseEv.exit

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #52
  unreachable

bb.v:                                             ; preds = %bb.d
  unreachable

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE13detachPromiseEv.exit: ; preds = %.noexc, %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.w

bb.w:                                             ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE13detachPromiseEv.exit, %bb.a
  ret void

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.x ], [ %i.n, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2 ]
  %i.aj = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.aj) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2024
  switch i8 %i.c, label %bb.g [
    i8 -1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
    i8 0, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
    i8 1, label %bb.b
    i8 2, label %bb.e
  ], !prof !226

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2026 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr nonnull %i.d)
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.d, !inline_history !122

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i8.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.a) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

bb.g:                                             ; preds = %bb.a
  unreachable

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.e, %bb.f
  %i.j = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.j, ptr %i.a, align 8, !tbaa !259
  store i8 2, ptr %i.b, align 8, !tbaa !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.b) #36
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1198 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIN8coro_rpc15coro_rpc_client9handler_tEEEvRS0_PT_.exit, label %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.c) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 120) #53
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN8coro_rpc15coro_rpc_client9handler_tEEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIN8coro_rpc15coro_rpc_client9handler_tEEEvRS0_PT_.exit: ; preds = %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !380  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_10
begin_hunk_11_@_ZN7coro_io6detail4copyEPvSt4spanI7ibv_sgeLm18446744073709551615EES3_:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.01932 = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.024.031 = phi ptr [ %i.p, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.split

bb.b:                                             ; preds = %.lr.ph.split
  %i.f = add i64 %.01932, %3
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %.sroa.024.031, align 8, !tbaa !1659
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2077
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.i, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.j, align 8, !tbaa !2077
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %.01932, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split

.split:                                           ; preds = %.lr.ph.split, %.lr.ph
  %.sroa.024.0.lcssa.split = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.031, %.lr.ph.split ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.0.lcssa.split, i64 12
  %i.s = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.t = load atomic i32, ptr %i.s monotonic, align 8
  %i.u = icmp slt i32 %i.t, 5
  br i1 %i.u, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.split
  %i.v = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #36 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.aa, align 8, !tbaa !242
  %i.ab = sub nsw i64 %i.v, %.sroa.0.0.copyload.i2.i.i
  %i.ac = sdiv i64 %i.ab, 1000000
  %i.ad = load atomic i64, ptr %i.x monotonic, align 8
  %i.ae = srem i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  %i.ah = icmp slt i64 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.i

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.c, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i64 7507060127235729755, ptr %6, align 8, !alias.scope !5572
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i48 54100233973872, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5572
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.95, i64 3, i1 false), !tbaa.struct !955
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.v, i32 noundef 4, i64 16, ptr nonnull %6)
  %i.ai = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA31_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.419)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.aj = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !252, !noundef !253
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.h

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.f, %bb.g
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.l

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %.split
  %i.ao = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.420)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ao) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.an, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail26async_send_callback_helperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1168 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future.2438") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1422   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !211

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.260)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #36
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2085, !range !252, !noundef !253
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit, !prof !211

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.372)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !2085
  store ptr %i.a, ptr %0, align 8, !tbaa !2088
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !798
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !2089
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2088   ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.d, !prof !211

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.f, !prof !211

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #36
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2088   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %1, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.d, !prof !211

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.f, !prof !211

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i.i3, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #36
  br label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit

_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.async_simple::Try.1453", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.2444", align 8 ; 8 uses
  %8 = alloca %"class.async_simple::Future.2438", align 8 ; 15 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %10 = alloca %"class.async_simple::SignalException", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.2452", align 8 ; 8 uses
  %13 = alloca %class.anon.2455, align 8          ; 8 uses
  %14 = alloca %class.anon.2456, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54, !noalias !5582 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2088, !noalias !5582
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2088, !noalias !5582
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !798, !noalias !5582 ; 2 uses
  switch i8 %i.f, label %bb.d [
    i8 0, label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 -1, label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !487, !noalias !5582
  br label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !259, !noalias !5582
  store ptr %i.g, ptr %i.c, align 8, !tbaa !259, !noalias !5582
  store ptr null, ptr %i.d, align 8, !tbaa !259, !noalias !5582
  br label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.f, ptr %i.h, align 8, !tbaa !798, !noalias !5582
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1017, !noalias !5582
  store ptr null, ptr %i.j, align 8, !tbaa !1017, !noalias !5582
  store ptr %i.k, ptr %i.i, align 8, !tbaa !2089, !noalias !5582
  store ptr null, ptr %0, align 8, !tbaa !2088, !noalias !5582
  store ptr %i.a, ptr %7, align 8, !tbaa !2091, !alias.scope !5582
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.l, ptr %11, align 8, !tbaa !206
  %i.m = invoke noalias noundef nonnull dereferenceable(51) ptr @_Znwm(i64 noundef 51) #54
          to label %.noexc23 unwind label %bb.ab  ; 3 uses

.noexc23:                                         ; preds = %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.m, ptr %11, align 8, !tbaa !209
  store i64 50, ptr %i.l, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.m, ptr noundef nonnull align 1 dereferenceable(50) @.str.421, i64 50, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 50, ptr %i.n, align 8, !tbaa !210
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 50
  store i8 0, ptr %i.o, align 1, !tbaa !199
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %.noexc23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12async_simple15SignalExceptionE, i64 16), ptr %10, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 1, ptr %i.p, align 8, !tbaa !1175
  %i.q = call ptr @__cxa_allocate_exception(i64 noundef 24) #36, !noalias !5583 ; 5 uses
  %i.r = call ptr @__cxa_init_primary_exception(ptr noundef %i.q, ptr noundef nonnull @_ZTIN12async_simple15SignalExceptionE, ptr noundef nonnull @_ZNSt15__exception_ptr12__dest_thunkIN12async_simple15SignalExceptionEEEvPv) #36, !noalias !5583 ; 0 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10) #36, !noalias !5583
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12async_simple15SignalExceptionE, i64 16), ptr %i.q, align 8, !tbaa !183, !noalias !5583
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i64, ptr %i.p, align 8, !tbaa !1175, !noalias !5583
  store i64 %i.t, ptr %i.s, align 8, !tbaa !1175, !noalias !5583
  call void @_ZNSt15__exception_ptr13exception_ptrC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.q) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !5584
  %i.u = load ptr, ptr %9, align 8, !tbaa !259, !noalias !5584 ; 2 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !259, !noalias !5584
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #36, !noalias !5584
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !259, !noalias !5584 ; 2 uses
  store ptr %.pr.i, ptr %5, align 8, !tbaa !259, !noalias !5584
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i

_ZN12async_simple3TryISt10error_codeED2Ev.exit.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #36, !noalias !5584
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !259, !noalias !5584
  %.pre9.i = load ptr, ptr %6, align 8, !tbaa !259, !noalias !5584
  %i.v = icmp eq ptr %.pre9.i, null
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 2, ptr %i.w, align 8, !tbaa !798, !noalias !5584
  store ptr null, ptr %8, align 8, !tbaa !2088, !alias.scope !5584
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.pre.i, ptr %i.x, align 8, !tbaa !259, !alias.scope !5584
  store ptr null, ptr %5, align 8, !tbaa !259, !noalias !5584
  store i8 2, ptr %i.y, align 8, !tbaa !798, !alias.scope !5584
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.z, align 8, !tbaa !2089, !alias.scope !5584
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #36, !noalias !5584
  %.pre = load ptr, ptr %8, align 8, !tbaa !2092
  br label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ab, align 8
  store i8 2, ptr %i.aa, align 8, !tbaa !798, !alias.scope !5584
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !2089, !alias.scope !5584
  br label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i, %bb.f, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i
  %i.ad = phi ptr [ null, %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i ], [ %.pre, %bb.f ], [ null, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !5584
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2092
  store ptr %i.ad, ptr %0, align 8, !tbaa !2092
  store ptr %i.ae, ptr %8, align 8, !tbaa !2092
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12async_simple10LocalStateISt10error_codeEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 0 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !2088  ; 5 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %15 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i25 = icmp eq i8 %15, 1
  br i1 %.not.i.i25, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.al, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.j, !prof !211

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ne i8 %i.al, 2
  %i.an = load ptr, ptr %i.aj, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  %or.cond.i.i.i.i.i.i = select i1 %i.am, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.ah, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.l, !prof !211

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.aq = icmp ne i8 %i.ap, 2
  %i.ar = load ptr, ptr %i.af, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.ar, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.aq, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.af) #36
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.l, %bb.m
  %i.as = load ptr, ptr %9, align 8, !tbaa !259
  %.not.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i26, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, %bb.n
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #36
  %i.at = load ptr, ptr %11, align 8, !tbaa !209  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.l
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.av = load i64, ptr %i.l, align 8, !tbaa !199
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !5585)
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #54
          to label %bb.o unwind label %bb.ad      ; 6 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store i32 1, ptr %i.az, align 8, !tbaa !230, !noalias !5585
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 1, ptr %i.ba, align 4, !tbaa !231, !noalias !5585
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ay, align 8, !tbaa !183, !noalias !5585
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !393, !noalias !5585
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !228, !alias.scope !5585
  store ptr %i.bb, ptr %12, align 8, !tbaa !2094, !alias.scope !5585
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store ptr %1, ptr %13, align 8, !tbaa !241
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.bc, align 8, !tbaa !2099
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %3, ptr %i.bd, align 8, !tbaa !2100
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !2101
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !228
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.az, align 8, !tbaa !200
  br label %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit:     ; preds = %bb.p, %bb.q
  %.not.i28 = icmp eq ptr %4, null
  br i1 %.not.i28, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit
  %i.bi = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPS0_EUlDpOT_E_EEEbNS_10SignalTypeESK_(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.t, label %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit

bb.t:                                             ; preds = %bb.s, %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit
  br label %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit

bb.u:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #52
  unreachable

_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit: ; preds = %bb.s, %bb.t
  %.0.i = phi i1 [ true, %bb.t ], [ false, %bb.s ] ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !228 ; 8 uses
  %.not.i.i.i29 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i29, label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bm, align 8, !tbaa !230
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !231
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #36, !inline_history !5581
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #36, !inline_history !5581
  br label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i30 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i30, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.y ], [ %i.bz, %bb.z ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.aa, label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit, !prof !211

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #36
  br label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit

_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit: ; preds = %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.pre46 = load ptr, ptr %i.ax, align 8, !tbaa !228 ; 9 uses
  br i1 %.0.i, label %bb.ae, label %bb.ai

bb.ab:                                            ; preds = %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.ac:                                            ; preds = %.noexc23
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %11, align 8, !tbaa !209  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.l
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ac
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !199
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.cc, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ax

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ae:                                            ; preds = %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit
  %i.ci = load ptr, ptr %7, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  store ptr %0, ptr %14, align 8, !tbaa !2110
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %1, ptr %i.cj, align 8, !tbaa !241
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %2, ptr %i.ck, align 8, !tbaa !2111
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %3, ptr %i.cl, align 8, !tbaa !2112
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cn = load ptr, ptr %12, align 8, !tbaa !2101
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !2101
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr null, ptr %i.ax, align 8, !tbaa !228
  store ptr %.pre46, ptr %i.co, align 8, !tbaa !228
  store ptr null, ptr %12, align 8, !tbaa !2101
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.cq = ptrtoint ptr %i.ci to i64
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !2091
  store ptr null, ptr %7, align 8, !tbaa !2091
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !2088 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cr, null
  br i1 %.not.i36, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E25await_suspend_cancellableINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E0_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(89) %i.cr, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.thread unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  invoke void @_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E25await_suspend_cancellableINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E0_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.thread unwind label %bb.ah

.thread:                                          ; preds = %bb.ag, %bb.af
  call void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  br label %bb.aw

bb.ai:                                            ; preds = %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit
  %.not.i.i39 = icmp eq ptr %.pre46, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre46, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !230
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre46, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !231
  %i.cz = load ptr, ptr %.pre46, align 8, !tbaa !183
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #36, !inline_history !124
  %i.dc = load ptr, ptr %.pre46, align 8, !tbaa !183
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #36, !inline_history !124
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i40 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i40, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.di, label %bb.ao, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #36
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.dj = load ptr, ptr %7, align 8, !tbaa !2091  ; 5 uses
  %.not.i41 = icmp eq ptr %i.dj, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2088 ; 5 uses
  %.not.i.i.i42 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i42, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %16 = atomicrmw add ptr %i.dl, i8 -1 acq_rel, align 1
  %.not.i.i.i.i43 = icmp eq i8 %16, 1
  br i1 %.not.i.i.i.i43, label %bb.ar, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.as, !prof !211

bb.as:                                            ; preds = %bb.ar
  %i.dp = icmp ne i8 %i.do, 2
  %i.dq = load ptr, ptr %i.dm, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.dq, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.dp, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.dk, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, %bb.aq, %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq i8 %i.dt, -1
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.au, !prof !211

bb.au:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  %i.du = icmp ne i8 %i.dt, 2
  %i.dv = load ptr, ptr %i.dr, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i = icmp eq ptr %i.dv, null
  %or.cond.i.i.i.i.i3.i.i.i = select i1 %i.du, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dr) #36
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i: ; preds = %bb.av, %bb.au, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 40) #53
  br label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret i1 %.0.i

bb.aw:                                            ; preds = %bb.ah, %bb.ad
  %.pn19 = phi { ptr, i32 } [ %i.ct, %bb.ah ], [ %i.ch, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.aw ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2088   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2114 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = load i64, ptr %1, align 8, !tbaa !241
  store i64 %i.g, ptr %2, align 8, !tbaa !241
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseISt10error_codeEEEEE9_M_invokeERKSt9_Any_data, ptr %i.e, align 8, !tbaa !574
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseISt10error_codeEEEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.d, align 8, !tbaa !575
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2115
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !575  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !575  ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i2.i.i, label %_ZNSt14_Function_baseD2Ev.exit3.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i:              ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.r

bb.k:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !2116   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr nonnull %i.w), !inline_history !5586
  br label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit

_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit: ; preds = %bb.e, %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2091 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2088 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %1 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.e, !prof !211

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.c, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.g, !prof !211

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  %i.m = icmp ne i8 %i.l, 2
  %i.n = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i3.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #36
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i: ; preds = %bb.h, %bb.g, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #53
  br label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !228  ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !230
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !231
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #36, !inline_history !124
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #36, !inline_history !124
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i1 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #36
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !231
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2091   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2088 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %1 = atomicrmw add ptr %i.c, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.e, !prof !211

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ne i8 %i.f, 2
  %i.h = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.g, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.b, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, label %bb.g, !prof !211

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.l = icmp ne i8 %i.k, 2
  %i.m = load ptr, ptr %i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.m, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #36
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #53
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__exception_ptr12__dest_thunkIN12async_simple15SignalExceptionEEEvPv(ptr noundef %0) #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !183
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN12async_simple10LocalStateISt10error_codeEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1456, align 8           ; 4 uses
  %3 = alloca %class.anon.1456, align 8           ; 4 uses
  %4 = alloca %"class.async_simple::Try.1453", align 8 ; 8 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !798   ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 -1, label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !487
  br label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !259
  store ptr %i.d, ptr %4, align 8, !tbaa !259
  store ptr null, ptr %0, align 8, !tbaa !259
  br label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  store i8 %i.c, ptr %i.a, align 8, !tbaa !798
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !1425
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i: ; preds = %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %1, ptr %2, align 8, !tbaa !1425
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i: ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.i = load i8, ptr %i.a, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h, !prof !211

bb.h:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i
  %i.j = icmp ne i8 %i.i, 2
  %i.k = load ptr, ptr %4, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  %or.cond.i.i.i.i.i = select i1 %i.j, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #36
  br label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1017
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1017
  store ptr %i.o, ptr %i.l, align 8, !tbaa !1017
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1017
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyISt6atomicIbEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !380  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !199
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #36
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

end_hunk_11
begin_hunk_12_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_:bb.a
  switch i8 %i.t, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit
  ]

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !206
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !209  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !210  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.p, align 8, !tbaa !209
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !199
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !199
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !210
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !210
  store ptr %i.w, ptr %i.q, align 8, !tbaa !209
  store i64 0, ptr %i.ad, align 8, !tbaa !210
  store i8 0, ptr %i.w, align 8, !tbaa !199
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.s, align 8, !tbaa !2001
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !1060
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !1060
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1061
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !1061
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.am, align 8, !tbaa !228
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !241
  store ptr null, ptr %i.an, align 8, !tbaa !228
  store <2 x ptr> %i.ao, ptr %i.ak, align 8, !tbaa !241
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 24, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ap = phi i8 [ 1, %bb.f ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.ap, ptr %i.r, align 8, !tbaa !2001
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %i.ar, i64 25, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !2042
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.as, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 16, i1 false), !tbaa.struct !487
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEaSEOSC_EUlOT_T0_E_JRSB_St17integral_constantImLm2EEEESE_St14__invoke_otherOSG_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.2917, align 1           ; 3 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2444   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2021
  switch i8 %i.c, label %bb.h [
    i8 2, label %bb.b
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
    i8 0, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
    i8 1, label %bb.d
  ], !prof !2450

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.d = load ptr, ptr %1, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !259
  store ptr %i.d, ptr %i.a, align 8, !tbaa !259
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #36
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2039
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, !prof !2045

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !211

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.g

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !199
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #53
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

bb.h:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.a, %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.r, ptr %i.a, align 8, !tbaa !259
  store ptr null, ptr %1, align 8, !tbaa !259
  store i8 2, ptr %i.b, align 8, !tbaa !2021
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_.exit

_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEclESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.c, align 8, !tbaa !183
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2448
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE21ContinuationReference6detachEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.2917, align 1           ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2446   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %2, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !2446   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %3 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %3, 1
  br i1 %.not.i, label %bb.f, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2021
  switch i8 %i.m, label %bb.m [
    i8 -1, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.g
    i8 2, label %bb.k
  ], !prof !226

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.o = load i8, ptr %i.n, align 8, !tbaa !2039
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2045

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.q = load i8, ptr %i.p, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, !prof !211

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !209  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !199
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(120) %i.k) #36
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit

bb.m:                                             ; preds = %bb.f
  unreachable

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.f, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(185) %i.i, i64 noundef 192) #53
  br label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit

_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE17derefContinuationEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail14_function_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241
  tail call void @_ZSt13__invoke_implIvRZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_, ptr %0, align 8, !tbaa !491
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !241
  store ptr %i.a, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !241
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2446 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2446
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKSA_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKSA_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKSA_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !241    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE21ContinuationReference6detachEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbENUlvE_D2Ev.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #52
  unreachable

_ZZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbENUlvE_D2Ev.exit.i.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #53
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbENUlvE_D2Ev.exit.i.i, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKSA_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvRZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE20scheduleContinuationEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::variant<coro_rpc::coro_rpc_client::async_rpc_raw_result_value_type, std::error_code>>::ContinuationReference", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !2446   ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2446
  store ptr null, ptr %0, align 8, !tbaa !2446
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2448
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEclESA_.exit.i unwind label %bb.e, !inline_history !2449

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEclESA_.exit.i: ; preds = %bb.c
  invoke void @_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE21ContinuationReference6detachEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
end_hunk_12
begin_hunk_13_@_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.resume:resume.entry
  %.reload87 = load ptr, ptr %.reload.addr86, align 8, !tbaa !7023 ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !2792
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !2793
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.d, align 1, !tbaa !2793
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !798
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr %i.c, i8 1 monotonic, align 1 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.reload87, i64 328 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.reload87, i64 344 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1416, !range !252, !noundef !253
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.from.57, label %.from.55

.from.57:                                         ; preds = %bb.a
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2092
  %i.p = getelementptr inbounds nuw i8, ptr %.reload87, i64 336 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !224, !range !252, !noundef !253
  store i8 0, ptr %i.p, align 8, !tbaa !224
  store i8 %i.q, ptr %i.g, align 8, !tbaa !224
  br label %bb.b

.from.55:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.reload87, i64 336
  store i8 0, ptr %i.r, align 8, !tbaa !2085
  store i8 0, ptr %i.g, align 8, !tbaa !2085
  store i8 1, ptr %i.l, align 8, !tbaa !1416
  br label %bb.b

bb.b:                                             ; preds = %.from.55, %.from.57
  %.sink.i = phi ptr [ %i.o, %.from.57 ], [ null, %.from.55 ]
  store ptr %i.b, ptr %i.k, align 8, !tbaa !2092
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2092
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  invoke void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future.2438") align 8 %.reload.addr89, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
          to label %bb.c unwind label %.from.75

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !7024)
  call void @llvm.experimental.noalias.scope.decl(metadata !7025)
  %i.s = load ptr, ptr %.reload.addr89, align 8, !tbaa !2088, !noalias !7026 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !798, !noalias !7026 ; 4 uses
  switch i8 %i.v, label %bb.d [
    i8 0, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
    i8 1, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i
    i8 2, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i
    i8 -1, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
  ]

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %i.w, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2088, !noalias !7026
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2088, !alias.scope !7027
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i: ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !259, !noalias !7026
  store ptr null, ptr %i.t, align 8, !tbaa !259, !noalias !7026
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %i.aa, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2088, !noalias !7026
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2088, !alias.scope !7028
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !259, !alias.scope !7029
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread

bb.d:                                             ; preds = %bb.c
  unreachable

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread: ; preds = %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i
  %.ph4.i.i = phi ptr [ %i.x, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i ], [ %i.ab, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 %i.v, ptr %i.ad, align 8, !tbaa !798, !alias.scope !7029
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.ph4.i.i, ptr %i.ae, align 8, !tbaa !2089, !alias.scope !7029
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit: ; preds = %bb.c, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %i.af, align 8, !tbaa !1017, !noalias !7026
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2088, !noalias !7026
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2088, !alias.scope !7029
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i8 %i.v, ptr %i.ah, align 8, !tbaa !798, !alias.scope !7029
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !2089, !alias.scope !7029
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit: ; preds = %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
  %i.aj = load atomic i8, ptr %i.s acquire, align 1
  %i.ak = and i8 %i.aj, 33
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %AfterCoroSave45, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

AfterCoroSave45:                                  ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit
  store i8 1, ptr %index.addr, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352 ; 5 uses
  %.not.i.i2 = icmp eq ptr %i.am, null
  br i1 %.not.i.i2, label %.noexc3, label %bb.e

bb.e:                                             ; preds = %AfterCoroSave45
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %.noexc3 unwind label %.from.73, !inline_history !7020

.noexc3:                                          ; preds = %bb.e, %AfterCoroSave45
  %.011.i.i = phi ptr [ null, %AfterCoroSave45 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1027 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.as, null
  br i1 %.not14.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1026 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.au, null
  br i1 %.not15.i.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = invoke noundef zeroext i1 @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotE(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88, ptr nonnull %0, ptr noundef %i.am, ptr noundef %.011.i.i, ptr noundef nonnull %i.au)
          to label %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit unwind label %.from.73

.thread.i.i:                                      ; preds = %bb.f, %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.aw = ptrtoint ptr %0 to i64
  store i64 %i.aw, ptr %1, align 8, !tbaa !241
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.am, ptr %i.ax, align 8, !tbaa !2114
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.011.i.i, ptr %i.ay, align 8, !tbaa !2115
  invoke void @_ZN12async_simple6FutureISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread unwind label %.from.73

_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %CoroEnd

_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit: ; preds = %bb.g
  br i1 %i.av, label %CoroEnd, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47: ; preds = %resume.entry
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

.from.78:                                         ; preds = %AfterCoroSuspend
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.from.77

.from.75:                                         ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.77

.from.73:                                         ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread, %.noexc, %bb.e, %bb.g, %.thread.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr88) #36
  call void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr89) #36
  br label %.from.77

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread: ; preds = %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread
  %i.bd = phi ptr [ %i.ad, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread ], [ %i.ah, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit ], [ %i.az, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47 ], [ %i.ah, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit ], [ %i.ah, %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit ]
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN12async_simple6FutureISt10error_codeE6getTryIS2_EEDcRT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88)
          to label %.noexc unwind label %.from.73

.noexc:                                           ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNR12async_simple3TryISt10error_codeE5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.h unwind label %.from.73   ; 2 uses

bb.h:                                             ; preds = %.noexc
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 8, !tbaa !200
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !486
  %i.bg = load ptr, ptr %.reload.addr88, align 8, !tbaa !2088 ; 5 uses
  %.not.i.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i15, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %3 = atomicrmw add ptr %i.bh, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.j, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bk, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.k, !prof !211

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp ne i8 %i.bk, 2
  %i.bm = load ptr, ptr %i.bi, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.bl, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.bg, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.i, %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = load i8, ptr %i.bd, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.m, !prof !211

bb.m:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.bp = icmp ne i8 %i.bo, 2
  %i.bq = load ptr, ptr %i.bn, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.bq, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.bp, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #36
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit: ; preds = %bb.n, %bb.m, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.br = load ptr, ptr %.reload.addr89, align 8, !tbaa !2088 ; 5 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %4 = atomicrmw add ptr %i.bs, i8 -1 acq_rel, align 1
  %.not.i.i16 = icmp eq i8 %4, 1
  br i1 %.not.i.i16, label %bb.p, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.q, !prof !211

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp ne i8 %i.bv, 2
  %i.bx = load ptr, ptr %i.bt, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.br, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.o, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.bz, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.s, !prof !211

bb.s:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cb = icmp ne i8 %i.bz, 2
  %i.cc = load ptr, ptr %i.ca, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.cc, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.cb, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #36
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.s, %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq i8 %i.cf, -1
  br i1 %.not.i.i.i.i.i17, label %.thread30, label %bb.u, !prof !211

bb.u:                                             ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  %i.cg = icmp ne i8 %i.cf, 2
  %i.ch = load ptr, ptr %i.ce, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.ch, null
  %or.cond.i.i.i.i.i.i19 = select i1 %i.cg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18
  br i1 %or.cond.i.i.i.i.i.i19, label %.thread30, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ce) #36
  br label %.thread30

.thread30:                                        ; preds = %bb.v, %bb.u, %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  store i32 %.sroa.0.0.copyload.i, ptr %i.ce, align 8, !tbaa !200
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.528.0..sroa_idx, align 8, !tbaa !486
  store i8 1, ptr %i.cd, align 8, !tbaa !798
  br label %bb.w

.from.77:                                         ; preds = %.from.73, %.from.75, %.from.78
  %.pn9.pn.pn = phi { ptr, i32 } [ %i.ba, %.from.78 ], [ %i.bc, %.from.73 ], [ %i.bb, %.from.75 ]
  %.3 = extractvalue { ptr, i32 } %.pn9.pn.pn, 0
  %i.ci = call ptr @__cxa_begin_catch(ptr %.3) #36 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr92) #36
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.thread30, %.from.77
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.reload.addr92, align 8, !tbaa !241 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8
  musttail call void %i.cj(ptr nonnull %.sroa.0.0.copyload.i.i)
  ret void

CoroEnd:                                          ; preds = %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread, %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit
  ret void

bb.x:                                             ; preds = %.from.77
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.ck
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #51 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %bb.a, label %AfterCoroSuspend, !prof !7030

bb.a:                                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %.reload.addr88, align 8, !tbaa !2088 ; 5 uses
  %.not.i.i15 = icmp eq ptr %i.c, null
  br i1 %.not.i.i15, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %1 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.d, !prof !211

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.c, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.b, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.f, !prof !211

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.l = icmp ne i8 %i.k, 2
  %i.m = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.m, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #36
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit: ; preds = %bb.g, %bb.f, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.n = load ptr, ptr %.reload.addr89, align 8, !tbaa !2088 ; 5 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %2 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i16 = icmp eq i8 %2, 1
  br i1 %.not.i.i16, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.j, !prof !211

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %i.p, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #36
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.n, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.h, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !798   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.v, -1
  br i1 %.not.i.i.i.i1.i, label %AfterCoroSuspend, label %bb.l, !prof !211

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = icmp ne i8 %i.v, 2
  %i.y = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.y, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.x, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %AfterCoroSuspend, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w) #36
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.m, %bb.l, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !798  ; 2 uses
  %.not.i.i.i20 = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i20, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.n, !prof !211

bb.n:                                             ; preds = %AfterCoroSuspend
  %i.ac = icmp ne i8 %i.ab, 2
  %i.ad = load ptr, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  %or.cond.i.i.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aa) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit: ; preds = %AfterCoroSuspend, %bb.n, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.0.copyload.i = load ptr, ptr %i.ae, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 160)
          to label %CoroEnd unwind label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #52
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete inlinehint mustprogress uwtable
define internal void @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume(ptr noundef nonnull align 8 dereferenceable(216) %0) #49 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.coro_io::detail::async_send_callback_helper", align 8 ; 15 uses
  %2 = alloca %"class.async_simple::util::move_only_function.753", align 8 ; 11 uses
  %3 = alloca %"struct.std::pair.827", align 8    ; 6 uses
  %4 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 11 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 14 uses
  %6 = alloca %"struct.std::pair.827", align 8    ; 6 uses
  %7 = alloca %"class.std::optional.2416", align 8 ; 7 uses
  %8 = alloca %"struct.std::pair.2405", align 8   ; 6 uses
  %.reload.addr351 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.reload.addr352 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.reload.addr353 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.reload.addr356 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend238, !prof !7050

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr341 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload342 = load i64, ptr %.reload.addr341, align 8, !tbaa !2795
  %i.b = icmp eq i64 %.reload342, 0
  br i1 %i.b, label %bb.a, label %bb.b, !prof !211

bb.a:                                             ; preds = %AfterCoroSuspend
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %8, align 8, !tbaa !200
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %.sroa.4174.0..sroa_idx, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !2797
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr356, ptr noundef nonnull align 8 dereferenceable(20) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.bb

bb.b:                                             ; preds = %AfterCoroSuspend
  %.reload.addr312 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.reload313 = load ptr, ptr %.reload.addr312, align 8, !tbaa !2795
  %i.e = getelementptr inbounds nuw i8, ptr %.reload313, i64 48 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !820  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !881  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !959
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit

_ZNK7coro_io11ib_socket_t7is_openEv.exit:         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.l = load atomic i8, ptr %i.k seq_cst, align 8, !range !252, !noundef !253
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %bb.f

_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread:  ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load i8, ptr %i.n, align 8, !tbaa !969   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.d, !prof !211

bb.d:                                             ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread
  %i.r = icmp ne i8 %i.q, 2
  %i.s = load ptr, ptr %i.p, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %or.cond.i.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.p) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit

_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit: ; preds = %bb.e, %bb.d, %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread
  store i32 107, ptr %i.p, align 8, !tbaa !200
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %.sroa.5168.0..sroa_idx, align 8, !tbaa !486
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !1048
  store i8 1, ptr %i.n, align 8, !tbaa !969
  br label %bb.bb

bb.f:                                             ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit
  %.reload311 = load ptr, ptr %.reload.addr312, align 8, !tbaa !2795 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.reload311, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1314 ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.w, i64 262144)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !820  ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1777 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 196
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1077 ; 4 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from., label %bb.g

_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from.: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1078
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !1079
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5
  %i.al = zext i32 %i.ac to i64
  %i.am = zext i32 %i.aa to i64
  %i.an = sub nsw i64 %i.al, %i.am
  %i.ao = add nsw i64 %i.an, %i.ak
  br label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ap, label %bb.h, label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from.250

bb.h:                                             ; preds = %bb.g
end_hunk_13
begin_hunk_14_@_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEENS0_4LazyINSF_IN2tl8expectedINS5_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS5_9rpc_errorEEEEEEENS5_16request_config_tEDpOT0_ENKUlRT_E0_clIN4asio19basic_stream_socketINSX_2ip3tcpENSX_15any_io_executorEEEEEDaSU_EUlOST_E_EEvS13_Q14isLazyCallbackIST_TL0__EENKUlS3_S14_E_clES3_S14_.resume:bb.a
_ZN12async_simple4coro6detail15LazyAwaiterBaseIvE14awaitResumeTryEv.exit: ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvE9tryResultEv.exit.i
  store ptr null, ptr %.reload.addr26, align 8, !tbaa !356, !noalias !8350
  %i.i = load ptr, ptr %.reload.addr, align 8, !tbaa !259
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %_ZN12async_simple3TryIvED2Ev.exit

_ZN12async_simple3TryIvED2Ev.exit:                ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIvE14awaitResumeTryEv.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr) #36
  %.pr = load ptr, ptr %.reload.addr26, align 8, !tbaa !356 ; 3 uses
  %.not.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i8, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr nonnull %.pr)
          to label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit unwind label %bb.e, !inline_history !5

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit: ; preds = %bb.d, %_ZN12async_simple3TryIvED2Ev.exit, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIvE14awaitResumeTryEv.exit
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEENS0_4LazyINSF_IN2tl8expectedINS5_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS5_9rpc_errorEEEEEEENS5_16request_config_tEDpOT0_ENKUlRT_E0_clIN4asio19basic_stream_socketINSX_2ip3tcpENSX_15any_io_executorEEEEEDaSU_EUlOST_E_EEvS13_Q14isLazyCallbackIST_TL0__EENKUlS3_S14_E_clES3_S14_.destroy(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
_ZN12async_simple3TryIvED2Ev.exit:
  %.reload.addr26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pr = load ptr, ptr %.reload.addr26, align 8, !tbaa !356 ; 3 uses
  %.not.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i8, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit unwind label %bb.b, !inline_history !5

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #52
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit: ; preds = %bb.a, %_ZN12async_simple3TryIvED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #36
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.resume(ptr noundef nonnull align 8 dereferenceable(808) %0) #37 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %2 = alloca %class.anon.2917, align 1           ; 3 uses
  %3 = alloca %class.anon.3283, align 8           ; 6 uses
  %4 = alloca %"class.tl::unexpected", align 8    ; 8 uses
  %5 = alloca %"class.std::shared_ptr.73", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.coro_rpc::rpc_error", align 8 ; 10 uses
  %8 = alloca %"class.tl::unexpected", align 8    ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"struct.coro_rpc::rpc_error", align 8 ; 10 uses
  %11 = alloca %"class.tl::unexpected", align 8   ; 8 uses
  %12 = alloca %class.anon.2946, align 8          ; 4 uses
  %.reload.addr345 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 13 uses
  %.reload.addr347 = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  %.reload.addr348 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 7 uses
  %.reload.addr349 = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 5 uses
  %.reload.addr350 = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  %.reload.addr352 = getelementptr inbounds nuw i8, ptr %0, i64 801 ; 3 uses
  %.reload.addr354 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread, !prof !8365

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr344 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352, !noalias !8366
  invoke void @_ZN12async_simple4coro6detail7coAwaitINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaPNS_8ExecutorEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.async_simple::coro::detail::FutureAwaiter.3282") align 8 %.reload.addr345, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr344)
          to label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_.exit unwind label %.from.254

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_.exit: ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2021
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit, label %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit: ; preds = %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_.exit
  %i.f = load ptr, ptr %.reload.addr345, align 8, !tbaa !2020
  %i.g = load atomic i8, ptr %i.f acquire, align 1
  %i.h = and i8 %i.g, 33
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %AfterCoroSave236, label %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread

AfterCoroSave236:                                 ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit
  store i8 1, ptr %index.addr, align 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !352  ; 5 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %.noexc3, label %bb.a

bb.a:                                             ; preds = %AfterCoroSave236
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.noexc3 unwind label %.from.252, !inline_history !8355

.noexc3:                                          ; preds = %bb.a, %AfterCoroSave236
  %.011.i.i = phi ptr [ null, %AfterCoroSave236 ], [ %i.m, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1027 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.o, null
  br i1 %.not14.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1026 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.q, null
  br i1 %.not15.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef zeroext i1 @_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE25await_suspend_cancellableINS1_11LazyPromiseIN2tl8expectedINS4_24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotE(ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr345, ptr nonnull %0, ptr noundef %i.i, ptr noundef %.011.i.i, ptr noundef nonnull %i.q)
          to label %_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit unwind label %.from.252

.thread.i.i:                                      ; preds = %bb.b, %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.s = ptrtoint ptr %0 to i64
  store i64 %i.s, ptr %3, align 8, !tbaa !241
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.t, align 8, !tbaa !2735
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.011.i.i, ptr %i.u, align 8, !tbaa !2736
  invoke void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE15setContinuationIZNS_4coro6detail13FutureAwaiterIS6_E13await_suspendINSA_11LazyPromiseIN2tl8expectedINS2_24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS6_EEE_EEvOSU_(ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr345, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit.thread unwind label %.from.252

_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit.thread: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %CoroEnd

_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit: ; preds = %bb.c
  br i1 %i.r, label %CoroEnd, label %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread

.from.254:                                        ; preds = %AfterCoroSuspend
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.297

.from.252:                                        ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread, %.noexc, %bb.a, %bb.c, %.thread.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr345) #36
  br label %.from.297

_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread: ; preds = %resume.entry, %_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit, %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8367)
  %i.x = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE6getTryIS7_EEDcRT_(ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr345)
          to label %.noexc unwind label %.from.252

.noexc:                                           ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE11await_readyEv.exit.thread
  %i.y = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNR12async_simple3TryISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE5valueEv(ptr noundef nonnull align 8 dereferenceable(120) %i.x)
          to label %.noexc32 unwind label %.from.252 ; 2 uses

.noexc32:                                         ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 5 uses
  store i8 -1, ptr %i.z, align 8, !tbaa !2039, !alias.scope !8367
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !8367
  store ptr %.reload.addr348, ptr %12, align 8, !tbaa !2042, !noalias !8367
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(105) %i.y)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc32
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #52
  unreachable

bb.e:                                             ; preds = %.noexc32
  %.reload.addr340 = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %.reload341 = load ptr, ptr %.reload.addr340, align 8, !tbaa !2827
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !8367
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !2039
  store i8 %i.ad, ptr %i.z, align 8, !tbaa !2039, !alias.scope !8367
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr345) #36
  %.not.i = icmp eq ptr %.reload341, null
  br i1 %.not.i, label %_ZN8coro_rpc15coro_rpc_client13recving_guard7releaseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reload339 = load ptr, ptr %.reload.addr340, align 8, !tbaa !2827
  %i.ae = getelementptr inbounds nuw i8, ptr %.reload339, i64 256
  %13 = atomicrmw add ptr %i.ae, i32 -1 release, align 4 ; 0 uses
  br label %_ZN8coro_rpc15coro_rpc_client13recving_guard7releaseEv.exit

_ZN8coro_rpc15coro_rpc_client13recving_guard7releaseEv.exit: ; preds = %bb.f, %bb.e
  %i.af = load i8, ptr %i.z, align 8, !tbaa !2039 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.g, label %bb.o, !prof !211

bb.g:                                             ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guard7releaseEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt3getILm1EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS8_(ptr noundef nonnull align 8 dereferenceable(105) %.reload.addr348)
          to label %bb.h unwind label %.from.285  ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !523
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  switch i32 %i.ai, label %bb.l [
    i32 125, label %bb.i
    i32 110, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !524, !noalias !8368 ; 2 uses
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !523, !noalias !8368
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !183, !noalias !8368
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !8368
  invoke void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.al)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from., !inline_history !15

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  invoke void @_ZN8coro_rpc9rpc_errorC2ENS_8err_codeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %10, i16 3, i64 %i.ar, ptr %i.ap)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.as = load i16, ptr %10, align 8, !tbaa !203
  store i16 %i.as, ptr %11, align 8, !tbaa !203
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !206
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !209 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 7 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from., label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from.: ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !210 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !209
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !199
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !199
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre145 = load i64, ptr %.phi.trans.insert144, align 8, !tbaa !210
  br label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit: ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from.
  %i.be = phi i64 [ %i.ba, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from. ], [ %.pre145, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !210
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !209
  store i64 0, ptr %i.bf, align 8, !tbaa !210
  store i8 0, ptr %i.ax, align 8, !tbaa !199
  call void @_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE12return_valueINS3_10unexpectedISE_EEEEvOT_Qsr3stdE16is_convertible_vIOTL0__SK_E(ptr noundef nonnull align 8 dereferenceable(168) %.reload.addr354, ptr noundef nonnull align 8 dereferenceable(40) %11) #36
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !209 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.av
  br i1 %i.bi, label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !199
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #53
  br label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEED2Ev.exit

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEED2Ev.exit: ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !209 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %_ZN8coro_rpc9rpc_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEED2Ev.exit
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !199
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #53
  br label %_ZN8coro_rpc9rpc_errorD2Ev.exit

_ZN8coro_rpc9rpc_errorD2Ev.exit:                  ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  %i.bp = load ptr, ptr %9, align 8, !tbaa !209   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8coro_rpc9rpc_errorD2Ev.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !199
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8coro_rpc9rpc_errorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit

.from.297:                                        ; preds = %.from.254, %.from.252
  %.pn = phi { ptr, i32 } [ %i.w, %.from.252 ], [ %i.v, %.from.254 ]
  %.reload.addr336 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.reload337 = load ptr, ptr %.reload.addr336, align 8, !tbaa !2827
  br label %.from.295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from.: ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.k:                                             ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.bv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bw = load ptr, ptr %9, align 8, !tbaa !209   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.k
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !199
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #53
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %.pn26 = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from. ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %.from.294

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !524, !noalias !8369 ; 2 uses
  %i.cc = load i32, ptr %i.ah, align 8, !tbaa !523, !noalias !8369
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !183, !noalias !8369
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !8369
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef %i.cc)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit39 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.from., !inline_history !15

_ZNKSt10error_code7messageB5cxx11Ev.exit39:       ; preds = %bb.l
  %i.cg = load ptr, ptr %6, align 8, !tbaa !209
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !210
  invoke void @_ZN8coro_rpc9rpc_errorC2ENS_8err_codeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %7, i16 1, i64 %i.ci, ptr %i.cg)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit39
  %i.cj = load i16, ptr %7, align 8, !tbaa !203
  store i16 %i.cj, ptr %8, align 8, !tbaa !203
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !206
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !209 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from., label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from.: ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !210 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.m
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !209
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !199
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !199
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre147 = load i64, ptr %.phi.trans.insert146, align 8, !tbaa !210
  br label %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43

_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43: ; preds = %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from.
  %i.cv = phi i64 [ %i.cr, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from. ], [ %.pre147, %_ZN2tl10unexpectedIN8coro_rpc9rpc_errorEEC2EOS2_.exit43.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !210
end_hunk_14
begin_hunk_15_@_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.resume:resume.entry
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8
  call void %i.qd(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #36, !inline_history !130
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.qe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i.i.i.i113 = icmp eq i8 %i.qe, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i113, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from.290

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from.290: ; preds = %bb.by
  %i.qf = add nsw i32 %i.pw, -1
  store i32 %i.qf, ptr %i.pt, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from.: ; preds = %bb.by
  %i.qg = atomicrmw volatile add ptr %i.pt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from.290
  %.0.i.i.i.i.i.i.i.i.i.i.i.i115 = phi i32 [ %i.pw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from.290 ], [ %i.qg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114.from. ]
  %i.qh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i115, 1
  br i1 %i.qh, label %bb.bz, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !211

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i114, %bb.bx, %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i116, %bb.bq
  %i.qi = load ptr, ptr %.reload.addr348, align 8, !tbaa !209 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !199
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.from.294:                                        ; preds = %.from.284, %.from.285, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.fb, %.from.285 ], [ %.pn26, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.pn25, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn24.pn, %.from.284 ] ; 3 uses
  %i.qn = load i8, ptr %i.z, align 8, !tbaa !2039
  %cond.i6 = icmp eq i8 %i.qn, 0
  br i1 %cond.i6, label %bb.ca, label %.from.295, !prof !2045

bb.ca:                                            ; preds = %.from.294
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !2001
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i7 = icmp eq i8 %i.qp, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i7, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8, label %bb.cb, !prof !211

bb.cb:                                            ; preds = %bb.ca
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.qq)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cc

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8

bb.cc:                                            ; preds = %bb.cb
  %i.qr = landingpad { ptr, i32 }
          catch ptr null
  %i.qs = extractvalue { ptr, i32 } %i.qr, 0
  call void @__clang_call_terminate(ptr %i.qs) #52
  unreachable

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ca
  %i.qt = load ptr, ptr %.reload.addr348, align 8, !tbaa !209 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %.from.295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i9: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !199
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #53
  br label %.from.295

.from.295:                                        ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8, %.from.294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i9, %.from.297
  %.sroa.0120.1 = phi ptr [ %.reload337, %.from.297 ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i9 ], [ null, %.from.294 ], [ null, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8 ]
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.from.297 ], [ %.pn26.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i9 ], [ %.pn26.pn.pn, %.from.294 ], [ %.pn26.pn.pn, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i8 ]
  %.9 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn, 0
  %i.qy = call ptr @__cxa_begin_catch(ptr %.9) #36 ; 0 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #36
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 8, !tbaa !2028
  switch i8 %i.rb, label %bb.cg [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit
    i8 1, label %bb.cd
    i8 2, label %bb.ce
  ], !prof !226

bb.cd:                                            ; preds = %.from.295
  call void @_ZN2tl6detail21expected_storage_baseIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_9rpc_errorELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(137) %i.qz) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit

bb.ce:                                            ; preds = %.from.295
  %i.rc = load ptr, ptr %i.qz, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(137) %i.qz) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit

bb.cg:                                            ; preds = %.from.295
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit: ; preds = %.from.295, %.from.295, %bb.cd, %bb.ce, %bb.cf
  %i.rd = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %i.rd, ptr %i.qz, align 8, !tbaa !259
  store i8 2, ptr %i.ra, align 8, !tbaa !2028
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  invoke void @__cxa_end_catch()
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit
  %.sroa.0120.2 = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit ], [ %.sroa.0120.1, %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit ], [ null, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0120.2.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 792
  store ptr %.sroa.0120.2, ptr %.sroa.0120.2.spill.addr, align 8
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.reload.addr354, align 8, !tbaa !241 ; 2 uses
  %i.re = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8
  musttail call void %i.re(ptr nonnull %.sroa.0.0.copyload.i.i)
  ret void

CoroEnd:                                          ; preds = %_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit.thread, %_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.__await_suspend_wrapper__await.exit
  ret void

bb.ch:                                            ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEE19unhandled_exceptionEv.exit
  %i.rf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.rf
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.destroy(ptr noundef nonnull align 8 dereferenceable(808) %0) #51 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr344 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 800
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %.from.302
    i8 1, label %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit
    i8 2, label %.from.304
  ], !prof !8371

.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit: ; preds = %resume.entry
  %.reload.addr345 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr345) #36
  br label %.from.302

.from.304:                                        ; preds = %resume.entry
  br label %.from.302

.from.302:                                        ; preds = %resume.entry, %.from.304, %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit
  %.sink = phi i64 [ 792, %.from.304 ], [ 784, %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEED2Ev.exit ], [ 784, %resume.entry ]
  %.sroa.0120.2.reload.addr342 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.0120.3 = load ptr, ptr %.sroa.0120.2.reload.addr342, align 8, !tbaa !2827 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !2028
  switch i8 %i.c, label %bb.d [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit
    i8 1, label %bb.a
    i8 2, label %bb.b
  ], !prof !226

bb.a:                                             ; preds = %.from.302
  tail call void @_ZN2tl6detail21expected_storage_baseIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_9rpc_errorELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(137) %i.b) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit

bb.b:                                             ; preds = %.from.302
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(137) %i.b) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit

bb.d:                                             ; preds = %.from.302
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit: ; preds = %bb.c, %bb.b, %bb.a, %.from.302, %.from.302
  %.not.i.i85 = icmp eq ptr %.sroa.0120.3, null
  br i1 %.not.i.i85, label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0120.3, i64 256
  %1 = atomicrmw add ptr %i.e, i32 -1 release, align 4 ; 0 uses
  br label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit

_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit: ; preds = %bb.e, %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEEED2Ev.exit
  %.reload.addr329 = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %.reload330 = load ptr, ptr %.reload.addr329, align 8, !tbaa !2827 ; 2 uses
  %.not.i.i86 = icmp eq ptr %.reload330, null
  br i1 %.not.i.i86, label %_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.reload330, i64 12 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i87 = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i87, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from.305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from.305: ; preds = %bb.f
  %i.h = load i32, ptr %i.f, align 4, !tbaa !200  ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from.: ; preds = %bb.f
  %i.j = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from.305
  %.0.i.i.i.i89 = phi i32 [ %i.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from.305 ], [ %i.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88.from. ]
  %i.k = icmp eq i32 %.0.i.i.i.i89, 1
  br i1 %i.k, label %bb.g, label %_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88
  %.reload324 = load ptr, ptr %.reload.addr329, align 8, !tbaa !2827 ; 2 uses
  %i.l = load ptr, ptr %.reload324, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.reload324) #36, !inline_history !149
  br label %_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i88, %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit
  tail call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr344) #36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.0.copyload.i = load ptr, ptr %i.o, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 808)
          to label %CoroEnd unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

CoroEnd:                                          ; preds = %_ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.resume(ptr noundef nonnull align 8 dereferenceable(696) %0) #37 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.2277, align 8           ; 7 uses
  %2 = alloca %"class.async_simple::coro::Lazy.2169", align 8 ; 6 uses
  %3 = alloca %"class.asio::io_context::basic_executor_type", align 8 ; 5 uses
  %4 = alloca %class.anon.2946, align 8           ; 4 uses
  %.reload.addr321 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.reload.addr322 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.reload.addr323 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.reload.addr324 = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %.reload.addr325 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.reload.addr326 = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %.reload.addr327 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %.reload.addr328 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.reload.addr329 = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 5 uses
  %.reload.addr330 = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %.reload.addr331 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %.reload.addr332 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 7 uses
  %.reload.addr333 = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 5 uses
  %.reload.addr334 = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  %.reload.addr336 = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %.reload.addr337 = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 5 uses
  %.reload.addr340 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 4 uses
  %index = load i8, ptr %index.addr, align 4
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend193, !prof !8389

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr297 = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %.reload298 = load ptr, ptr %.reload.addr297, align 8, !tbaa !2829
  %i.b = getelementptr inbounds nuw i8, ptr %.reload298, i64 40 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !300  ; 10 uses
  %.spill.addr306 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.c, ptr %.spill.addr306, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = atomicrmw add ptr %i.d, i32 1 release, align 4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !8391, !range !252, !noundef !253
  %i.h = trunc nuw i8 %i.g to i1
  %.reload294.pre = load ptr, ptr %.reload.addr297, align 8, !tbaa !2829 ; 2 uses
  br i1 %i.h, label %bb.a, label %_ZNSt8optionalINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit

_ZNSt8optionalINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit: ; preds = %AfterCoroSuspend
  %i.i = getelementptr inbounds nuw i8, ptr %.reload294.pre, i64 168
  %i.j = load i64, ptr %i.i, align 8, !tbaa !242
  store i8 1, ptr %i.f, align 8, !tbaa !8391
  store i64 %i.j, ptr %.reload.addr323, align 8, !tbaa !242
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt8optionalINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit, %AfterCoroSuspend
  %i.k = getelementptr inbounds nuw i8, ptr %.reload294.pre, i64 28
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4
  store i32 %i.l, ptr %.reload.addr337, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8392)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !437, !noalias !8392
  store i64 %i.q, ptr %3, align 8, !tbaa !437, !alias.scope !8392
  invoke void @_ZSt11make_uniqueIN7coro_io12period_timerEJN4asio10io_context19basic_executor_typeISaIvELm0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.65") align 8 %.reload.addr334, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %.from.276

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.r = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #54
          to label %bb.c unwind label %.from.272  ; 7 uses

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.r, align 1, !tbaa !2792
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !2793
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !2793
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store i8 0, ptr %i.u, align 8, !tbaa !2021
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i8 0, i64 25, i1 false)
  store ptr %i.r, ptr %.reload.addr330, align 8, !tbaa !2008
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  store i8 0, ptr %i.w, align 8, !tbaa !2009
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  %i.z = atomicrmw add ptr %i.s, i8 1 monotonic, align 1 ; 0 uses
  invoke void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9getFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future") align 8 %.reload.addr322, ptr noundef nonnull align 8 dereferenceable(9) %.reload.addr330)
          to label %bb.d unwind label %.from.268

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.02.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !1168
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8398
  call void @llvm.experimental.noalias.scope.decl(metadata !8399)
  %i.ad = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #54
          to label %bb.e unwind label %.from.264  ; 11 uses

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 1, ptr %i.af, align 8, !tbaa !230, !noalias !8399
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 1, ptr %i.ag, align 4, !tbaa !231, !noalias !8399
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8coro_rpc15coro_rpc_client9handler_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ad, align 8, !tbaa !183, !noalias !8399
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %.sroa.23.0.copyload, ptr %i.ai, align 8, !noalias !8399
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %.sroa.02.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !8399
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i32 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !8399
  %i.aj = load i64, ptr %.reload.addr334, align 8, !tbaa !1198, !noalias !8399
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !1198, !noalias !8399
  store ptr null, ptr %.reload.addr334, align 8, !tbaa !1198, !noalias !8399
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.al = load ptr, ptr %.reload.addr330, align 8, !tbaa !2008, !noalias !8399
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !2008, !noalias !8399
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.an = load i8, ptr %i.w, align 8, !tbaa !2009, !range !252, !noalias !8399, !noundef !253
  store i8 %i.an, ptr %i.am, align 8, !tbaa !2009, !noalias !8399
  store ptr null, ptr %.reload.addr330, align 8, !tbaa !2008, !noalias !8399
  store i8 0, ptr %i.w, align 8, !tbaa !2009, !noalias !8399
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i8 0, ptr %i.ao, align 8, !tbaa !393, !noalias !8399
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !228, !alias.scope !8399
  store ptr %i.ah, ptr %.reload.addr329, align 8, !tbaa !8400, !alias.scope !8399
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 3 uses
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #36 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #55
          to label %.noexc unwind label %.from.260

.noexc:                                           ; preds = %bb.f
  unreachable
end_hunk_15
begin_hunk_16_@_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.resume:resume.entry

_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSE_IN2tl8expectedINS2_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS2_9rpc_errorEEEEEEENS2_16request_config_tEDpOT0_EUlRT_E0_EEDaOSS_.exit: ; preds = %bb.at, %bb.as, %bb.aq
  %i.jo = load ptr, ptr %i.iz, align 8, !tbaa !228 ; 8 uses
  %.not.i.i.i62 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i62, label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSE_IN2tl8expectedINS2_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS2_9rpc_errorEEEEEEENS2_16request_config_tEDpOT0_EUlRT_E0_EEDaOSS_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.jp, align 8, !tbaa !230
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !231
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !183
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #36, !inline_history !8388
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !183
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #36, !inline_history !8388
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i63 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i.i63, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.227

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.227: ; preds = %bb.ax
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.ax
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.227
  %.0.i.i.i.i.i = phi i32 [ %i.js, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.227 ], [ %i.kc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.kd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kd, label %bb.ay, label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit, !prof !211

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #36
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit

_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aw, %_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSE_IN2tl8expectedINS2_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS2_9rpc_errorEEEEEEENS2_16request_config_tEDpOT0_EUlRT_E0_EEDaOSS_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.az

bb.az:                                            ; preds = %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENUlRT_E0_D2Ev.exit, %bb.al
  %i.ke = load ptr, ptr %.reload.addr322, align 8, !tbaa !2020
  store ptr %i.ke, ptr %.reload.addr321, align 8, !tbaa !2020
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 -1, ptr %i.kh, align 8, !tbaa !2021
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !2021 ; 3 uses
  switch i8 %i.kj, label %bb.bc [
    i8 0, label %.from.233
    i8 1, label %bb.ba
    i8 2, label %.from.229
    i8 -1, label %.from.233
  ]

bb.ba:                                            ; preds = %bb.az
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i8 -1, ptr %i.kk, align 8, !tbaa !2039
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.kf, ptr %4, align 8, !tbaa !2042
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(128) %i.kg)
          to label %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #52
  unreachable

.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ko = load i8, ptr %i.kn, align 8, !tbaa !2039
  store i8 %i.ko, ptr %i.kk, align 8, !tbaa !2039
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.ki, align 8, !tbaa !2021
  br label %.from.233

.from.229:                                        ; preds = %bb.az
  %i.kp = load ptr, ptr %i.kg, align 8, !tbaa !259
  store ptr %i.kp, ptr %i.kf, align 8, !tbaa !259
  store ptr null, ptr %i.kg, align 8, !tbaa !259
  br label %.from.233

bb.bc:                                            ; preds = %bb.az
  unreachable

.from.233:                                        ; preds = %bb.az, %bb.az, %.from.229, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i
  %i.kq = phi i8 [ 2, %.from.229 ], [ %.pre.i.i.i.i.i.i.i.i, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kj, %bb.az ], [ %i.kj, %bb.az ]
  %.reload288 = load ptr, ptr %.reload.addr283, align 8, !tbaa !2829 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.reload288, i64 40
  store i8 %i.kq, ptr %i.kh, align 8, !tbaa !2021
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !1017
  store ptr null, ptr %i.kt, align 8, !tbaa !1017
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !2022
  store ptr null, ptr %.reload.addr322, align 8, !tbaa !2020
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.reload288, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !228 ; 2 uses
  %i.ky = load <2 x ptr>, ptr %i.kr, align 8, !tbaa !241
  store <2 x ptr> %i.ky, ptr %.reload.addr331, align 8, !tbaa !241
  %.not.i.i.i64 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i64, label %_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit, label %bb.bd

bb.bd:                                            ; preds = %.from.233
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 12 ; 3 uses
  %i.la = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i65 = icmp eq i8 %i.la, 0
  br i1 %.not.i.i.i.i65, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !200
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !200
  br label %_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ld = atomicrmw volatile add ptr %i.kz, i32 1 acq_rel, align 4 ; 0 uses
  %.reload292.pre = load ptr, ptr %.reload.addr283, align 8, !tbaa !2829
  br label %_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit

_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit: ; preds = %bb.bf, %bb.be, %.from.233
  %.reload292 = phi ptr [ %.reload292.pre, %bb.bf ], [ %.reload288, %bb.be ], [ %.reload288, %.from.233 ]
  %.reload.addr319 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.reload320 = load ptr, ptr %.reload.addr319, align 8, !tbaa !2829
  store ptr %.reload320, ptr %.reload.addr336, align 8, !tbaa !2044
  %i.le = getelementptr inbounds nuw i8, ptr %.reload292, i64 152
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !2749
  invoke void @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.2169") align 8 %.reload.addr326, ptr nofreeobj noundef nonnull align 8 dereferenceable(136) %.reload.addr321, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %.reload.addr331, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %.reload.addr336, i64 noundef %i.lf)
          to label %bb.bg unwind label %bb.bq

bb.bg:                                            ; preds = %_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.li = load i8, ptr %i.lg, align 8, !tbaa !2024
  switch i8 %i.li, label %bb.bm [
    i8 -1, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70
    i8 0, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70
    i8 1, label %bb.bh
    i8 2, label %bb.bk
  ], !prof !226

bb.bh:                                            ; preds = %bb.bg
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !2026 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i67 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i67, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  invoke void %i.ll(ptr nonnull %i.lj)
          to label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70 unwind label %bb.bj, !inline_history !122

bb.bj:                                            ; preds = %bb.bi
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #52
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.lo = load ptr, ptr %i.lh, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i8.i.i.i.i.i.i66 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i.i.i.i.i66, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.lh) #36
  br label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70

bb.bm:                                            ; preds = %bb.bg
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70: ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bg
  %i.lp = load i64, ptr %.reload.addr326, align 8, !tbaa !241
  store i64 %i.lp, ptr %i.lh, align 8, !tbaa !241
  store ptr null, ptr %.reload.addr326, align 8, !tbaa !2026
  store i8 1, ptr %i.lg, align 8, !tbaa !2024
  %i.lq = load ptr, ptr %.reload.addr336, align 8, !tbaa !2044 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i71, label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 256
  %5 = atomicrmw add ptr %i.lr, i32 -1 release, align 4 ; 0 uses
  br label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit

_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit: ; preds = %bb.bn, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_9rpc_errorEEELb0EED2Ev.exit70
  %i.ls = load ptr, ptr %i.kv, align 8, !tbaa !198 ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i72, label %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 12 ; 3 uses
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i73 = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i73, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.235

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.235: ; preds = %bb.bo
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !200 ; 2 uses
  %i.lw = add nsw i32 %i.lv, -1
  store i32 %i.lw, ptr %i.lt, align 4, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.: ; preds = %bb.bo
  %i.lx = atomicrmw volatile add ptr %i.lt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.235
  %.0.i.i.i.i = phi i32 [ %i.lv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.235 ], [ %i.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from. ]
  %i.ly = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ly, label %bb.bp, label %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !183
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #36, !inline_history !149
  br label %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bp
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr321) #36
  br label %_ZN8coro_rpc9rpc_errorD2Ev.exit54

bb.bq:                                            ; preds = %_ZNSt8weak_ptrIN8coro_rpc15coro_rpc_client9control_tEEC2IS2_vEERKSt10shared_ptrIT_E.exit
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = load ptr, ptr %.reload.addr336, align 8, !tbaa !2044 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.md, null
  br i1 %.not.i.i74, label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit75, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 256
  %6 = atomicrmw add ptr %i.me, i32 -1 release, align 4 ; 0 uses
  br label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit75

_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit75: ; preds = %bb.br, %bb.bq
  %i.mf = load ptr, ptr %i.kv, align 8, !tbaa !198 ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i76, label %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, label %bb.bs

bb.bs:                                            ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit75
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12 ; 3 uses
  %i.mh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i77 = icmp eq i8 %i.mh, 0
  br i1 %.not.i.i.i77, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from.237

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from.237: ; preds = %bb.bs
  %i.mi = load i32, ptr %i.mg, align 4, !tbaa !200 ; 2 uses
  %i.mj = add nsw i32 %i.mi, -1
  store i32 %i.mj, ptr %i.mg, align 4, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from.: ; preds = %bb.bs
  %i.mk = atomicrmw volatile add ptr %i.mg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from.237
  %.0.i.i.i.i79 = phi i32 [ %i.mi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from.237 ], [ %i.mk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78.from. ]
  %i.ml = icmp eq i32 %.0.i.i.i.i79, 1
  br i1 %i.ml, label %bb.bt, label %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !183
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(16) %i.mf) #36, !inline_history !149
  br label %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80: ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit75, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.bt
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr321) #36
  br label %bb.bu

_ZN8coro_rpc9rpc_errorD2Ev.exit54:                ; preds = %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52, %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53
  %.sroa.0105.0 = phi ptr [ null, %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.reload316, %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53 ], [ %.reload318, %_ZN8coro_rpc9rpc_errorD2Ev.exit54.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52 ] ; 2 uses
  %i.mp = load ptr, ptr %i.dv, align 8, !tbaa !209 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.dw
  br i1 %i.mq, label %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83, label %_ZN8coro_rpc9rpc_errorD2Ev.exit83.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZN8coro_rpc9rpc_errorD2Ev.exit83.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %_ZN8coro_rpc9rpc_errorD2Ev.exit54
  %i.mr = load i64, ptr %i.dw, align 8, !tbaa !199
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #53
  br label %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83

bb.bu:                                            ; preds = %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, %.from.246, %.from.241
  %.sroa.0105.1 = phi ptr [ %.reload312, %.from.246 ], [ %.reload314, %.from.241 ], [ null, %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ] ; 2 uses
  %.pn19 = phi { ptr, i32 } [ %i.hh, %.from.246 ], [ %i.hf, %.from.241 ], [ %i.mc, %.from._ZNSt10__weak_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ] ; 2 uses
  %i.mt = load ptr, ptr %i.dv, align 8, !tbaa !209 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.dw
  br i1 %i.mu, label %.from.263, label %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.bu
  %i.mv = load i64, ptr %i.dw, align 8, !tbaa !199
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #53
  br label %.from.263

.from._ZN8coro_rpc9rpc_errorD2Ev.exit83:          ; preds = %_ZN8coro_rpc9rpc_errorD2Ev.exit54, %_ZN8coro_rpc9rpc_errorD2Ev.exit83.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit
  %.sroa.0105.4 = phi ptr [ %i.c, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit ], [ %.sroa.0105.0, %_ZN8coro_rpc9rpc_errorD2Ev.exit83.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ %.sroa.0105.0, %_ZN8coro_rpc9rpc_errorD2Ev.exit54 ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !228 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.my, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 4 uses
  %i.na = load atomic i64, ptr %i.mz acquire, align 8 ; 2 uses
  %i.nb = icmp eq i64 %i.na, 4294967297
  %i.nc = trunc i64 %i.na to i32                  ; 2 uses
  br i1 %i.nb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.mz, align 8, !tbaa !230
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  store i32 0, ptr %i.nd, align 4, !tbaa !231
  %i.ne = load ptr, ptr %i.my, align 8, !tbaa !183
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #36, !inline_history !160
  %i.nh = load ptr, ptr %i.my, align 8, !tbaa !183
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #36, !inline_history !160
  br label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i88 = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i88, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254: ; preds = %bb.bx
  %i.nl = add nsw i32 %i.nc, -1
  store i32 %i.nl, ptr %i.mz, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.: ; preds = %bb.bx
  %i.nm = atomicrmw volatile add ptr %i.mz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254
  %.0.i.i.i.i90 = phi i32 [ %i.nc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254 ], [ %i.nm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from. ]
  %i.nn = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.nn, label %bb.by, label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #36
  br label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.bw, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr322) #36
  call void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.reload.addr330) #36
  %i.no = load ptr, ptr %.reload.addr334, align 8, !tbaa !1198 ; 3 uses
  %.not.i91 = icmp eq ptr %i.no, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.no) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef 120) #53
  br label %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i, %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i.i92 = icmp eq ptr %.sroa.0105.4, null
  br i1 %.not.i.i92, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0105.4, i64 256
  %7 = atomicrmw add ptr %i.np, i32 -1 release, align 4 ; 0 uses
  br label %bb.cc

.from.263:                                        ; preds = %bb.bu, %.from.256, %.from.260, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit28, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc9rpc_errorELb0EED2Ev.exit47, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  %.sroa.0105.5 = phi ptr [ %i.c, %.from.256 ], [ %i.c, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit28 ], [ %i.c, %.from.260 ], [ %.reload308, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc9rpc_errorELb0EED2Ev.exit47 ], [ %.sroa.0105.1, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84 ], [ %.sroa.0105.1, %bb.bu ]
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.bp, %.from.256 ], [ %.pn15, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit28 ], [ %i.br, %.from.260 ], [ %.pn16, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc9rpc_errorELb0EED2Ev.exit47 ], [ %.pn19, %_ZN8coro_rpc9rpc_errorD2Ev.exit86.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84 ], [ %.pn19, %bb.bu ]
  call void @_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr329) #36
  br label %.from.267

.from.267:                                        ; preds = %.from.264, %.from.263
  %.sroa.0105.6 = phi ptr [ %.sroa.0105.5, %.from.263 ], [ %i.c, %.from.264 ]
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %.from.263 ], [ %i.bo, %.from.264 ]
  call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr322) #36
  br label %.from.271

.from.271:                                        ; preds = %.from.268, %.from.267
  %.sroa.0105.7 = phi ptr [ %.sroa.0105.6, %.from.267 ], [ %i.c, %.from.268 ]
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn, %.from.267 ], [ %i.bn, %.from.268 ]
  call void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.reload.addr330) #36
  br label %.from.275

.from.275:                                        ; preds = %.from.272, %.from.271
  %.sroa.0105.8 = phi ptr [ %.sroa.0105.7, %.from.271 ], [ %i.c, %.from.272 ]
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %.from.271 ], [ %i.bm, %.from.272 ]
  call void @_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr334) #36
  br label %bb.ca

bb.ca:                                            ; preds = %.from.275, %.from.276
  %.sroa.0105.9 = phi ptr [ %.sroa.0105.8, %.from.275 ], [ %i.c, %.from.276 ] ; 2 uses
  %.pn19.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %.from.275 ], [ %i.bl, %.from.276 ]
  %.11 = extractvalue { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn, 0
  %.not.i.i94 = icmp eq ptr %.sroa.0105.9, null
  br i1 %.not.i.i94, label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit95, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0105.9, i64 256
  %8 = atomicrmw add ptr %i.nq, i32 -1 release, align 4 ; 0 uses
  br label %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit95

_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit95: ; preds = %bb.cb, %bb.ca
  %i.nr = call ptr @__cxa_begin_catch(ptr %.11) #36 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr340) #36
  invoke void @__cxa_end_catch()
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit95, %bb.bz, %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 4
  %.sroa.0.0.copyload.i.i3 = load ptr, ptr %.reload.addr340, align 8, !tbaa !241 ; 2 uses
  %i.ns = load ptr, ptr %.sroa.0.0.copyload.i.i3, align 8
  musttail call void %i.ns(ptr nonnull %.sroa.0.0.copyload.i.i3)
  ret void

bb.cd:                                            ; preds = %_ZN8coro_rpc15coro_rpc_client13recving_guardD2Ev.exit95
  %i.nt = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 4
  resume { ptr, i32 } %i.nt
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.destroy(ptr noundef nonnull align 8 dereferenceable(696) %0) #51 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr322 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.reload.addr330 = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.reload.addr333 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.reload.addr334 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 692
  %index = load i8, ptr %index.addr, align 4
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %AfterCoroSuspend193, label %AfterCoroSuspend, !prof !8408

AfterCoroSuspend193:                              ; preds = %resume.entry
  %.reload.addr332 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre = load ptr, ptr %.reload.addr332, align 8, !tbaa !2807 ; 3 uses
  %.not.i35 = icmp eq ptr %.pre, null
  br i1 %.not.i35, label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIN8coro_rpc9rpc_errorEED2Ev.exit37, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend193
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pre)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseIN8coro_rpc9rpc_errorEED2Ev.exit37 unwind label %bb.b, !inline_history !153

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #52
  unreachable

_ZN12async_simple4coro6detail15LazyAwaiterBaseIN8coro_rpc9rpc_errorEED2Ev.exit37: ; preds = %bb.a, %AfterCoroSuspend193
  %i.f = load ptr, ptr %.reload.addr333, align 8, !tbaa !2807 ; 3 uses
  %.not.i38 = icmp eq ptr %i.f, null
  br i1 %.not.i38, label %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseIN8coro_rpc9rpc_errorEED2Ev.exit37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83 unwind label %bb.d, !inline_history !153

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

.from._ZN8coro_rpc9rpc_errorD2Ev.exit83:          ; preds = %bb.c, %_ZN12async_simple4coro6detail15LazyAwaiterBaseIN8coro_rpc9rpc_errorEED2Ev.exit37
  %.reload.addr309 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.reload310 = load ptr, ptr %.reload.addr309, align 8, !tbaa !2829 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !228  ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.l, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !231
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36, !inline_history !160
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36, !inline_history !160
  br label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i88 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i88, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254: ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.: ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254
  %.0.i.i.i.i90 = phi i32 [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from.254 ], [ %i.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89.from. ]
  %i.aa = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !211

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36
  br label %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.f, %.from._ZN8coro_rpc9rpc_errorD2Ev.exit83
  tail call void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.reload.addr322) #36
  tail call void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.reload.addr330) #36
  %i.ab = load ptr, ptr %.reload.addr334, align 8, !tbaa !1198 ; 3 uses
  %.not.i91 = icmp eq ptr %i.ab, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ab) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 120) #53
  br label %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7coro_io12period_timerEEclEPS1_.exit.i, %_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9handler_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i.i92 = icmp eq ptr %.reload310, null
  br i1 %.not.i.i92, label %AfterCoroSuspend, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.reload310, i64 256
  %1 = atomicrmw add ptr %i.ac, i32 -1 release, align 4 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZNSt10unique_ptrIN7coro_io12period_timerESt14default_deleteIS1_EED2Ev.exit, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !2024
  switch i8 %i.af, label %bb.o [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit
    i8 1, label %bb.j
    i8 2, label %bb.m
  ], !prof !226

bb.j:                                             ; preds = %AfterCoroSuspend
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !2026 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr nonnull %i.ag)
          to label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit unwind label %bb.l, !inline_history !122

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #52
  unreachable

bb.m:                                             ; preds = %AfterCoroSuspend
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.ae) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit

bb.o:                                             ; preds = %AfterCoroSuspend
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit: ; preds = %AfterCoroSuspend, %AfterCoroSuspend, %bb.j, %bb.k, %bb.m, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.0.copyload.i = load ptr, ptr %i.am, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 696)
          to label %CoroEnd unwind label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #52
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client4callITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyIN2tl8expectedIDTcl15get_return_typeIXT_EEEENS_9rpc_errorEEEEENS_16request_config_tEDpOT0_.resume(ptr noundef nonnull align 8 dereferenceable(392) %0) #37 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.reload.addr226 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 19 uses
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 6 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend156
    i8 2, label %AfterCoroSuspend160
  ], !prof !8430

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = tail call noalias noundef dereferenceable_or_null(704) ptr @_ZnamRKSt9nothrow_t(i64 noundef 704, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #56, !inline_history !8409 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i

.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i: ; preds = %AfterCoroSuspend
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  %.reload.addr221 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.resume, ptr %i.a, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr323.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %.reload.addr340.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %i.d = load <2 x ptr>, ptr %.reload.addr212, align 8, !tbaa !8432
  store <2 x ptr> %i.d, ptr %.spill.addr.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr323.i, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr221, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !2024
  %index.addr341.i = getelementptr inbounds nuw i8, ptr %i.a, i64 692
  store i8 0, ptr %index.addr341.i, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8433)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8434)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.a, ptr %.reload.addr230, align 8, !alias.scope !8435
  store i8 1, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr340.i, align 8, !tbaa !241
  %i.h = load <2 x ptr>, ptr %i.f, align 8, !tbaa !241
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !241
  musttail call void @_ZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_.resume(ptr nonnull %i.a)
  ret void

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #36, !noalias !8436 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.93)
          to label %bb.b unwind label %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37.from.196, !noalias !8436

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc unwind label %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37.from.195

.noexc:                                           ; preds = %bb.b
  unreachable

_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37.from.196: ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #36, !noalias !8436
  br label %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37

_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37.from.195: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit37

AfterCoroSuspend156:                              ; preds = %resume.entry
  %i.l = load ptr, ptr %.reload.addr230, align 8, !tbaa !2831, !noalias !8437
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNO12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %.noexc16 unwind label %.body17.from.186 ; 2 uses

.noexc16:                                         ; preds = %AfterCoroSuspend156
  %i.o = load i64, ptr %i.n, align 8, !tbaa !241, !noalias !8437 ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 5 uses
  store ptr null, ptr %i.n, align 8, !tbaa !2026, !noalias !8437
  %i.q = load ptr, ptr %.reload.addr230, align 8, !tbaa !2831, !noalias !8437 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr %i.q)
          to label %bb.f unwind label %bb.c, !noalias !8437, !inline_history !162

bb.c:                                             ; preds = %.noexc16
  %i.t = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i2.i = icmp eq i64 %i.o, 0
  br i1 %.not.i2.i, label %.body17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr nonnull %i.p)
          to label %.body17 unwind label %bb.e, !noalias !8437, !inline_history !122

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #52, !noalias !8437
  unreachable

bb.f:                                             ; preds = %.noexc16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.reload.addr230, align 8, !tbaa !2831, !noalias !8437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8438)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !352, !noalias !8438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8439)
  %.not.i.i.i19 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i19, label %bb.g, label %AfterCoroSave158, !prof !211

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #36, !noalias !8440 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.93)
          to label %bb.h unwind label %.body17.from.188, !noalias !8440

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc21 unwind label %.body17.from.186

.noexc21:                                         ; preds = %bb.h
  unreachable

.body17.from.188:                                 ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #36, !noalias !8440
  br label %.body17

AfterCoroSave158:                                 ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !352, !noalias !8440
  store ptr %i.p, ptr %.reload.addr226, align 8, !alias.scope !8441
  store i8 2, ptr %index.addr, align 8
end_hunk_16
begin_hunk_17_@_Z4sendii.resume:resume.entry

.body59.from.:                                    ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.from..body59

_ZN7easylog6loggerILm0EE8instanceEv.exit61:       ; preds = %bb.aa, %bb.y, %bb.x
  %i.cz = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !252, !noundef !253
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.ab, !prof !211

bb.ab:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit61
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr443)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %.body59.from..loopexit.split-lp

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.ab, %_ZN7easylog6loggerILm0EE8instanceEv.exit61
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !209 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ce
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.dd = load i64, ptr %i.ce, align 8, !tbaa !199
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.df = load ptr, ptr %i.by, align 8, !tbaa !209 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bz
  br i1 %i.dg, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dh = load i64, ptr %i.bz, align 8, !tbaa !199
  %i.di = add i64 %i.dh, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #53
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %.sroa.12.0182.reload.addr435 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.12.0182.reload436 = load ptr, ptr %.sroa.12.0182.reload.addr435, align 8, !tbaa !2833
  %.sroa.18.0183.reload.addr421 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.18.0183.reload422 = load ptr, ptr %.sroa.18.0183.reload.addr421, align 8, !tbaa !2833
  %.sroa.082.0184.reload.addr415 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.082.0184.reload416 = load i64, ptr %.sroa.082.0184.reload.addr415, align 8, !tbaa !2833
  %.sroa.084.0185.reload.addr393 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.084.0185.reload394 = load ptr, ptr %.sroa.084.0185.reload.addr393, align 8, !tbaa !2833
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

.body59.from..loopexit.split-lp:                  ; preds = %bb.ab, %bb.w, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body59

.from..body59:                                    ; preds = %.body59.from., %.body59.from..loopexit.split-lp
  %eh.lpad-body60 = phi { ptr, i32 } [ %i.cy, %.body59.from. ], [ %lpad.loopexit.split-lp, %.body59.from..loopexit.split-lp ]
  tail call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr443) #36
  br label %.from..body38

bb.ac:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit.jt0
  %.sroa.12.0182.reload.addr441 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.sroa.12.0182.reload442 = load ptr, ptr %.sroa.12.0182.reload.addr441, align 8, !tbaa !2833
  %.sroa.18.0183.reload.addr433 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %.sroa.18.0183.reload434 = load ptr, ptr %.sroa.18.0183.reload.addr433, align 8, !tbaa !2833
  %.sroa.082.0184.reload.addr419 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.082.0184.reload420 = load i64, ptr %.sroa.082.0184.reload.addr419, align 8, !tbaa !2833
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload = load i32, ptr %.reload.addr, align 8, !tbaa !2833
  %i.dj = shl nsw i32 %.reload, 3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr @_ZZ7get_qpsiE2ar, i64 %i.dk
  %i.dm = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8 ; 0 uses
  %i.dn = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36 ; 3 uses
  %i.do = sub nsw i64 %i.dn, %.sroa.082.0184.reload420
  %i.dp = sdiv i64 %i.do, 1000                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0182.reload442, %.sroa.18.0183.reload434
  br i1 %.not.i.i, label %bb.ad, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.: ; preds = %bb.ac
  %.sroa.12.0182.reload440 = load ptr, ptr %.sroa.12.0182.reload.addr441, align 8, !tbaa !2833 ; 2 uses
  store i64 %i.dp, ptr %.sroa.12.0182.reload440, align 8, !tbaa !242
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.12.0182.reload440, i64 8
  %.sroa.18.0183.reload426 = load ptr, ptr %.sroa.18.0183.reload.addr433, align 8, !tbaa !2833
  %.sroa.084.0185.reload.addr397 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.084.0185.reload398 = load ptr, ptr %.sroa.084.0185.reload.addr397, align 8, !tbaa !2833
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

bb.ad:                                            ; preds = %bb.ac
  %.sroa.18.0183.reload432 = load ptr, ptr %.sroa.18.0183.reload.addr433, align 8, !tbaa !2833
  %.sroa.084.0185.reload.addr413 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.084.0185.reload414 = load ptr, ptr %.sroa.084.0185.reload.addr413, align 8, !tbaa !2833 ; 4 uses
  %i.dr = ptrtoint ptr %.sroa.18.0183.reload432 to i64
  %i.ds = ptrtoint ptr %.sroa.084.0185.reload414 to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 6 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.ae, label %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #55
          to label %.noexc63 unwind label %.body38.from..loopexit.split-lp120

.noexc63:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #54
          to label %.noexc64 unwind label %.body38.from..loopexit.split-lp120 ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i64 %i.dp, ptr %i.ec, align 8, !tbaa !242
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.af, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %.sroa.084.0185.reload414, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.af, %.noexc64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.084.0185.reload414, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0185.reload414, i64 noundef %i.dt) #53
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i, %bb.ag
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from., %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit
  %.sroa.12.1 = phi ptr [ %.sroa.12.0182.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.12.0182.reload436, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.12.0182.reload438, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.ee, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.dq, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0183.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.18.0183.reload422, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.18.0183.reload424, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.ef, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.18.0183.reload426, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %.sroa.082.1 = phi i64 [ %.sroa.082.0184.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.082.0184.reload416, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.082.0184.reload418, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.dn, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.dn, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ]
  %.sroa.084.1 = phi ptr [ %.sroa.084.0185.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.084.0185.reload394, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.084.0185.reload396, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.eb, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.084.0185.reload398, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %i.eg = load i8, ptr %i.as, align 8, !tbaa !251, !range !252, !noundef !253
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ej = load ptr, ptr %.reload.addr444, align 8, !tbaa !209 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ei
  br i1 %i.ek, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.sink.split

bb.ai:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !209 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.el
  br i1 %i.eo, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.sink.split

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.sink.split: ; preds = %bb.ai, %bb.ah
  %.sink21.in = phi ptr [ %i.ei, %bb.ah ], [ %i.el, %bb.ai ]
  %.sink = phi ptr [ %i.ej, %bb.ah ], [ %i.en, %bb.ai ]
  %.sink21 = load i64, ptr %.sink21.in, align 8, !tbaa !199
  %i.ep = add i64 %.sink21, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ep) #53
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit: ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.sink.split, %bb.ai, %bb.ah
  %.0186.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.0186.reload = load i32, ptr %.0186.reload.addr, align 8, !tbaa !2833
  %.reload.addr382 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %.reload383 = load i32, ptr %.reload.addr382, align 4, !tbaa !2833
  %i.eq = add nuw nsw i32 %.0186.reload, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %.reload383
  br i1 %exitcond.not, label %._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, label %.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, !llvm.loop !8457

._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit: ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit
  br label %._crit_edge, !llvm.loop !8457

.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit: ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit
  br label %bb.c, !llvm.loop !8457

.body38.from..loopexit.split-lp120:               ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZN7easylog8record_t8_get_tidEv.exit.i, %bb.ae
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body38

.from..body38:                                    ; preds = %.body38.from., %.body38.from.365, %.body38.from..loopexit.split-lp120, %.from..body59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %.pn27 = phi { ptr, i32 } [ %i.bh, %.body38.from.365 ], [ %lpad.loopexit.split-lp122, %.body38.from..loopexit.split-lp120 ], [ %i.az, %.body38.from. ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2 ], [ %eh.lpad-body60, %.from..body59 ]
  tail call void @_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %.reload.addr444) #36
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41

._crit_edge:                                      ; preds = %._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit, %._crit_edge.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit.thread
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit.thread ], [ %.sroa.12.1, %._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit ]
  %.sroa.18.0.lcssa = phi ptr [ null, %._crit_edge.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit.thread ], [ %.sroa.18.1, %._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit ]
  %.sroa.084.0.lcssa = phi ptr [ null, %._crit_edge.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit.thread ], [ %.sroa.084.1, %._crit_edge.from._ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %1 = atomicrmw add ptr @working_echo, i64 -1 seq_cst, align 8 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.et = load i8, ptr %i.er, align 8, !tbaa !240
  switch i8 %i.et, label %bb.an [
    i8 -1, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
    i8 0, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
    i8 1, label %bb.aj
    i8 2, label %bb.al
  ], !prof !226

bb.aj:                                            ; preds = %._crit_edge
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !256 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !257
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #53
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread

bb.al:                                            ; preds = %._crit_edge
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.es) #36
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread

bb.an:                                            ; preds = %._crit_edge
  unreachable

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %._crit_edge, %._crit_edge
  store ptr %.sroa.084.0.lcssa, ptr %i.es, align 8, !tbaa !256
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.12.0.lcssa, ptr %i.fb, align 8, !tbaa !261
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.18.0.lcssa, ptr %i.fc, align 8, !tbaa !257
  store i8 1, ptr %i.er, align 8, !tbaa !240
  br label %bb.ao

.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41: ; preds = %bb.g, %bb.f, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41.from.342, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41.from.344, %.from..body38
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %.from..body38 ], [ %i.ai, %bb.f ], [ %i.ag, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41.from.344 ], [ %i.ah, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41.from.342 ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.084.0185.reload.addr401 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.084.0185.reload402 = load ptr, ptr %.sroa.084.0185.reload.addr401, align 8, !tbaa !2833 ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %.sroa.084.0185.reload402, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from.370

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from.370: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41
  %.sroa.18.0183.reload.addr427 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.18.0183.reload428 = load ptr, ptr %.sroa.18.0183.reload.addr427, align 8, !tbaa !2833
  %i.fd = ptrtoint ptr %.sroa.18.0183.reload428 to i64
  %i.fe = ptrtoint ptr %.sroa.084.0185.reload402 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0185.reload402, i64 noundef %i.ff) #53
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from.370, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from..thread111
  %.pn = phi { ptr, i32 } [ %i.o, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from..thread111 ], [ %.pn27.pn, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70.from.370 ], [ %.pn27.pn, %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EED2Ev.exit41 ]
  %.6117 = extractvalue { ptr, i32 } %.pn, 0
  %i.fg = tail call ptr @__cxa_begin_catch(ptr %.6117) #36 ; 0 uses
  tail call void @_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr449) #36
  invoke void @__cxa_end_catch()
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 1
  %.sroa.0.0.copyload.i.i4 = load ptr, ptr %.reload.addr449, align 8, !tbaa !241 ; 2 uses
  %i.fh = load ptr, ptr %.sroa.0.0.copyload.i.i4, align 8
  musttail call void %i.fh(ptr nonnull %.sroa.0.0.copyload.i.i4)
  ret void

bb.ap:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit70
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 1
  resume { ptr, i32 } %i.fi
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_Z4sendii.destroy(ptr noundef nonnull align 8 dereferenceable(288) %0) #51 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 281
  %index = load i8, ptr %index.addr, align 1
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2, label %AfterCoroSuspend, !prof !8465

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2: ; preds = %resume.entry
  %.reload.addr443 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %.reload.addr443, align 8, !tbaa !2741 ; 3 uses
  %.not.i34.jt2 = icmp eq ptr %i.b, null
  br i1 %.not.i34.jt2, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.jt2, label %bb.a

bb.a:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.jt2 unwind label %.loopexit.split-lp268, !inline_history !141

.loopexit.split-lp268:                            ; preds = %bb.a
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %lpad.loopexit.split-lp270, 0
  tail call void @__clang_call_terminate(ptr %i.e) #52
  unreachable

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.jt2: ; preds = %bb.a, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2
  %.sroa.084.0185.reload.addr405 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.084.0185.reload406 = load ptr, ptr %.sroa.084.0185.reload.addr405, align 8, !tbaa !2833 ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %.sroa.084.0185.reload406, null
  br i1 %.not.i.i.i68, label %AfterCoroSuspend, label %bb.b

bb.b:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.jt2
  %.sroa.18.0183.reload.addr429 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.18.0183.reload430 = load ptr, ptr %.sroa.18.0183.reload.addr429, align 8, !tbaa !2833
  %i.f = ptrtoint ptr %.sroa.18.0183.reload430 to i64
  %i.g = ptrtoint ptr %.sroa.084.0185.reload406 to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0185.reload406, i64 noundef %i.h) #53
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorELb0ELb0EED2Ev.exit.jt2, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !240
  switch i8 %i.k, label %bb.g [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 1, label %bb.c
    i8 2, label %bb.e
  ], !prof !226

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !256  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i71 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i71, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #53
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit

bb.e:                                             ; preds = %AfterCoroSuspend
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !259
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.j) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit

bb.g:                                             ; preds = %AfterCoroSuspend
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit: ; preds = %AfterCoroSuspend, %AfterCoroSuspend, %bb.c, %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.0.copyload.i = load ptr, ptr %i.s, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 288)
          to label %CoroEnd unwind label %bb.h

bb.h:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #52
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.resume(ptr noundef nonnull align 8 dereferenceable(160) %0) #37 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::function", align 8     ; 11 uses
  %.reload.addr72 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %.from.AfterCoroSuspend46, !prof !2758

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1027 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload69 = load i64, ptr %.reload.addr68, align 8, !tbaa !8471 ; 4 uses
  %.reload.addr63 = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_17
