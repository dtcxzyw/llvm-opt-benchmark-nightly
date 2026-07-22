inline.NumInlined: 1194
inline.NumDeleted: 616
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision15getPrimaryEdgesEb:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = icmp ult ptr %i.er, %i.et
  br i1 %i.eu, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i ], [ %i.er, %bb.ac ] ; 3 uses
  %i.ev = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !95
  call void @_ZdlPv(ptr noundef %i.ev) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ex = icmp ult ptr %.06.i.i.i.i, %i.es
  br i1 %i.ex, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !107

_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !105
  br label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.ac
  %i.ey = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.eo, %bb.ac ]
  call void @_ZdlPv(ptr noundef %i.ey) #22
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %._crit_edge, %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ad:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.aa, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.di, %bb.u ], [ %i.eh, %bb.aa ], [ %i.eg, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65, !noalias !108 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65, !noalias !111 ; 2 uses
  %.not7 = icmp eq ptr %i.e, %i.g
  br i1 %.not7, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64, !noalias !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !108
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit
  %.sroa.13.010 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.09 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.08 = phi ptr [ %.sroa.04.1, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 34
  store i8 0, ptr %i.l, align 2, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 74
  store i8 0, ptr %i.m, align 2, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 114
  store i8 0, ptr %i.n, align 2, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 154
  store i8 0, ptr %i.o, align 2, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 160 ; 2 uses
  %i.q = icmp eq ptr %i.p, %.sroa.10.09
  br i1 %i.q, label %bb.c, label %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.13.010, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 480
  br label %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.04.1 = phi ptr [ %i.s, %bb.c ], [ %i.p, %.lr.ph ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.t, %bb.c ], [ %.sroa.10.09, %.lr.ph ]
  %.sroa.13.1 = phi ptr [ %i.r, %bb.c ], [ %.sroa.13.010, %.lr.ph ]
  %.not = icmp eq ptr %.sroa.04.1, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit, %bb.b, %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !50
  ret void
}

declare noundef nonnull align 8 dereferenceable(35) ptr @_ZN4geos11triangulate8quadedge8QuadEdge10getPrimaryEv(ptr noundef nonnull align 8 dereferenceable(35)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !95
  tail call void @_ZdlPv(ptr noundef %i.h) #22
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, !llvm.loop !107

_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !105
  br label %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EED2Ev.exit

_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision20fetchTriangleToVisitEPNS1_8QuadEdgeERSt5stackIS4_St5dequeIS4_SaIS4_EEEb(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us
  %.017.us = phi ptr [ %i.ag, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us ], [ %1, %bb.a ] ; 5 uses
  %.016.us = phi i64 [ %i.y, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.016.us
  store ptr %.017.us, ptr %i.k, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = getelementptr inbounds nuw i8, ptr %.017.us, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !10    ; 3 uses
  %i.n = icmp slt i8 %i.m, 2
  %.v.i.us = select i1 %i.n, i64 80, i64 -80
  %i.o = getelementptr inbounds i8, ptr %.017.us, i64 %.v.i.us ; 3 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %i.q = load i8, ptr %i.p, align 2, !tbaa !88, !range !80, !noundef !81
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !73   ; 3 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i.i.us = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.o, ptr %i.s, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.i, align 8, !tbaa !73
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre27 = load i8, ptr %i.l, align 8, !tbaa !10
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us

_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us: ; preds = %bb.d, %bb.c, %.split.us
  %i.w = phi i8 [ %.pre27, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %.split.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %.017.us, i64 34
  store i8 1, ptr %i.x, align 2, !tbaa !88
  %i.y = add i64 %.016.us, 1
  %i.z = icmp sgt i8 %i.w, 0
  %i.aa = select i1 %i.z, i64 -16, i64 144
  %i.ab = getelementptr inbounds i8, ptr %.017.us, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !10
  %i.af = icmp slt i8 %i.ae, 3
  %.v.i1.i.us = select i1 %i.af, i64 40, i64 -120
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %.v.i1.i.us ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not20.us = icmp eq ptr %i.ag, %1
  br i1 %.not20.us, label %.split24.us, label %.split.us, !llvm.loop !114

.split:                                           ; preds = %bb.a, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit
  %.017 = phi ptr [ %i.cd, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ], [ %1, %bb.a ] ; 10 uses
  %.016 = phi i64 [ %i.bv, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ], [ 0, %bb.a ] ; 2 uses
  %.0 = phi i1 [ %.1, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ], [ false, %bb.a ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.016
  store ptr %.017, ptr %i.ah, align 8, !tbaa !7
  %i.ai = load double, ptr %.017, align 8, !tbaa !68 ; 3 uses
  %i.aj = load double, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.ak = fcmp oeq double %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = load double, ptr %i.d, align 8          ; 2 uses
  %i.ao = fcmp oeq double %i.am, %i.an
  %.0.i.i.i.i = select i1 %i.ak, i1 %i.ao, i1 false
  br i1 %.0.i.i.i.i, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split
  %i.ap = load double, ptr %i.e, align 8, !tbaa !68 ; 2 uses
  %i.aq = fcmp oeq double %i.ai, %i.ap
  %i.ar = load double, ptr %i.f, align 8          ; 2 uses
  %i.as = fcmp oeq double %i.am, %i.ar
  %.0.i.i5.i.i = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %.0.i.i5.i.i, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision13isFrameVertexERKNS1_6VertexE.exit.i

_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision13isFrameVertexERKNS1_6VertexE.exit.i: ; preds = %bb.e
  %i.at = load double, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %i.au = fcmp oeq double %i.ai, %i.at
  %i.av = load double, ptr %i.h, align 8          ; 2 uses
  %i.aw = fcmp oeq double %i.am, %i.av
  %.0.i.i6.i.i = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %.0.i.i6.i.i, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision13isFrameVertexERKNS1_6VertexE.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !10  ; 2 uses
  %i.az = icmp slt i8 %i.ay, 2
  %.v.i.i.i = select i1 %i.az, i64 80, i64 -80
  %i.ba = getelementptr inbounds i8, ptr %.017, i64 %.v.i.i.i ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !68 ; 3 uses
  %i.bc = fcmp oeq double %i.bb, %i.aj
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load double, ptr %i.bd, align 8         ; 3 uses
  %i.bf = fcmp oeq double %i.be, %i.an
  %.0.i.i.i4.i = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %.0.i.i.i4.i, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = fcmp oeq double %i.bb, %i.ap
  %i.bh = fcmp oeq double %i.be, %i.ar
  %.0.i.i5.i5.i = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %.0.i.i5.i5.i, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit

_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit: ; preds = %bb.g
  %i.bi = fcmp oeq double %i.bb, %i.at
  %i.bj = fcmp oeq double %i.be, %i.av
  %.0.i.i6.i6.i = select i1 %i.bi, i1 %i.bj, i1 false
  %cond.fr = freeze i1 %.0.i.i6.i6.i
  br i1 %cond.fr, label %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, label %bb.h

_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread: ; preds = %.split, %bb.e, %bb.f, %bb.g, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision13isFrameVertexERKNS1_6VertexE.exit.i, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit
  %4 = phi i8 [ %i.ay, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit ], [ %.pre, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread ]
  %.1 = phi i1 [ %.0, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit ], [ true, %_ZNK4geos11triangulate8quadedge19QuadEdgeSubdivision11isFrameEdgeERKNS1_8QuadEdgeE.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.bl = icmp slt i8 %4, 2
  %.v.i = select i1 %i.bl, i64 80, i64 -80
  %i.bm = getelementptr inbounds i8, ptr %.017, i64 %.v.i ; 3 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 34
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !88, !range !80, !noundef !81
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !73  ; 3 uses
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.not.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bm, ptr %i.bq, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bt, ptr %i.i, align 8, !tbaa !73
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit: ; preds = %bb.k, %bb.j, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.017, i64 34
  store i8 1, ptr %i.bu, align 2, !tbaa !88
  %i.bv = add i64 %.016, 1
  %5 = load i8, ptr %i.bk, align 8, !tbaa !10
  %i.bw = icmp sgt i8 %5, 0
  %i.bx = select i1 %i.bw, i64 -16, i64 144
  %i.by = getelementptr inbounds i8, ptr %.017, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !10
  %i.cc = icmp slt i8 %i.cb, 3
  %.v.i1.i = select i1 %i.cc, i64 40, i64 -120
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %.v.i1.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not20 = icmp eq ptr %i.cd, %1
  br i1 %.not20, label %.split24.us, label %.split, !llvm.loop !114

.split24.us:                                      ; preds = %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us
  %.us-phi = phi i1 [ false, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit.us ], [ %.1, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ]
  %.not = xor i1 %3, true
  %or.cond = select i1 %.not, i1 %.us-phi, i1 false
  %. = select i1 %or.cond, ptr null, ptr %i.b
  ret ptr %.
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision22getTriangleCoordinatesEPSt6vectorISt10unique_ptrINS_4geom18CoordinateSequenceESt14default_deleteIS6_EESaIS9_EEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::triangulate::quadedge::QuadEdgeSubdivision::TriangleCoordinatesVisitor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos11triangulate8quadedge19QuadEdgeSubdivision26TriangleCoordinatesVisitorE, i64 16), ptr %3, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4geos4geom30CoordinateArraySequenceFactoryE, i64 16), ptr %i.b, align 8, !tbaa !26
  call void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision14visitTrianglesEPNS1_15TriangleVisitorEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %3, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision14visitTrianglesEPNS1_15TriangleVisitorEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::stack", align 8        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.not.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  store ptr %i.g, ptr %i.c, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt5dequeIPN4geos11triangulate8quadedge8QuadEdgeESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit unwind label %bb.l

_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !50, !range !80, !noundef !81
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65, !noalias !121 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65, !noalias !124 ; 2 uses
  %.not7.i = icmp eq ptr %i.m, %i.o
  br i1 %.not7.i, label %_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64, !noalias !121
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67, !noalias !121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.13.010.i = phi ptr [ %.sroa.13.1.i, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.09.i = phi ptr [ %.sroa.10.1.i, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i ], [ %i.s, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.04.1.i, %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i ], [ %i.m, %.lr.ph.preheader.i ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 34
  store i8 0, ptr %i.t, align 2, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 74
  store i8 0, ptr %i.u, align 2, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 114
  store i8 0, ptr %i.v, align 2, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 154
  store i8 0, ptr %i.w, align 2, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 160 ; 2 uses
  %i.y = icmp eq ptr %i.x, %.sroa.10.09.i
  br i1 %i.y, label %bb.e, label %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.13.010.i, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  br label %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i

_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.04.1.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.sroa.10.1.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.10.09.i, %.lr.ph.i ]
  %.sroa.13.1.i = phi ptr [ %i.z, %bb.e ], [ %.sroa.13.010.i, %.lr.ph.i ]
  %.not.i = icmp eq ptr %.sroa.04.1.i, %i.o
  br i1 %.not.i, label %_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit, label %.lr.ph.i

_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit: ; preds = %_ZNSt15_Deque_iteratorIN4geos11triangulate8quadedge15QuadEdgeQuartetERS3_PS3_EppEv.exit.i, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit, %bb.d
  store i8 0, ptr %i.i, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.ai = phi ptr [ %i.ad, %.lr.ph ], [ %i.bg, %bb.n ] ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !90, !noalias !127 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !7
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !94, !noalias !127
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 504
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %i.aj) #22
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !94
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !95 ; 3 uses
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  store ptr %i.av, ptr %i.d, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 504
  br label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %i.ax = phi ptr [ %i.am, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.al, %bb.g ], [ %i.aw, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 34
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !88, !range !80, !noundef !81
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.bb = invoke noundef ptr @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision20fetchTriangleToVisitEPNS1_8QuadEdgeERSt5stackIS4_St5dequeIS4_SaIS4_EEEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %2)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %1, align 8, !tbaa !26
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.j, %bb.k, %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %._crit_edge, label %bb.f, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.n, %_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12prepareVisitEv.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIPN4geos11triangulate8quadedge8QuadEdgeESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 72
end_hunk_0
