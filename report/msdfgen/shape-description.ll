Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/shape-description?download=true
inline.NumInlined: 120
inline.NumDeleted: 40
begin_hunk_0_@_ZN7msdfgen20readShapeDescriptionEP8_IO_FILERNS_5ShapeEPb:bb.a
    i32 1, label %.loopexit
  ]

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit
  %i.s = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.t = call fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEbS3_RNS_7ContourEPKS7_iRb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull %3, i32 noundef -1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %.loopexit

.critedge.i:                                      ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %.critedge.i.backedge
  %i.u = call i32 @fgetc(ptr noundef %0)          ; 2 uses
  switch i32 %i.u, label %.loopexit58 [
    i32 32, label %.critedge.i.backedge
    i32 13, label %.critedge.i.backedge
    i32 10, label %.critedge.i.backedge
    i32 9, label %.critedge.i.backedge
    i32 64, label %bb.d
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.v = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b)
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.b, align 1, !tbaa !11
  switch i8 %i.x, label %bb.h [
    i8 117, label %bb.g
    i8 100, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %.sink)
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11
  %i.z = icmp eq i8 %i.y, 117
  %i.aa = select i1 %i.z, ptr @.str.2, ptr @.str.3
  %i.ab = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.ab, 1
  br i1 %.not, label %bb.j, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b)
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.af = load i8, ptr %i.b, align 1, !tbaa !11   ; 2 uses
  %i.ag = sext i8 %i.af to i32
  switch i8 %i.af, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51.thread [
    i8 32, label %.critedge.i49.preheader
    i8 13, label %.critedge.i49.preheader
    i8 10, label %.critedge.i49.preheader
    i8 9, label %.critedge.i49.preheader
  ]

.critedge.i49.preheader:                          ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  br label %.critedge.i49

.critedge.i49:                                    ; preds = %.critedge.i49.backedge, %.critedge.i49.preheader
  %i.ah = call i32 @fgetc(ptr noundef %0)         ; 2 uses
  switch i32 %i.ah, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51.thread [
    i32 32, label %.critedge.i49.backedge
    i32 13, label %.critedge.i49.backedge
    i32 10, label %.critedge.i49.backedge
    i32 9, label %.critedge.i49.backedge
  ]

.critedge.i49.backedge:                           ; preds = %.critedge.i49, %.critedge.i49, %.critedge.i49, %.critedge.i49
  br label %.critedge.i49

_ZN7msdfgen9readCharFEP8_IO_FILE.exit51.thread:   ; preds = %.critedge.i49, %bb.j
  %.1.ph = phi i32 [ %i.ag, %bb.j ], [ %i.ah, %.critedge.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit58

_ZN7msdfgen9readCharFEP8_IO_FILE.exit51:          ; preds = %bb.h, %bb.g
  %i.ai = call i32 @feof(ptr noundef %0) #12
  %.040 = icmp ne i32 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit

.loopexit58:                                      ; preds = %.critedge.i, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51.thread
  %.2 = phi i32 [ %.1.ph, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51.thread ], [ %i.u, %.critedge.i ] ; 2 uses
  %i.aj = icmp eq i32 %.2, 123
  br i1 %i.aj, label %.lr.ph, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit54._crit_edge

.lr.ph:                                           ; preds = %.critedge.i52, %.loopexit58
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.al = call fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEbS3_RNS_7ContourEPKS7_iRb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef null, i32 noundef 125, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.al, label %.critedge.i52, label %.loopexit

.critedge.i52:                                    ; preds = %.lr.ph, %.critedge.i52.backedge
  %i.am = call i32 @fgetc(ptr noundef %0)         ; 2 uses
  switch i32 %i.am, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit54._crit_edge [
    i32 32, label %.critedge.i52.backedge
    i32 13, label %.critedge.i52.backedge
    i32 10, label %.critedge.i52.backedge
    i32 9, label %.critedge.i52.backedge
    i32 123, label %.lr.ph
  ]

.critedge.i52.backedge:                           ; preds = %.critedge.i52, %.critedge.i52, %.critedge.i52, %.critedge.i52
  br label %.critedge.i52

_ZN7msdfgen9readCharFEP8_IO_FILE.exit54._crit_edge: ; preds = %.critedge.i52, %.loopexit58
  %.3.lcssa = phi i32 [ %.2, %.loopexit58 ], [ %i.am, %.critedge.i52 ]
  %.not48 = icmp eq ptr %2, null
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN7msdfgen9readCharFEP8_IO_FILE.exit54._crit_edge
  %i.an = load i8, ptr %i.a, align 1, !tbaa !19, !range !37, !noundef !38
  store i8 %i.an, ptr %2, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit54._crit_edge
  %i.ao = icmp eq i32 %.3.lcssa, -1
  br i1 %i.ao, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 @feof(ptr noundef %0) #12
  %i.aq = icmp ne i32 %i.ap, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51, %bb.m, %bb.l, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %bb.c
  %.242 = phi i1 [ %i.t, %bb.c ], [ false, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit ], [ %.040, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit51 ], [ %i.aq, %bb.m ], [ false, %bb.l ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %.242
}

declare void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEbS3_RNS_7ContourEPKS7_iRb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 -1, 126) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [4 x %"struct.msdfgen::Vector2"], align 16 ; 28 uses
  %6 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %7 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %8 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %9 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %10 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false), !tbaa !39
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.a)
  switch i32 %i.b, label %.critedge.i [
    i32 2, label %.thread
    i32 1, label %.thread121
  ]

.critedge.i:                                      ; preds = %bb.c, %.critedge.i.backedge
  %i.c = call i32 @fgetc(ptr noundef %0)          ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 32, label %.critedge.i.backedge
    i32 13, label %.critedge.i.backedge
    i32 10, label %.critedge.i.backedge
    i32 9, label %.critedge.i.backedge
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  %i.d = icmp eq i32 %i.c, %3
  br label %.thread121

.thread:                                          ; preds = %bb.c, %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.e = load <2 x double>, ptr %5, align 16, !tbaa !39 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.m = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.n = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %11 = icmp ne i32 %3, 59
  br label %.critedge.i98

.critedge.i98:                                    ; preds = %.critedge.i98.backedge, %.thread
  %i.o = call i32 @fgetc(ptr noundef %0)          ; 3 uses
  switch i32 %i.o, label %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100 [
    i32 32, label %.critedge.i98.backedge
    i32 13, label %.critedge.i98.backedge
    i32 10, label %.critedge.i98.backedge
    i32 9, label %.critedge.i98.backedge
  ]

.critedge.i98.backedge:                           ; preds = %.critedge.i98, %.critedge.i98, %.critedge.i98, %.critedge.i98, %bb.j, %bb.s, %bb.v, %bb.y, %bb.g
  br label %.critedge.i98, !llvm.loop !41

_ZN7msdfgen9readCharFEP8_IO_FILE.exit100:         ; preds = %.critedge.i98
  %.not91 = icmp eq i32 %i.o, 59
  %or.cond = and i1 %.not91, %11
  br i1 %or.cond, label %bb.e, label %.thread121.loopexit224

bb.e:                                             ; preds = %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100
  %i.p = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.g)
  switch i32 %i.p, label %.critedge.i101 [
    i32 2, label %bb.f
    i32 1, label %.thread121.loopexit224
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.027.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.228.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.025.0.copyload = load double, ptr %i.f, align 16, !tbaa !39
  %.sroa.226.0.copyload = load double, ptr %i.g, align 8, !tbaa !39
  %i.q = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.027.0.copyload, double %.sroa.228.0.copyload, double %.sroa.025.0.copyload, double %.sroa.226.0.copyload, i32 noundef 7)
  store ptr %i.q, ptr %6, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !40
  br label %.critedge.i98.backedge

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aa

.critedge.i101:                                   ; preds = %bb.e, %.critedge.i101.backedge
  %i.s = call i32 @fgetc(ptr noundef %0)          ; 2 uses
  switch i32 %i.s, label %bb.m [
    i32 32, label %.critedge.i101.backedge
    i32 13, label %.critedge.i101.backedge
    i32 10, label %.critedge.i101.backedge
    i32 9, label %.critedge.i101.backedge
    i32 35, label %bb.i
    i32 59, label %.loopexit.jt0
    i32 40, label %.loopexit135
    i32 67, label %.loopexit203
    i32 99, label %.loopexit203
    i32 77, label %.loopexit223
    i32 109, label %.loopexit223
    i32 89, label %bb.n
    i32 121, label %bb.n
    i32 87, label %bb.l
    i32 119, label %bb.l
  ]

.critedge.i101.backedge:                          ; preds = %.critedge.i101, %.critedge.i101, %.critedge.i101, %.critedge.i101
  br label %.critedge.i101

bb.i:                                             ; preds = %.critedge.i101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %.sroa.020.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.221.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %i.t = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.020.0.copyload, double %.sroa.221.0.copyload, double %i.m, double %i.n, i32 noundef 7)
  store ptr %i.t, ptr %7, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  store <2 x double> %i.e, ptr %5, align 16, !tbaa !39
  br label %.critedge.i98.backedge

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aa

bb.l:                                             ; preds = %.critedge.i101, %.critedge.i101
  br label %bb.n

bb.m:                                             ; preds = %.critedge.i101
  %i.v = icmp eq i32 %i.s, %3
  br label %.thread121

.loopexit203:                                     ; preds = %.critedge.i101, %.critedge.i101
  br label %bb.n

.loopexit223:                                     ; preds = %.critedge.i101, %.critedge.i101
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i101, %.critedge.i101, %.loopexit223, %.loopexit203, %bb.l
  %.073 = phi i32 [ 7, %bb.l ], [ 6, %.loopexit203 ], [ 5, %.loopexit223 ], [ 3, %.critedge.i101 ], [ 3, %.critedge.i101 ] ; 2 uses
  store i8 1, ptr %4, align 1, !tbaa !19
  br label %.critedge.i104

.critedge.i104:                                   ; preds = %.critedge.i104.backedge, %bb.n
  %i.w = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.w, label %.thread121 [
    i32 32, label %.critedge.i104.backedge
    i32 13, label %.critedge.i104.backedge
    i32 10, label %.critedge.i104.backedge
    i32 9, label %.critedge.i104.backedge
    i32 59, label %.loopexit.jt0
    i32 40, label %.loopexit135
  ]

.critedge.i104.backedge:                          ; preds = %.critedge.i104, %.critedge.i104, %.critedge.i104, %.critedge.i104
  br label %.critedge.i104

.loopexit135:                                     ; preds = %.critedge.i101, %.critedge.i104
  %.174 = phi i32 [ %.073, %.critedge.i104 ], [ 7, %.critedge.i101 ] ; 2 uses
  %i.x = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.g)
  switch i32 %i.x, label %.critedge.i14.i [
    i32 2, label %.critedge.i.i
    i32 1, label %.thread121.loopexit224
  ]

.critedge.i.i:                                    ; preds = %.loopexit135, %.critedge.i.i.backedge
  %i.y = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.y, label %.thread121 [
    i32 32, label %.critedge.i.i.backedge
    i32 13, label %.critedge.i.i.backedge
    i32 10, label %.critedge.i.i.backedge
    i32 9, label %.critedge.i.i.backedge
    i32 41, label %_ZN7msdfgenL17readControlPointsI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEiS3_PS7_.exit
    i32 59, label %bb.o
  ]

.critedge.i.i.backedge:                           ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  br label %.critedge.i.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.z = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.i)
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %.critedge.i11.i, label %.thread121.loopexit224

.critedge.i11.i:                                  ; preds = %bb.o, %.critedge.i11.i.backedge
  %i.ab = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.ab, label %.thread121 [
    i32 32, label %.critedge.i11.i.backedge
    i32 13, label %.critedge.i11.i.backedge
    i32 10, label %.critedge.i11.i.backedge
    i32 9, label %.critedge.i11.i.backedge
    i32 41, label %_ZN7msdfgenL17readControlPointsI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEiS3_PS7_.exit
  ]

.critedge.i11.i.backedge:                         ; preds = %.critedge.i11.i, %.critedge.i11.i, %.critedge.i11.i, %.critedge.i11.i
  br label %.critedge.i11.i

.critedge.i14.i:                                  ; preds = %.loopexit135, %.critedge.i14.i.backedge
  %i.ac = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.ac, label %.thread121 [
    i32 32, label %.critedge.i14.i.backedge
    i32 13, label %.critedge.i14.i.backedge
    i32 10, label %.critedge.i14.i.backedge
    i32 9, label %.critedge.i14.i.backedge
    i32 41, label %_ZN7msdfgenL17readControlPointsI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEiS3_PS7_.exit
  ]

.critedge.i14.i.backedge:                         ; preds = %.critedge.i14.i, %.critedge.i14.i, %.critedge.i14.i, %.critedge.i14.i
  br label %.critedge.i14.i

_ZN7msdfgenL17readControlPointsI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEiS3_PS7_.exit: ; preds = %.critedge.i.i, %.critedge.i11.i, %.critedge.i14.i
  %.0.i = phi i32 [ 0, %.critedge.i14.i ], [ 2, %.critedge.i11.i ], [ 1, %.critedge.i.i ] ; 3 uses
  br label %.critedge.i107

.critedge.i107:                                   ; preds = %.critedge.i107.backedge, %_ZN7msdfgenL17readControlPointsI8_IO_FILETnPFiPT_EXadL_ZNS_9readCharFEPS1_EETnPFiS3_RNS_7Vector2EEXadL_ZNS_10readCoordFES6_S8_EEEEiS3_PS7_.exit
  %i.ad = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.ad, label %.thread121 [
    i32 32, label %.critedge.i107.backedge
    i32 13, label %.critedge.i107.backedge
    i32 10, label %.critedge.i107.backedge
    i32 9, label %.critedge.i107.backedge
    i32 59, label %.loopexit
  ]

.critedge.i107.backedge:                          ; preds = %.critedge.i107, %.critedge.i107, %.critedge.i107, %.critedge.i107
  br label %.critedge.i107

.loopexit:                                        ; preds = %.critedge.i107
  %i.ae = zext nneg i32 %.0.i to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ai = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.ah)
  switch i32 %i.ai, label %.critedge.i110.preheader [
    i32 2, label %bb.q
    i32 1, label %.thread121.loopexit224
  ]

.loopexit.jt0:                                    ; preds = %.critedge.i101, %.critedge.i104
  %.275.jt0 = phi i32 [ %.073, %.critedge.i104 ], [ 7, %.critedge.i101 ] ; 2 uses
  %i.aj = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.l)
  switch i32 %i.aj, label %.critedge.i110.preheader [
    i32 2, label %bb.r
    i32 1, label %.thread121.loopexit224
  ]

.critedge.i110.preheader:                         ; preds = %.loopexit.jt0, %.loopexit
  %i.ak = phi ptr [ %i.l, %.loopexit.jt0 ], [ %i.ah, %.loopexit ]
  %i.al = phi ptr [ %i.k, %.loopexit.jt0 ], [ %i.ag, %.loopexit ]
  %.275172 = phi i32 [ %.275.jt0, %.loopexit.jt0 ], [ %.174, %.loopexit ]
  %.080170 = phi i32 [ 0, %.loopexit.jt0 ], [ %.0.i, %.loopexit ]
  br label %.critedge.i110

.critedge.i110:                                   ; preds = %.critedge.i110.backedge, %.critedge.i110.preheader
  %i.am = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.am, label %.thread121 [
    i32 32, label %.critedge.i110.backedge
    i32 13, label %.critedge.i110.backedge
    i32 10, label %.critedge.i110.backedge
    i32 9, label %.critedge.i110.backedge
    i32 35, label %bb.p
  ]

.critedge.i110.backedge:                          ; preds = %.critedge.i110, %.critedge.i110, %.critedge.i110, %.critedge.i110
  br label %.critedge.i110

bb.p:                                             ; preds = %.critedge.i110
  store double %i.m, ptr %i.al, align 16, !tbaa !39
  store double %i.n, ptr %i.ak, align 8, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.p
  %.275173 = phi i32 [ %.174, %.loopexit ], [ %.275172, %bb.p ] ; 3 uses
  %.080171 = phi i32 [ %.0.i, %.loopexit ], [ %.080170, %bb.p ]
  switch i32 %.080171, label %default.unreachable [
    i32 0, label %bb.r
    i32 1, label %bb.u
    i32 2, label %bb.x
  ]

bb.r:                                             ; preds = %.loopexit.jt0, %bb.q
  %.275174 = phi i32 [ %.275173, %bb.q ], [ %.275.jt0, %.loopexit.jt0 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %.sroa.016.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.217.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.014.0.copyload = load double, ptr %i.f, align 16, !tbaa !39
  %.sroa.215.0.copyload = load double, ptr %i.g, align 8, !tbaa !39
  %i.an = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.016.0.copyload, double %.sroa.217.0.copyload, double %.sroa.014.0.copyload, double %.sroa.215.0.copyload, i32 noundef %.275174)
  store ptr %i.an, ptr %8, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !40
  br label %.critedge.i98.backedge

bb.t:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %.sroa.012.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.213.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.010.0.copyload = load double, ptr %i.f, align 16, !tbaa !39
  %.sroa.211.0.copyload = load double, ptr %i.g, align 8, !tbaa !39
  %.sroa.08.0.copyload = load double, ptr %i.h, align 16, !tbaa !39
  %.sroa.29.0.copyload = load double, ptr %i.i, align 8, !tbaa !39
  %i.ap = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double %.sroa.012.0.copyload, double %.sroa.213.0.copyload, double %.sroa.010.0.copyload, double %.sroa.211.0.copyload, double %.sroa.08.0.copyload, double %.sroa.29.0.copyload, i32 noundef %.275173)
  store ptr %i.ap, ptr %9, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !40
  br label %.critedge.i98.backedge

bb.w:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.aa

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %.sroa.06.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.27.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.04.0.copyload = load double, ptr %i.f, align 16, !tbaa !39
  %.sroa.25.0.copyload = load double, ptr %i.g, align 8, !tbaa !39
  %.sroa.02.0.copyload = load double, ptr %i.h, align 16, !tbaa !39
  %.sroa.23.0.copyload = load double, ptr %i.i, align 8, !tbaa !39
  %.sroa.0.0.copyload = load double, ptr %i.j, align 16, !tbaa !39
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39
  %i.ar = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %.sroa.06.0.copyload, double %.sroa.27.0.copyload, double %.sroa.04.0.copyload, double %.sroa.25.0.copyload, double %.sroa.02.0.copyload, double %.sroa.23.0.copyload, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload, i32 noundef %.275173)
  store ptr %i.ar, ptr %10, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !40
  br label %.critedge.i98.backedge

bb.z:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.aa

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.aa:                                            ; preds = %bb.k, %bb.t, %bb.w, %bb.z, %bb.h
  %.pn96 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.u, %bb.k ], [ %i.ao, %bb.t ], [ %i.aq, %bb.w ], [ %i.as, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn96

.thread121.loopexit224:                           ; preds = %.loopexit.jt0, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100, %bb.e, %.loopexit, %bb.o, %.loopexit135
  %.not91.le = icmp eq i32 %i.o, %3
  br label %.thread121

.thread121:                                       ; preds = %.critedge.i104, %.critedge.i.i, %.critedge.i11.i, %.critedge.i14.i, %.critedge.i107, %.critedge.i110, %.thread121.loopexit224, %bb.c, %bb.d, %bb.m
  %.6 = phi i1 [ %i.d, %bb.d ], [ %i.v, %bb.m ], [ false, %bb.c ], [ %.not91.le, %.thread121.loopexit224 ], [ false, %.critedge.i107 ], [ false, %.critedge.i.i ], [ false, %.critedge.i14.i ], [ false, %.critedge.i110 ], [ false, %.critedge.i11.i ], [ false, %.critedge.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.6
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen20readShapeDescriptionEPKcRNS_5ShapeEPb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 0, ptr %i.c, align 1, !tbaa !19
  %i.d = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !25 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #13
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !24
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.t = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #12
  store double %i.t, ptr %3, align 8, !tbaa !12
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp ugt ptr %i.u, %0
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %.critedge.i
  %storemerge.i = phi ptr [ %i.w, %.critedge.i ], [ %i.u, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.v = load i8, ptr %storemerge.i, align 1, !tbaa !11
  switch i8 %i.v, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 13, label %.critedge.i
    i8 44, label %bb.c
  ]

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %.preheader.i, !llvm.loop !15

bb.c:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1 ; 2 uses
  %i.y = call double @strtod(ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #12
  store double %i.y, ptr %i.r, align 8, !tbaa !17
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not19.i = icmp ugt ptr %i.z, %i.x
  br i1 %.not19.i, label %bb.d, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread

_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread: ; preds = %.preheader.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN7msdfgen12matchStringSEPPKcS1_.exit48

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.ab = call fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEbS4_RNS_7ContourEPKS8_iRb(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull %3, i32 noundef -1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %_ZN7msdfgen12matchStringSEPPKcS1_.exit48

bb.e:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge.i19

.critedge.i19:                                    ; preds = %.critedge.i19.backedge, %bb.e
  %i.ac = phi ptr [ %0, %bb.e ], [ %i.ad, %.critedge.i19.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 9 uses
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !11  ; 3 uses
  switch i8 %i.ae, label %_ZN7msdfgen9readCharSEPPKc.exit [
    i8 32, label %.critedge.i19.backedge
    i8 13, label %.critedge.i19.backedge
    i8 10, label %.critedge.i19.backedge
    i8 9, label %.critedge.i19.backedge
    i8 0, label %._crit_edge
  ]

.critedge.i19.backedge:                           ; preds = %.critedge.i19, %.critedge.i19, %.critedge.i19, %.critedge.i19
  br label %.critedge.i19

_ZN7msdfgen9readCharSEPPKc.exit:                  ; preds = %.critedge.i19
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !8
  %i.af = icmp eq i8 %i.ae, 64
  br i1 %i.af, label %bb.f, label %_ZN7msdfgen9readCharSEPPKc.exit53

bb.f:                                             ; preds = %_ZN7msdfgen9readCharSEPPKc.exit
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !11  ; 4 uses
  %.not20.i = icmp eq i8 %i.ag, 0                 ; 3 uses
  br i1 %.not20.i, label %.critedgethread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ah = phi i8 [ %i.am, %bb.g ], [ %i.ag, %bb.f ]
  %.022.i = phi ptr [ %i.ak, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.01121.i = phi ptr [ %i.al, %bb.g ], [ @.str.5, %bb.f ] ; 2 uses
  %i.ai = load i8, ptr %.01121.i, align 1, !tbaa !11 ; 2 uses
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %.critedge.i21

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01121.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !11  ; 2 uses
  %.not.i22 = icmp eq i8 %i.am, 0
  br i1 %.not.i22, label %.critedgethread-pre-split.i, label %.lr.ph.i, !llvm.loop !18

.critedgethread-pre-split.i:                      ; preds = %bb.g, %bb.f
  %.011.lcssa.i = phi ptr [ @.str.5, %bb.f ], [ %i.al, %bb.g ]
  %.0.lcssa.i = phi ptr [ %i.ad, %bb.f ], [ %i.ak, %bb.g ]
  %.pr.i = load i8, ptr %.011.lcssa.i, align 1, !tbaa !11
  br label %.critedge.i21

.critedge.i21:                                    ; preds = %.lr.ph.i, %.critedgethread-pre-split.i
  %.018.i = phi ptr [ %.0.lcssa.i, %.critedgethread-pre-split.i ], [ %.022.i, %.lr.ph.i ] ; 2 uses
  %i.an = phi i8 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.ai, %.lr.ph.i ]
  %.not16.i = icmp eq i8 %i.an, 0
  br i1 %.not16.i, label %bb.h, label %_ZN7msdfgen12matchStringSEPPKcS1_.exit

bb.h:                                             ; preds = %.critedge.i21
  store ptr %.018.i, ptr %i.b, align 8, !tbaa !8
  tail call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 1)
  br label %.critedge.i50.preheader

_ZN7msdfgen12matchStringSEPPKcS1_.exit:           ; preds = %.critedge.i21
  br i1 %.not20.i, label %.critedgethread-pre-split.i31, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN7msdfgen12matchStringSEPPKcS1_.exit, %bb.i
  %i.ao = phi i8 [ %i.at, %bb.i ], [ %i.ag, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ]
  %.022.i25 = phi ptr [ %i.ar, %bb.i ], [ %i.ad, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ] ; 2 uses
  %.01121.i26 = phi ptr [ %i.as, %bb.i ], [ @.str.6, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ] ; 2 uses
  %i.ap = load i8, ptr %.01121.i26, align 1, !tbaa !11 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.i, label %.critedge.i27

bb.i:                                             ; preds = %.lr.ph.i24
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i25, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01121.i26, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !11  ; 2 uses
  %.not.i30 = icmp eq i8 %i.at, 0
  br i1 %.not.i30, label %.critedgethread-pre-split.i31, label %.lr.ph.i24, !llvm.loop !18

.critedgethread-pre-split.i31:                    ; preds = %bb.i, %_ZN7msdfgen12matchStringSEPPKcS1_.exit
  %.011.lcssa.i32 = phi ptr [ @.str.6, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ], [ %i.as, %bb.i ]
  %.0.lcssa.i33 = phi ptr [ %i.ad, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ], [ %i.ar, %bb.i ]
  %.pr.i34 = load i8, ptr %.011.lcssa.i32, align 1, !tbaa !11
  br label %.critedge.i27

.critedge.i27:                                    ; preds = %.lr.ph.i24, %.critedgethread-pre-split.i31
end_hunk_0
begin_hunk_1_@_ZN7msdfgen20readShapeDescriptionEPKcRNS_5ShapeEPb:bb.a
bb.m:                                             ; preds = %.critedge.i50
  store ptr %i.be, ptr %i.b, align 8, !tbaa !8
  br label %_ZN7msdfgen9readCharSEPPKc.exit53

_ZN7msdfgen9readCharSEPPKc.exit53:                ; preds = %bb.m, %_ZN7msdfgen9readCharSEPPKc.exit
  %.0.in = phi i8 [ %i.bf, %bb.m ], [ %i.ae, %_ZN7msdfgen9readCharSEPPKc.exit ] ; 2 uses
  %.0 = sext i8 %.0.in to i32
  %i.bg = icmp eq i8 %.0.in, 123
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7msdfgen9readCharSEPPKc.exit53, %_ZN7msdfgen9readCharSEPPKc.exit58
  %i.bh = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bi = call fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEbS4_RNS_7ContourEPKS8_iRb(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef null, i32 noundef 125, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br i1 %i.bi, label %bb.n, label %_ZN7msdfgen12matchStringSEPPKcS1_.exit48

bb.n:                                             ; preds = %.lr.ph
  %.promoted.i54 = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %.critedge.i55

.critedge.i55:                                    ; preds = %.critedge.i55.backedge, %bb.n
  %i.bj = phi ptr [ %.promoted.i54, %bb.n ], [ %i.bk, %.critedge.i55.backedge ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !11  ; 3 uses
  switch i8 %i.bl, label %_ZN7msdfgen9readCharSEPPKc.exit58 [
    i8 32, label %.critedge.i55.backedge
    i8 13, label %.critedge.i55.backedge
    i8 10, label %.critedge.i55.backedge
    i8 9, label %.critedge.i55.backedge
    i8 0, label %._crit_edge
  ]

.critedge.i55.backedge:                           ; preds = %.critedge.i55, %.critedge.i55, %.critedge.i55, %.critedge.i55
  br label %.critedge.i55

_ZN7msdfgen9readCharSEPPKc.exit58:                ; preds = %.critedge.i55
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !8
  %i.bm = icmp eq i8 %i.bl, 123
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.loopexit172, !llvm.loop !45

._crit_edge.loopexit172:                          ; preds = %_ZN7msdfgen9readCharSEPPKc.exit58
  %i.bn = sext i8 %i.bl to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge.i19, %.critedge.i50, %.critedge.i55, %._crit_edge.loopexit172, %_ZN7msdfgen9readCharSEPPKc.exit53
  %.1.lcssa = phi i32 [ %.0, %_ZN7msdfgen9readCharSEPPKc.exit53 ], [ %i.bn, %._crit_edge.loopexit172 ], [ -1, %.critedge.i55 ], [ -1, %.critedge.i50 ], [ -1, %.critedge.i19 ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bo = load i8, ptr %i.c, align 1, !tbaa !19, !range !37, !noundef !38
  store i8 %i.bo, ptr %2, align 1, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.bp = icmp eq i32 %.1.lcssa, -1
  br label %_ZN7msdfgen12matchStringSEPPKcS1_.exit48

_ZN7msdfgen12matchStringSEPPKcS1_.exit48:         ; preds = %.lr.ph, %.critedge.i40, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread, %bb.p, %bb.d
  %.115 = phi i1 [ %i.ab, %bb.d ], [ false, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread ], [ false, %.critedge.i40 ], [ %i.bp, %bb.p ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i1 %.115
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL11readContourIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEbS4_RNS_7ContourEPKS8_iRb(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 -1, 126) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %5 = alloca [4 x %"struct.msdfgen::Vector2"], align 16 ; 26 uses
  %6 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %7 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %8 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %9 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %10 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false), !tbaa !39
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  %i.f = load <2 x double>, ptr %5, align 16, !tbaa !39
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !8
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = call double @strtod(ptr noundef %i.g, ptr noundef nonnull %i.e) #12 ; 2 uses
  store double %i.h, ptr %5, align 16, !tbaa !12
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %i.j
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %.critedge.i
  %storemerge.i = phi ptr [ %i.l, %.critedge.i ], [ %i.i, %bb.c ] ; 4 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !8
  %i.k = load i8, ptr %storemerge.i, align 1, !tbaa !11
  switch i8 %i.k, label %.thread [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 13, label %.critedge.i
    i8 44, label %bb.d
  ]

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %.preheader.i, !llvm.loop !15

bb.d:                                             ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !8
  %i.n = call double @strtod(ptr noundef nonnull %i.m, ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %.not19.i = icmp ugt ptr %i.p, %i.q
  br i1 %.not19.i, label %bb.g, label %.thread

.thread:                                          ; preds = %.preheader.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.thread155

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.critedge.i98

.critedge.i98:                                    ; preds = %.critedge.i98.backedge, %bb.e
  %i.r = phi ptr [ %i.j, %bb.e ], [ %i.s, %.critedge.i98.backedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !8
  %i.t = load i8, ptr %i.r, align 1, !tbaa !11    ; 2 uses
  switch i8 %i.t, label %bb.f [
    i8 32, label %.critedge.i98.backedge
    i8 13, label %.critedge.i98.backedge
    i8 10, label %.critedge.i98.backedge
    i8 9, label %.critedge.i98.backedge
    i8 0, label %_ZN7msdfgen9readCharSEPPKc.exit
  ]

.critedge.i98.backedge:                           ; preds = %.critedge.i98, %.critedge.i98, %.critedge.i98, %.critedge.i98
  br label %.critedge.i98

bb.f:                                             ; preds = %.critedge.i98
  %i.u = sext i8 %i.t to i32
  br label %_ZN7msdfgen9readCharSEPPKc.exit

_ZN7msdfgen9readCharSEPPKc.exit:                  ; preds = %.critedge.i98, %bb.f
  %.0.i99 = phi i32 [ %i.u, %bb.f ], [ -1, %.critedge.i98 ]
  %i.v = icmp eq i32 %.0.i99, %3
  br label %.thread155

bb.g:                                             ; preds = %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.w = insertelement <2 x double> poison, double %i.h, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.n, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.y = phi <2 x double> [ %i.x, %bb.g ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = extractelement <2 x double> %i.y, i64 0
  %i.af = extractelement <2 x double> %i.y, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %.promoted.i100 = load ptr, ptr %0, align 8, !tbaa !8
  br label %.critedge.i101

.critedge.i101:                                   ; preds = %.critedge.i101.backedge, %bb.i
  %i.ag = phi ptr [ %.promoted.i100, %bb.i ], [ %i.ah, %.critedge.i101.backedge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !8
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !11  ; 3 uses
  switch i8 %i.ai, label %_ZN7msdfgen9readCharSEPPKc.exit104 [
    i8 32, label %.critedge.i101.backedge
    i8 13, label %.critedge.i101.backedge
    i8 10, label %.critedge.i101.backedge
    i8 9, label %.critedge.i101.backedge
    i8 0, label %_ZN7msdfgen9readCharSEPPKc.exit104.thread
  ]

.critedge.i101.backedge:                          ; preds = %.critedge.i101, %.critedge.i101, %.critedge.i101, %.critedge.i101
  br label %.critedge.i101

_ZN7msdfgen9readCharSEPPKc.exit104:               ; preds = %.critedge.i101
  %i.aj = sext i8 %i.ai to i32                    ; 2 uses
  %.not91.not = icmp ne i32 %3, %i.aj
  %.not92 = icmp eq i8 %i.ai, 59
  %or.cond = and i1 %.not91.not, %.not92
  br i1 %or.cond, label %bb.j, label %.thread155.loopexit419

_ZN7msdfgen9readCharSEPPKc.exit104.thread:        ; preds = %.critedge.i101
  %.not91159 = icmp eq i32 %3, -1
  br label %.thread155

bb.j:                                             ; preds = %_ZN7msdfgen9readCharSEPPKc.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !8
  %i.ak = call double @strtod(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.d) #12 ; 2 uses
  store double %i.ak, ptr %i.z, align 16, !tbaa !12
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not.i105 = icmp ugt ptr %i.al, %i.am
  br i1 %.not.i105, label %.preheader.i107, label %bb.o

.preheader.i107:                                  ; preds = %bb.j, %.critedge.i110
  %storemerge.i108 = phi ptr [ %i.ao, %.critedge.i110 ], [ %i.al, %bb.j ] ; 4 uses
  store ptr %storemerge.i108, ptr %0, align 8, !tbaa !8
  %i.an = load i8, ptr %storemerge.i108, align 1, !tbaa !11
  switch i8 %i.an, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit111.thread [
    i8 32, label %.critedge.i110
    i8 9, label %.critedge.i110
    i8 10, label %.critedge.i110
    i8 13, label %.critedge.i110
    i8 44, label %bb.k
  ]

.critedge.i110:                                   ; preds = %.preheader.i107, %.preheader.i107, %.preheader.i107, %.preheader.i107
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge.i108, i64 1
  br label %.preheader.i107, !llvm.loop !15

bb.k:                                             ; preds = %.preheader.i107
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge.i108, i64 1 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !8
  %i.aq = call double @strtod(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.d) #12 ; 2 uses
  store double %i.aq, ptr %i.aa, align 8, !tbaa !17
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8
  %.not19.i109 = icmp ugt ptr %i.ar, %i.as
  br i1 %.not19.i109, label %bb.l, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit111.thread

_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit111.thread: ; preds = %bb.k, %.preheader.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.thread155

bb.l:                                             ; preds = %bb.k
  store ptr %i.ar, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.027.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.228.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %i.at = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.027.0.copyload, double %.sroa.228.0.copyload, double %i.ak, double %i.aq, i32 noundef 7)
  store ptr %i.at, ptr %6, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !40
  br label %.backedge

bb.n:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ao

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge.i113

.critedge.i113:                                   ; preds = %.critedge.i113.backedge, %bb.o
  %i.av = phi ptr [ %i.am, %bb.o ], [ %i.aw, %.critedge.i113.backedge ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 5 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !8
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.ax, label %_ZN7msdfgen9readCharSEPPKc.exit116.thread.loopexit191 [
    i8 32, label %.critedge.i113.backedge
    i8 13, label %.critedge.i113.backedge
    i8 10, label %.critedge.i113.backedge
    i8 9, label %.critedge.i113.backedge
    i8 0, label %_ZN7msdfgen9readCharSEPPKc.exit116.thread
    i8 35, label %bb.p
    i8 59, label %.loopexit
    i8 40, label %.loopexit188
    i8 67, label %.loopexit418
    i8 99, label %.loopexit418
    i8 77, label %bb.u
    i8 109, label %bb.u
    i8 89, label %bb.s
    i8 121, label %bb.s
    i8 87, label %bb.t
    i8 119, label %bb.t
  ]

.critedge.i113.backedge:                          ; preds = %.critedge.i113, %.critedge.i113, %.critedge.i113, %.critedge.i113
  br label %.critedge.i113

bb.p:                                             ; preds = %.critedge.i113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %.sroa.020.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.221.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %i.ay = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.020.0.copyload, double %.sroa.221.0.copyload, double %i.ae, double %i.af, i32 noundef 7)
  store ptr %i.ay, ptr %7, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !39
  br label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.ag, %bb.aj, %bb.am, %bb.m
  br label %bb.i, !llvm.loop !46

bb.r:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ao

bb.s:                                             ; preds = %.critedge.i113, %.critedge.i113
  br label %bb.u

bb.t:                                             ; preds = %.critedge.i113, %.critedge.i113
  br label %bb.u

_ZN7msdfgen9readCharSEPPKc.exit116.thread.loopexit191: ; preds = %.critedge.i113
  %i.ba = sext i8 %i.ax to i32
  br label %_ZN7msdfgen9readCharSEPPKc.exit116.thread

_ZN7msdfgen9readCharSEPPKc.exit116.thread:        ; preds = %.critedge.i113, %_ZN7msdfgen9readCharSEPPKc.exit116.thread.loopexit191
  %.0.i114168 = phi i32 [ %i.ba, %_ZN7msdfgen9readCharSEPPKc.exit116.thread.loopexit191 ], [ -1, %.critedge.i113 ]
  %i.bb = icmp eq i32 %.0.i114168, %3
  br label %.thread155

.loopexit418:                                     ; preds = %.critedge.i113, %.critedge.i113
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i113, %.critedge.i113, %.loopexit418, %bb.t, %bb.s
  %.073 = phi i32 [ 7, %bb.t ], [ 6, %.loopexit418 ], [ 3, %bb.s ], [ 5, %.critedge.i113 ], [ 5, %.critedge.i113 ] ; 2 uses
  store i8 1, ptr %4, align 1, !tbaa !19
  br label %.critedge.i118

.critedge.i118:                                   ; preds = %.critedge.i118.backedge, %bb.u
  %i.bc = phi ptr [ %i.aw, %bb.u ], [ %i.bd, %.critedge.i118.backedge ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 4 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !8
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !11
  switch i8 %i.be, label %.thread155 [
    i8 32, label %.critedge.i118.backedge
    i8 13, label %.critedge.i118.backedge
    i8 10, label %.critedge.i118.backedge
    i8 9, label %.critedge.i118.backedge
    i8 40, label %.loopexit188
    i8 59, label %.loopexit
  ]

.critedge.i118.backedge:                          ; preds = %.critedge.i118, %.critedge.i118, %.critedge.i118, %.critedge.i118
  br label %.critedge.i118

.loopexit188:                                     ; preds = %.critedge.i113, %.critedge.i118
  %i.bf = phi ptr [ %i.bd, %.critedge.i118 ], [ %i.aw, %.critedge.i113 ]
  %.174 = phi i32 [ %.073, %.critedge.i118 ], [ 7, %.critedge.i113 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %i.bg = call double @strtod(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c) #12
  store double %i.bg, ptr %i.z, align 16, !tbaa !12
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not.i.i = icmp ugt ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.aa

.preheader.i.i:                                   ; preds = %.loopexit188, %.critedge.i.i
  %storemerge.i.i = phi ptr [ %i.bk, %.critedge.i.i ], [ %i.bh, %.loopexit188 ] ; 4 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !8
  %i.bj = load i8, ptr %storemerge.i.i, align 1, !tbaa !11
  switch i8 %i.bj, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread.i [
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 44, label %bb.v
  ]

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 1
  br label %.preheader.i.i, !llvm.loop !15

bb.v:                                             ; preds = %.preheader.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 1 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !8
  %i.bm = call double @strtod(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.c) #12
  store double %i.bm, ptr %i.aa, align 8, !tbaa !17
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !8
end_hunk_1
begin_hunk_2_@_ZN7msdfgenL11readContourIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEbS4_RNS_7ContourEPKS8_iRb:bb.a
    i8 32, label %.critedge.i26.i.backedge
    i8 13, label %.critedge.i26.i.backedge
    i8 10, label %.critedge.i26.i.backedge
    i8 9, label %.critedge.i26.i.backedge
    i8 41, label %_ZN7msdfgenL17readControlPointsIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEiS4_PS8_.exit
  ]

.critedge.i26.i.backedge:                         ; preds = %.critedge.i26.i, %.critedge.i26.i, %.critedge.i26.i, %.critedge.i26.i
  br label %.critedge.i26.i

_ZN7msdfgenL17readControlPointsIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEiS4_PS8_.exit: ; preds = %.critedge.i26.i, %.critedge.i11.i, %.critedge.i21.i
  %.promoted.i123 = phi ptr [ %i.bq, %.critedge.i11.i ], [ %i.cc, %.critedge.i21.i ], [ %i.cf, %.critedge.i26.i ]
  %.0.i122 = phi i32 [ 1, %.critedge.i11.i ], [ 2, %.critedge.i21.i ], [ 0, %.critedge.i26.i ]
  br label %.critedge.i124

.critedge.i124:                                   ; preds = %.critedge.i124.backedge, %_ZN7msdfgenL17readControlPointsIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEiS4_PS8_.exit
  %i.ch = phi ptr [ %.promoted.i123, %_ZN7msdfgenL17readControlPointsIPKcTnPFiPT_EXadL_ZNS_9readCharSEPS2_EETnPFiS4_RNS_7Vector2EEXadL_ZNS_10readCoordSES7_S9_EEEEiS4_PS8_.exit ], [ %i.ci, %.critedge.i124.backedge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !8
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !11
  switch i8 %i.cj, label %.thread155 [
    i8 32, label %.critedge.i124.backedge
    i8 13, label %.critedge.i124.backedge
    i8 10, label %.critedge.i124.backedge
    i8 9, label %.critedge.i124.backedge
    i8 59, label %.loopexit
  ]

.critedge.i124.backedge:                          ; preds = %.critedge.i124, %.critedge.i124, %.critedge.i124, %.critedge.i124
  br label %.critedge.i124

.loopexit:                                        ; preds = %.critedge.i113, %.critedge.i118, %.critedge.i124
  %i.ck = phi ptr [ %i.ci, %.critedge.i124 ], [ %i.bd, %.critedge.i118 ], [ %i.aw, %.critedge.i113 ]
  %.080 = phi i32 [ %.0.i122, %.critedge.i124 ], [ 0, %.critedge.i118 ], [ 0, %.critedge.i113 ] ; 2 uses
  %.275 = phi i32 [ %.174, %.critedge.i124 ], [ %.073, %.critedge.i118 ], [ 7, %.critedge.i113 ] ; 3 uses
  %i.cl = zext nneg i32 %.080 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.co = call double @strtod(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.a) #12
  store double %i.co, ptr %i.cn, align 16, !tbaa !12
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not.i128 = icmp ugt ptr %i.cp, %i.cq
  br i1 %.not.i128, label %.preheader.i130, label %bb.ac

.preheader.i130:                                  ; preds = %.loopexit, %.critedge.i133
  %storemerge.i131 = phi ptr [ %i.cs, %.critedge.i133 ], [ %i.cp, %.loopexit ] ; 4 uses
  store ptr %storemerge.i131, ptr %0, align 8, !tbaa !8
  %i.cr = load i8, ptr %storemerge.i131, align 1, !tbaa !11
  switch i8 %i.cr, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134.thread [
    i8 32, label %.critedge.i133
    i8 9, label %.critedge.i133
    i8 10, label %.critedge.i133
    i8 13, label %.critedge.i133
    i8 44, label %bb.ab
  ]

.critedge.i133:                                   ; preds = %.preheader.i130, %.preheader.i130, %.preheader.i130, %.preheader.i130
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge.i131, i64 1
  br label %.preheader.i130, !llvm.loop !15

bb.ab:                                            ; preds = %.preheader.i130
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge.i131, i64 1 ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !8
  %i.cu = call double @strtod(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a) #12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store double %i.cu, ptr %i.cv, align 8, !tbaa !17
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !8
  %.not19.i132 = icmp ugt ptr %i.cw, %i.cx
  br i1 %.not19.i132, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134.thread

_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134.thread: ; preds = %bb.ab, %.preheader.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread155

_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134: ; preds = %bb.ab
  store ptr %i.cw, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ae

bb.ac:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge.i136

.critedge.i136:                                   ; preds = %.critedge.i136.backedge, %bb.ac
  %i.cy = phi ptr [ %i.cq, %bb.ac ], [ %i.cz, %.critedge.i136.backedge ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 2 uses
  store ptr %i.cz, ptr %0, align 8, !tbaa !8
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !11
  switch i8 %i.da, label %.thread155 [
    i8 32, label %.critedge.i136.backedge
    i8 13, label %.critedge.i136.backedge
    i8 10, label %.critedge.i136.backedge
    i8 9, label %.critedge.i136.backedge
    i8 35, label %bb.ad
  ]

.critedge.i136.backedge:                          ; preds = %.critedge.i136, %.critedge.i136, %.critedge.i136, %.critedge.i136
  br label %.critedge.i136

bb.ad:                                            ; preds = %.critedge.i136
  store <2 x double> %i.y, ptr %i.cn, align 16, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134, %bb.ad
  switch i32 %.080, label %default.unreachable [
    i32 0, label %bb.af
    i32 1, label %bb.ai
    i32 2, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %.sroa.016.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.217.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.014.0.copyload = load double, ptr %i.z, align 16, !tbaa !39
  %.sroa.215.0.copyload = load double, ptr %i.aa, align 8, !tbaa !39
  %i.db = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.016.0.copyload, double %.sroa.217.0.copyload, double %.sroa.014.0.copyload, double %.sroa.215.0.copyload, i32 noundef %.275)
  store ptr %i.db, ptr %8, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !40
  br label %.backedge

bb.ah:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %.sroa.012.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.213.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.010.0.copyload = load double, ptr %i.z, align 16, !tbaa !39
  %.sroa.211.0.copyload = load double, ptr %i.aa, align 8, !tbaa !39
  %.sroa.08.0.copyload = load double, ptr %i.ab, align 16, !tbaa !39
  %.sroa.29.0.copyload = load double, ptr %i.ac, align 8, !tbaa !39
  %i.dd = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double %.sroa.012.0.copyload, double %.sroa.213.0.copyload, double %.sroa.010.0.copyload, double %.sroa.211.0.copyload, double %.sroa.08.0.copyload, double %.sroa.29.0.copyload, i32 noundef %.275)
  store ptr %i.dd, ptr %9, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !40
  br label %.backedge

bb.ak:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.ao

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %.sroa.06.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.27.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.04.0.copyload = load double, ptr %i.z, align 16, !tbaa !39
  %.sroa.25.0.copyload = load double, ptr %i.aa, align 8, !tbaa !39
  %.sroa.02.0.copyload = load double, ptr %i.ab, align 16, !tbaa !39
  %.sroa.23.0.copyload = load double, ptr %i.ac, align 8, !tbaa !39
  %.sroa.0.0.copyload = load double, ptr %i.ad, align 16, !tbaa !39
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39
  %i.df = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %.sroa.06.0.copyload, double %.sroa.27.0.copyload, double %.sroa.04.0.copyload, double %.sroa.25.0.copyload, double %.sroa.02.0.copyload, double %.sroa.23.0.copyload, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload, i32 noundef %.275)
  store ptr %i.df, ptr %10, align 8, !tbaa !42
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !40
  br label %.backedge

bb.an:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.ao

default.unreachable:                              ; preds = %bb.ae
  unreachable

bb.ao:                                            ; preds = %bb.r, %bb.ah, %bb.ak, %bb.an, %bb.n
  %.pn96 = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.az, %bb.r ], [ %i.dc, %bb.ah ], [ %i.de, %bb.ak ], [ %i.dg, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn96

.thread155.loopexit419:                           ; preds = %_ZN7msdfgen9readCharSEPPKc.exit104
  %.not91 = icmp eq i32 %3, %i.aj
  br label %.thread155

.thread155:                                       ; preds = %.critedge.i118, %.critedge.i26.i, %.critedge.i11.i, %.critedge.i21.i, %.critedge.i124, %.critedge.i136, %.thread155.loopexit419, %_ZN7msdfgen9readCharSEPPKc.exit104.thread, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit19.thread.i, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread.i, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134.thread, %_ZN7msdfgen9readCharSEPPKc.exit116.thread, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit111.thread, %.thread, %_ZN7msdfgen9readCharSEPPKc.exit
  %.6 = phi i1 [ false, %.critedge.i26.i ], [ %i.bb, %_ZN7msdfgen9readCharSEPPKc.exit116.thread ], [ %i.v, %_ZN7msdfgen9readCharSEPPKc.exit ], [ false, %.critedge.i21.i ], [ %.not91159, %_ZN7msdfgen9readCharSEPPKc.exit104.thread ], [ false, %.thread ], [ false, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread.i ], [ false, %.critedge.i136 ], [ false, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit111.thread ], [ false, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit19.thread.i ], [ false, %.critedge.i124 ], [ false, %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit134.thread ], [ %.not91, %.thread155.loopexit419 ], [ false, %.critedge.i11.i ], [ false, %.critedge.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen21writeShapeDescriptionEP8_IO_FILERKNS_5ShapeE(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7msdfgen5Shape8validateEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not1724.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not1724.not.i, label %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %bb.b, %._crit_edge.i
  %i.e = phi ptr [ %i.n, %._crit_edge.i ], [ %i.d, %bb.b ]
  %.sroa.010.025.i = phi ptr [ %i.o, %._crit_edge.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.010.025.i, align 8, !tbaa !48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %.not1822.i = icmp eq ptr %i.f, %i.h
  br i1 %.not1822.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !48
  %.not18.i = icmp eq ptr %i.i, %i.j
  br i1 %.not18.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !49

.lr.ph.i:                                         ; preds = %.lr.ph28.i, %bb.c
  %.sroa.06.023.i = phi ptr [ %i.i, %bb.c ], [ %i.f, %.lr.ph28.i ] ; 2 uses
  %i.k = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.023.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50
  %.not.i = icmp eq i32 %i.m, 7
  br i1 %.not.i, label %bb.c, label %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !47
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph28.i
  %i.n = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %.lr.ph28.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 24 ; 2 uses
  %.not17.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not17.not.i, label %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit, label %.lr.ph28.i, !llvm.loop !53

_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit:         ; preds = %._crit_edge.i, %.lr.ph.i, %bb.b
  %.not1721.i = phi i1 [ true, %.lr.ph.i ], [ false, %bb.b ], [ false, %._crit_edge.i ]
  %i.p = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  switch i32 %i.p, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.9, i64 8, i64 1, ptr %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN7msdfgenL9isColoredERKNS_5ShapeE.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !47
  %.not7378 = icmp eq ptr %i.s, %i.t
  br i1 %.not7378, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.f, %bb.v
  %.sroa.068.079 = phi ptr [ %i.bg, %bb.v ], [ %i.s, %bb.f ] ; 3 uses
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0) ; 0 uses
  %i.v = load ptr, ptr %.sroa.068.079, align 8, !tbaa !48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.068.079, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.v, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph81, %bb.u
  %.sroa.062.077 = phi ptr [ %i.bd, %bb.u ], [ %i.v, %.lr.ph81 ] ; 4 uses
  br i1 %.not1721.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.077)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  switch i32 %i.ac, label %bb.l [
    i32 3, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.g, %.lr.ph
  %.not = phi i1 [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %.lr.ph ] ; 3 uses
  %.053 = phi i32 [ 0, %bb.g ], [ 121, %bb.h ], [ 109, %bb.i ], [ 99, %bb.j ], [ 119, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.ad = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.077) ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) ; 12 uses
  %i.ai = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.077) ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ai)
  switch i32 %i.am, label %bb.u [
    i32 1, label %bb.m
    i32 2, label %bb.o
    i32 3, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %fputc60 = tail call i32 @fputc(i32 9, ptr %0)  ; 0 uses
  %.sroa.09.0.copyload = load double, ptr %i.ah, align 8, !tbaa !39
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.210.0.copyload = load double, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !39
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.09.0.copyload, double noundef %.sroa.210.0.copyload) #12 ; 0 uses
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.12, i64 2, i64 1, ptr %0) ; 0 uses
  br i1 %.not, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %.053) #12 ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %fputc56 = tail call i32 @fputc(i32 9, ptr %0)  ; 0 uses
  %.sroa.07.0.copyload = load double, ptr %i.ah, align 8, !tbaa !39
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.28.0.copyload = load double, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !39
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.07.0.copyload, double noundef %.sroa.28.0.copyload) #12 ; 0 uses
  %i.ar = tail call i64 @fwrite(ptr nonnull @.str.14, i64 4, i64 1, ptr %0) ; 0 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %fputc58 = tail call i32 @fputc(i32 %.053, ptr %0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %fputc59 = tail call i32 @fputc(i32 40, ptr %0) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.05.0.copyload = load double, ptr %i.as, align 8, !tbaa !39
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.26.0.copyload = load double, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !39
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.05.0.copyload, double noundef %.sroa.26.0.copyload) #12 ; 0 uses
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %fputc = tail call i32 @fputc(i32 9, ptr %0)    ; 0 uses
  %.sroa.03.0.copyload = load double, ptr %i.ah, align 8, !tbaa !39
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.24.0.copyload = load double, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !39
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.03.0.copyload, double noundef %.sroa.24.0.copyload) #12 ; 0 uses
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str.14, i64 4, i64 1, ptr %0) ; 0 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %fputc54 = tail call i32 @fputc(i32 %.053, ptr %0) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %fputc55 = tail call i32 @fputc(i32 40, ptr %0) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.01.0.copyload = load double, ptr %i.ax, align 8, !tbaa !39
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !39
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.01.0.copyload, double noundef %.sroa.22.0.copyload) #12 ; 0 uses
  %i.az = tail call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %0) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.0.0.copyload = load double, ptr %i.ba, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, double noundef %.sroa.0.0.copyload, double noundef %.sroa.2.0.copyload) #12 ; 0 uses
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.n, %bb.t, %bb.q, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.062.077, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !48
  %.not74 = icmp eq ptr %i.bd, %i.be
end_hunk_2
