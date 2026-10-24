Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IsSimpleOp?download=true
inline.NumInlined: 1074
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder20processIntersectionsEPNS_6noding13SegmentStringEmS6_m:bb.a
  %i.h = add i64 %2, 1
  %i.i = load ptr, ptr %1, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h)
  %i.m = load ptr, ptr %3, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4)
  %i.q = add i64 %4, 1
  %i.r = load ptr, ptr %3, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.q)
  %i.v = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder16findIntersectionEPNS_6noding13SegmentStringEmS6_mRKNS_4geom10CoordinateESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br i1 %i.v, label %bb.c, label %.critedge34

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106, !nonnull !66, !align !69 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 6 uses
  %.not38 = icmp eq ptr %i.z, %i.ab               ; 2 uses
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = load <2 x double>, ptr %i.w, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.035.039, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.ab
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.035.039 = phi ptr [ %i.z, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = load <2 x double>, ptr %.sroa.035.039, align 8
  %i.af = fcmp oeq <2 x double> %i.ac, %i.ae      ; 2 uses
  %i.ag = extractelement <2 x i1> %i.af, i64 0
  %i.ah = extractelement <2 x i1> %i.af, i64 1
  %.0.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %.0.i, label %.critedge34, label %bb.d

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !71
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !67
  br label %.critedge34

bb.g:                                             ; preds = %.critedge
  %i.am = ptrtoint ptr %i.ab to i64
  %i.an = ptrtoint ptr %i.z to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.h, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aq = sdiv exact i64 %i.ao, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 384307168202282325)
  %i.au = select i1 %i.as, i64 384307168202282325, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #23 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !71
  br i1 %.not38, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !71, !alias.scope !218
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.aw, ptr %i.y, align 8, !tbaa !64
  store ptr %i.ba, ptr %i.aa, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !90
  br label %.critedge34

.critedge34:                                      ; preds = %bb.e, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder16findIntersectionEPNS_6noding13SegmentStringEmS6_mRKNS_4geom10CoordinateESA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !220  ; 4 uses
  %.not43 = icmp eq i64 %i.c, 0
  br i1 %.not43, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !123 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.0812.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.0812.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !123 ; 2 uses
  %i.o = fcmp oeq double %i.n, %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fcmp oeq double %i.q, %i.i
  %.0.i.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %.0.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load double, ptr %i.k, align 8, !tbaa !123
  %i.t = fcmp oeq double %i.n, %i.s
  %i.u = load double, ptr %i.l, align 8
  %i.v = fcmp oeq double %i.q, %i.u
  %.0.i10.i.i = select i1 %i.t, i1 %i.v, i1 false
  br i1 %.0.i10.i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = add nuw i64 %.0812.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i.i, label %.lr.ph.i3.i, label %bb.b, !llvm.loop !219

.lr.ph.i3.i:                                      ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !122
  %i.z = load <2 x double>, ptr %i.y, align 8     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = extractelement <2 x double> %i.z, i64 0
  %i.ac = extractelement <2 x double> %i.z, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i3.i
  %.0812.i4.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.0812.i4.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !123 ; 2 uses
  %i.af = fcmp oeq double %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load double, ptr %i.ag, align 8         ; 2 uses
  %i.ai = fcmp oeq double %i.ah, %i.ac
  %.0.i.i5.i = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %.0.i.i5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !123
  %i.al = fcmp oeq double %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp oeq double %i.ah, %i.an
  %.0.i10.i6.i = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %.0.i10.i6.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = add nuw i64 %.0812.i4.i, 1              ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %i.ap, %i.c
  br i1 %exitcond.not.i8.i, label %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit, label %bb.e, !llvm.loop !219

_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit: ; preds = %bb.g
  %.not44 = icmp eq i64 %i.c, 1
  br i1 %.not44, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit
  %9 = icmp eq ptr %1, %3                         ; 2 uses
  %i.aq = sub i64 %4, %2
  %10 = add i64 %i.aq, 1
  %i.ar = icmp ult i64 %10, 3
  %11 = and i1 %9, %i.ar
  br i1 %11, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load <2 x double>, ptr %i.d, align 8    ; 3 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = fcmp oeq double %i.at, %i.g
  %i.av = extractelement <2 x double> %i.as, i64 1
  %i.aw = fcmp oeq double %i.av, %i.i
  %.0.i.not.i.not.i = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %.0.i.not.i.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %2, 0
  br label %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = add i64 %2, 2
  %i.az = load ptr, ptr %1, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !221
  %i.bd = icmp eq i64 %i.ay, %i.bc
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !122
  %i.be = load <2 x double>, ptr %i.d, align 8
  %i.bf = load <2 x double>, ptr %.pre, align 8
  br label %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit

_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit: ; preds = %bb.j, %bb.k
  %.0.i38 = phi i1 [ %i.ax, %bb.j ], [ %i.bd, %bb.k ]
  %i.bg = phi <2 x double> [ %i.as, %bb.j ], [ %i.be, %bb.k ]
  %i.bh = phi <2 x double> [ %i.z, %bb.j ], [ %i.bf, %bb.k ]
  %i.bi = fcmp oeq <2 x double> %i.bg, %i.bh      ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %.0.i.not.i.not.i39 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %.0.i.not.i.not.i39, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit
  %i.bl = icmp eq i64 %4, 0
  br label %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41

bb.m:                                             ; preds = %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit
  %i.bm = add i64 %4, 2
  %i.bn = load ptr, ptr %3, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef i64 %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !221
  %i.br = icmp eq i64 %i.bm, %i.bq
  br label %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41

_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41: ; preds = %bb.l, %bb.m
  %.0.i40 = phi i1 [ %i.bl, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = and i1 %.0.i38, %.0.i40
  br i1 %i.bs, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !101, !range !65, !noundef !66
  %i.bv = trunc nuw i8 %i.bu to i1
  %.not = xor i1 %i.bv, true
  %or.cond = or i1 %9, %.not
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %1, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.bz, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %3, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.cd, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.o, %bb.h, %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41, %bb.p, %bb.q, %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %bb.o ], [ true, %_ZN4geos9algorithm15LineIntersector22isInteriorIntersectionEv.exit ], [ false, %bb.h ], [ true, %bb.p ], [ false, %bb.q ], [ true, %_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm.exit41 ], [ true, %bb.f ], [ true, %bb.c ]
  ret i1 %.5
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(160) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %3, i64 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %4
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = load <2 x double>, ptr %i.a, align 8
  %i.f = load <2 x double>, ptr %i.d, align 8
  %i.g = fcmp oeq <2 x double> %i.e, %i.f         ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %.0.i.not.i.not = select i1 %i.h, i1 %i.i, i1 false
  br i1 %.0.i.not.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %2, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = add i64 %2, 2
  %i.l = load ptr, ptr %1, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.p = icmp eq i64 %i.k, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 2) i64 @_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder23intersectionVertexIndexERKNS_9algorithm15LineIntersectorEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %1, i64 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = load <2 x double>, ptr %i.a, align 8
  %i.f = load <2 x double>, ptr %i.d, align 8
  %i.g = fcmp une <2 x double> %i.e, %i.f         ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %.0.i.not = select i1 %i.h, i1 true, i1 %i.i
  %i.j = zext i1 %.0.i.not to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder6isDoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !102, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106, !nonnull !66, !align !69 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.i = icmp ne ptr %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinderD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding13SegmentStringD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding18BasicSegmentStringD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK4geos6noding18BasicSegmentString4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !222
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK4geos6noding18BasicSegmentString14getCoordinatesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos6noding18BasicSegmentString8isClosedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.l = add i64 %i.k, -1
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.l)
  %i.q = load <2 x double>, ptr %i.f, align 8
  %i.r = load <2 x double>, ptr %i.p, align 8
  %i.s = fcmp oeq <2 x double> %i.q, %i.r         ; 2 uses
  %i.t = extractelement <2 x i1> %i.s, i64 0
  %i.u = extractelement <2 x i1> %i.s, i64 1
  %.0.i.i = select i1 %i.t, i1 %i.u, i1 false
  ret i1 %.0.i.i
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4geos6noding18BasicSegmentString5printERSo(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding12MCIndexNoderD0Ev(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4geos6noding12MCIndexNoderE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21, !inline_history !108
  br label %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit.i

_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN4geos6noding12MCIndexNoderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #21, !inline_history !108
  br label %_ZN4geos6noding12MCIndexNoderD2Ev.exit

_ZN4geos6noding12MCIndexNoderD2Ev.exit:           ; preds = %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule19getBoundaryRuleMod2Ev() local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
end_hunk_0
