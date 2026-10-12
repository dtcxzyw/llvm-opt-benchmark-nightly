Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OffsetSegmentGenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation6buffer22OffsetSegmentGenerator16initSideSegmentsERKNS_4geom10CoordinateES6_i:bb.a
  %i.ad = fadd <2 x double> %i.m, %i.x
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ae, ptr %i.ab, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator20computeOffsetSegmentERKNS_4geom11LineSegmentEidRS4_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, double noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 16), (24, 40)) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = select i1 %i.a, i32 1, i32 -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = sitofp i32 %i.b to double
  %i.e = fmul double %3, %i.d
  %i.f = load <2 x double>, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 3 uses
  %i.h = fsub <2 x double> %i.f, %i.g             ; 3 uses
  %i.i = fmul <2 x double> %i.h, %i.h             ; 2 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.i, %shift
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %i.j)
  %i.k = insertelement <2 x double> poison, double %i.e, i64 0
  %i.l = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.m = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul <2 x double> %i.m, %i.n
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.o, %i.p             ; 4 uses
  %i.r = fsub <2 x double> %i.g, %i.q
  %i.s = fadd <2 x double> %i.g, %i.q
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %4, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = fsub <2 x double> %i.f, %i.q
  %i.w = fadd <2 x double> %i.f, %i.q
  %i.x = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.x, ptr %i.u, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.b = load <2 x double>, ptr %i.a, align 8
  %i.c = load <2 x double>, ptr %1, align 8
  %i.d = fcmp oeq <2 x double> %i.b, %i.c         ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %.0.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %.0.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.p = icmp eq i32 %i.l, 1
  %i.q = select i1 %i.p, i32 1, i32 -1
  %i.r = sitofp i32 %i.q to double
  %i.s = fmul double %i.n, %i.r
  %i.t = load <2 x double>, ptr %i.j, align 8, !tbaa !43 ; 3 uses
  %i.u = load <2 x double>, ptr %i.i, align 8, !tbaa !43 ; 3 uses
  %i.v = fsub <2 x double> %i.t, %i.u             ; 3 uses
  %i.w = fmul <2 x double> %i.v, %i.v             ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x double> %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !44
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %i.af = load <2 x double>, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %i.ag = fsub <2 x double> %i.ae, %i.af          ; 3 uses
  %i.ah = fmul <2 x double> %i.ag, %i.ag          ; 2 uses
  %i.ai = shufflevector <2 x double> %i.w, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x double> %i.w, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.ak = fadd <2 x double> %i.ai, %i.aj
  %i.al = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ak) ; 2 uses
  %i.am = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> %i.am, %i.an          ; 4 uses
  %i.ap = fsub <2 x double> %i.u, %i.ao
  %i.aq = fadd <2 x double> %i.u, %i.ao
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ar, ptr %i.o, align 8, !tbaa !43
  %i.as = fsub <2 x double> %i.t, %i.ao
  %i.at = fadd <2 x double> %i.t, %i.ao
  %i.au = shufflevector <2 x double> %i.as, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.au, ptr %i.aa, align 8, !tbaa !43
  %i.av = fmul <2 x double> %i.y, %i.ag
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fdiv <2 x double> %i.aw, %i.ax          ; 4 uses
  %i.az = fsub <2 x double> %i.af, %i.ay
  %i.ba = fadd <2 x double> %i.af, %i.ay
  %i.bb = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bb, ptr %i.ad, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bd = fsub <2 x double> %i.ae, %i.ay
  %i.be = fadd <2 x double> %i.ae, %i.ay
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bf, ptr %i.bc, align 8, !tbaa !43
  %i.bg = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  switch i32 %i.bg, label %.thread15 [
    i32 -1, label %bb.c
    i32 1, label %bb.e
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.bh = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.thread13, label %.thread15

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addCollinearEb(ptr noundef nonnull align 8 dereferenceable(484) %0, i1 noundef zeroext %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %.thread13, label %.thread15

.thread13:                                        ; preds = %bb.c, %bb.e
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 noundef %i.bg, i1 noundef zeroext %2)
  br label %bb.f

.thread15:                                        ; preds = %bb.b, %bb.c, %bb.e
  tail call void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addInsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 poison, i1 zeroext poison)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread15, %.thread13, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator12addCollinearEb(ptr noundef nonnull align 8 dereferenceable(484) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = and i32 %i.k, -2
  %switch = icmp eq i32 %i.l, 2
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load double, ptr %i.s, align 8, !tbaa !28
  %i.t = load double, ptr %i.q, align 8, !tbaa !49
  %i.u = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.v = fsub double %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = load double, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load double, ptr %i.y, align 8, !tbaa !50 ; 2 uses
  %i.aa = fsub double %i.x, %i.z
  %i.ab = tail call double @atan2(double noundef %i.aa, double noundef %i.v) #11 ; 3 uses
  %i.ac = load double, ptr %i.r, align 8, !tbaa !49
  %i.ad = fsub double %i.ac, %i.u
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50
  %i.ag = fsub double %i.af, %i.z
  %i.ah = tail call double @atan2(double noundef %i.ag, double noundef %i.ad) #11 ; 2 uses
  %i.ai = fcmp ugt double %i.ab, %i.ah
  %i.aj = fadd double %i.ab, f0x401921FB54442D18
  %spec.select27.i = select i1 %i.ai, double %i.ab, double %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.al = fsub double %spec.select27.i, %i.ah
  %i.am = tail call double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !35
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32              ; 3 uses
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = uitofp nneg i32 %i.ar to double
  %i.au = fdiv double %i.am, %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %i.av, align 16, !tbaa !30
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %i.aw = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.g
  %.021.us.i = phi i32 [ %i.bi, %.split.us.i ], [ 0, %bb.g ] ; 2 uses
  %i.ax = sub nsw i32 0, %.021.us.i
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %spec.select27.i, %i.az     ; 2 uses
  %i.bb = call double @cos(double noundef %i.ba) #11
  %i.bc = call double @sin(double noundef %i.ba) #11
  %i.bd = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fmul <2 x double> %i.aw, %i.bf
  %i.bh = fadd <2 x double> %i.bd, %i.bg
  store <2 x double> %i.bh, ptr %2, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bi = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.bi, %i.ar
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.f, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator14addOutsideTurnEib(ptr noundef nonnull align 8 dereferenceable(484) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.f = fsub double %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !50 ; 2 uses
  %i.k = fsub double %i.h, %i.j                   ; 2 uses
  %i.l = fmul double %i.f, %i.f
  %i.m = fmul double %i.k, %i.k
  %i.n = fadd double %i.l, %i.m
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !28 ; 5 uses
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  switch i32 %i.w, label %bb.j [
    i32 2, label %bb.d
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN4geos9algorithm12Intersection12intersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  %i.z = load <2 x double>, ptr %3, align 16      ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fcmp uno double %i.ac, 0.000000e+00
  %or.cond.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load double, ptr %i.ae, align 16
  %i.ag = fcmp uno double %i.af, 0.000000e+00
  %i.ah = select i1 %or.cond.i.i, i1 %i.ag, i1 false
  br i1 %i.ah, label %..critedge_crit_edge.i, label %bb.e

..critedge_crit_edge.i:                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre10.i = load double, ptr %.phi.trans.insert9.i, align 8, !tbaa !52
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ai = fcmp ugt double %i.p, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load <2 x double>, ptr %i.x, align 8, !tbaa !43
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
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
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
  %.pre = load double, ptr %i.o, align 8, !tbaa !28
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
  %i.j = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !43
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !28
  %i.q = fmul double %i.p, 1.000000e-03
  %i.r = fcmp olt double %sqrt.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.w = uitofp nneg i32 %i.u to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.y = add nuw nsw i32 %i.u, 1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !43
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = load <2 x double>, ptr %i.x, align 8, !tbaa !43
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.aj, align 16, !tbaa !30
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = add nsw i32 %i.ak, 1
  %i.an = sitofp i32 %i.am to double
  %i.ao = load <2 x double>, ptr %i.d, align 8, !tbaa !43
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = load <2 x double>, ptr %i.x, align 8, !tbaa !43
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  store <2 x double> %i.aw, ptr %4, align 16, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %i.ax, align 16, !tbaa !30
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
  %4 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !28 ; 3 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 3 uses
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !43 ; 5 uses
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
  %i.u = shufflevector <2 x double> %i.d, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x double> <double -0.000000e+00, double poison, double +qnan, double -0.000000e+00>, <4 x double> %i.u, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.w = shufflevector <2 x double> %i.q, <2 x double> %i.s, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.x = insertelement <4 x double> %i.w, double -0.000000e+00, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = shufflevector <2 x double> %i.t, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.z, ptr %i.y, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ab = fneg double %i.c
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.f, %i.ad
  %i.af = fdiv <2 x double> %i.ae, %i.p           ; 3 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = fsub <2 x double> %i.e, %i.ag           ; 2 uses
  %i.ai = fadd <2 x double> %i.e, %i.ag           ; 2 uses
  %i.aj = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.q, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <4 x double> %i.am, <4 x double> %i.x, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ao = fadd <4 x double> %i.v, %i.an
  store <4 x double> %i.ao, ptr %4, align 8, !tbaa !43
  %i.ap = shufflevector <2 x double> %i.af, <2 x double> %i.ah, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <4 x double> %i.ap, double -0.000000e+00, i64 2
  %i.ar = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <4 x double> %i.ar, <4 x double> %i.aq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.at = fadd <4 x double> %i.v, %i.as
  store <4 x double> %i.at, ptr %5, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = shufflevector <2 x double> %i.ai, <2 x double> <double poison, double +qnan>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.av, ptr %i.au, align 8, !tbaa !43
  %i.aw = tail call double @atan2(double noundef %i.i, double noundef %i.g) #11 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !60
  switch i32 %i.ba, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.bc = fadd double %i.aw, f0x3FF921FB54442D18  ; 2 uses
  %i.bd = fadd double %i.aw, f0xBFF921FB54442D18
  %i.be = fsub double %i.bc, %i.bd
  %i.bf = call double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !35
  %i.bi = fdiv double %i.bf, %i.bh
  %i.bj = fadd double %i.bi, 5.000000e-01
  %i.bk = fptosi double %i.bj to i32              ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %8 = load double, ptr %i.b, align 8, !tbaa !28
  %i.bm = uitofp nneg i32 %i.bk to double
  %i.bn = fdiv double %i.bf, %i.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.bo, align 16, !tbaa !30
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %i.bp = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.c
  %.021.us.i = phi i32 [ %i.cb, %.split.us.i ], [ 0, %bb.c ] ; 2 uses
  %i.bq = sub nsw i32 0, %.021.us.i
  %i.br = sitofp i32 %i.bq to double
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = fadd double %i.bc, %i.bs                ; 2 uses
  %i.bu = call double @cos(double noundef %i.bt) #11
  %i.bv = call double @sin(double noundef %i.bt) #11
  %i.bw = load <2 x double>, ptr %2, align 8, !tbaa !43
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bv, i64 1
  %i.bz = fmul <2 x double> %i.bp, %i.by
  %i.ca = fadd <2 x double> %i.bw, %i.bz
  store <2 x double> %i.ca, ptr %3, align 16, !tbaa !43
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cb = add nuw nsw i32 %.021.us.i, 1           ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.cb, %i.bk
  br i1 %exitcond25.not.i, label %.split23.us.i, label %.split.us.i, !llvm.loop !0

.split23.us.i:                                    ; preds = %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cd = shufflevector <2 x double> %i.ah, <2 x double> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.ce = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.cf = tail call double @llvm.fabs.f64(double %i.c)
  %i.cg = tail call double @cos(double noundef %i.aw) #11
  %i.ch = tail call double @sin(double noundef %i.aw) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1
  %i.cm = fmul <2 x double> %i.cj, %i.cl          ; 2 uses
  %i.cn = fadd <2 x double> %i.ce, %i.cm
  store <2 x double> %i.cn, ptr %6, align 16, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double +qnan, ptr %i.co, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.cp = fadd <2 x double> %i.cd, %i.cm
  store <2 x double> %i.cp, ptr %7, align 16, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double +qnan, ptr %i.cq, align 16, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %7)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !61
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit.thread, label %_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit

_ZNK4geos9operation6buffer19OffsetSegmentString11isRedundantERKNS_4geom10CoordinateE.exit: ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !62
  %i.u = add i64 %i.t, -1
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.u), !inline_history !63
  %i.z = load <2 x double>, ptr %2, align 16, !tbaa !43
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !43
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
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27
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
  store double +qnan, ptr %i.l, align 16, !tbaa !30
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
  %i.x = load <2 x double>, ptr %1, align 8, !tbaa !43
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.q, %i.z
  %i.ab = fadd <2 x double> %i.x, %i.aa
  store <2 x double> %i.ab, ptr %6, align 16, !tbaa !43
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
end_hunk_0
