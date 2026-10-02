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
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.v = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b)
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.b, align 1, !tbaa !15
  switch i8 %i.x, label %bb.h [
    i8 117, label %bb.g
    i8 100, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %.sink)
  %i.y = load i8, ptr %i.b, align 1, !tbaa !15
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
  store i8 1, ptr %i.ae, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.af = load i8, ptr %i.b, align 1, !tbaa !15   ; 2 uses
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
  %i.an = load i8, ptr %i.a, align 1, !tbaa !22, !range !37, !noundef !38
  store i8 %i.an, ptr %2, align 1, !tbaa !22
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
  br label %.critedge.i98, !llvm.loop !44

_ZN7msdfgen9readCharFEP8_IO_FILE.exit100:         ; preds = %.critedge.i98
  %.not91 = icmp eq i32 %i.o, %3                  ; 7 uses
  %.not92 = icmp ne i32 %i.o, 59
  %or.cond.not = or i1 %.not92, %.not91
  br i1 %or.cond.not, label %.thread121, label %bb.e

bb.e:                                             ; preds = %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100
  %i.p = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.g)
  switch i32 %i.p, label %.critedge.i101 [
    i32 2, label %bb.f
    i32 1, label %.thread121
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.027.0.copyload = load double, ptr %5, align 16, !tbaa !39
  %.sroa.228.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !39
  %.sroa.025.0.copyload = load double, ptr %i.f, align 16, !tbaa !39
  %.sroa.226.0.copyload = load double, ptr %i.g, align 8, !tbaa !39
  %i.q = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.027.0.copyload, double %.sroa.228.0.copyload, double %.sroa.025.0.copyload, double %.sroa.226.0.copyload, i32 noundef 7)
  store ptr %i.q, ptr %6, align 8, !tbaa !43
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
  store ptr %i.t, ptr %7, align 8, !tbaa !43
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
  store i8 1, ptr %4, align 1, !tbaa !22
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
    i32 1, label %.thread121
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
  br i1 %i.aa, label %.critedge.i11.i, label %.thread121

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
    i32 1, label %.thread121
  ]

.loopexit.jt0:                                    ; preds = %.critedge.i101, %.critedge.i104
  %.275.jt0 = phi i32 [ %.073, %.critedge.i104 ], [ 7, %.critedge.i101 ] ; 2 uses
  %i.aj = call noundef i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.l)
  switch i32 %i.aj, label %.critedge.i110.preheader [
    i32 2, label %bb.r
    i32 1, label %.thread121
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
  store ptr %i.an, ptr %8, align 8, !tbaa !43
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
  store ptr %i.ap, ptr %9, align 8, !tbaa !43
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
  store ptr %i.ar, ptr %10, align 8, !tbaa !43
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

.thread121:                                       ; preds = %.loopexit135, %bb.o, %.loopexit, %bb.e, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100, %.loopexit.jt0, %.critedge.i104, %.critedge.i.i, %.critedge.i11.i, %.critedge.i14.i, %.critedge.i107, %.critedge.i110, %bb.c, %bb.d, %bb.m
  %.6 = phi i1 [ %i.d, %bb.d ], [ %i.v, %bb.m ], [ false, %bb.c ], [ false, %.critedge.i104 ], [ false, %.critedge.i107 ], [ false, %.critedge.i.i ], [ false, %.critedge.i14.i ], [ false, %.critedge.i110 ], [ false, %.critedge.i11.i ], [ %.not91, %.loopexit.jt0 ], [ %.not91, %_ZN7msdfgen9readCharFEP8_IO_FILE.exit100 ], [ %.not91, %bb.e ], [ %.not91, %.loopexit ], [ %.not91, %bb.o ], [ %.not91, %.loopexit135 ]
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
  store i8 0, ptr %i.c, align 1, !tbaa !22
  %i.d = load ptr, ptr %1, align 8, !tbaa !25     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #13
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.t = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #12
  store double %i.t, ptr %3, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp ugt ptr %i.u, %0
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %.critedge.i
  %storemerge.i = phi ptr [ %i.w, %.critedge.i ], [ %i.u, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.v = load i8, ptr %storemerge.i, align 1, !tbaa !15
  switch i8 %i.v, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 13, label %.critedge.i
    i8 44, label %bb.c
  ]

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1 ; 2 uses
  %i.y = call double @strtod(ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #12
  store double %i.y, ptr %i.r, align 8, !tbaa !20
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not19.i = icmp ugt ptr %i.z, %i.x
  br i1 %.not19.i, label %bb.d, label %_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread

_ZN7msdfgen10readCoordSEPPKcRNS_7Vector2E.exit.thread: ; preds = %.preheader.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN7msdfgen12matchStringSEPPKcS1_.exit48

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %i.b, align 8, !tbaa !14
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
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !15  ; 3 uses
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
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !14
  %i.af = icmp eq i8 %i.ae, 64
  br i1 %i.af, label %bb.f, label %_ZN7msdfgen9readCharSEPPKc.exit53

bb.f:                                             ; preds = %_ZN7msdfgen9readCharSEPPKc.exit
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !15  ; 4 uses
  %.not20.i = icmp eq i8 %i.ag, 0                 ; 3 uses
  br i1 %.not20.i, label %.critedgethread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ah = phi i8 [ %i.am, %bb.g ], [ %i.ag, %bb.f ]
  %.022.i = phi ptr [ %i.ak, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.01121.i = phi ptr [ %i.al, %bb.g ], [ @.str.5, %bb.f ] ; 2 uses
  %i.ai = load i8, ptr %.01121.i, align 1, !tbaa !15 ; 2 uses
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %.critedge.i21

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01121.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !15  ; 2 uses
  %.not.i22 = icmp eq i8 %i.am, 0
  br i1 %.not.i22, label %.critedgethread-pre-split.i, label %.lr.ph.i, !llvm.loop !1

.critedgethread-pre-split.i:                      ; preds = %bb.g, %bb.f
  %.011.lcssa.i = phi ptr [ @.str.5, %bb.f ], [ %i.al, %bb.g ]
  %.0.lcssa.i = phi ptr [ %i.ad, %bb.f ], [ %i.ak, %bb.g ]
  %.pr.i = load i8, ptr %.011.lcssa.i, align 1, !tbaa !15
  br label %.critedge.i21

.critedge.i21:                                    ; preds = %.lr.ph.i, %.critedgethread-pre-split.i
  %.018.i = phi ptr [ %.0.lcssa.i, %.critedgethread-pre-split.i ], [ %.022.i, %.lr.ph.i ] ; 2 uses
  %i.an = phi i8 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.ai, %.lr.ph.i ]
  %.not16.i = icmp eq i8 %i.an, 0
  br i1 %.not16.i, label %bb.h, label %_ZN7msdfgen12matchStringSEPPKcS1_.exit

bb.h:                                             ; preds = %.critedge.i21
  store ptr %.018.i, ptr %i.b, align 8, !tbaa !14
  tail call void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 1)
  br label %.critedge.i50.preheader

_ZN7msdfgen12matchStringSEPPKcS1_.exit:           ; preds = %.critedge.i21
  br i1 %.not20.i, label %.critedgethread-pre-split.i31, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN7msdfgen12matchStringSEPPKcS1_.exit, %bb.i
  %i.ao = phi i8 [ %i.at, %bb.i ], [ %i.ag, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ]
  %.022.i25 = phi ptr [ %i.ar, %bb.i ], [ %i.ad, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ] ; 2 uses
  %.01121.i26 = phi ptr [ %i.as, %bb.i ], [ @.str.6, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ] ; 2 uses
  %i.ap = load i8, ptr %.01121.i26, align 1, !tbaa !15 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.i, label %.critedge.i27

bb.i:                                             ; preds = %.lr.ph.i24
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i25, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01121.i26, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !15  ; 2 uses
  %.not.i30 = icmp eq i8 %i.at, 0
  br i1 %.not.i30, label %.critedgethread-pre-split.i31, label %.lr.ph.i24, !llvm.loop !1

.critedgethread-pre-split.i31:                    ; preds = %bb.i, %_ZN7msdfgen12matchStringSEPPKcS1_.exit
  %.011.lcssa.i32 = phi ptr [ @.str.6, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ], [ %i.as, %bb.i ]
  %.0.lcssa.i33 = phi ptr [ %i.ad, %_ZN7msdfgen12matchStringSEPPKcS1_.exit ], [ %i.ar, %bb.i ]
  %.pr.i34 = load i8, ptr %.011.lcssa.i32, align 1, !tbaa !15
  br label %.critedge.i27

.critedge.i27:                                    ; preds = %.lr.ph.i24, %.critedgethread-pre-split.i31
end_hunk_0
