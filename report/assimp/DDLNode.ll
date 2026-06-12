inline.NumInlined: 225
inline.NumDeleted: 110
begin_hunk_0_@_ZN10ODDLParser7DDLNode12detachParentEv:bb.a
  %.052.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.y = add nsw i64 %.052.i.i.i, -1
  %i.z = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.g, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.i, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.aa = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.sroa.032.2.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.ai = icmp eq ptr %i.ah, %0
  %spec.select.i.i.i = select i1 %i.ai, ptr %.sroa.032.2.i.i.i, ptr %i.f
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.al, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28 ], [ %i.ak, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26 ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ] ; 2 uses
  %.not8 = icmp eq ptr %i.f, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not8, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.am = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.an = sub i64 %i.am, %i.h
  %i.ao = getelementptr inbounds i8, ptr %i.d, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.g, %i.aq                     ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 8
  br i1 %i.as, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ao, ptr nonnull align 8 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.ar, 8
  br i1 %i.at, label %bb.o, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.ap, align 8
  store ptr %i.au, ptr %i.ao, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %i.aw, ptr %i.e, align 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  store ptr null, ptr %i.a, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode9getParentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ODDLParser7DDLNode16getChildNodeListEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode7setTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getTypeB5cxx11Ev(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getNameB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser7DDLNode13setPropertiesEPNS_8PropertyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser8PropertyD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser7DDLNode11hasPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8                  ; 2 uses
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.01119.i = phi ptr [ %i.b, %.preheader.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr %.01119.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @strncmp(ptr noundef %i.g, ptr noundef %i.d, i64 noundef %4) #24
  %.not14.i = icmp eq i32 %i.h, 0                 ; 3 uses
  br i1 %.not14.i, label %_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01119.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b, !llvm.loop !7

_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c, %2, %bb.a
  %.3.i = phi i1 [ false, %bb.a ], [ false, %2 ], [ %.not14.i, %bb.c ], [ %.not14.i, %bb.b ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8                  ; 2 uses
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.thread, label %bb.a

bb.a:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.01119 = phi ptr [ %i.b, %.preheader ], [ %i.j, %bb.c ] ; 3 uses
  %i.e = load ptr, ptr %.01119, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @strncmp(ptr noundef %i.g, ptr noundef %i.d, i64 noundef %4) #24
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01119, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !7

.thread:                                          ; preds = %bb.b, %bb.c, %bb.a, %2
  %.3 = phi ptr [ null, %bb.a ], [ null, %2 ], [ %.01119, %bb.b ], [ null, %bb.c ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ODDLParser7DDLNode13hasPropertiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser7DDLNode8setValueEPNS_5ValueE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((104, 112)) %0, ptr noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser7DDLNode16setDataArrayListEPNS_13DataArrayListE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((112, 120)) %0, ptr noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser7DDLNode13setReferencesEPNS_9ReferenceE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((120, 128)) %0, ptr noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode13getReferencesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode4dumpERNS_12IOStreamBaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.ODDLParser::Value::Iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.e = load ptr, ptr %0, align 8, !noalias !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.h, ptr %2, align 8, !alias.scope !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !alias.scope !11
  store i8 0, ptr %i.h, align 8, !alias.scope !11
  %i.j = add i64 %i.g, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !11
  %i.l = add i64 %i.k, -4611686018427387897
  %i.m = icmp ult i64 %i.l, 7
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.i, align 8, !alias.scope !11
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.g
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.h, align 8, !alias.scope !11
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn, %bb.o ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  call void @_ZN10ODDLParser5Value8IteratorC1EPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = invoke noundef zeroext i1 @_ZNK10ODDLParser5Value8Iterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef ptr @_ZN10ODDLParser5Value8Iterator7getNextEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.l, !llvm.loop !14

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.h
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.j
  %i.am = load i64, ptr %i.h, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o
end_hunk_0
