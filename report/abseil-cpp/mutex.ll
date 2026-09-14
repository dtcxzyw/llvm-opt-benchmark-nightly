Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/mutex?download=true
inline.NumInlined: 284
inline.NumDeleted: 115
begin_hunk_0_@_ZN4absl12lts_202605265Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.aq:                                            ; preds = %bb.an
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ar:                                            ; preds = %bb.am
  %i.dc = load ptr, ptr %1, align 8, !tbaa !59
  %i.dd = icmp eq ptr %i.dc, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.de = shl i64 %i.u, 5
  %spec.select86 = and i64 %i.de, 32
  %.0 = select i1 %i.dd, i64 %spec.select86, i64 0
  %i.df = ptrtoint ptr %i.cz to i64
  %i.dg = or i64 %.0, %i.df
  %invariant.op = or i64 %i.dg, 4
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.ar
  %i.dh = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.di = and i64 %i.dh, 187
  %.reass = or i64 %i.di, %invariant.op
  %i.dj = cmpxchg weak ptr %0, i64 %i.dh, i64 %.reass release monotonic, align 8
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dk, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.x
  %i.dl = load ptr, ptr %i.k, align 8, !tbaa !78
  invoke void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dl)
          to label %bb.as unwind label %bb.ae

bb.as:                                            ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread
  %i.dm = or i32 %.067, 1
  br label %.thread147

.thread147:                                       ; preds = %bb.k, %bb.ak, %bb.aa, %bb.y, %bb.ai, %bb.aj, %bb.as, %bb.p
  %.572 = phi i32 [ %i.az, %bb.p ], [ %.067, %bb.ak ], [ %i.dm, %bb.as ], [ %.067, %bb.aa ], [ %.067, %bb.y ], [ %.067, %bb.aj ], [ %i.cq, %bb.ai ], [ %.067, %bb.k ]
  %.5 = phi i32 [ 0, %bb.p ], [ %.063, %bb.ak ], [ 0, %bb.as ], [ %.063, %bb.aa ], [ %.063, %bb.y ], [ %.063, %bb.aj ], [ 0, %bb.ai ], [ %.063, %bb.k ]
  %i.dn = load ptr, ptr %i.k, align 8, !tbaa !78  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !52
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.critedge88, label %bb.at

bb.at:                                            ; preds = %.thread147
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !70, !range !47, !noundef !48
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.critedge88, label %bb.au, !prof !14

bb.au:                                            ; preds = %bb.at
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 2102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.critedge88:                                      ; preds = %.thread147, %bb.at
  %i.dv = invoke noundef i32 @_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii(i32 noundef %.5, i32 noundef 1)
          to label %.critedge unwind label %.loopexit, !llvm.loop !127

bb.ax:                                            ; preds = %bb.ac, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit, %bb.l
  %.2 = phi i64 [ %i.u, %bb.l ], [ %i.u, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit ], [ %i.cd, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104 ], [ %i.cd, %bb.ac ]
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !78  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !52
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.critedge90, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !70, !range !47, !noundef !48
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge90, label %bb.az, !prof !14

bb.az:                                            ; preds = %bb.ay
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 2108, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.critedge90:                                      ; preds = %bb.ax, %bb.ay
  %i.ee = and i64 %.2, 16
  %.not83 = icmp eq i64 %i.ee, 0
  br i1 %.not83, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.critedge90
  %i.ef = load ptr, ptr %1, align 8, !tbaa !59
  %i.eg = icmp eq ptr %i.ef, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.eh = select i1 %i.eg, i32 5, i32 7
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.eh)
          to label %bb.bd unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc, %.critedge90
  %i.ei = load i8, ptr %3, align 1, !tbaa !69, !range !47, !noundef !48
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.be, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.be:                                            ; preds = %bb.bd
  %i.ek = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i unwind label %bb.bf

.noexc.i:                                         ; preds = %bb.be
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 76 ; 2 uses
  %i.em = load atomic i32, ptr %i.el monotonic, align 4
  %i.en = add nsw i32 %i.em, -1
  store atomic i32 %i.en, ptr %i.el monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  tail call void @__clang_call_terminate(ptr %i.ep) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit: ; preds = %bb.bd, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bg:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae, %bb.af, %bb.w, %bb.v, %bb.aq, %bb.ap, %bb.bb, %bb.aw, %bb.h
  %.pn84 = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.ed, %bb.bb ], [ %i.da, %bb.ap ], [ %i.du, %bb.aw ], [ %i.bd, %bb.v ], [ %i.cn, %bb.ae ], [ %i.co, %bb.af ], [ %i.be, %bb.w ], [ %i.db, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn84
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex8try_lockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.b = and i64 %i.a, 25
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b, !prof !14

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 8
  %i.e = cmpxchg ptr %0, i64 %i.a, i64 %i.d acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.a, 16
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_202605265Mutex11TryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b, %bb.c
  %.0 = phi i1 [ %i.f, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.h, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex11TryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 8
  %i.e = cmpxchg ptr %0, i64 %i.a, i64 %i.d acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ]
  %.0 = phi i1 [ false, %bb.b ], [ true, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ]
  tail call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %.sink)
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef nonnull %0, i32 noundef range(i32 0, 14) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x ptr], align 16              ; 4 uses
  %i.b = alloca [960 x i8], align 16              ; 5 uses
  %i.c = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L13GetSynchEventEPKv(ptr noundef %0) ; 6 uses
  %2 = icmp ne ptr %i.c, null                     ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i8, ptr %i.d, align 8, !tbaa !41, !range !47, !noundef !48
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.g = call noundef i32 @_ZN4absl12lts_2026052613GetStackTraceEPPvii(ptr noundef nonnull %i.a, i32 noundef 40, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.47, i64 3, i1 false)
  %.not41 = icmp eq i32 %i.g, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.h = zext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.043 = phi i32 [ 2, %.lr.ph.preheader ], [ %i.q, %bb.d ] ; 2 uses
  %i.i = zext nneg i32 %.043 to i64               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = sub nsw i64 960, %i.i                    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.48, ptr noundef %i.m) #23 ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  %i.p = zext nneg i32 %i.n to i64
  %.not38 = icmp ugt i64 %i.k, %i.p
  %or.cond40 = select i1 %i.o, i1 %.not38, i1 false
  br i1 %or.cond40, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i32 %i.n, %.043
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.c
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_20260526L16event_propertiesE, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %i.w = select i1 %2, ptr %i.v, ptr @.str.35
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 452, ptr noundef nonnull @.str.49, ptr noundef %i.u, ptr noundef nonnull %0, ptr noundef nonnull %i.w, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.x = trunc nuw nsw i32 %1 to i16
  %i.y = lshr i16 933, %i.x
  %i.z = trunc i16 %i.y to i1
  %or.cond = and i1 %2, %i.z
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %.not39 = icmp eq ptr %i.ab, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  call void %i.ab(ptr noundef %i.ad), !inline_history !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call fastcc void @_ZN4absl12lts_20260526L15UnrefSynchEventEPNS0_10SynchEventE(ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex15try_lock_sharedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 28
  %.not612 = icmp eq i64 %i.b, 0
  br i1 %.not612, label %.lr.ph, label %.critedge, !prof !137

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0414 = phi i32 [ %i.h, %bb.b ], [ 5, %bb.a ]
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = or i64 %.013, 1
  %i.d = add nsw i64 %i.c, 256
  %i.e = cmpxchg ptr %0, i64 %.013, i64 %i.d acquire monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = add nsw i32 %.0414, -1                   ; 2 uses
  %.not = icmp ne i32 %i.h, 0
  %i.i = and i64 %i.g, 28
  %.not6 = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 %.not6, i1 false, !prof !138
  br i1 %or.cond, label %.lr.ph, label %.critedge, !prof !139, !llvm.loop !136

.critedge:                                        ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.g, %bb.b ]
  %i.j = and i64 %.0.lcssa, 16
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c, !prof !14

bb.c:                                             ; preds = %.critedge
  %i.l = tail call noundef zeroext i1 @_ZN4absl12lts_202605265Mutex17ReaderTryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %bb.c
  %.1 = phi i1 [ false, %.critedge ], [ %i.l, %bb.c ], [ true, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex17ReaderTryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.0411 = phi i32 [ 5, %bb.a ], [ %i.i, %bb.d ]
  %.010 = phi i64 [ %i.a, %bb.a ], [ %.1, %bb.d ] ; 4 uses
  %i.b = and i64 %.010, 12
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or i64 %.010, 1
  %i.e = add nsw i64 %i.d, 256
  %i.f = cmpxchg ptr %0, i64 %.010, i64 %i.e acquire monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %.critedge, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b
  %.1 = phi i64 [ %i.h, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %.010, %bb.b ]
  %i.i = add nsw i32 %.0411, -1                   ; 2 uses
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %.critedge, label %bb.b, !llvm.loop !140

.critedge:                                        ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ 2, %bb.c ], [ 3, %bb.d ]
  %.not9 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  tail call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %.sink)
  ret i1 %.not9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 30
  %i.c = xor i64 %i.b, 10
  %i.d = icmp samesign ult i64 %i.c, 6
  br i1 %i.d, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.e = and i64 %i.a, -41
  %i.f = cmpxchg ptr %0, i64 %i.a, i64 %i.e release monotonic, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  tail call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex13unlock_sharedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.b = and i64 %i.a, 21
  %.not5 = icmp eq i64 %i.b, 1
  br i1 %.not5, label %.lr.ph, label %._crit_edge, !prof !72

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  tail call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #25
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.06 = phi i64 [ %i.g, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = icmp ult i64 %.06, 512
  %.neg = select i1 %i.c, i64 -257, i64 -256
  %i.d = add i64 %.neg, %.06
  %i.e = cmpxchg ptr %0, i64 %.06, i64 %i.d release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = and i64 %i.g, 21
  %.not = icmp eq i64 %i.h, 1
  br i1 %.not, label %.lr.ph, label %._crit_edge, !prof !73

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %._crit_edge
  ret void
}

declare noundef i32 @_ZN4absl12lts_2026052613base_internal7NumCPUsEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = xor i64 %i.a, 32
  %i.c = and i64 %0, 40
  %i.d = and i64 %i.c, %i.b
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %0, 9
  %.not = icmp eq i64 %i.f, 9
  br i1 %.not, label %bb.c, label %bb.d, !prof !71

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 1988, ptr noundef nonnull @.str.65, ptr noundef %1, ptr noundef %i.g)
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = and i64 %0, 36
  %.not8 = icmp eq i64 %i.h, 32
  br i1 %.not8, label %bb.e, label %bb.f, !prof !71

bb.e:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %0 to ptr
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 1991, ptr noundef nonnull @.str.66, ptr noundef %1, ptr noundef %i.i)
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::base_internal::SchedulingGuard::ScopedEnable", align 4 ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %struct.sched_param, align 4        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !79
end_hunk_0
