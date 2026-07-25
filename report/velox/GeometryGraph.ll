inline.NumInlined: 915
inline.NumDeleted: 509
begin_hunk_0_@_ZN4geos9geomgraph13GeometryGraph16computeSelfNodesERNS_9algorithm15LineIntersectorEbbPKNS_4geom8EnvelopeE:bb.a
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.a) #24, !inline_history !137
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9geomgraph26collect_intersecting_edgesIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS5_SaIS5_EEEES9_EEvPKNS_4geom8EnvelopeET_SF_RT0_(ptr noundef %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, %2
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit
  %.sroa.0.07 = phi ptr [ %1, %.lr.ph ], [ %i.as, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.07, align 8, !tbaa !81 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(152) %i.f) ; 4 uses
  %i.k = load double, ptr %0, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !140
  %i.n = fcmp ugt double %i.k, %i.m
  br i1 %i.n, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load double, ptr %i.a, align 8, !tbaa !140
  %i.p = load double, ptr %i.j, align 8, !tbaa !138
  %i.q = fcmp ult double %i.o, %i.p
  br i1 %i.q, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load double, ptr %i.b, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !142
  %i.u = fcmp ugt double %i.r, %i.t
  br i1 %i.u, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.d
  %i.v = load double, ptr %i.c, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !141
  %i.y = fcmp ult double %i.v, %i.x
  br i1 %i.y, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !143  ; 4 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %i.z, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !143
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !134   ; 4 uses
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %i.f, ptr %i.ao, align 8, !tbaa !81
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ac) #23
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.an, ptr %3, align 8, !tbaa !134
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !143
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !144
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.as, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !145
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph13GeometryGraph24addSelfIntersectionNodesEh(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %.not23 = icmp eq ptr %i.c, %i.e
  br i1 %.not23, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.f = zext i8 %1 to i64                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %.sroa.015.024 = phi ptr [ %i.c, %.lr.ph26 ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.015.024, align 8, !tbaa !81 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.f ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !86
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.l, align 1, !tbaa !90
  %i.p = freeze i8 %i.o
  br label %_ZNK4geos9geomgraph5Label11getLocationEj.exit

_ZNK4geos9geomgraph5Label11getLocationEj.exit:    ; preds = %bb.b, %bb.c
  %.0.i.i = phi i8 [ %i.p, %bb.c ], [ -1, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.r = tail call ptr @_ZNK4geos9geomgraph20EdgeIntersectionList5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146  ; 3 uses
  %.not1821 = icmp eq ptr %i.r, %i.t
  br i1 %.not1821, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit
  %i.u = icmp eq i8 %.0.i.i, 1
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us
  %.sroa.011.022.us = phi ptr [ %i.bh, %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us ], [ %i.r, %.lr.ph ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.022.us), !inline_history !148
  br i1 %i.y, label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.z = load i8, ptr %i.h, align 8, !tbaa !83, !range !149, !noundef !69
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.ac = tail call noundef ptr @_ZN4geos9geomgraph7NodeMap7addNodeERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.022.us) ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  br i1 %i.aa, label %bb.g, label %.split8.i.us

.split8.i.us:                                     ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !86  ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = icmp eq i8 %i.af, 0
  br i1 %i.ah, label %.loopexit.i.i14.i.us, label %.lr.ph.i.i.i9.i.us

.lr.ph.i.i.i9.i.us:                               ; preds = %.split8.i.us, %bb.e
  %.057.i.i.i10.i.us = phi i64 [ %i.ak, %bb.e ], [ 0, %.split8.i.us ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.057.i.i.i10.i.us
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !90
  %.not.i.i.i11.i.us = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i.i11.i.us, label %bb.e, label %_ZNK4geos9geomgraph5Label6isNullEv.exit.i12.i.us.a

bb.e:                                             ; preds = %.lr.ph.i.i.i9.i.us
  %i.ak = add nuw nsw i64 %.057.i.i.i10.i.us, 1   ; 2 uses
  %exitcond.not.i.i.i13.i.us = icmp eq i64 %i.ak, %i.ag
  br i1 %exitcond.not.i.i.i13.i.us, label %.loopexit.i.i14.i.us, label %.lr.ph.i.i.i9.i.us, !llvm.loop !89

.loopexit.i.i14.i.us:                             ; preds = %bb.e, %.split8.i.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !86  ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = icmp eq i8 %i.an, 0
  br i1 %i.ap, label %.loopexit.i19.i.us, label %.lr.ph.i1.i.i15.i.us

.lr.ph.i1.i.i15.i.us:                             ; preds = %.loopexit.i.i14.i.us, %bb.f
  %.057.i2.i.i16.i.us = phi i64 [ %3, %bb.f ], [ 0, %.loopexit.i.i14.i.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.057.i2.i.i16.i.us
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !90
  %.not.i3.i.i17.i.us = icmp eq i8 %i.ar, -1
  br i1 %.not.i3.i.i17.i.us, label %bb.f, label %_ZNK4geos9geomgraph5Label6isNullEv.exit.i12.i.us.a

_ZNK4geos9geomgraph5Label6isNullEv.exit.i12.i.us.a: ; preds = %.lr.ph.i.i.i9.i.us, %.lr.ph.i1.i.i15.i.us
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.f
  store i8 1, ptr %2, align 1, !tbaa !90
  br label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us

bb.f:                                             ; preds = %.lr.ph.i1.i.i15.i.us
  %3 = add nuw nsw i64 %.057.i2.i.i16.i.us, 1     ; 2 uses
  %exitcond.not.i5.i.i18.i.us = icmp eq i64 %3, %i.ao
  br i1 %exitcond.not.i5.i.i18.i.us, label %.loopexit.i19.i.us, label %.lr.ph.i1.i.i15.i.us, !llvm.loop !89

.loopexit.i19.i.us:                               ; preds = %bb.f, %.loopexit.i.i14.i.us
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i8 noundef zeroext %1, i8 noundef signext 1), !inline_history !150
  br label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us

bb.g:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.f ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !86
  %.not.i.i.us = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.us, label %_ZN4geos9geomgraph13GeometryGraph19insertBoundaryPointEhRKNS_4geom10CoordinateE.exit.i.us, label %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us

_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us: ; preds = %bb.g
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !90
  %.fr.i.i.us = freeze i8 %i.ay
  %i.az = icmp eq i8 %.fr.i.i.us, 1
  %spec.select.i.i.us = select i1 %i.az, i32 2, i32 1
  br label %_ZN4geos9geomgraph13GeometryGraph19insertBoundaryPointEhRKNS_4geom10CoordinateE.exit.i.us

_ZN4geos9geomgraph13GeometryGraph19insertBoundaryPointEhRKNS_4geom10CoordinateE.exit.i.us: ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us, %bb.g
  %i.ba = phi i32 [ 1, %bb.g ], [ %spec.select.i.i.us, %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us ]
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !108, !nonnull !69, !align !109 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %i.ba), !inline_history !151
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr %i.av, align 1, !tbaa !90
  br label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us

_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us: ; preds = %_ZN4geos9geomgraph13GeometryGraph19insertBoundaryPointEhRKNS_4geom10CoordinateE.exit.i.us, %.loopexit.i19.i.us, %_ZNK4geos9geomgraph5Label6isNullEv.exit.i12.i.us.a, %.lr.ph.split.us
  tail call void @_ZN4geos4util9Interrupt7processEv()
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.011.022.us, i64 40 ; 2 uses
  %.not18.us = icmp eq ptr %i.bh, %i.t
  br i1 %.not18.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit, %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit.us, %_ZNK4geos9geomgraph5Label11getLocationEj.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.e
  br i1 %.not, label %._crit_edge27, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit
  %.sroa.011.022 = phi ptr [ %i.cj, %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit ], [ %i.r, %.lr.ph ] ; 3 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.022), !inline_history !148
  br i1 %i.bm, label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit, label %.split.i

.split.i:                                         ; preds = %.lr.ph.split
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.bo = tail call noundef ptr @_ZN4geos9geomgraph7NodeMap7addNodeERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.022) ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !86  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = icmp eq i8 %i.br, 0
  br i1 %i.bt, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = add nuw nsw i64 %.057.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bu, %i.bs
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !89

.lr.ph.i.i.i.i:                                   ; preds = %.split.i, %bb.h
  %.057.i.i.i.i = phi i64 [ %i.bu, %bb.h ], [ 0, %.split.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.057.i.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !90
  %.not.i.i.i.i = icmp eq i8 %i.bw, -1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZNK4geos9geomgraph5Label6isNullEv.exit.i.i

.loopexit.i.i.i:                                  ; preds = %bb.h, %.split.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !86  ; 2 uses
  %i.ca = zext i8 %i.bz to i64
  %i.cb = icmp eq i8 %i.bz, 0
  br i1 %i.cb, label %.loopexit.i.i, label %.lr.ph.i1.i.i.i

bb.i:                                             ; preds = %.lr.ph.i1.i.i.i
  %i.cc = add nuw nsw i64 %.057.i2.i.i.i, 1       ; 2 uses
  %exitcond.not.i5.i.i.i = icmp eq i64 %i.cc, %i.ca
  br i1 %exitcond.not.i5.i.i.i, label %.loopexit.i.i, label %.lr.ph.i1.i.i.i, !llvm.loop !89

.lr.ph.i1.i.i.i:                                  ; preds = %.loopexit.i.i.i, %bb.i
  %.057.i2.i.i.i = phi i64 [ %i.cc, %bb.i ], [ 0, %.loopexit.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.057.i2.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !90
  %.not.i3.i.i.i = icmp eq i8 %i.ce, -1
  br i1 %.not.i3.i.i.i, label %bb.i, label %_ZNK4geos9geomgraph5Label6isNullEv.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.i, %.loopexit.i.i.i
  %i.cf = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(88) %i.bo, i8 noundef zeroext %1, i8 noundef signext %.0.i.i), !inline_history !150
  br label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit

_ZNK4geos9geomgraph5Label6isNullEv.exit.i.i:      ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i1.i.i.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.f
  store i8 %.0.i.i, ptr %i.ci, align 1, !tbaa !90
  br label %_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit

_ZN4geos9geomgraph13GeometryGraph23addSelfIntersectionNodeEhRKNS_4geom10CoordinateENS2_8LocationE.exit: ; preds = %.lr.ph.split, %.loopexit.i.i, %_ZNK4geos9geomgraph5Label6isNullEv.exit.i.i
  tail call void @_ZN4geos4util9Interrupt7processEv()
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 40 ; 2 uses
  %.not18 = icmp eq ptr %i.cj, %i.t
  br i1 %.not18, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph13GeometryGraph24computeEdgeIntersectionsEPS1_PNS_9algorithm15LineIntersectorEbPKNS_4geom8EnvelopeE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr.97") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.40", align 8    ; 8 uses
  %7 = alloca %"class.std::vector.40", align 8    ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25 ; 15 uses
  %i.b = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9geomgraph5index18SegmentIntersectorE, i64 16), ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, i8 0, i64 5, i1 false)
  store double +qnan, ptr %i.e, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.f, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.b, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 1, ptr %i.h, align 1, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i, label %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit

_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i: ; preds = %bb.a
  %i.l = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store ptr %i.l, ptr %i.j, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load i8, ptr %i.o, align 8, !tbaa !42
  invoke void @_ZNK4geos9geomgraph7NodeMap16getBoundaryNodesEhRSt6vectorIPNS0_4NodeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i8 noundef zeroext %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc33 unwind label %bb.i

.noexc33:                                         ; preds = %.noexc
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !7
  br label %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit

_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit: ; preds = %.noexc33, %bb.a
  %i.q = phi ptr [ %.pre.i, %.noexc33 ], [ %i.k, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 2 uses
  %.not.i34 = icmp eq ptr %i.s, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i35, label %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit39

_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i35: ; preds = %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc37 unwind label %bb.i   ; 3 uses

.noexc37:                                         ; preds = %_ZNSt10unique_ptrISt6vectorIPN4geos9geomgraph4NodeESaIS4_EESt14default_deleteIS6_EE5resetEPS6_.exit.i35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = load i8, ptr %i.w, align 8, !tbaa !42
  invoke void @_ZNK4geos9geomgraph7NodeMap16getBoundaryNodesEhRSt6vectorIPNS0_4NodeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i8 noundef zeroext %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc38 unwind label %bb.i

.noexc38:                                         ; preds = %.noexc37
  %.pre.i36 = load ptr, ptr %i.r, align 8, !tbaa !7
  br label %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit39

_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit39: ; preds = %.noexc38, %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit
  %i.y = phi ptr [ %.pre.i36, %.noexc38 ], [ %i.s, %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.q, ptr %i.z, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !7
  %i.ab = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #25
          to label %.noexc40 unwind label %bb.j   ; 11 uses

.noexc40:                                         ; preds = %_ZN4geos9geomgraph13GeometryGraph16getBoundaryNodesEv.exit39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.ac, i8 0, i64 88, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9geomgraph5index28SimpleMCSweepLineIntersectorE, i64 16), ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i8 0, i64 104, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4geos9geomgraph5index14SweepLineEventESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 noundef 0)
          to label %_ZNSt5dequeIN4geos9geomgraph5index14SweepLineEventESaIS3_EEC2Ev.exit.i.i unwind label %bb.b

_ZNSt5dequeIN4geos9geomgraph5index14SweepLineEventESaIS3_EEC2Ev.exit.i.i: ; preds = %.noexc40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4geos9geomgraph5index13MonotoneChainESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i64 noundef 0)
          to label %_ZN4geos9geomgraph13GeometryGraph24createEdgeSetIntersectorEv.exit unwind label %bb.c

bb.b:                                             ; preds = %.noexc40
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeIN4geos9geomgraph5index14SweepLineEventESaIS3_EEC2Ev.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIN4geos9geomgraph5index14SweepLineEventESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.c ], [ %i.af, %bb.b ]
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #23
  br label %_ZNKSt14default_deleteIN4geos9geomgraph5index18SegmentIntersectorEEclEPS3_.exit.i

_ZN4geos9geomgraph13GeometryGraph24createEdgeSetIntersectorEv.exit: ; preds = %_ZNSt5dequeIN4geos9geomgraph5index14SweepLineEventESaIS3_EEC2Ev.exit.i.i
end_hunk_0
