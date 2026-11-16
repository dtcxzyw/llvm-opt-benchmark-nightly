Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OffsetSegmentGenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib:bb.a
  %.pre10.i = load double, ptr %.phi.trans.insert9.i, align 8, !tbaa !56
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ai = fcmp ugt double %i.p, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load <2 x double>, ptr %i.x, align 8, !tbaa !47
  %i.ak = fsub <2 x double> %i.z, %i.aj           ; 2 uses
  %i.al = fmul <2 x double> %i.ak, %i.ak          ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.al, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.am)
  %i.an = call double @llvm.fabs.f64(double %i.p)
  %i.ao = fdiv double %sqrt.i.i, %i.an
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi double [ %i.ao, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
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
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.pre = load double, ptr %i.o, align 8, !tbaa !32
  %.pre2 = load double, ptr %i.b, align 8, !tbaa !53
  %.pre3 = load double, ptr %i.g, align 8, !tbaa !54
  %.pre4 = load double, ptr %i.c, align 8, !tbaa !53
  %.pre5 = load double, ptr %i.i, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi double [ %.pre5, %bb.k ], [ %i.j, %bb.j ]
  %i.az = phi double [ %.pre4, %bb.k ], [ %i.e, %bb.j ]
  %i.ba = phi double [ %.pre3, %bb.k ], [ %i.h, %bb.j ]
  %i.bb = phi double [ %.pre2, %bb.k ], [ %i.d, %bb.j ]
  %i.bc = phi double [ %.pre, %bb.k ], [ %i.p, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.bf = fsub double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !54 ; 2 uses
  %i.bi = fsub double %i.ba, %i.bh
  %i.bj = tail call double @atan2(double noundef %i.bi, double noundef %i.bf) #11 ; 4 uses
  %i.bk = fsub double %i.az, %i.be
  %i.bl = fsub double %i.ay, %i.bh
  %i.bm = tail call double @atan2(double noundef %i.bl, double noundef %i.bk) #11 ; 3 uses
  %i.bn = icmp eq i32 %1, -1                      ; 2 uses
  %i.bo = fcmp ult double %i.bj, %i.bm
  %i.bp = fcmp ugt double %i.bj, %i.bm
  %.sink29.i = select i1 %i.bn, double f0x401921FB54442D18, double f0xC01921FB54442D18
  %.sink.i = select i1 %i.bn, i1 %i.bp, i1 %i.bo
  %i.bq = fadd double %.sink29.i, %i.bj
  %spec.select27.i = select i1 %.sink.i, double %i.bj, double %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, double noundef %spec.select27.i, double noundef %i.bm, i32 noundef %1, double noundef %i.bc)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addInsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 %1, i1 zeroext %2) local_unnamed_addr #0 align 2 !guid !71 {
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = load <2 x double>, ptr %i.c, align 8, !tbaa !47
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !47
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !32
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.w = uitofp nneg i32 %i.u to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.y = add nuw nsw i32 %i.u, 1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !47
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = load <2 x double>, ptr %i.x, align 8, !tbaa !47
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.aj, align 16, !tbaa !34
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !30  ; 2 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = add nsw i32 %i.ak, 1
  %i.an = sitofp i32 %i.am to double
  %i.ao = load <2 x double>, ptr %i.d, align 8, !tbaa !47
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = load <2 x double>, ptr %i.x, align 8, !tbaa !47
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  store <2 x double> %i.aw, ptr %4, align 16, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.ax, align 16, !tbaa !34
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
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 !guid !72 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !32 ; 3 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !47 ; 3 uses
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !47 ; 5 uses
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
  %i.q = fdiv <2 x double> %i.n, %i.p             ; 3 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = fsub <2 x double> %i.e, %i.r             ; 2 uses
  %i.t = fadd <2 x double> %i.e, %i.r             ; 2 uses
  %8 = shufflevector <2 x double> %i.d, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x double> <double -0.000000e+00, double poison, double +qnan, double -0.000000e+00>, <4 x double> %8, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %10 = shufflevector <2 x double> %i.q, <2 x double> %i.s, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %11 = insertelement <4 x double> %10, double -0.000000e+00, i64 2
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %13 = shufflevector <2 x double> %i.t, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %13, ptr %12, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.v = fneg double %i.c
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.f, %i.x
  %i.z = fdiv <2 x double> %i.y, %i.p             ; 3 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ab = fsub <2 x double> %i.e, %i.aa           ; 2 uses
  %i.ac = fadd <2 x double> %i.e, %i.aa           ; 2 uses
  %14 = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x double> %i.q, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %16 = fsub <2 x double> %14, %15                ; 2 uses
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x double> %17, <4 x double> %11, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %19 = fadd <4 x double> %9, %18
  store <4 x double> %19, ptr %4, align 8, !tbaa !47
  %20 = shufflevector <2 x double> %i.z, <2 x double> %i.ab, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %21 = insertelement <4 x double> %20, double -0.000000e+00, i64 2
  %22 = shufflevector <2 x double> %16, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <4 x double> %22, <4 x double> %21, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %24 = fadd <4 x double> %9, %23
  store <4 x double> %24, ptr %5, align 8, !tbaa !47
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %26 = shufflevector <2 x double> %i.ac, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %26, ptr %25, align 8, !tbaa !47
  %i.ad = tail call double @atan2(double noundef %i.i, double noundef %i.g) #11 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !73
  switch i32 %i.ah, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.aj = fadd double %i.ad, f0x3FF921FB54442D18  ; 2 uses
  %i.ak = fadd double %i.ad, f0xBFF921FB54442D18
  %i.al = fsub double %i.aj, %i.ak
  %i.am = call double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !39
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32              ; 3 uses
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = load <1 x double>, ptr %i.b, align 8
  %i.au = uitofp nneg i32 %i.ar to double
  %i.av = fdiv double %i.am, %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.aw, align 16, !tbaa !34
  %i.ax = shufflevector <1 x double> %i.at, <1 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.c
  %.021.us.i = phi i32 [ %i.bj, %.split.us.i ], [ 0, %bb.c ] ; 2 uses
  %i.ay = sub nsw i32 0, %.021.us.i
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fmul double %i.av, %i.az
  %i.bb = fadd double %i.aj, %i.ba                ; 2 uses
  %i.bc = call double @cos(double noundef %i.bb) #11
  %i.bd = call double @sin(double noundef %i.bb) #11
  %i.be = load <2 x double>, ptr %2, align 8, !tbaa !47
  %i.bf = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.bd, i64 1
  %i.bh = fmul <2 x double> %i.ax, %i.bg
  %i.bi = fadd <2 x double> %i.be, %i.bh
  store <2 x double> %i.bi, ptr %3, align 16, !tbaa !47
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bj = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.bj, %i.ar
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bl = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.bm = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.bn = tail call double @llvm.fabs.f64(double %i.c)
  %i.bo = tail call double @cos(double noundef %i.ad) #11
  %i.bp = tail call double @sin(double noundef %i.ad) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bq = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bp, i64 1
  %i.bu = fmul <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = fadd <2 x double> %i.bm, %i.bu
  store <2 x double> %i.bv, ptr %6, align 16, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.bw, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bx = fadd <2 x double> %i.bl, %i.bu
  store <2 x double> %i.bx, ptr %7, align 16, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double +qnan, ptr %i.by, align 16, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %7)
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
define linkonce_odr void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !guid !77 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 16, !tbaa !53
  %i.f = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.e)
  store double %i.f, ptr %2, align 16, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !54
  %i.i = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.h)
  store double %i.i, ptr %i.g, align 8, !tbaa !54
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !74
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !75
  %i.u = add i64 %i.t, -1
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.u), !inline_history !76
  %i.z = load <2 x double>, ptr %2, align 16, !tbaa !47
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !47
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab          ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ac, %shift
  %i.ad = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46
  %i.ag = fcmp olt double %sqrt.i.i, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !31
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit, %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 !guid !81 {
bb.a:
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 8 uses
  %i.a = fsub double %2, %3
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !39
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
  store double +qnan, ptr %i.l, align 16, !tbaa !34
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
  %i.x = load <2 x double>, ptr %1, align 8, !tbaa !47
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.q, %i.z
  %i.ab = fadd <2 x double> %i.x, %i.aa
  store <2 x double> %i.ab, ptr %6, align 16, !tbaa !47
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ac = add nuw nsw i32 %.021.us, 1             ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ac, %i.g
  br i1 %exitcond25.not, label %.split23.us, label %.split.us, !llvm.loop !0

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
  %i.ai = load <2 x double>, ptr %1, align 8, !tbaa !47
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fmul <2 x double> %i.o, %i.ak
  %i.am = fadd <2 x double> %i.ai, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !47
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.an = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.g
  br i1 %exitcond.not, label %.split23.us, label %.split, !llvm.loop !0

bb.c:                                             ; preds = %bb.a, %.split23.us
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateES6_S6_id(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 align 2 !guid !82 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !53
  %i.b = load double, ptr %1, align 8, !tbaa !53  ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !54 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = tail call double @atan2(double noundef %i.h, double noundef %i.c) #11 ; 4 uses
  %i.j = load double, ptr %3, align 8, !tbaa !53
  %i.k = fsub double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !54
  %i.n = fsub double %i.m, %i.g
  %i.o = tail call double @atan2(double noundef %i.n, double noundef %i.k) #11 ; 3 uses
  %i.p = icmp eq i32 %4, -1                       ; 2 uses
  %i.q = fcmp ult double %i.i, %i.o
  %i.r = fcmp ugt double %i.i, %i.o
  %.sink29 = select i1 %i.p, double f0x401921FB54442D18, double f0xC01921FB54442D18
  %.sink = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = fadd double %i.i, %.sink29
  %spec.select27 = select i1 %.sink, double %i.i, double %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %spec.select27, double noundef %i.o, i32 noundef %4, double noundef %5)
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12createCircleERKNS_4geom10CoordinateEd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 align 2 !guid !83 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %5 = load <2 x double>, ptr %1, align 8, !tbaa !47
  %6 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %7 = fadd <2 x double> %6, %5
  store <2 x double> %7, ptr %4, align 16, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.a, align 16, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !39
  %i.e = fdiv double f0x401921FB54442D18, %i.d
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = uitofp nneg i32 %i.g to double
  %i.j = fdiv nnan double f0x401921FB54442D18, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.k, align 16, !tbaa !34
  %i.l = insertelement <2 x double> poison, double %2, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.b
  %.021.us.i = phi i32 [ %i.y, %.split.us.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = sub nsw i32 0, %.021.us.i
  %i.o = sitofp i32 %i.n to double
  %i.p = fmul double %i.j, %i.o
  %i.q = fadd double %i.p, 0.000000e+00           ; 2 uses
  %i.r = call double @cos(double noundef %i.q) #11
  %i.s = call double @sin(double noundef %i.q) #11
  %i.t = load <2 x double>, ptr %1, align 8, !tbaa !47
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1
  %i.w = fmul <2 x double> %i.m, %i.v
  %i.x = fadd <2 x double> %i.t, %i.w
  store <2 x double> %i.x, ptr %3, align 16, !tbaa !47
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.y = add nuw nsw i32 %.021.us.i, 1            ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.y, %i.g
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.a, %.split23.us.i
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(24) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 0), !inline_history !2 ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !31  ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak), !inline_history !3
  %i.ap = add i64 %i.ao, -1
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(24) ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %i.ap), !inline_history !4
  %i.au = load <2 x double>, ptr %i.aj, align 8
  %i.av = load <2 x double>, ptr %i.at, align 8
  %i.aw = fcmp oeq <2 x double> %i.au, %i.av      ; 2 uses
  %i.ax = extractelement <2 x i1> %i.aw, i64 0
  %i.ay = extractelement <2 x i1> %i.aw, i64 1
  %.0.i.i.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %.0.i.i.i, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !31
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i1 noundef zeroext true)
  br label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit

_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit: ; preds = %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12createSquareERKNS_4geom10CoordinateEd(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 align 2 !guid !84 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !47
  %i.d = insertelement <2 x double> poison, double %2, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.f = fadd <2 x double> %i.e, %i.c
  store <2 x double> %i.f, ptr %3, align 16, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.g, align 16, !tbaa !34
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = load double, ptr %1, align 8, !tbaa !53
  %i.i = fadd double %2, %i.h
  %i.j = load double, ptr %i.b, align 8, !tbaa !54
  %i.k = fsub double %i.j, %2
  store double %i.i, ptr %4, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.m, align 8, !tbaa !34
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.n = load <2 x double>, ptr %1, align 8, !tbaa !47
  %i.o = fsub <2 x double> %i.n, %i.e
  store <2 x double> %i.o, ptr %5, align 16, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.p, align 16, !tbaa !34
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.q = load <2 x double>, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.r = fsub <2 x double> %i.q, %i.e
  %i.s = fadd <2 x double> %i.q, %i.e
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %6, align 16, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.u, align 16, !tbaa !34
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0), !inline_history !2 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag), !inline_history !3
  %i.al = add i64 %i.ak, -1
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.al), !inline_history !4
  %i.aq = load <2 x double>, ptr %i.af, align 8
  %i.ar = load <2 x double>, ptr %i.ap, align 8
  %i.as = fcmp oeq <2 x double> %i.aq, %i.ar      ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %.0.i.i.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %.0.i.i.i, label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !31
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext true)
  br label %_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit

_ZN4geos9operation6buffer19OffsetSegmentString9closeRingEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addMitreJoinERKNS_4geom10CoordinateERKNS3_11LineSegmentES9_d(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %3, double noundef %4) local_unnamed_addr #0 align 2 !guid !85 {
bb.a:
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = load <2 x double>, ptr %5, align 16      ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = fcmp uno double %i.f, 0.000000e+00
  %i.h = extractelement <2 x double> %i.e, i64 1
  %i.i = fcmp uno double %i.h, 0.000000e+00
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load double, ptr %i.j, align 16
  %i.l = fcmp uno double %i.k, 0.000000e+00
  %i.m = select i1 %or.cond.i, i1 %i.l, i1 false
  br i1 %i.m, label %..critedge_crit_edge, label %bb.b

end_hunk_0
