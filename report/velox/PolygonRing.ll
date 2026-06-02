inline.NumInlined: 380
inline.NumDeleted: 232
begin_hunk_0_@_ZN4geos9operation5valid11PolygonRing21findHoleCycleLocationEv:bb.a
bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  br label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !70, !noalias !65
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68
  call void @_ZdlPv(ptr noundef %i.m) #16
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !70
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71   ; 3 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  store ptr %i.y, ptr %i.i, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 504
  br label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.f, %bb.g
  %i.aa = phi ptr [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  %storemerge.i.i = phi ptr [ %i.o, %bb.f ], [ %i.z, %bb.g ]
  store ptr %storemerge.i.i, ptr %i.e, align 8, !tbaa !75
  %i.ab = invoke noundef ptr @_ZN4geos9operation5valid11PolygonRing16scanForHoleCycleEPNS1_16PolygonRingTouchEPS2_RSt5stackIS4_St5dequeIS4_SaIS4_EEE(ptr nonnull align 8 poison, ptr noundef %i.aa, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE3popEv.exit
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.d, label %bb.k, !llvm.loop !76

bb.i:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.d, %bb.h
  %.2 = phi ptr [ %i.ab, %bb.h ], [ null, %bb.d ]
  %i.ae = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78 ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !71
  call void @_ZdlPv(ptr noundef %i.ak) #16
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.am = icmp ult ptr %.06.i.i.i.i, %i.ah
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !77
  br label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.l
  %i.an = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.ae, %bb.l ]
  call void @_ZdlPv(ptr noundef %i.an) #16
  br label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %bb.k, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  call void @_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev.exit, %bb.b, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %.2, %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev.exit ], [ null, %bb.b ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos9operation5valid11PolygonRing20findInteriorSelfNodeESt6vectorIPS2_SaIS4_EE(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not24 = icmp eq ptr %i.a, %i.c
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit21
  %.sroa.012.025 = phi ptr [ %i.v, %.loopexit21 ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.012.025, align 8, !tbaa !32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.loopexit21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  %i.m = tail call noundef zeroext i1 @_ZN4geos9algorithm11Orientation5isCCWEPKNS_4geom18CoordinateSequenceE(ptr noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.p = icmp eq ptr %i.o, %i.d
  %i.q = xor i1 %i.m, %i.p
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %.not17.i = icmp eq ptr %i.r, %i.s
  br i1 %.not17.i, label %.loopexit21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.012.018.i = phi ptr [ %i.u, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.t = tail call noundef zeroext i1 @_ZNK4geos9operation5valid19PolygonRingSelfNode10isExteriorEb(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.018.i, i1 noundef zeroext %i.q)
  br i1 %i.t, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i, label %.loopexit21, label %.lr.ph.i

.loopexit21:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.loopexit21, %.lr.ph.i, %bb.a
  %i.w = phi ptr [ null, %bb.a ], [ %.sroa.012.018.i, %.lr.ph.i ], [ null, %.loopexit21 ]
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos9operation5valid11PolygonRing20findInteriorSelfNodeEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(104) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
  %i.i = tail call noundef zeroext i1 @_ZN4geos9algorithm11Orientation5isCCWEPKNS_4geom18CoordinateSequenceE(ptr noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = icmp eq ptr %i.k, %0
  %i.m = xor i1 %i.i, %i.l
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %.not17 = icmp eq ptr %i.n, %i.o
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.012.018 = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.p = tail call noundef zeroext i1 @_ZNK4geos9operation5valid19PolygonRingSelfNode10isExteriorEb(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.018, i1 noundef zeroext %i.m)
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.012.018, %.lr.ph ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation5valid11PolygonRing10getTouchesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.8") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(104) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not16 = icmp eq ptr %i.b, %i.c
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %.sroa.09.017 = phi ptr [ %i.b, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !83
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #18
          to label %.noexc6 unwind label %.loopexit ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %i.i, ptr %i.v, align 8, !tbaa !68
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.h, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !85
  store ptr %i.x, ptr %i.d, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !86
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c
  %i.z = phi ptr [ %i.y, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.f, %bb.c ]
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.j, %bb.c ]
  %i.ab = phi ptr [ %i.u, %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.h, %bb.c ]
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.09.017) #19 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid11PolygonRing12addSelfTouchERKNS_4geom10CoordinateEPS5_S7_S7_S7_(ptr noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %3, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %4, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %5, ptr %i.i, align 8, !tbaa !97
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.k, ptr %i.b, align 8, !tbaa !87
  br label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12emplace_backIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !98   ; 5 uses
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = sdiv exact i64 %i.o, 56                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425)
  %i.u = select i1 %i.s, i64 164703072086692425, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = mul nuw nsw i64 %i.u, 56
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %2, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %3, ptr %i.z, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %4, ptr %i.aa, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %5, ptr %i.ab, align 8, !tbaa !97
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !99, !alias.scope !100
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !104

_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  %.not.i37.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i37.i.i, label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #16
  br label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !98
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %i.u
  store ptr %i.af, ptr %i.d, align 8, !tbaa !88
  br label %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12emplace_backIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvDpOT_.exit

_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12emplace_backIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERPS9_SC_SC_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

declare noundef zeroext i1 @_ZNK4geos9operation5valid16PolygonRingTouch12isAtLocationERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid11PolygonRing4initEPS2_RSt5stackIPNS1_16PolygonRingTouchESt5dequeIS6_SaIS6_EEE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.8", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZNK4geos9operation5valid11PolygonRing10getTouchesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = load ptr, ptr %3, align 8, !tbaa !71     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit, %bb.a
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.b) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.g = load ptr, ptr %.sroa.08.012, align 8, !tbaa !68 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !68
  %i.h = invoke noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch7getRingEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !58
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !75   ; 3 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !68
  store ptr %i.m, ptr %i.j, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.e, align 8, !tbaa !75
  br label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit unwind label %bb.g

_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i6 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.b) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit7

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit7: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos9operation5valid11PolygonRing16scanForHoleCycleEPNS1_16PolygonRingTouchEPS2_RSt5stackIS4_St5dequeIS4_SaIS4_EEE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.8", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = tail call noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch7getRingEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = tail call noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNK4geos9operation5valid11PolygonRing10getTouchesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.d = load ptr, ptr %4, align 8, !tbaa !71     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %.not33 = icmp eq ptr %i.d, %i.f
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.026.034 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.i = load ptr, ptr %.sroa.026.034, align 8, !tbaa !68 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !68
  %i.j = invoke noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.c, align 8
  %i.l = load <2 x double>, ptr %i.j, align 8
  %i.m = fcmp oeq <2 x double> %i.k, %i.l         ; 2 uses
  %i.n = extractelement <2 x i1> %i.m, i64 0
  %i.o = extractelement <2 x i1> %i.m, i64 1
  %.0.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %.0.i, label %bb.k, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.r = invoke noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch7getRingEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.f unwind label %.loopexit32

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.w = invoke noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit unwind label %.loopexit.split-lp

.loopexit32:                                      ; preds = %bb.e, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  store ptr %2, ptr %i.s, align 8, !tbaa !58
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !75   ; 3 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !68
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !75
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %.loopexit32

_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.f
  br i1 %.not, label %.loopexit, label %bb.b

bb.l:                                             ; preds = %.loopexit32, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %lpad.loopexit, %.loopexit32 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.d) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.k, %bb.a, %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit
  %spec.select = phi ptr [ %i.w, %_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ], [ null, %bb.a ], [ null, %bb.k ]
  %.not.i.i.i24 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit25, label %bb.n

bb.n:                                             ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef nonnull %i.d) #16
  br label %_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit25

_ZNSt6vectorIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit25: ; preds = %.loopexit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackIPN4geos9operation5valid16PolygonRingTouchESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !71
  tail call void @_ZdlPv(ptr noundef %i.h) #16
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.k) #16
  br label %_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit

_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i
  ret void
}

declare noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch7getRingEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos9operation5valid16PolygonRingTouch13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4geos9algorithm11Orientation5isCCWEPKNS_4geom18CoordinateSequenceE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos9operation5valid19PolygonRingSelfNode10isExteriorEb(ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE17_M_emplace_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRiEESH_IJRPNS4_11PolygonRingERKNS2_4geom10CoordinateEEEEEES0_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %2, align 8, !tbaa !33
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %3, align 8, !tbaa !38
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.d, align 4, !tbaa !3    ; 4 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !32
  store ptr %i.l, ptr %i.k, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.n, align 8, !tbaa !29 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %i.r = icmp slt i32 %i.j, %i.q                  ; 2 uses
  %.in.v.i = select i1 %i.r, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.r, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.o, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = icmp eq ptr %.019.lcssa29.i, %i.t
  br i1 %i.u, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.w = phi i32 [ %.pre, %bb.b ], [ %i.q, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.v, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.x = icmp slt i32 %i.w, %i.j
  br i1 %i.x, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.4.0.i.ph, %i.o
  br i1 %i.y, label %.thread26, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = icmp slt i32 %i.j, %i.aa
  br label %.thread26

.thread26:                                        ; preds = %select.unfold, %bb.d
  %i.ac = phi i1 [ %i.ab, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !27
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #16
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread26, %bb.e
  %.sroa.3.032 = phi i8 [ 1, %.thread26 ], [ 0, %bb.e ]
  %.sroa.018.031 = phi ptr [ %i.a, %.thread26 ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.031, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.032, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !111
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !77
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
          to label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !112

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #15 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !71
  tail call void @_ZdlPv(ptr noundef %i.r) #16
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #17
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #15 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !77
  tail call void @_ZdlPv(ptr noundef %i.z) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aa

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ac, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !71  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !70
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.am, ptr %i.an, align 8, !tbaa !74
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !113
  %i.ao = and i64 %1, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !75
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #20
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !111
  %i.ag = load ptr, ptr %0, align 8, !tbaa !77
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !72
  br label %_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !71
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.aq = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !68
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !70
  store ptr %i.an, ptr %i.o, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !74
  store ptr %i.an, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !111  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !77
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !114

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !71
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !71
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !114

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !71
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !71
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit, !prof !115

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !114

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !71
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !71
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !77
  tail call void @_ZdlPv(ptr noundef %i.bc) #16
  store ptr %i.aq, ptr %0, align 8, !tbaa !77
  store i64 %i.am, ptr %i.k, align 8, !tbaa !111
  br label %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPN4geos9operation5valid16PolygonRingTouchES6_ET0_T_S8_S7_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !70
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !71   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !70
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !71 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !74
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN4geos9operation5valid11PolygonRingE", !4, i64 0, !9, i64 8, !11, i64 16, !9, i64 24, !12, i64 32, !22, i64 80}
!9 = !{!"p1 _ZTSN4geos9operation5valid11PolygonRingE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !10, i64 0}
!12 = !{!"_ZTSSt3mapIiN4geos9operation5valid16PolygonRingTouchESt4lessIiESaISt4pairIKiS3_EEE", !13, i64 0}
!13 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE", !14, i64 0}
!14 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN4geos9operation5valid16PolygonRingTouchEESt10_Select1stIS6_ESt4lessIiESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !15, i64 0, !17, i64 8}
!15 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !16, i64 0}
!16 = !{!"_ZTSSt4lessIiE"}
!17 = !{!"_ZTSSt15_Rb_tree_header", !18, i64 0, !21, i64 32}
!18 = !{!"_ZTSSt18_Rb_tree_node_base", !19, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!19 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!20 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"_ZTSSt6vectorIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4geos9operation5valid19PolygonRingSelfNodeESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN4geos9operation5valid19PolygonRingSelfNodeE", !10, i64 0}
!27 = !{!17, !21, i64 32}
!28 = !{!17, !20, i64 8}
!29 = !{!20, !20, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 int", !10, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_: argument 0"}
!37 = distinct !{!37, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_"}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_: argument 0"}
!42 = distinct !{!42, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_"}
!43 = !{!44, !44, i64 0}
!44 = !{!"p2 _ZTSN4geos9operation5valid11PolygonRingE", !45, i64 0}
!45 = !{!"any p2 pointer", !10, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_: argument 0"}
!48 = distinct !{!48, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_: argument 0"}
!51 = distinct !{!51, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_: argument 0"}
!54 = distinct !{!54, !"_ZSt16forward_as_tupleIJRiEESt5tupleIJDpOT_EES4_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_: argument 0"}
!57 = distinct !{!57, !"_ZSt16forward_as_tupleIJRPN4geos9operation5valid11PolygonRingERKNS0_4geom10CoordinateEEESt5tupleIJDpOT_EESD_"}
!58 = !{!8, !9, i64 24}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSSt15_Deque_iteratorIPN4geos9operation5valid16PolygonRingTouchERS4_PS4_E", !61, i64 0, !61, i64 8, !61, i64 16, !62, i64 24}
!61 = !{!"p2 _ZTSN4geos9operation5valid16PolygonRingTouchE", !45, i64 0}
!62 = !{!"p3 _ZTSN4geos9operation5valid16PolygonRingTouchE", !63, i64 0}
!63 = !{!"any p3 pointer", !45, i64 0}
!64 = !{!60, !61, i64 8}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZNSt5dequeIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE3endEv"}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4geos9operation5valid16PolygonRingTouchE", !10, i64 0}
!70 = !{!60, !62, i64 24}
!71 = !{!61, !61, i64 0}
!72 = !{!73, !62, i64 72}
!73 = !{!"_ZTSNSt11_Deque_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE16_Deque_impl_dataE", !62, i64 0, !21, i64 8, !60, i64 16, !60, i64 48}
!74 = !{!60, !61, i64 16}
!75 = !{!73, !61, i64 48}
!76 = distinct !{!76, !31}
!77 = !{!73, !62, i64 0}
!78 = !{!73, !62, i64 40}
!79 = distinct !{!79, !31}
!80 = !{!26, !26, i64 0}
!81 = !{!8, !11, i64 16}
!82 = !{!17, !20, i64 16}
!83 = !{!84, !61, i64 8}
!84 = !{!"_ZTSNSt12_Vector_baseIPN4geos9operation5valid16PolygonRingTouchESaIS4_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!85 = !{!84, !61, i64 0}
!86 = !{!84, !61, i64 16}
!87 = !{!25, !26, i64 8}
!88 = !{!25, !26, i64 16}
!89 = !{i64 0, i64 8, !90, i64 8, i64 8, !90, i64 16, i64 8, !90}
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !5, i64 0}
!92 = !{!93, !39, i64 24}
!93 = !{!"_ZTSN4geos9operation5valid19PolygonRingSelfNodeE", !94, i64 0, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!94 = !{!"_ZTSN4geos4geom10CoordinateE", !91, i64 0, !91, i64 8, !91, i64 16}
!95 = !{!93, !39, i64 32}
!96 = !{!93, !39, i64 40}
!97 = !{!93, !39, i64 48}
!98 = !{!25, !26, i64 0}
!99 = !{i64 0, i64 8, !90, i64 8, i64 8, !90, i64 16, i64 8, !90, i64 24, i64 8, !38, i64 32, i64 8, !38, i64 40, i64 8, !38, i64 48, i64 8, !38}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aIN4geos9operation5valid19PolygonRingSelfNodeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aIN4geos9operation5valid19PolygonRingSelfNodeES3_SaIS3_EEvPT_PT0_RT1_"}
!103 = distinct !{!103, !102, !"_ZSt19__relocate_object_aIN4geos9operation5valid19PolygonRingSelfNodeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!104 = distinct !{!104, !31}
!105 = !{!73, !61, i64 64}
!106 = !{!107, !4, i64 0}
!107 = !{!"_ZTSSt4pairIKiN4geos9operation5valid16PolygonRingTouchEE", !4, i64 0, !108, i64 8}
!108 = !{!"_ZTSN4geos9operation5valid16PolygonRingTouchE", !9, i64 0, !94, i64 8}
!109 = !{!108, !9, i64 0}
!110 = distinct !{!110, !31}
!111 = !{!73, !21, i64 8}
!112 = distinct !{!112, !31}
!113 = !{!73, !61, i64 16}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!115 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
