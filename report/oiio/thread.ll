inline.NumInlined: 2270
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11OpenImageIO4v3_18task_set4waitEb:bb.a
  %.not37 = icmp eq ptr %i.bi, %i.at
  br i1 %.not37, label %.thread, label %.lr.ph46

.thread:                                          ; preds = %bb.i, %._crit_edge, %_ZNKSt14__basic_futureIvE4waitEv.exit, %.preheader, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.109", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.112", align 1    ; 3 uses
  %3 = alloca %"class.std::thread::id", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN11OpenImageIO4v3_119default_thread_poolEv() ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !197
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !201
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %0, align 8, !tbaa !201
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !202, !range !71, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @pthread_self() #33
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.o, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 320 ; 5 uses
  %i.r = atomicrmw xchg ptr %i.q, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.0.in.i.not.i2.i.i.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.f, %.preheader.i.i.i.i.i.backedge
  %.sroa.0.1.i.i.i.i.i = phi i32 [ %.sroa.0.2.i.i.i.i.i, %.preheader.i.i.i.i.i.backedge ], [ 1, %bb.f ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp sgt i32 %.sroa.0.1.i.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i.i.i
  %i.s = icmp sgt i32 %.sroa.0.1.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !122
  %i.t = add nuw nsw i32 %.03.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i32 %i.t, %.sroa.0.1.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !123

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %i.u = shl nsw i32 %.sroa.0.1.i.i.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.preheader.i.i.i.i.i
  %i.v = tail call noundef i32 @sched_yield() #30 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i, %bb.h ], [ %i.u, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i ]
  %i.w = load volatile i8, ptr %i.q, align 1, !tbaa !124, !range !71, !noundef !72
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.preheader.i.i.i.i.i.backedge, label %bb.i

.preheader.i.i.i.i.i.backedge:                    ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i, %bb.i
  br label %.preheader.i.i.i.i.i, !llvm.loop !125

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i
  %i.y = atomicrmw xchg ptr %i.q, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.0.in.i.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i.i.i, label %.preheader.i.i.i.i.i.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i.i.i: ; preds = %bb.i, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %3, ptr %1, align 8, !tbaa !137, !alias.scope !203
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aa = invoke { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.q release, align 1
  resume { ptr, i32 } %i.ab

_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit: ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %.not = icmp eq i32 %i.ad, 0
  store atomic i8 0, ptr %i.q release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit
  store i32 1, ptr %0, align 8, !tbaa !201
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8 captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::task_set", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::future", align 16      ; 9 uses
  store i64 %0, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN11OpenImageIO4v3_1L24parallel_recursive_depthEiE5depth) ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 8, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25) %4)
  %i.j = load i64, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.k = sub nsw i64 %1, %i.j                     ; 3 uses
  %.sroa.speculated29 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %2) ; 2 uses
  %i.l = icmp slt i64 %.sroa.speculated29, 1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %4, align 8, !tbaa !201    ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = shl nsw i32 %i.m, 1
  %.sroa.speculated23 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !206
  %sext = shl i64 %i.q, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = zext nneg i32 %.sroa.speculated23 to i64
  %i.t = sdiv i64 %i.k, %i.s
  %.sroa.speculated17 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %.sroa.speculated29, %bb.c ], [ %.sroa.speculated17, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit

bb.g:                                             ; preds = %bb.f
  %i.w = tail call noundef ptr @_ZN11OpenImageIO4v3_119default_thread_poolEv()
  br label %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit

_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit: ; preds = %bb.f, %bb.g
  %i.x = phi ptr [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  store ptr %i.x, ptr %5, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = tail call i64 @pthread_self() #33
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = icmp slt i64 %i.j, %1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre45 = load i32, ptr %4, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.ac, %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit
  call void @_ZN11OpenImageIO4v3_18task_setD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !3
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.ac
  %7 = phi i32 [ %.pre45, %.lr.ph ], [ %9, %bb.ac ] ; 3 uses
  %i.aj = phi i64 [ %i.j, %.lr.ph ], [ %i.di, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ak = add nsw i64 %i.aj, %.0                  ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.ak, i64 %1) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8, !tbaa !77
  %i.al = icmp sle i64 %1, %i.ak
  %i.am = icmp eq i32 %7, 1
  %or.cond = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !197 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7  ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 128 ; 4 uses
  %i.aq = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.0.in.i.not.i2.i.i.i.i.i.i.i, label %.loopexit, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.i, %.preheader.i.i.i.i.i.i.i.backedge
  %.sroa.0.1.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.2.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.backedge ], [ 1, %bb.i ] ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.sroa.0.1.i.i.i.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ar = icmp sgt i32 %.sroa.0.1.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.j ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !122
  %i.as = add nuw nsw i32 %.03.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, %.sroa.0.1.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !123

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.j
  %i.at = shl nsw i32 %.sroa.0.1.i.i.i.i.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.au = call noundef i32 @sched_yield() #30     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i, %bb.k ], [ %i.at, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i.i ]
  %i.av = load volatile i8, ptr %i.ap, align 1, !tbaa !124, !range !71, !noundef !72
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.preheader.i.i.i.i.i.i.i.backedge, label %bb.l

.preheader.i.i.i.i.i.i.i.backedge:                ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i.i, %bb.l
  br label %.preheader.i.i.i.i.i.i.i, !llvm.loop !125

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i.i
  %i.ax = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.0.in.i.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.backedge

.loopexit:                                        ; preds = %bb.l, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !126 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !126
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = icmp ne ptr %i.bb, null
  %.neg.i.i.i.i.i.i.i = sext i1 %i.bi to i64
  %i.bj = add nsw i64 %i.bh, %.neg.i.i.i.i.i.i.i
  %i.bk = shl nsw i64 %i.bj, 6
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !127
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !128
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = add nsw i64 %i.bk, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !129
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !127
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = add nsw i64 %i.bs, %i.bz
  store atomic i8 0, ptr %i.ap release, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !13
  %i.cd = shl nsw i32 %i.cc, 2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp ugt i64 %i.ca, %i.ce
  br i1 %i.cf, label %.loopexit._crit_edge, label %bb.p

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre46 = load i64, ptr %i.d, align 8, !tbaa !77
  %.pre47 = load i64, ptr %i.e, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %.loopexit._crit_edge, %bb.h
  %i.cg = phi i64 [ %.pre47, %.loopexit._crit_edge ], [ %.sroa.speculated, %bb.h ]
  %i.ch = phi i64 [ %.pre46, %.loopexit._crit_edge ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !77
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !77
  %i.ci = load ptr, ptr %i.af, align 8, !tbaa !142
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !207
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNKSt8functionIFvillEEclEill.exit unwind label %.loopexit44, !inline_history !209

_ZNKSt8functionIFvillEEclEill.exit:               ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

.loopexit44:                                      ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.p:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN11OpenImageIO4v3_111thread_pool4pushIRSt8functionIFvillEEJRlS7_EEESt6futureIDTclfp_Li0Espfp0_EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.ac, align 8, !tbaa !169 ; 5 uses
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !210
  %.not.i.i13 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i13, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !82
  %i.cn = load <2 x ptr>, ptr %6, align 16, !tbaa !211
  store ptr null, ptr %i.ae, align 8, !tbaa !82
  store <2 x ptr> %i.cn, ptr %i.ck, align 8, !tbaa !211
  store ptr null, ptr %6, align 16, !tbaa !182
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.co, ptr %i.ac, align 8, !tbaa !169
  br label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit unwind label %bb.aa

_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit: ; preds = %bb.r, %bb.s
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  %.pre = load i32, ptr %4, align 8               ; 3 uses
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cq, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !87
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #30, !inline_history !212
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #30, !inline_history !212
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.w ], [ %i.dd, %bb.x ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.de, label %bb.y, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !92

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #30
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  %8 = phi i32 [ %7, %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit ], [ %.pre, %bb.u ], [ %.pre, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %.pre, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.aa ], [ %i.df, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt8functionIFvillEEclEill.exit, %_ZNSt14__basic_futureIvED2Ev.exit
  %9 = phi i32 [ %7, %_ZNKSt8functionIFvillEEclEill.exit ], [ %8, %_ZNSt14__basic_futureIvED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !77
  %i.di = add nsw i64 %i.dh, %.0                  ; 3 uses
  store i64 %i.di, ptr %i.d, align 8, !tbaa !77
  %i.dj = icmp slt i64 %i.di, %1
  br i1 %i.dj, label %bb.h, label %._crit_edge, !llvm.loop !213

bb.ad:                                            ; preds = %.loopexit44, %.loopexit.split-lp, %bb.ab
  %.pn7 = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @_ZN11OpenImageIO4v3_18task_setD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111thread_pool4pushIRSt8functionIFvillEEJRlS7_EEESt6futureIDTclfp_Li0Espfp0_EEEOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::shared_ptr.156", align 16 ; 6 uses
  %6 = alloca %"class.std::allocator.153", align 1 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.131", align 8 ; 7 uses
  %8 = alloca %"class.std::_Bind", align 8        ; 15 uses
  %9 = alloca %class.anon.144, align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 32, i1 false), !alias.scope !214
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142, !noalias !214 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt4bindIRSt8functionIFvillEEJRKSt12_PlaceholderILi1EERlS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESA_JDpT0_EE4typeEOSA_DpOSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !211, !noalias !214
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !142, !noalias !214
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !211, !alias.scope !214
  br label %_ZSt4bindIRSt8functionIFvillEEJRKSt12_PlaceholderILi1EERlS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESA_JDpT0_EE4typeEOSA_DpOSB_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !142, !alias.scope !214 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %.pn11.pn, %bb.ae ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZSt4bindIRSt8functionIFvillEEJRKSt12_PlaceholderILi1EERlS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESA_JDpT0_EE4typeEOSA_DpOSB_.exit: ; preds = %bb.a, %bb.c
  %i.m = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.o = load i64, ptr %4, align 8, !tbaa !77, !noalias !214
  store i64 %i.o, ptr %i.n, align 8, !tbaa !217, !alias.scope !214
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.q = load i64, ptr %3, align 8, !tbaa !77, !noalias !214
  store i64 %i.q, ptr %i.p, align 8, !tbaa !219, !alias.scope !214
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.m     ; 7 uses

.noexc:                                           ; preds = %_ZSt4bindIRSt8functionIFvillEEJRKSt12_PlaceholderILi1EERlS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESA_JDpT0_EE4typeEOSA_DpOSB_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store i32 1, ptr %i.s, align 8, !tbaa !85, !noalias !221
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !87, !noalias !221
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !88, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !221
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !227
  store ptr null, ptr %5, align 16, !tbaa !228, !alias.scope !231, !noalias !227
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt13__future_base11_Task_stateISt5_BindIFSt8functionIFvillEESt12_PlaceholderILi1EEllEESaIiEFviEEESE_JSD_RKSE_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !221

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 32) #29, !noalias !221
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !142
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.y = load <2 x ptr>, ptr %5, align 16, !tbaa !211, !noalias !227
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !211, !alias.scope !224, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !221
  store ptr %i.r, ptr %i.w, align 8, !tbaa !82, !alias.scope !221
  store ptr %i.x, ptr %7, align 8, !tbaa !234, !alias.scope !221
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 3)
          to label %bb.j unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ad = load ptr, ptr %1, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !236 ; 3 uses
  %.not.i.i14 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i14, label %bb.l, label %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #32
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %bb.l
  unreachable

_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i: ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13packaged_taskIFviEEclEi.exit unwind label %bb.p, !inline_history !239

_ZNSt13packaged_taskIFviEEclEi.exit:              ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN11OpenImageIO4v3_111thread_pool21push_queue_and_notifyEPSt8functionIFviEE.exit

bb.m:                                             ; preds = %_ZSt4bindIRSt8functionIFvillEEJRKSt12_PlaceholderILi1EERlS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESA_JDpT0_EE4typeEOSA_DpOSB_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.m
  %i.am = phi ptr [ %i.m, %bb.m ], [ %.pre, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.v, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  %.not.i.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i.i17, label %_ZNSt5_BindIFSt8functionIFvillEESt12_PlaceholderILi1EEllEED2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %.body
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 3)
          to label %_ZNSt5_BindIFSt8functionIFvillEESt12_PlaceholderILi1EEllEED2Ev.exit18 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #31
  unreachable

_ZNSt5_BindIFSt8functionIFvillEESt12_PlaceholderILi1EEllEED2Ev.exit18: ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.p:                                             ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i, %bb.l, %_ZN11OpenImageIO4v3_111thread_pool21push_queue_and_notifyEPSt8functionIFviEE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %bb.j
  %i.ar = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.r unwind label %bb.u       ; 6 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.x, ptr %9, align 16, !tbaa !240
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.r, ptr %i.as, align 8, !tbaa !82
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i19 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i19, label %bb.t, label %bb.s

end_hunk_0
