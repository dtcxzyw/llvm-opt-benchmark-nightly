inline.NumInlined: 95
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib:bb.a
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.am)
  %i.an = call double @llvm.fabs.f64(double %i.p)
  %i.ao = fdiv double %sqrt.i.i, %i.an
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi double [ %i.ao, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !53 ; 2 uses
  %i.at = fcmp ugt double %i.ap, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit

.critedge.i:                                      ; preds = %bb.g, %..critedge_crit_edge.i
  %i.av = phi double [ %.pre10.i, %..critedge_crit_edge.i ], [ %i.as, %bb.g ]
  call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator19addLimitedMitreJoinERKNS_4geom11LineSegmentES6_dd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nonnull readnone align 8 poison, ptr nonnull readnone align 8 poison, double noundef %i.p, double noundef %i.av)
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit: ; preds = %bb.h, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.pre = load double, ptr %i.o, align 8, !tbaa !23
  %.pre2 = load double, ptr %i.b, align 8, !tbaa !49
  %.pre3 = load double, ptr %i.g, align 8, !tbaa !50
  %.pre4 = load double, ptr %i.c, align 8, !tbaa !49
  %.pre5 = load double, ptr %i.i, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi double [ %.pre5, %bb.k ], [ %i.j, %bb.j ]
  %i.az = phi double [ %.pre4, %bb.k ], [ %i.e, %bb.j ]
  %i.ba = phi double [ %.pre3, %bb.k ], [ %i.h, %bb.j ]
  %i.bb = phi double [ %.pre2, %bb.k ], [ %i.d, %bb.j ]
  %i.bc = phi double [ %.pre, %bb.k ], [ %i.p, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %i.bf = fsub double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.bi = fsub double %i.ba, %i.bh
  %i.bj = tail call double @atan2(double noundef %i.bi, double noundef %i.bf) #11 ; 6 uses
  %i.bk = fsub double %i.az, %i.be
  %i.bl = fsub double %i.ay, %i.bh
  %i.bm = tail call double @atan2(double noundef %i.bl, double noundef %i.bk) #11 ; 3 uses
  %i.bn = icmp eq i32 %1, -1
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = fcmp ugt double %i.bj, %i.bm
  br i1 %i.bo, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = fadd double %i.bj, f0x401921FB54442D18
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit

bb.o:                                             ; preds = %bb.l
  %i.bq = fcmp ult double %i.bj, %i.bm
  br i1 %i.bq, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = fadd double %i.bj, f0xC01921FB54442D18
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi double [ %i.bp, %bb.n ], [ %i.bj, %bb.m ], [ %i.br, %bb.p ], [ %i.bj, %bb.o ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, double noundef %.0.i, double noundef %i.bm, i32 noundef %1, double noundef %i.bc)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id.exit, %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addInsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 %1, i1 zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = load <2 x double>, ptr %i.c, align 8, !tbaa !44
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !44
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !23
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.w = uitofp nneg i32 %i.u to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.y = add nuw nsw i32 %i.u, 1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !44
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = load <2 x double>, ptr %i.x, align 8, !tbaa !44
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.aj, align 16, !tbaa !26
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = add nsw i32 %i.ak, 1
  %i.an = sitofp i32 %i.am to double
  %i.ao = load <2 x double>, ptr %i.d, align 8, !tbaa !44
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = load <2 x double>, ptr %i.x, align 8, !tbaa !44
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  store <2 x double> %i.aw, ptr %4, align 16, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.ax, align 16, !tbaa !26
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::LineSegment", align 16 ; 6 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 16 ; 6 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %8, align 16, !tbaa !26
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double +qnan, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !44 ; 5 uses
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !44 ; 5 uses
  %i.f = fsub <2 x double> %i.e, %i.d             ; 6 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.f, %i.f
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.i = extractelement <2 x double> %i.f, i64 1  ; 3 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = fadd double %i.h, %i.j
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.k)
  %i.l = insertelement <2 x double> poison, double %i.c, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.f, %i.m
  %i.o = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fdiv <2 x double> %i.n, %i.p
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.s = fsub <2 x double> %i.d, %i.r
  %i.t = fadd <2 x double> %i.d, %i.r
  %10 = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  store <2 x double> %10, ptr %4, align 16, !tbaa !44
  %11 = fsub <2 x double> %i.e, %i.r
  %12 = fadd <2 x double> %i.e, %i.r
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x double> %13, ptr %9, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.u, align 16, !tbaa !26
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double +qnan, ptr %15, align 8, !tbaa !26
  %16 = fneg double %i.c
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x double> %i.f, %18
  %20 = fdiv <2 x double> %19, %i.p
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.v = fsub <2 x double> %i.d, %21
  %22 = fadd <2 x double> %i.d, %21
  %23 = shufflevector <2 x double> %i.v, <2 x double> %22, <2 x i32> <i32 0, i32 3>
  store <2 x double> %23, ptr %5, align 16, !tbaa !44
  %24 = fsub <2 x double> %i.e, %21
  %25 = fadd <2 x double> %i.e, %21
  %26 = shufflevector <2 x double> %24, <2 x double> %25, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x double> %26, ptr %14, align 8, !tbaa !44
  %i.w = tail call double @atan2(double noundef %i.i, double noundef %i.g) #11 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54
  switch i32 %i.aa, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %9)
  %i.ac = fadd double %i.w, f0x3FF921FB54442D18   ; 2 uses
  %i.ad = fadd double %i.w, f0xBFF921FB54442D18
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = call double @llvm.fabs.f64(double %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !35
  %i.ai = fdiv double %i.af, %i.ah
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32              ; 3 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load double, ptr %i.b, align 8, !tbaa !23
  %i.an = uitofp nneg i32 %i.ak to double
  %i.ao = fdiv double %i.af, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.ap, align 16, !tbaa !26
  %i.aq = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.c
  %.021.us.i = phi i32 [ %i.bd, %.split.us.i ], [ 0, %bb.c ] ; 2 uses
  %i.as = sub nsw i32 0, %.021.us.i
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul double %i.ao, %i.at
  %i.av = fadd double %i.ac, %i.au                ; 2 uses
  %i.aw = call double @cos(double noundef %i.av) #11
  %i.ax = call double @sin(double noundef %i.av) #11
  %i.ay = load <2 x double>, ptr %2, align 8, !tbaa !44
  %i.az = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  %i.bb = fmul <2 x double> %i.ar, %i.ba
  %i.bc = fadd <2 x double> %i.ay, %i.bb
  store <2 x double> %i.bc, ptr %3, align 16, !tbaa !44
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bd = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.bd, %i.ak
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !51

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bf = tail call double @llvm.fabs.f64(double %i.c)
  %i.bg = tail call double @cos(double noundef %i.w) #11
  %i.bh = tail call double @sin(double noundef %i.w) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bi = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bh, i64 1
  %i.bm = fmul <2 x double> %i.bj, %i.bl          ; 2 uses
  %i.bn = fadd <2 x double> %13, %i.bm
  store <2 x double> %i.bn, ptr %6, align 16, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.bo, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bp = fadd <2 x double> %26, %i.bm
  store <2 x double> %i.bp, ptr %7, align 16, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double +qnan, ptr %i.bq, align 16, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 16, !tbaa !49
  %i.f = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.e)
  store double %i.f, ptr %2, align 16, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.h)
  store double %i.i, ptr %i.g, align 8, !tbaa !50
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !60
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !61
  %i.u = add i64 %i.t, -1
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.u), !inline_history !62
  %i.z = load <2 x double>, ptr %2, align 16, !tbaa !44
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !44
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab          ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ac, %shift
  %i.ad = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !42
  %i.ag = fcmp olt double %sqrt.i.i, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  %i.a = fsub double %2, %3
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !35
  %i.e = fdiv double %i.b, %i.d
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 4 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %4, -1
  %i.j = uitofp nneg i32 %i.g to double
  %i.k = fdiv double %i.b, %i.j                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.l, align 16, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.n = insertelement <2 x double> poison, double %5, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.p = insertelement <2 x double> poison, double %5, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %.021.us = phi i32 [ %i.ac, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.r = sub nsw i32 0, %.021.us
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul double %i.k, %i.s
  %i.u = fadd double %2, %i.t                     ; 2 uses
  %i.v = call double @cos(double noundef %i.u) #11
  %i.w = call double @sin(double noundef %i.u) #11
  %i.x = load <2 x double>, ptr %1, align 8, !tbaa !44
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.q, %i.z
  %i.ab = fadd <2 x double> %i.x, %i.aa
  store <2 x double> %i.ab, ptr %6, align 16, !tbaa !44
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ac = add nuw nsw i32 %.021.us, 1             ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ac, %i.g
  br i1 %exitcond25.not, label %.split23.us, label %.split.us, !llvm.loop !51

.split23.us:                                      ; preds = %.split, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.c

.split:                                           ; preds = %.split.preheader, %.split
  %.021 = phi i32 [ %i.an, %.split ], [ 0, %.split.preheader ] ; 2 uses
  %i.ad = uitofp nneg i32 %.021 to double
  %i.ae = fmul double %i.k, %i.ad
  %i.af = fadd double %2, %i.ae                   ; 2 uses
  %i.ag = call double @cos(double noundef %i.af) #11
  %i.ah = call double @sin(double noundef %i.af) #11
  %i.ai = load <2 x double>, ptr %1, align 8, !tbaa !44
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fmul <2 x double> %i.o, %i.ak
  %i.am = fadd <2 x double> %i.ai, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !44
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.an = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.g
  br i1 %exitcond.not, label %.split23.us, label %.split, !llvm.loop !51

bb.c:                                             ; preds = %bb.a, %.split23.us
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !49
  %i.b = load double, ptr %1, align 8, !tbaa !49  ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = tail call double @atan2(double noundef %i.h, double noundef %i.c) #11 ; 6 uses
  %i.j = load double, ptr %3, align 8, !tbaa !49
  %i.k = fsub double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !50
  %i.n = fsub double %i.m, %i.g
  %i.o = tail call double @atan2(double noundef %i.n, double noundef %i.k) #11 ; 3 uses
  %i.p = icmp eq i32 %4, -1
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp ugt double %i.i, %i.o
  br i1 %i.q, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fadd double %i.i, f0x401921FB54442D18
  br label %bb.f

bb.d:                                             ; preds = %bb.a
end_hunk_0
