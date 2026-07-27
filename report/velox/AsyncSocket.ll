inline.NumInlined: 4672
inline.NumDeleted: 1879
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly11AsyncSocket20addLifecycleObserverEPNS0_23LegacyLifecycleObserverE:bb.a
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #41, !call_target !14365
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bq = load i8, ptr %i.bi, align 8, !tbaa !14368, !range !13963, !noundef !150
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %0) #41, !call_target !14372
  br label %bb.ab

bb.z:                                             ; preds = %bb.v, %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !14135
  %i.bx = icmp eq i8 %i.bw, 2
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %0, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 864
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(1169) %0), !call_target !13932
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8OptionalINS_20AsyncSocketExceptionEEdeEv.exit, %bb.z, %bb.aa, %bb.y, %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE9push_backERKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly11AsyncSocket23removeLifecycleObserverEPNS0_23LegacyLifecycleObserverE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14209 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not1.i.i = icmp slt i64 %i.b, 0
  %i.e = select i1 %.not1.i.i, ptr %i.d, ptr %i.c ; 4 uses
  %i.f = and i64 %i.b, 4611686018427387903        ; 3 uses
  %.idx14 = shl nuw nsw i64 %i.f, 3               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx14
  %i.h = lshr i64 %i.f, 2                         ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.i = and i64 %.idx14, 9223372036854775776
  %scevgep.i.i.i = getelementptr i8, ptr %i.e, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.u, %bb.f ] ; 9 uses
  %i.j = load ptr, ptr %.02946.i.i.i, align 8, !tbaa !14210
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14210
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14210
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14210
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit32, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 32
  %i.v = add nsw i64 %.047.i.i.i, -1
  %i.w = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.w, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !14351

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.x = and i64 %i.b, 3
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi56.i.i.i = phi i64 [ %i.x, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load ptr, ptr %.029.lcssa.i.i.i, align 8, !tbaa !14210
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.1.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.1.i.i.i, align 8, !tbaa !14210
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.2.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %.2.i.i.i, align 8, !tbaa !14210
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.thread

_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit

_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit30: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  br label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit

_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit32: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 24
  br label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit

_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit30, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit32, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.ai, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit32 ], [ %i.ah, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit30 ], [ %i.ag, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.b ] ; 4 uses
  %.not15 = icmp eq ptr %.028.i.i.i, %i.g
  br i1 %.not15, label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #41, !call_target !14373
  %i.am = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 8 ; 3 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !14209 ; 4 uses
  %i.ao = load ptr, ptr %i.c, align 8
  %.not1.i.i.i = icmp slt i64 %i.an, 0
  %i.ap = select i1 %.not1.i.i.i, ptr %i.ao, ptr %i.c
  %i.aq = and i64 %i.an, 4611686018427387903      ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp sgt i64 %i.au, 8
  br i1 %i.av, label %bb.k, label %bb.l, !prof !13962

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.028.i.i.i, ptr nonnull align 8 %i.am, i64 %i.au, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !14209 ; 2 uses
  %.pre4.i = and i64 %.pre.i, 4611686018427387903
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp eq i64 %i.au, 8
  br i1 %i.aw, label %bb.m, label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !14210
  store ptr %i.ax, ptr %.028.i.i.i, align 8, !tbaa !14210
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit

_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi.i = phi i64 [ %.pre4.i, %bb.k ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ]
  %i.ay = phi i64 [ %.pre.i, %bb.k ], [ %i.an, %bb.l ], [ %i.an, %bb.m ]
  %i.az = add nsw i64 %.pre-phi.i, -1
  %i.ba = and i64 %i.ay, -4611686018427387904
  %i.bb = or i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !14209
  br label %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.thread

_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit, %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit
  %i.bc = phi i1 [ true, %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE5eraseEPKS3_.exit ], [ false, %_ZSt4findIPPN5folly11AsyncSocket23LegacyLifecycleObserverES3_ET_S5_S5_RKT0_.exit ], [ false, %._crit_edge.i.i.i ], [ false, %._crit_edge._crit_edge52.i.i.i ]
  ret i1 %i.bc
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11AsyncSocket21getLifecycleObserversEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1169) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14209 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not1.i.i = icmp slt i64 %i.b, 0
  %i.e = select i1 %.not1.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = and i64 %i.b, 4611686018427387903        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %i.f, 3                 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %2 = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %3, align 8, !tbaa !14374
  br label %bb.c

_ZNSt12_Vector_baseIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #42 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !14376
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !14374
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !14377

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.e, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE11_M_allocateEm.exit.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !14210
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14210
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i.i
  %i.k = phi ptr [ %i.h, %bb.a ], [ %2, %.thread.i.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !14378
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly11AsyncSocket11addObserverEPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceES0_NS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1), !call_target !9440
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly11AsyncSocket14removeObserverEPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceES0_NS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1), !call_target !9446
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly11AsyncSocket14removeObserverESt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceES0_NS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef align 8 %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.16", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !14316
  store ptr null, ptr %i.b, align 8, !tbaa !14147
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !14316
  store ptr null, ptr %1, align 8, !tbaa !14379
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.i, !call_target !10468

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14147 ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !14148
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !14150
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41, !call_target !14151, !inline_history !14382
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41, !call_target !14156, !inline_history !14382
  br label %_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14157
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !13961
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14158

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41
  br label %_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  resume { ptr, i32 } %i.y

_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.d, %bb.b
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly11AsyncSocket12numObserversEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !call_target !9774, !inline_history !14383 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !call_target !9473, !inline_history !14383
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11AsyncSocket21checkForImmediateReadEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14185 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5folly5IOBuf5emptyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #41
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(1169) %0) #41, !call_target !13769
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11AsyncSocket22handleInitialReadWriteEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14118
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14139
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !14140 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i16 %i.g, 2
  %.not1 = icmp eq i16 %i.h, 0
  br i1 %.not1, label %bb.c, label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i16 %i.g, 2
  store i16 %i.i, ptr %i.f, align 2, !tbaa !14140
  %i.j = invoke noundef zeroext i1 @_ZN5folly11AsyncSocket23updateEventRegistrationEv(ptr noundef nonnull align 8 dereferenceable(1169) %0)
          to label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit unwind label %bb.l

_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit: ; preds = %bb.c
  br i1 %i.j, label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit.thread, label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit9

_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit.thread: ; preds = %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(1169) %0) #41, !call_target !13269
  br label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6

bb.d:                                             ; preds = %bb.a
  %i.n = and i16 %i.g, -3                         ; 2 uses
  store i16 %i.n, ptr %i.f, align 2, !tbaa !14140
  %i.o = icmp eq i16 %i.n, %i.g
  br i1 %i.o, label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 @_ZN5folly11AsyncSocket23updateEventRegistrationEv(ptr noundef nonnull align 8 dereferenceable(1169) %0)
          to label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6 unwind label %bb.l ; 0 uses

_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6: ; preds = %bb.d, %bb.e, %bb.b, %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14134
  %.not2 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !14140 ; 3 uses
  br i1 %.not2, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit6
  %i.u = and i16 %i.t, 4
  %.not3 = icmp eq i16 %i.u, 0
  br i1 %.not3, label %bb.g, label %_ZN5folly11AsyncSocket23updateEventRegistrationEtt.exit9

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i64
!14174 = !{!13978, !13960, i64 864}
!14175 = !{!13978, !13960, i64 880}
!14176 = !{!14097, !14098, i64 0}
!14177 = !DISubprogram(name: "setsockopt", linkageName: "_ZN5folly6netops10Dispatcher10setsockoptENS_13NetworkSocketEiiPKvj", scope: !9029, file: !9012, line: 75, type: !14178, scopeLine: 75, containingType: !9029, virtualIndex: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14178 = !DISubroutineType(types: !14179)
!14179 = !{!38, !14180, !3391, !38, !38, !45, !3516}
!14180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9029, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14181 = distinct !{null}
!14182 = !DISubprogram(name: "shutdown", linkageName: "_ZN5folly6netops10Dispatcher8shutdownENS_13NetworkSocketEi", scope: !9029, file: !9012, line: 81, type: !14183, scopeLine: 81, containingType: !9029, virtualIndex: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14183 = !DISubroutineType(types: !14184)
!14184 = !{!38, !14180, !3391, !38}
!14185 = !{!14072, !14072, i64 0}
!14186 = !{!14187, !14011, i64 4}
!14187 = !{!"_ZTSN5folly6netops14PollDescriptorE", !14012, i64 0, !14011, i64 4, !14011, i64 6}
!14188 = !{!14187, !14011, i64 6}
!14189 = !DISubprogram(name: "poll", linkageName: "_ZN5folly6netops10Dispatcher4pollEPNS0_14PollDescriptorEmi", scope: !9029, file: !9012, line: 47, type: !14190, scopeLine: 47, containingType: !9029, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14190 = !DISubroutineType(types: !14191)
!14191 = !{!38, !14180, !14192, !14202, !38}
!14192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14193, size: 64)
!14193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollDescriptor", scope: !9013, file: !14194, line: 271, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !14195, identifier: "_ZTSN5folly6netops14PollDescriptorE")
!14194 = !DIFile(filename: "_deps/folly-src/folly/net/NetOps.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "2baeae7cb4305ba2639f4381364f4d87")
!14195 = !{!14196, !14197, !14201}
!14196 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !14193, file: !14194, line: 272, baseType: !3391, size: 32)
!14197 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !14193, file: !14194, line: 273, baseType: !14198, size: 16, offset: 32)
!14198 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !5194, line: 25, baseType: !14199)
!14199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !52, line: 39, baseType: !14200)
!14200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!14201 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !14193, file: !14194, line: 274, baseType: !14198, size: 16, offset: 48)
!14202 = !DIDerivedType(tag: DW_TAG_typedef, name: "nfds_t", file: !14203, line: 33, baseType: !27)
!14203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "1a4eb88ffdcfba173b0f25ae540bbd7b")
!14204 = !{!14083, !14083, i64 0}
!14205 = !DISubprogram(name: "evbAttached", linkageName: "_ZN5folly11AsyncSocket17EvbChangeCallback11evbAttachedEPS0_", scope: !6963, file: !15, line: 115, type: !14206, scopeLine: 115, containingType: !6963, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14206 = !DISubroutineType(types: !14207)
!14207 = !{null, !14208, !5208}
!14208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6963, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14209 = !{!14065, !13960, i64 0}
!14210 = !{!14211, !14211, i64 0}
!14211 = !{!"p1 _ZTSN5folly11AsyncSocket23LegacyLifecycleObserverE", !13958, i64 0}
!14212 = !DISubprogram(name: "evbAttach", linkageName: "_ZN5folly28AsyncSocketObserverInterface9evbAttachEPNS_11AsyncSocketEPNS_9EventBaseE", scope: !8306, file: !8305, line: 274, type: !14213, scopeLine: 274, containingType: !8306, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14213 = !DISubroutineType(types: !14214)
!14214 = !{null, !14215, !5208, !5198}
!14215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8306, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14216 = !{!14104, !14040, i64 8}
!14217 = !{!14218, !13958, i64 48}
!14218 = !{!"_ZTSN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEE", !10, i64 0, !13958, i64 48, !13958, i64 56}
!14219 = !{!14218, !13958, i64 56}
!14220 = !{!14221, !13958, i64 48}
!14221 = !{!"_ZTSN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEE", !10, i64 0, !13958, i64 48, !13958, i64 56}
!14222 = !{!14221, !13958, i64 56}
!14223 = !{!14224, !13967, i64 4}
!14224 = !{!"_ZTSN5folly8OptionalINS_28AsyncSocketObserverInterface6EventsEE28StorageTriviallyDestructibleE", !10, i64 0, !13967, i64 4}
!14225 = distinct !{null, null, null}
!14226 = !DISubprogram(name: "evbDetached", linkageName: "_ZN5folly11AsyncSocket17EvbChangeCallback11evbDetachedEPS0_", scope: !6963, file: !15, line: 119, type: !14206, scopeLine: 119, containingType: !6963, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14227 = !DISubprogram(name: "evbDetach", linkageName: "_ZN5folly28AsyncSocketObserverInterface9evbDetachEPNS_11AsyncSocketEPNS_9EventBaseE", scope: !8306, file: !8305, line: 284, type: !14213, scopeLine: 284, containingType: !8306, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14228 = !{!13978, !9, i64 320}
!14229 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14230 = !{!14231, !13975, i64 0}
!14231 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14232, i64 0, !13960, i64 8, !10, i64 16}
!14232 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13975, i64 0}
!14233 = !{!14234, !14238, i64 16}
!14234 = !{!"_ZTSN5folly20AsyncSocketExceptionE", !14235, i64 0, !14238, i64 16, !9, i64 20}
!14235 = !{!"_ZTSSt13runtime_error", !14236, i64 0, !14237, i64 8}
!14236 = !{!"_ZTSSt9exception"}
!14237 = !{!"_ZTSSt12__cow_string", !10, i64 0}
!14238 = !{!"_ZTSN5folly20AsyncSocketException24AsyncSocketExceptionTypeE", !10, i64 0}
!14239 = !{!14234, !9, i64 20}
!14240 = !{!14241, !14242, i64 0}
!14241 = !{!"_ZTSZNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEaSERKS7_EUlOT_T0_E_", !14242, i64 0}
!14242 = !{!"p1 _ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !13958, i64 0}
!14243 = !{!13991, !13991, i64 0}
!14244 = !DISubprogram(name: "~AsyncTransportCertificate", linkageName: "_ZN5folly25AsyncTransportCertificateD4Ev", scope: !7324, file: !7325, line: 30, type: !14245, scopeLine: 30, containingType: !7324, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14245 = !DISubroutineType(types: !14246)
!14246 = !{null, !14247}
!14247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7324, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14248 = distinct !{null, null, null}
!14249 = !{!14232, !13975, i64 0}
!14250 = !{!14231, !13960, i64 8}
!14251 = !{!14071, !14072, i64 0}
!14252 = !{!13978, !13967, i64 990}
!14253 = !{!13978, !13960, i64 872}
!14254 = !{!13978, !13960, i64 856}
!14255 = !{!13978, !13960, i64 888}
!14256 = !{!14257, !13984, i64 0}
!14257 = !{!"_ZTSSt10_Head_baseILm0EPN5folly14AsyncTransportELb0EE", !13984, i64 0}
!14258 = !{!14259, !14260, i64 8}
!14259 = !{!"_ZTSSt10error_code", !9, i64 0, !14260, i64 8}
!14260 = !{!"p1 _ZTSNSt3_V214error_categoryE", !13958, i64 0}
!14261 = !{!14259, !9, i64 0}
!14262 = !{!14263}
!14263 = distinct !{!14263, !14264, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!14264 = distinct !{!14264, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!14265 = distinct !{null}
!14266 = !{!13978, !14050, i64 784}
!14267 = !{!14020, !10, i64 32}
!14268 = !{!"branch_weights", i32 2000, i32 4002, i32 2001, i32 1}
!14269 = !{!14270, !13975, i64 8}
!14270 = !{!"_ZTSSt18bad_variant_access", !14236, i64 0, !13975, i64 8}
!14271 = !{!14272, !14011, i64 20}
!14272 = !{!"_ZTSN5folly9IPAddressE", !10, i64 0, !14011, i64 20}
!14273 = !DISubprogram(name: "socket", linkageName: "_ZN5folly6netops10Dispatcher6socketEiii", scope: !9029, file: !9012, line: 82, type: !14274, scopeLine: 82, containingType: !9029, virtualIndex: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14274 = !DISubroutineType(types: !14275)
!14275 = !{!3391, !14180, !38, !38, !38}
!14276 = !{!13978, !13967, i64 988}
!14277 = !{!13978, !13967, i64 989}
!14278 = !DISubprogram(name: "set_socket_non_blocking", linkageName: "_ZN5folly6netops10Dispatcher23set_socket_non_blockingENS_13NetworkSocketE", scope: !9029, file: !9012, line: 86, type: !14279, scopeLine: 86, containingType: !9029, virtualIndex: 22, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14279 = !DISubroutineType(types: !14280)
!14280 = !{!38, !14180, !3391}
!14281 = !{!14086, !13967, i64 4}
!14282 = !{!13978, !13967, i64 1009}
!14283 = !{!14124, !14126, i64 32}
!14284 = !{!13978, !13967, i64 987}
!14285 = !DISubprogram(name: "bind", linkageName: "_ZN5folly6netops10Dispatcher4bindENS_13NetworkSocketEPK8sockaddrj", scope: !9029, file: !9012, line: 38, type: !14286, scopeLine: 38, containingType: !9029, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14286 = !DISubroutineType(types: !14287)
!14287 = !{!38, !14180, !3391, !4802, !3516}
!14288 = !DISubprogram(name: "preConnect", linkageName: "_ZN5folly20AsyncSocketTransport15ConnectCallback10preConnectENS_13NetworkSocketE", scope: !5668, file: !22, line: 62, type: !14289, scopeLine: 62, containingType: !5668, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14289 = !DISubroutineType(types: !14290)
!14290 = !{null, !14291, !3391}
!14291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14292 = !{!13978, !13967, i64 985}
!14293 = !{!13978, !13967, i64 984}
!14294 = !{!14295, !13975, i64 8}
!14295 = !{!"_ZTSSt9type_info", !13975, i64 8}
!14296 = !DISubprogram(name: "what", linkageName: "_ZNKSt9exception4whatEv", scope: !5828, file: !5829, line: 74, type: !14297, scopeLine: 74, containingType: !5828, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14297 = !DISubroutineType(types: !14298)
!14298 = !{!3883, !14299}
!14299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14300, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5828)
!14301 = !DISubprogram(name: "fdDetach", linkageName: "_ZN5folly28AsyncSocketObserverInterface8fdDetachEPNS_11AsyncSocketE", scope: !8306, file: !8305, line: 368, type: !14302, scopeLine: 368, containingType: !8306, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14302 = !DISubroutineType(types: !14303)
!14303 = !{null, !14215, !5208}
!14304 = !{!14059, !14039, i64 0}
!14305 = !{!14306}
!14306 = distinct !{!14306, !14307, !"_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv: argument 0"}
!14307 = distinct !{!14307, !"_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv"}
!14308 = distinct !{!14308, !14173}
!14309 = !{!14310, !14058, i64 0}
!14310 = !{!"_ZTSSt12__shared_ptrIN5folly17ShutdownSocketSetELN9__gnu_cxx12_Lock_policyE2EE", !14058, i64 0, !14038, i64 8}
!14311 = !{!14057, !14058, i64 0}
!14312 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly17ShutdownSocketSetELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14313 = !{!13978, !14051, i64 792}
!14314 = !{!13978, !14052, i64 800}
!14315 = !{!13978, !14053, i64 808}
!14316 = !{!13958, !13958, i64 0}
!14317 = distinct !{null, null, null, null, null, null}
!14318 = !{!14319}
!14319 = distinct !{!14319, !14320, !"_ZNK5folly6netops19DispatcherContainer11getOverrideEv: argument 0"}
!14320 = distinct !{!14320, !"_ZNK5folly6netops19DispatcherContainer11getOverrideEv"}
!14321 = distinct !{null, null, null, null, null, null}
!14322 = !{!14323}
!14323 = distinct !{!14323, !14324, !"_ZNK5folly26TcpInfoDispatcherContainer11getOverrideEv: argument 0"}
!14324 = distinct !{!14324, !"_ZNK5folly26TcpInfoDispatcherContainer11getOverrideEv"}
!14325 = !{!13978, !13967, i64 1032}
!14326 = !{!14032, !14033, i64 0}
!14327 = !{!13978, !13967, i64 1008}
!14328 = !DISubprogram(name: "getsockopt", linkageName: "_ZN5folly6netops10Dispatcher10getsockoptENS_13NetworkSocketEiiPvPj", scope: !9029, file: !9012, line: 43, type: !14329, scopeLine: 43, containingType: !9029, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14329 = !DISubroutineType(types: !14330)
!14330 = !{!38, !14180, !3391, !38, !38, !73, !5179}
!14331 = !{!13993, !13958, i64 16}
!14332 = !{i64 0, i64 16, !14157}
!14333 = !{!14334, !13958, i64 0}
!14334 = !{!"_ZTS5iovec", !13958, i64 0, !13960, i64 8}
!14335 = !{!14334, !13960, i64 8}
!14336 = distinct !{!14336, !14173, !14337, !14338}
!14337 = !{!"llvm.loop.isvectorized", i32 1}
!14338 = !{!"llvm.loop.unroll.runtime.disable"}
!14339 = !{!"branch_weights", i32 4, i32 12}
!14340 = distinct !{!14340, !14173, !14337, !14338}
!14341 = distinct !{!14341, !14173, !14338, !14337}
!14342 = !{!13978, !13960, i64 1024}
!14343 = !{!13992, !13958, i64 24}
!14344 = distinct !{null}
!14345 = !{!14346, !14347, i64 48}
!14346 = !{!"_ZTSN5folly5IOBufE", !13960, i64 0, !13975, i64 8, !13960, i64 16, !13975, i64 24, !14072, i64 32, !14072, i64 40, !14347, i64 48}
!14347 = !{!"p1 _ZTSN5folly5IOBuf10SharedInfoE", !13958, i64 0}
!14348 = !{!14346, !14072, i64 32}
!14349 = distinct !{!14349, !14173}
!14350 = !{!13978, !14055, i64 832}
!14351 = distinct !{!14351, !14173}
!14352 = !{!"branch_weights", !"expected", i32 2145997093, i32 1486555}
!14353 = !{!14354, !14354, i64 0}
!14354 = !{!"p2 _ZTSN5folly11AsyncSocket23LegacyLifecycleObserverE", !14003, i64 0}
!14355 = !DISubprogram(name: "observerAttach", linkageName: "_ZN5folly11AsyncSocket23LegacyLifecycleObserver14observerAttachEPS0_", scope: !1251, file: !15, line: 1417, type: !14356, scopeLine: 1417, containingType: !1251, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14356 = !DISubroutineType(types: !14357)
!14357 = !{null, !14358, !5208}
!14358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14359 = !{!14360, !13967, i64 8}
!14360 = !{!"_ZTSN5folly11AsyncSocket23LegacyLifecycleObserver6ConfigE", !13967, i64 8, !13967, i64 9}
!14361 = !{!14094, !14094, i64 0}
!14362 = !{!14363, !13967, i64 24}
!14363 = !{!"_ZTSN5folly8OptionalINS_20AsyncSocketExceptionEEE", !14364, i64 0}
!14364 = !{!"_ZTSN5folly8OptionalINS_20AsyncSocketExceptionEE31StorageNonTriviallyDestructibleE", !10, i64 0, !13967, i64 24}
!14365 = !DISubprogram(name: "byteEventsUnavailable", linkageName: "_ZN5folly28AsyncSocketObserverInterface21byteEventsUnavailableEPNS_11AsyncSocketERKNS_20AsyncSocketExceptionE", scope: !8306, file: !8305, line: 326, type: !14366, scopeLine: 326, containingType: !8306, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14366 = !DISubroutineType(types: !14367)
!14367 = !{null, !14215, !5208, !6078}
!14368 = !{!14369, !13967, i64 0}
!14369 = !{!"_ZTSN5folly11AsyncSocket15ByteEventHelperE", !13967, i64 0, !13960, i64 8, !14363, i64 16, !14370, i64 48}
!14370 = !{!"_ZTSN5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEEE", !14371, i64 0}
!14371 = !{!"_ZTSN5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE28StorageTriviallyDestructibleE", !10, i64 0, !13967, i64 48}
!14372 = !DISubprogram(name: "byteEventsEnabled", linkageName: "_ZN5folly28AsyncSocketObserverInterface17byteEventsEnabledEPNS_11AsyncSocketE", scope: !8306, file: !8305, line: 310, type: !14302, scopeLine: 310, containingType: !8306, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14373 = !DISubprogram(name: "observerDetach", linkageName: "_ZN5folly11AsyncSocket23LegacyLifecycleObserver14observerDetachEPS0_", scope: !1251, file: !15, line: 1427, type: !14356, scopeLine: 1427, containingType: !1251, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14374 = !{!14375, !14354, i64 16}
!14375 = !{!"_ZTSNSt12_Vector_baseIPN5folly11AsyncSocket23LegacyLifecycleObserverESaIS3_EE17_Vector_impl_dataE", !14354, i64 0, !14354, i64 8, !14354, i64 16}
!14376 = !{!14375, !14354, i64 0}
!14377 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!14378 = !{!14375, !14354, i64 8}
!14379 = !{!14380, !14381, i64 0}
!14380 = !{!"_ZTSSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EE", !14381, i64 0, !14038, i64 8}
!14381 = !{!"p1 _ZTSN5folly21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEEE8ObserverE", !13958, i64 0}
!14382 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14383 = distinct !{null}
!14384 = !DISubprogram(name: "getReadBuffer", linkageName: "_ZN5folly11AsyncReader12ReadCallback13getReadBufferEPPvPm", scope: !5679, file: !30, line: 89, type: !14385, scopeLine: 89, containingType: !5679, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14385 = !DISubroutineType(types: !14386)
!14386 = !{null, !14144, !13274, !13275}
!14387 = !DISubprogram(name: "getReadBuffers", linkageName: "_ZN5folly11AsyncReader12ReadCallback14getReadBuffersERSt6vectorI5iovecSaIS3_EE", scope: !5679, file: !30, line: 110, type: !14388, scopeLine: 110, containingType: !5679, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14388 = !DISubroutineType(types: !14389)
!14389 = !{null, !14144, !13279}
!14390 = !{!14001, !13960, i64 24}
!14391 = !{!14392, !14393, i64 16}
!14392 = !{!"_ZTS6msghdr", !13958, i64 0, !9, i64 8, !14393, i64 16, !13960, i64 24, !13958, i64 32, !13960, i64 40, !9, i64 48}
!14393 = !{!"p1 _ZTS5iovec", !13958, i64 0}
!14394 = !{!14392, !13960, i64 24}
!14395 = !{!14392, !13958, i64 0}
!14396 = !{!14392, !9, i64 8}
!14397 = !{!14392, !13958, i64 32}
!14398 = !{!14392, !13960, i64 40}
!14399 = !{!14392, !9, i64 48}
!14400 = !DISubprogram(name: "recvmsg", linkageName: "_ZN5folly6netops10Dispatcher7recvmsgENS_13NetworkSocketEP6msghdri", scope: !9029, file: !9012, line: 56, type: !14401, scopeLine: 56, containingType: !9029, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14401 = !DISubroutineType(types: !14402)
!14402 = !{!5747, !14180, !3391, !13812, !38}
!14403 = distinct !{!14403, !14173}
!14404 = !{!14405, !9, i64 0}
!14405 = !{!"_ZTS17sock_extended_err", !9, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !9, i64 8, !10, i64 12}
!14406 = !{!14405, !10, i64 4}
!14407 = !{!14408, !13967, i64 96}
!14408 = !{!"_ZTSN5folly8OptionalINS_28AsyncSocketObserverInterface9ByteEventEEE", !14409, i64 0}
!14409 = !{!"_ZTSN5folly8OptionalINS_28AsyncSocketObserverInterface9ByteEventEE28StorageTriviallyDestructibleE", !10, i64 0, !13967, i64 96}
!14410 = !DISubprogram(name: "byteEvent", linkageName: "_ZN5folly28AsyncSocketObserverInterface9byteEventEPNS_11AsyncSocketERKNS0_9ByteEventE", scope: !8306, file: !8305, line: 297, type: !14411, scopeLine: 297, containingType: !8306, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14411 = !DISubroutineType(types: !14412)
!14412 = !{null, !14215, !5208, !8620}
!14413 = !DISubprogram(name: "what", linkageName: "_ZNKSt13runtime_error4whatEv", scope: !5789, file: !5790, line: 249, type: !14414, scopeLine: 249, containingType: !5789, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14414 = !DISubroutineType(types: !14415)
!14415 = !{!3883, !14416}
!14416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14417, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!14418 = !DISubprogram(name: "errMessage", linkageName: "_ZN5folly11AsyncSocket18ErrMessageCallback10errMessageERK7cmsghdr", scope: !5671, file: !15, line: 138, type: !14419, scopeLine: 138, containingType: !5671, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14419 = !DISubroutineType(types: !14420)
!14420 = !{null, !14421, !8705}
!14421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14422 = distinct !{!14422, !14173}
!14423 = !{!13978, !14011, i64 324}
!14424 = !{!14425, !14425, i64 0}
!14425 = !{!"p1 _ZTSN5folly20AsyncSocketExceptionE", !13958, i64 0}
!14426 = !DISubprogram(name: "~AsyncSocketException", linkageName: "_ZN5folly20AsyncSocketExceptionD4Ev", scope: !5785, type: !14427, containingType: !5785, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14427 = !DISubroutineType(types: !14428)
!14428 = !{null, !5814}
!14429 = distinct !{null, null, null}
!14430 = !DISubprogram(name: "writeStarting", linkageName: "_ZN5folly11AsyncWriter13WriteCallback13writeStartingEv", scope: !44, file: !30, line: 311, type: !14431, scopeLine: 311, containingType: !44, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14431 = !DISubroutineType(types: !14432)
!14432 = !{null, !14170}
!14433 = distinct !{null}
!14434 = !{!14162, !13967, i64 8}
!14435 = !{!14436, !13960, i64 0}
!14436 = !{!"_ZTSN5folly11AsyncSocket11WriteResultE", !13960, i64 0, !14437, i64 8}
!14437 = !{!"_ZTSSt10unique_ptrIKN5folly20AsyncSocketExceptionESt14default_deleteIS2_EE", !14438, i64 0}
!14438 = !{!"_ZTSSt15__uniq_ptr_dataIKN5folly20AsyncSocketExceptionESt14default_deleteIS2_ELb1ELb1EE", !14439, i64 0}
!14439 = !{!"_ZTSSt15__uniq_ptr_implIKN5folly20AsyncSocketExceptionESt14default_deleteIS2_EE", !14440, i64 0}
!14440 = !{!"_ZTSSt5tupleIJPKN5folly20AsyncSocketExceptionESt14default_deleteIS2_EEE", !14441, i64 0}
!14441 = !{!"_ZTSSt11_Tuple_implILm0EJPKN5folly20AsyncSocketExceptionESt14default_deleteIS2_EEE", !14442, i64 0}
!14442 = !{!"_ZTSSt10_Head_baseILm0EPKN5folly20AsyncSocketExceptionELb0EE", !14425, i64 0}
!14443 = !DISubprogram(name: "writeSuccess", linkageName: "_ZN5folly11AsyncWriter13WriteCallback12writeSuccessEv", scope: !44, file: !30, line: 324, type: !14431, scopeLine: 324, containingType: !44, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14444 = !{!13978, !14084, i64 976}
!14445 = !DISubprogram(name: "onEgressBuffered", linkageName: "_ZN5folly14AsyncTransport14BufferCallback16onEgressBufferedEv", scope: !7253, file: !30, line: 759, type: !14446, scopeLine: 759, containingType: !7253, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14446 = !DISubroutineType(types: !14447)
!14447 = !{null, !14448}
!14448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7253, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14449 = distinct !{!14449, !14173}
!14450 = !DISubprogram(name: "onEgressBufferCleared", linkageName: "_ZN5folly14AsyncTransport14BufferCallback21onEgressBufferClearedEv", scope: !7253, file: !30, line: 765, type: !14446, scopeLine: 765, containingType: !7253, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!14451 = !DISubprogram(name: "fdAttach", linkageName: "_ZN5folly28AsyncSocketObserverInterface8fdAttachEPNS_11AsyncSocketE", scope: !8306, file: !8305, line: 376, type: !14302, scopeLine: 376, containingType: !8306, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14452 = !{!14453}
!14453 = distinct !{!14453, !14454, !"_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv: argument 0"}
!14454 = distinct !{!14454, !"_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv"}
!14455 = !{!14442, !14425, i64 0}
!14456 = distinct !{!14456, !14173}
!14457 = !{!14458, !14040, i64 0}
!14458 = !{!"_ZTSZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEE3$_1", !14040, i64 0, !14459, i64 8}
!14459 = !{!"_ZTSN5folly11AsyncSocket15WriteRequestTagE", !14072, i64 0}
!14460 = !{!14461}
!14461 = distinct !{!14461, !14462, !"_ZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEEN3$_0clEv: argument 0"}
!14462 = distinct !{!14462, !"_ZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEEN3$_0clEv"}
!14463 = distinct !{!14463, !14173, !14337, !14338}
!14464 = distinct !{!14464, !14173, !14337, !14338}
!14465 = distinct !{!14465, !14173, !14338, !14337}
!14466 = distinct !{null}
!14467 = !{!14468}
!14468 = distinct !{!14468, !14469, !"_ZZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEEN3$_0clEvENKUlvE_clEv: argument 0"}
!14469 = distinct !{!14469, !"_ZZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEEN3$_0clEvENKUlvE_clEv"}
!14470 = !{!14468, !14461}
!14471 = !{!14472, !13960, i64 0}
!14472 = !{!"_ZTSN5folly28AsyncSocketObserverInterface13PrewriteStateE", !13960, i64 0, !13960, i64 8, !14473, i64 16, !14073, i64 24}
!14473 = !{!"_ZTSN5folly10WriteFlagsE", !10, i64 0}
!14474 = !{!14472, !13960, i64 8}
!14475 = !{!14472, !14473, i64 16}
!14476 = !{!14477, !14477, i64 0}
!14477 = !{!"p1 _ZTSN5folly28AsyncSocketObserverInterface13PrewriteStateE", !13958, i64 0}
!14478 = !{!14479, !13967, i64 8}
!14479 = !{!"_ZTSN5folly8OptionalImE28StorageTriviallyDestructibleE", !10, i64 0, !13967, i64 8}
!14480 = !{!14481, !14473, i64 16}
!14481 = !{!"_ZTSN5folly28AsyncSocketObserverInterface15PrewriteRequestE", !14482, i64 0, !14473, i64 16, !14473, i64 20}
!14482 = !{!"_ZTSN5folly8OptionalImEE", !14479, i64 0}
!14483 = !{!14481, !14473, i64 20}
!14484 = !{!14482, !13967, i64 8}
!14485 = !{!14360, !13967, i64 9}
!14486 = !DISubprogram(name: "prewrite", linkageName: "_ZN5folly28AsyncSocketObserverInterface8prewriteEPNS_11AsyncSocketERKNS0_13PrewriteStateERNS0_24PrewriteRequestContainerE", scope: !8306, file: !8305, line: 351, type: !14487, scopeLine: 351, containingType: !8306, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14487 = !DISubroutineType(types: !14488)
!14488 = !{null, !14215, !5208, !14489, !14497}
!14489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14490, size: 64)
!14490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14491)
!14491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PrewriteState", scope: !8306, file: !8305, line: 46, size: 256, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !14492, identifier: "_ZTSN5folly28AsyncSocketObserverInterface13PrewriteStateE")
!14492 = !{!14493, !14494, !14495, !14496}
!14493 = !DIDerivedType(tag: DW_TAG_member, name: "startOffset", scope: !14491, file: !8305, line: 48, baseType: !25, size: 64)
!14494 = !DIDerivedType(tag: DW_TAG_member, name: "endOffset", scope: !14491, file: !8305, line: 49, baseType: !25, size: 64, offset: 64)
!14495 = !DIDerivedType(tag: DW_TAG_member, name: "writeFlags", scope: !14491, file: !8305, line: 52, baseType: !47, size: 32, offset: 128)
!14496 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !14491, file: !8305, line: 57, baseType: !6682, size: 64, offset: 192)
!14497 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14498, size: 64)
!14498 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PrewriteRequestContainer", scope: !8306, file: !8305, line: 86, size: 256, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !14499, identifier: "_ZTSN5folly28AsyncSocketObserverInterface24PrewriteRequestContainerE")
!14499 = !{!14500, !14501, !14507, !14511, !14516}
!14500 = !DIDerivedType(tag: DW_TAG_member, name: "prewriteState_", scope: !14498, file: !8305, line: 152, baseType: !14489, size: 64)
!14501 = !DIDerivedType(tag: DW_TAG_member, name: "mergedRequest_", scope: !14498, file: !8305, line: 153, baseType: !14502, size: 192, offset: 64)
!14502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PrewriteRequest", scope: !8306, file: !8305, line: 68, size: 192, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !14503, identifier: "_ZTSN5folly28AsyncSocketObserverInterface15PrewriteRequestE")
!14503 = !{!14504, !14505, !14506}
!14504 = !DIDerivedType(tag: DW_TAG_member, name: "maybeOffsetToSplitWrite", scope: !14502, file: !8305, line: 70, baseType: !8320, size: 128)
!14505 = !DIDerivedType(tag: DW_TAG_member, name: "writeFlagsToAddAtOffset", scope: !14502, file: !8305, line: 73, baseType: !47, size: 32, offset: 128)
!14506 = !DIDerivedType(tag: DW_TAG_member, name: "writeFlagsToAdd", scope: !14502, file: !8305, line: 76, baseType: !47, size: 32, offset: 160)
!14507 = !DISubprogram(name: "PrewriteRequestContainer", linkageName: "_ZN5folly28AsyncSocketObserverInterface24PrewriteRequestContainerC4ERKNS0_13PrewriteStateE", scope: !14498, file: !8305, line: 88, type: !14508, scopeLine: 88, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!14508 = !DISubroutineType(types: !14509)
!14509 = !{null, !14510, !14489}
!14510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14498, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14511 = !DISubprogram(name: "addRequest", linkageName: "_ZN5folly28AsyncSocketObserverInterface24PrewriteRequestContainer10addRequestERKNS0_15PrewriteRequestE", scope: !14498, file: !8305, line: 95, type: !14512, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!14512 = !DISubroutineType(types: !14513)
!14513 = !{null, !14510, !14514}
!14514 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14515, size: 64)
!14515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14502)
!14516 = !DISubprogram(name: "getMergedRequest", linkageName: "_ZNK5folly28AsyncSocketObserverInterface24PrewriteRequestContainer16getMergedRequestEv", scope: !14498, file: !8305, line: 147, type: !14517, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!14517 = !DISubroutineType(types: !14518)
!14518 = !{!14514, !14519}
!14519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14520, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!14520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14498)
!14521 = !{!14522}
!14522 = distinct !{!14522, !14523, !"_ZSt11make_uniqueIA_5iovecENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!14523 = distinct !{!14523, !"_ZSt11make_uniqueIA_5iovecENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!14524 = !{!13978, !13967, i64 986}
!14525 = !{!14526, !14040, i64 0}
!14526 = !{!"_ZTSZN5folly11AsyncSocket24scheduleInitialReadWriteEvEUlvE_", !14040, i64 0, !14137, i64 8}
!14527 = !{!14528, !13958, i64 48}
!14528 = !{!"_ZTSN5folly8FunctionIFvvEEE", !10, i64 0, !13958, i64 48, !13958, i64 56}
!14529 = !{!14528, !13958, i64 56}
!14530 = distinct !{ptr @_ZN5folly11AsyncSocket24scheduleInitialReadWriteEv, null, null}
!14531 = !{!14238, !14238, i64 0}
!14532 = !DISubprogram(name: "sendmsg", linkageName: "_ZN5folly6netops10Dispatcher7sendmsgENS_13NetworkSocketEPK6msghdri", scope: !9029, file: !9012, line: 71, type: !14533, scopeLine: 71, containingType: !9029, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14533 = !DISubroutineType(types: !14534)
!14534 = !{!5747, !14180, !3391, !14535, !38}
!14535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14536, size: 64)
!14536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13813)
!14537 = !{!13995, !13960, i64 0}
!14538 = !{!14539, !13960, i64 0}
!14539 = !{!"_ZTSN5folly11AsyncSocket10ReadResultE", !13960, i64 0, !14437, i64 8}
!14540 = !{!14541, !14072, i64 0}
!14541 = !{!"_ZTSN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEEE", !14072, i64 0, !14072, i64 8, !13975, i64 16, !13975, i64 24, !13975, i64 32, !13960, i64 40, !13960, i64 48}
!14542 = !{!14541, !14072, i64 8}
!14543 = !{!14541, !13960, i64 48}
!14544 = !{!14346, !13975, i64 8}
!14545 = !{!14541, !13975, i64 16}
!14546 = !{!14541, !13975, i64 32}
!14547 = !{!14346, !13960, i64 0}
!14548 = !{!14541, !13975, i64 24}
!14549 = !{!14550, !13967, i64 0}
!14550 = !{!"_ZTSN5folly10IOBufQueue7OptionsE", !13967, i64 0}
!14551 = !{!14552, !13975, i64 24}
!14552 = !{!"_ZTSN5folly10IOBufQueueE", !14550, i64 0, !13960, i64 8, !14066, i64 16, !13975, i64 24, !14553, i64 32, !14554, i64 40}
!14553 = !{!"p1 _ZTSN5folly10IOBufQueue22WritableRangeCacheDataE", !13958, i64 0}
!14554 = !{!"_ZTSN5folly10IOBufQueue22WritableRangeCacheDataE", !14555, i64 0, !13967, i64 16}
!14555 = !{!"_ZTSSt4pairIPhS0_E", !13975, i64 0, !13975, i64 8}
!14556 = !{!14557, !14559}
!14557 = distinct !{!14557, !14558, !"_ZN5folly10IOBufQueue11updateGuardEb: argument 0"}
!14558 = distinct !{!14558, !"_ZN5folly10IOBufQueue11updateGuardEb"}
!14559 = distinct !{!14559, !14560, !"_ZN5folly10IOBufQueue4moveEv: argument 0"}
!14560 = distinct !{!14560, !"_ZN5folly10IOBufQueue4moveEv"}
!14561 = !{!14552, !14553, i64 32}
!14562 = !{!14554, !13975, i64 0}
!14563 = !{!14559}
!14564 = !{!14346, !14072, i64 40}
!14565 = distinct !{!14565, !14173}
!14566 = !{!14567, !14567, i64 0}
!14567 = !{!"p1 _ZTSN5folly20EventBaseBackendBaseE", !13958, i64 0}
!14568 = !{!14138, !14138, i64 0}
!14569 = !{!14570, !14054, i64 8}
!14570 = !{!"_ZTSZN5folly11AsyncSocket14performReadMsgER6msghdrNS_11AsyncReader12ReadCallback8ReadModeEE3$_0", !14137, i64 0, !14054, i64 8}
!14571 = !{!14572, !13958, i64 48}
!14572 = !{!"_ZTSN5folly8FunctionIFvlEEE", !10, i64 0, !13958, i64 48, !13958, i64 56}
!14573 = !{!14572, !13958, i64 56}
!14574 = !DISubprogram(name: "queueRecvZc", linkageName: "_ZN5folly20EventBaseBackendBase11queueRecvZcEiPvmONS_8FunctionIFvlEEE", scope: !14575, file: !5697, line: 237, type: !14576, scopeLine: 237, containingType: !14575, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!14575 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "EventBaseBackendBase", scope: !18, file: !5697, line: 221, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly20EventBaseBackendBaseE")
!14576 = !DISubroutineType(types: !14577)
end_hunk_1
