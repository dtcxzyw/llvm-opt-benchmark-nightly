Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpSymScaledMatrix?download=true
inline.NumInlined: 327
inline.NumDeleted: 158
begin_hunk_0_@_ZNK5Ipopt15SymScaledMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_:bb.a

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.sink.split: ; preds = %bb.u, %bb.s
  %.sink90 = phi ptr [ %i.r, %bb.s ], [ %i.do, %bb.u ] ; 2 uses
  %.pn34.pn.ph = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn34, %bb.u ]
  %i.dx = load ptr, ptr %.sink90, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %.sink90) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.sink.split, %bb.u, %.body47, %bb.s, %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit59
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.u ], [ %.pn, %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit59 ], [ %.pn, %bb.s ], [ %.pn34, %.body47 ], [ %.pn34.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.sink.split ]
  resume { ptr, i32 } %.pn34.pn
}

declare void @_ZNK5Ipopt6Vector5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_(ptr noundef nonnull align 8 dereferenceable(205), ptr noundef align 8, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNK5Ipopt6Matrix5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_(ptr noundef nonnull align 8 dereferenceable(69), ptr noundef align 8, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZNK5Ipopt6Matrix5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(69), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt9SymMatrix19TransMultVectorImplEdRKNS_6VectorEdRS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(205) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(69) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(205) %4), !inline_history !85
  ret void
}

declare void @_ZNK5Ipopt6Matrix13AddMSinvZImplEdRKNS_6VectorES3_RS1_(ptr noundef nonnull align 8 dereferenceable(69), double noundef, ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205)) unnamed_addr #4

declare void @_ZNK5Ipopt6Matrix18SinvBlrmZMTdBrImplEdRKNS_6VectorES3_S3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(69), double noundef, ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(205)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt9SymMatrix18ComputeColAMaxImplERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(205) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(205) %1, i1 noundef zeroext %2)
  ret void
}

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt12TaggedObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt12TaggedObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N5Ipopt12TaggedObjectD1Ev(ptr noundef %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N5Ipopt12TaggedObjectD0Ev(ptr noundef %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 56) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt7SubjectE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #16
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.sroa.02.014 = phi ptr [ %i.bn, %bb.o ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.02.014, align 8, !tbaa !134 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136  ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.g ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !138
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !138
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.ah = add nsw i64 %.052.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ai, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !140

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.p, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.r, %.lr.ph ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.m, %.lr.ph ] ; 5 uses
  %i.aj = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.aj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !138
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !138
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !138
  %i.ar = icmp eq ptr %i.aq, %0
  %spec.select.i.i.i.i = select i1 %i.ar, ptr %.sroa.032.2.i.i.i.i, ptr %i.o
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %i.o, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.au, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30 ], [ %i.as, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.at, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28 ], [ %.sroa.032.051.i.i.i.i, %bb.c ]
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 1, ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.p, !inline_history !142

.noexc:                                           ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !136 ; 2 uses
  %i.az = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !136 ; 5 uses
  %.not.i.i.i1 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, 8
  br i1 %i.bi, label %bb.l, label %bb.m, !prof !143

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bh, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !144
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %i.bh, 8
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !138
  store ptr %i.bk, ptr %i.bc, align 8, !tbaa !138
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.noexc
  %i.bl = phi ptr [ %i.be, %bb.n ], [ %i.be, %bb.m ], [ %.pre.i.i.i, %bb.l ], [ %i.be, %.noexc ]
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  store ptr %i.bm, ptr %i.n, align 8, !tbaa !144
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !131
  %.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !146

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #18
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt7SubjectD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !98
  %i.f = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !106  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.h, ptr %i.c, align 8, !tbaa !101
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !103
  %i.k = load i64, ptr %i.c, align 8, !tbaa !101
  store i64 %i.k, ptr %i.e, align 8, !tbaa !105
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !105
  store i8 %i.m, ptr %i.l, align 1, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !106
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !98
  %i.t = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !106  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.v, ptr %i.b, align 8, !tbaa !101
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.x, ptr %i.r, align 8, !tbaa !103
  %i.y = load i64, ptr %i.b, align 8, !tbaa !101
  store i64 %i.y, ptr %i.s, align 8, !tbaa !105
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i8
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !105
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !105
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i8
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !106
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.af, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !98
  %i.ai = load ptr, ptr %4, align 8, !tbaa !103   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !101
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %bb.f
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.k   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i12
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !103
  %i.an = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !105
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc13, %bb.f
end_hunk_0
